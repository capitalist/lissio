#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

module Lissio

class Component
	def self.inherited(klass)
		return if self == Component

		element = @element
		tag     = @tag
		events  = @events

		klass.instance_eval {
			@element = element if element
			@tag     = tag if tag
			@events  = events.clone if events
		}
	end

	def self.element(name = nil)
		name ? @element = name : @element
	end

	def self.tag(options = nil)
		options ? @tag = options : @tag
	end

	def self.events
		@events ||= Hash.new { |h, k| h[k] = [] }
	end

	def self.on(name, selector = nil, method = nil, &block)
		if block
			events[name] << [selector, block]

			[name, selector, block]
		elsif method
			events[name] << [selector, method]

			[name, selector, method]
		else
			events[name] << [nil, method]

			[name, nil, method]
		end
	end

	def self.off(id)
		name, selector, block = id

		events[name].delete([selector, block])
	end

	def self.render(&block)
		define_method :render do
			instance_exec(&block)

			super
		end
	end

	def self.html(string = nil, &block)
		if block
			render {
				if block.arity == 1
					element.inner_dom { |d|
						instance_exec(d, &block)
					}
				else
					element.inner_dom(&block)
				end
			}
		else
			render {
				element.inner_html = string
			}
		end
	end

	def self.css(content = nil, &block)
		if content || block
			@style.remove if @style

			@style = CSS(content, &block)
			@style.append_to($document.head)
		else
			CSS::StyleSheet.new(@style)
		end
	end

	attr_accessor :parent

	def initialize(parent = nil)
		@parent = parent
	end

	def tag
		{ name: :div }.merge(self.class.tag || {})
	end

	def element
		return @element if @element

		scope = parent ? parent.element : $document
		elem  = if elem = self.class.element
			scope.at(elem)
		else
			DOM::Element.create tag[:name]
		end

		unless elem
			raise ArgumentError, 'element not found'
		end

		elem.add_class(*tag[:class]) if tag[:class]
		elem[:id] = tag[:id] if tag[:id]

		self.class.events.each {|name, blocks|
			blocks.each {|selector, block|
				if block.is_a? Symbol
					elem.on(name, selector, &method(block))
				else
					elem.on(name, selector) {|*args|
						instance_exec(*args, &block)
					}
				end
			}
		}

		@element = elem
	end

	def on(name, selector = nil, method = nil, &block)
		self.class.on(name, selector, method, &block)

		if @element
			if block
				@element.on(name, selector) {|*args|
					instance_exec(*args, &block)
				}
			elsif method
				@element.on(name, selector, &method(method))
			else
				@element.on(name, &method(method))
			end
		end

		self
	end

	# When overriding, remember to call super as last.
	def render(*)
		element.trigger :render, self
		element
	end

	def remove
		@element.remove if @element
	end

	alias destroy remove
end


Browser::DOM::Builder.for Component do |_, item|
	item.render
end

end
