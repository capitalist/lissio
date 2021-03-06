require 'base64'

module Lissio; class Component

class Markdown < Component
	def self.render(string, options = {}, &block)
		`marked(#{@string.to_n}, #{@options.to_n}, #{@block.to_n})`
	end

	def initialize(string, options = {}, &block)
		@string  = string
		@options = options
		@block   = block
	end

	def render
		element.inner_html = Markdown.render(@string, @options, @block)

		super
	end
end

end; end

# load https://github.com/chjj/marked
`eval(#{Base64.decode64(DATA.read)})`

__END__

KGZ1bmN0aW9uKCl7dmFyIGJsb2NrPXtuZXdsaW5lOi9eXG4rLyxjb2RlOi9eKCB7NH1bXlxuXStc
biopKy8sZmVuY2VzOm5vb3AsaHI6L14oICpbLSpfXSl7Myx9ICooPzpcbit8JCkvLGhlYWRpbmc6
L14gKigjezEsNn0pICooW15cbl0rPykgKiMqICooPzpcbit8JCkvLG5wdGFibGU6bm9vcCxsaGVh
ZGluZzovXihbXlxuXSspXG4gKig9fC0pezIsfSAqKD86XG4rfCQpLyxibG9ja3F1b3RlOi9eKCAq
PlteXG5dKyhcblteXG5dKykqXG4qKSsvLGxpc3Q6L14oICopKGJ1bGwpIFtcc1xTXSs/KD86aHJ8
XG57Mix9KD8hICkoPyFcMWJ1bGwgKVxuKnxccyokKS8saHRtbDovXiAqKD86Y29tbWVudHxjbG9z
ZWR8Y2xvc2luZykgKig/OlxuezIsfXxccyokKS8sZGVmOi9eICpcWyhbXlxdXSspXF06ICo8Pyhb
XlxzPl0rKT4/KD86ICtbIihdKFteXG5dKylbIildKT8gKig/OlxuK3wkKS8sdGFibGU6bm9vcCxw
YXJhZ3JhcGg6L14oKD86W15cbl0rXG4/KD8haHJ8aGVhZGluZ3xsaGVhZGluZ3xibG9ja3F1b3Rl
fHRhZ3xkZWYpKSspXG4qLyx0ZXh0Oi9eW15cbl0rL307YmxvY2suYnVsbGV0PS8oPzpbKistXXxc
ZCtcLikvO2Jsb2NrLml0ZW09L14oICopKGJ1bGwpIFteXG5dKig/OlxuKD8hXDFidWxsIClbXlxu
XSopKi87YmxvY2suaXRlbT1yZXBsYWNlKGJsb2NrLml0ZW0sImdtIikoL2J1bGwvZyxibG9jay5i
dWxsZXQpKCk7YmxvY2subGlzdD1yZXBsYWNlKGJsb2NrLmxpc3QpKC9idWxsL2csYmxvY2suYnVs
bGV0KSgiaHIiLC9cbisoPz0oPzogKlstKl9dKXszLH0gKig/OlxuK3wkKSkvKSgpO2Jsb2NrLl90
YWc9Iig/ISg/OiIrImF8ZW18c3Ryb25nfHNtYWxsfHN8Y2l0ZXxxfGRmbnxhYmJyfGRhdGF8dGlt
ZXxjb2RlIisifHZhcnxzYW1wfGtiZHxzdWJ8c3VwfGl8Ynx1fG1hcmt8cnVieXxydHxycHxiZGl8
YmRvIisifHNwYW58YnJ8d2JyfGluc3xkZWx8aW1nKVxcYilcXHcrKD8hOi98QClcXGIiO2Jsb2Nr
Lmh0bWw9cmVwbGFjZShibG9jay5odG1sKSgiY29tbWVudCIsLzwhLS1bXHNcU10qPy0tPi8pKCJj
bG9zZWQiLC88KHRhZylbXHNcU10rPzxcL1wxPi8pKCJjbG9zaW5nIiwvPHRhZyg/OiJbXiJdKiJ8
J1teJ10qJ3xbXiciPl0pKj8+LykoL3RhZy9nLGJsb2NrLl90YWcpKCk7YmxvY2sucGFyYWdyYXBo
PXJlcGxhY2UoYmxvY2sucGFyYWdyYXBoKSgiaHIiLGJsb2NrLmhyKSgiaGVhZGluZyIsYmxvY2su
aGVhZGluZykoImxoZWFkaW5nIixibG9jay5saGVhZGluZykoImJsb2NrcXVvdGUiLGJsb2NrLmJs
b2NrcXVvdGUpKCJ0YWciLCI8IitibG9jay5fdGFnKSgiZGVmIixibG9jay5kZWYpKCk7YmxvY2su
bm9ybWFsPW1lcmdlKHt9LGJsb2NrKTtibG9jay5nZm09bWVyZ2Uoe30sYmxvY2subm9ybWFsLHtm
ZW5jZXM6L14gKihgezMsfXx+ezMsfSkgKihcUyspPyAqXG4oW1xzXFNdKz8pXHMqXDEgKig/Olxu
K3wkKS8scGFyYWdyYXBoOi9eL30pO2Jsb2NrLmdmbS5wYXJhZ3JhcGg9cmVwbGFjZShibG9jay5w
YXJhZ3JhcGgpKCIoPyEiLCIoPyEiK2Jsb2NrLmdmbS5mZW5jZXMuc291cmNlLnJlcGxhY2UoIlxc
MSIsIlxcMiIpKyJ8IitibG9jay5saXN0LnNvdXJjZS5yZXBsYWNlKCJcXDEiLCJcXDMiKSsifCIp
KCk7YmxvY2sudGFibGVzPW1lcmdlKHt9LGJsb2NrLmdmbSx7bnB0YWJsZTovXiAqKFxTLipcfC4q
KVxuICooWy06XSsgKlx8Wy18IDpdKilcbigoPzouKlx8LiooPzpcbnwkKSkqKVxuKi8sdGFibGU6
L14gKlx8KC4rKVxuICpcfCggKlstOl0rWy18IDpdKilcbigoPzogKlx8LiooPzpcbnwkKSkqKVxu
Ki99KTtmdW5jdGlvbiBMZXhlcihvcHRpb25zKXt0aGlzLnRva2Vucz1bXTt0aGlzLnRva2Vucy5s
aW5rcz17fTt0aGlzLm9wdGlvbnM9b3B0aW9uc3x8bWFya2VkLmRlZmF1bHRzO3RoaXMucnVsZXM9
YmxvY2subm9ybWFsO2lmKHRoaXMub3B0aW9ucy5nZm0pe2lmKHRoaXMub3B0aW9ucy50YWJsZXMp
e3RoaXMucnVsZXM9YmxvY2sudGFibGVzfWVsc2V7dGhpcy5ydWxlcz1ibG9jay5nZm19fX1MZXhl
ci5ydWxlcz1ibG9jaztMZXhlci5sZXg9ZnVuY3Rpb24oc3JjLG9wdGlvbnMpe3ZhciBsZXhlcj1u
ZXcgTGV4ZXIob3B0aW9ucyk7cmV0dXJuIGxleGVyLmxleChzcmMpfTtMZXhlci5wcm90b3R5cGUu
bGV4PWZ1bmN0aW9uKHNyYyl7c3JjPXNyYy5yZXBsYWNlKC9cclxufFxyL2csIlxuIikucmVwbGFj
ZSgvXHQvZywiICAgICIpLnJlcGxhY2UoL1x1MDBhMC9nLCIgIikucmVwbGFjZSgvXHUyNDI0L2cs
IlxuIik7cmV0dXJuIHRoaXMudG9rZW4oc3JjLHRydWUpfTtMZXhlci5wcm90b3R5cGUudG9rZW49
ZnVuY3Rpb24oc3JjLHRvcCl7dmFyIHNyYz1zcmMucmVwbGFjZSgvXiArJC9nbSwiIiksbmV4dCxs
b29zZSxjYXAsYnVsbCxiLGl0ZW0sc3BhY2UsaSxsO3doaWxlKHNyYyl7aWYoY2FwPXRoaXMucnVs
ZXMubmV3bGluZS5leGVjKHNyYykpe3NyYz1zcmMuc3Vic3RyaW5nKGNhcFswXS5sZW5ndGgpO2lm
KGNhcFswXS5sZW5ndGg+MSl7dGhpcy50b2tlbnMucHVzaCh7dHlwZToic3BhY2UifSl9fWlmKGNh
cD10aGlzLnJ1bGVzLmNvZGUuZXhlYyhzcmMpKXtzcmM9c3JjLnN1YnN0cmluZyhjYXBbMF0ubGVu
Z3RoKTtjYXA9Y2FwWzBdLnJlcGxhY2UoL14gezR9L2dtLCIiKTt0aGlzLnRva2Vucy5wdXNoKHt0
eXBlOiJjb2RlIix0ZXh0OiF0aGlzLm9wdGlvbnMucGVkYW50aWM/Y2FwLnJlcGxhY2UoL1xuKyQv
LCIiKTpjYXB9KTtjb250aW51ZX1pZihjYXA9dGhpcy5ydWxlcy5mZW5jZXMuZXhlYyhzcmMpKXtz
cmM9c3JjLnN1YnN0cmluZyhjYXBbMF0ubGVuZ3RoKTt0aGlzLnRva2Vucy5wdXNoKHt0eXBlOiJj
b2RlIixsYW5nOmNhcFsyXSx0ZXh0OmNhcFszXX0pO2NvbnRpbnVlfWlmKGNhcD10aGlzLnJ1bGVz
LmhlYWRpbmcuZXhlYyhzcmMpKXtzcmM9c3JjLnN1YnN0cmluZyhjYXBbMF0ubGVuZ3RoKTt0aGlz
LnRva2Vucy5wdXNoKHt0eXBlOiJoZWFkaW5nIixkZXB0aDpjYXBbMV0ubGVuZ3RoLHRleHQ6Y2Fw
WzJdfSk7Y29udGludWV9aWYodG9wJiYoY2FwPXRoaXMucnVsZXMubnB0YWJsZS5leGVjKHNyYykp
KXtzcmM9c3JjLnN1YnN0cmluZyhjYXBbMF0ubGVuZ3RoKTtpdGVtPXt0eXBlOiJ0YWJsZSIsaGVh
ZGVyOmNhcFsxXS5yZXBsYWNlKC9eICp8ICpcfCAqJC9nLCIiKS5zcGxpdCgvICpcfCAqLyksYWxp
Z246Y2FwWzJdLnJlcGxhY2UoL14gKnxcfCAqJC9nLCIiKS5zcGxpdCgvICpcfCAqLyksY2VsbHM6
Y2FwWzNdLnJlcGxhY2UoL1xuJC8sIiIpLnNwbGl0KCJcbiIpfTtmb3IoaT0wO2k8aXRlbS5hbGln
bi5sZW5ndGg7aSsrKXtpZigvXiAqLSs6ICokLy50ZXN0KGl0ZW0uYWxpZ25baV0pKXtpdGVtLmFs
aWduW2ldPSJyaWdodCJ9ZWxzZSBpZigvXiAqOi0rOiAqJC8udGVzdChpdGVtLmFsaWduW2ldKSl7
aXRlbS5hbGlnbltpXT0iY2VudGVyIn1lbHNlIGlmKC9eICo6LSsgKiQvLnRlc3QoaXRlbS5hbGln
bltpXSkpe2l0ZW0uYWxpZ25baV09ImxlZnQifWVsc2V7aXRlbS5hbGlnbltpXT1udWxsfX1mb3Io
aT0wO2k8aXRlbS5jZWxscy5sZW5ndGg7aSsrKXtpdGVtLmNlbGxzW2ldPWl0ZW0uY2VsbHNbaV0u
c3BsaXQoLyAqXHwgKi8pfXRoaXMudG9rZW5zLnB1c2goaXRlbSk7Y29udGludWV9aWYoY2FwPXRo
aXMucnVsZXMubGhlYWRpbmcuZXhlYyhzcmMpKXtzcmM9c3JjLnN1YnN0cmluZyhjYXBbMF0ubGVu
Z3RoKTt0aGlzLnRva2Vucy5wdXNoKHt0eXBlOiJoZWFkaW5nIixkZXB0aDpjYXBbMl09PT0iPSI/
MToyLHRleHQ6Y2FwWzFdfSk7Y29udGludWV9aWYoY2FwPXRoaXMucnVsZXMuaHIuZXhlYyhzcmMp
KXtzcmM9c3JjLnN1YnN0cmluZyhjYXBbMF0ubGVuZ3RoKTt0aGlzLnRva2Vucy5wdXNoKHt0eXBl
OiJociJ9KTtjb250aW51ZX1pZihjYXA9dGhpcy5ydWxlcy5ibG9ja3F1b3RlLmV4ZWMoc3JjKSl7
c3JjPXNyYy5zdWJzdHJpbmcoY2FwWzBdLmxlbmd0aCk7dGhpcy50b2tlbnMucHVzaCh7dHlwZToi
YmxvY2txdW90ZV9zdGFydCJ9KTtjYXA9Y2FwWzBdLnJlcGxhY2UoL14gKj4gPy9nbSwiIik7dGhp
cy50b2tlbihjYXAsdG9wKTt0aGlzLnRva2Vucy5wdXNoKHt0eXBlOiJibG9ja3F1b3RlX2VuZCJ9
KTtjb250aW51ZX1pZihjYXA9dGhpcy5ydWxlcy5saXN0LmV4ZWMoc3JjKSl7c3JjPXNyYy5zdWJz
dHJpbmcoY2FwWzBdLmxlbmd0aCk7YnVsbD1jYXBbMl07dGhpcy50b2tlbnMucHVzaCh7dHlwZToi
bGlzdF9zdGFydCIsb3JkZXJlZDpidWxsLmxlbmd0aD4xfSk7Y2FwPWNhcFswXS5tYXRjaCh0aGlz
LnJ1bGVzLml0ZW0pO25leHQ9ZmFsc2U7bD1jYXAubGVuZ3RoO2k9MDtmb3IoO2k8bDtpKyspe2l0
ZW09Y2FwW2ldO3NwYWNlPWl0ZW0ubGVuZ3RoO2l0ZW09aXRlbS5yZXBsYWNlKC9eICooWyorLV18
XGQrXC4pICsvLCIiKTtpZih+aXRlbS5pbmRleE9mKCJcbiAiKSl7c3BhY2UtPWl0ZW0ubGVuZ3Ro
O2l0ZW09IXRoaXMub3B0aW9ucy5wZWRhbnRpYz9pdGVtLnJlcGxhY2UobmV3IFJlZ0V4cCgiXiB7
MSwiK3NwYWNlKyJ9IiwiZ20iKSwiIik6aXRlbS5yZXBsYWNlKC9eIHsxLDR9L2dtLCIiKX1pZih0
aGlzLm9wdGlvbnMuc21hcnRMaXN0cyYmaSE9PWwtMSl7Yj1ibG9jay5idWxsZXQuZXhlYyhjYXBb
aSsxXSlbMF07aWYoYnVsbCE9PWImJiEoYnVsbC5sZW5ndGg+MSYmYi5sZW5ndGg+MSkpe3NyYz1j
YXAuc2xpY2UoaSsxKS5qb2luKCJcbiIpK3NyYztpPWwtMX19bG9vc2U9bmV4dHx8L1xuXG4oPyFc
cyokKS8udGVzdChpdGVtKTtpZihpIT09bC0xKXtuZXh0PWl0ZW0uY2hhckF0KGl0ZW0ubGVuZ3Ro
LTEpPT09IlxuIjtpZighbG9vc2UpbG9vc2U9bmV4dH10aGlzLnRva2Vucy5wdXNoKHt0eXBlOmxv
b3NlPyJsb29zZV9pdGVtX3N0YXJ0IjoibGlzdF9pdGVtX3N0YXJ0In0pO3RoaXMudG9rZW4oaXRl
bSxmYWxzZSk7dGhpcy50b2tlbnMucHVzaCh7dHlwZToibGlzdF9pdGVtX2VuZCJ9KX10aGlzLnRv
a2Vucy5wdXNoKHt0eXBlOiJsaXN0X2VuZCJ9KTtjb250aW51ZX1pZihjYXA9dGhpcy5ydWxlcy5o
dG1sLmV4ZWMoc3JjKSl7c3JjPXNyYy5zdWJzdHJpbmcoY2FwWzBdLmxlbmd0aCk7dGhpcy50b2tl
bnMucHVzaCh7dHlwZTp0aGlzLm9wdGlvbnMuc2FuaXRpemU/InBhcmFncmFwaCI6Imh0bWwiLHBy
ZTpjYXBbMV09PT0icHJlInx8Y2FwWzFdPT09InNjcmlwdCJ8fGNhcFsxXT09PSJzdHlsZSIsdGV4
dDpjYXBbMF19KTtjb250aW51ZX1pZih0b3AmJihjYXA9dGhpcy5ydWxlcy5kZWYuZXhlYyhzcmMp
KSl7c3JjPXNyYy5zdWJzdHJpbmcoY2FwWzBdLmxlbmd0aCk7dGhpcy50b2tlbnMubGlua3NbY2Fw
WzFdLnRvTG93ZXJDYXNlKCldPXtocmVmOmNhcFsyXSx0aXRsZTpjYXBbM119O2NvbnRpbnVlfWlm
KHRvcCYmKGNhcD10aGlzLnJ1bGVzLnRhYmxlLmV4ZWMoc3JjKSkpe3NyYz1zcmMuc3Vic3RyaW5n
KGNhcFswXS5sZW5ndGgpO2l0ZW09e3R5cGU6InRhYmxlIixoZWFkZXI6Y2FwWzFdLnJlcGxhY2Uo
L14gKnwgKlx8ICokL2csIiIpLnNwbGl0KC8gKlx8ICovKSxhbGlnbjpjYXBbMl0ucmVwbGFjZSgv
XiAqfFx8ICokL2csIiIpLnNwbGl0KC8gKlx8ICovKSxjZWxsczpjYXBbM10ucmVwbGFjZSgvKD86
ICpcfCAqKT9cbiQvLCIiKS5zcGxpdCgiXG4iKX07Zm9yKGk9MDtpPGl0ZW0uYWxpZ24ubGVuZ3Ro
O2krKyl7aWYoL14gKi0rOiAqJC8udGVzdChpdGVtLmFsaWduW2ldKSl7aXRlbS5hbGlnbltpXT0i
cmlnaHQifWVsc2UgaWYoL14gKjotKzogKiQvLnRlc3QoaXRlbS5hbGlnbltpXSkpe2l0ZW0uYWxp
Z25baV09ImNlbnRlciJ9ZWxzZSBpZigvXiAqOi0rICokLy50ZXN0KGl0ZW0uYWxpZ25baV0pKXtp
dGVtLmFsaWduW2ldPSJsZWZ0In1lbHNle2l0ZW0uYWxpZ25baV09bnVsbH19Zm9yKGk9MDtpPGl0
ZW0uY2VsbHMubGVuZ3RoO2krKyl7aXRlbS5jZWxsc1tpXT1pdGVtLmNlbGxzW2ldLnJlcGxhY2Uo
L14gKlx8ICp8ICpcfCAqJC9nLCIiKS5zcGxpdCgvICpcfCAqLyl9dGhpcy50b2tlbnMucHVzaChp
dGVtKTtjb250aW51ZX1pZih0b3AmJihjYXA9dGhpcy5ydWxlcy5wYXJhZ3JhcGguZXhlYyhzcmMp
KSl7c3JjPXNyYy5zdWJzdHJpbmcoY2FwWzBdLmxlbmd0aCk7dGhpcy50b2tlbnMucHVzaCh7dHlw
ZToicGFyYWdyYXBoIix0ZXh0OmNhcFsxXS5jaGFyQXQoY2FwWzFdLmxlbmd0aC0xKT09PSJcbiI/
Y2FwWzFdLnNsaWNlKDAsLTEpOmNhcFsxXX0pO2NvbnRpbnVlfWlmKGNhcD10aGlzLnJ1bGVzLnRl
eHQuZXhlYyhzcmMpKXtzcmM9c3JjLnN1YnN0cmluZyhjYXBbMF0ubGVuZ3RoKTt0aGlzLnRva2Vu
cy5wdXNoKHt0eXBlOiJ0ZXh0Iix0ZXh0OmNhcFswXX0pO2NvbnRpbnVlfWlmKHNyYyl7dGhyb3cg
bmV3IEVycm9yKCJJbmZpbml0ZSBsb29wIG9uIGJ5dGU6ICIrc3JjLmNoYXJDb2RlQXQoMCkpfX1y
ZXR1cm4gdGhpcy50b2tlbnN9O3ZhciBpbmxpbmU9e2VzY2FwZTovXlxcKFtcXGAqe31cW1xdKCkj
K1wtLiFfPl0pLyxhdXRvbGluazovXjwoW14gPl0rKEB8OlwvKVteID5dKyk+Lyx1cmw6bm9vcCx0
YWc6L148IS0tW1xzXFNdKj8tLT58XjxcLz9cdysoPzoiW14iXSoifCdbXiddKid8W14nIj5dKSo/
Pi8sbGluazovXiE/XFsoaW5zaWRlKVxdXChocmVmXCkvLHJlZmxpbms6L14hP1xbKGluc2lkZSlc
XVxzKlxbKFteXF1dKilcXS8sbm9saW5rOi9eIT9cWygoPzpcW1teXF1dKlxdfFteXFtcXV0pKilc
XS8sc3Ryb25nOi9eX18oW1xzXFNdKz8pX18oPyFfKXxeXCpcKihbXHNcU10rPylcKlwqKD8hXCop
LyxlbTovXlxiXygoPzpfX3xbXHNcU10pKz8pX1xifF5cKigoPzpcKlwqfFtcc1xTXSkrPylcKig/
IVwqKS8sY29kZTovXihgKylccyooW1xzXFNdKj9bXmBdKVxzKlwxKD8hYCkvLGJyOi9eIHsyLH1c
big/IVxzKiQpLyxkZWw6bm9vcCx0ZXh0Oi9eW1xzXFNdKz8oPz1bXFw8IVxbXypgXXwgezIsfVxu
fCQpL307aW5saW5lLl9pbnNpZGU9Lyg/OlxbW15cXV0qXF18W15cW1xdXXxcXSg/PVteXFtdKlxd
KSkqLztpbmxpbmUuX2hyZWY9L1xzKjw/KFtcc1xTXSo/KT4/KD86XHMrWyciXShbXHNcU10qPylb
JyJdKT9ccyovO2lubGluZS5saW5rPXJlcGxhY2UoaW5saW5lLmxpbmspKCJpbnNpZGUiLGlubGlu
ZS5faW5zaWRlKSgiaHJlZiIsaW5saW5lLl9ocmVmKSgpO2lubGluZS5yZWZsaW5rPXJlcGxhY2Uo
aW5saW5lLnJlZmxpbmspKCJpbnNpZGUiLGlubGluZS5faW5zaWRlKSgpO2lubGluZS5ub3JtYWw9
bWVyZ2Uoe30saW5saW5lKTtpbmxpbmUucGVkYW50aWM9bWVyZ2Uoe30saW5saW5lLm5vcm1hbCx7
c3Ryb25nOi9eX18oPz1cUykoW1xzXFNdKj9cUylfXyg/IV8pfF5cKlwqKD89XFMpKFtcc1xTXSo/
XFMpXCpcKig/IVwqKS8sZW06L15fKD89XFMpKFtcc1xTXSo/XFMpXyg/IV8pfF5cKig/PVxTKShb
XHNcU10qP1xTKVwqKD8hXCopL30pO2lubGluZS5nZm09bWVyZ2Uoe30saW5saW5lLm5vcm1hbCx7
ZXNjYXBlOnJlcGxhY2UoaW5saW5lLmVzY2FwZSkoIl0pIiwifnxdKSIpKCksdXJsOi9eKGh0dHBz
PzpcL1wvW15cczxdK1tePC4sOjsiJylcXVxzXSkvLGRlbDovXn5+KD89XFMpKFtcc1xTXSo/XFMp
fn4vLHRleHQ6cmVwbGFjZShpbmxpbmUudGV4dCkoIl18Iiwifl18IikoInwiLCJ8aHR0cHM/Oi8v
fCIpKCl9KTtpbmxpbmUuYnJlYWtzPW1lcmdlKHt9LGlubGluZS5nZm0se2JyOnJlcGxhY2UoaW5s
aW5lLmJyKSgiezIsfSIsIioiKSgpLHRleHQ6cmVwbGFjZShpbmxpbmUuZ2ZtLnRleHQpKCJ7Mix9
IiwiKiIpKCl9KTtmdW5jdGlvbiBJbmxpbmVMZXhlcihsaW5rcyxvcHRpb25zKXt0aGlzLm9wdGlv
bnM9b3B0aW9uc3x8bWFya2VkLmRlZmF1bHRzO3RoaXMubGlua3M9bGlua3M7dGhpcy5ydWxlcz1p
bmxpbmUubm9ybWFsO3RoaXMucmVuZGVyZXI9dGhpcy5vcHRpb25zLnJlbmRlcmVyfHxuZXcgUmVu
ZGVyZXI7aWYoIXRoaXMubGlua3Mpe3Rocm93IG5ldyBFcnJvcigiVG9rZW5zIGFycmF5IHJlcXVp
cmVzIGEgYGxpbmtzYCBwcm9wZXJ0eS4iKX1pZih0aGlzLm9wdGlvbnMuZ2ZtKXtpZih0aGlzLm9w
dGlvbnMuYnJlYWtzKXt0aGlzLnJ1bGVzPWlubGluZS5icmVha3N9ZWxzZXt0aGlzLnJ1bGVzPWlu
bGluZS5nZm19fWVsc2UgaWYodGhpcy5vcHRpb25zLnBlZGFudGljKXt0aGlzLnJ1bGVzPWlubGlu
ZS5wZWRhbnRpY319SW5saW5lTGV4ZXIucnVsZXM9aW5saW5lO0lubGluZUxleGVyLm91dHB1dD1m
dW5jdGlvbihzcmMsbGlua3Msb3B0aW9ucyl7dmFyIGlubGluZT1uZXcgSW5saW5lTGV4ZXIobGlu
a3Msb3B0aW9ucyk7cmV0dXJuIGlubGluZS5vdXRwdXQoc3JjKX07SW5saW5lTGV4ZXIucHJvdG90
eXBlLm91dHB1dD1mdW5jdGlvbihzcmMpe3ZhciBvdXQ9IiIsbGluayx0ZXh0LGhyZWYsY2FwO3do
aWxlKHNyYyl7aWYoY2FwPXRoaXMucnVsZXMuZXNjYXBlLmV4ZWMoc3JjKSl7c3JjPXNyYy5zdWJz
dHJpbmcoY2FwWzBdLmxlbmd0aCk7b3V0Kz1jYXBbMV07Y29udGludWV9aWYoY2FwPXRoaXMucnVs
ZXMuYXV0b2xpbmsuZXhlYyhzcmMpKXtzcmM9c3JjLnN1YnN0cmluZyhjYXBbMF0ubGVuZ3RoKTtp
ZihjYXBbMl09PT0iQCIpe3RleHQ9Y2FwWzFdLmNoYXJBdCg2KT09PSI6Ij90aGlzLm1hbmdsZShj
YXBbMV0uc3Vic3RyaW5nKDcpKTp0aGlzLm1hbmdsZShjYXBbMV0pO2hyZWY9dGhpcy5tYW5nbGUo
Im1haWx0bzoiKSt0ZXh0fWVsc2V7dGV4dD1lc2NhcGUoY2FwWzFdKTtocmVmPXRleHR9b3V0Kz10
aGlzLnJlbmRlcmVyLmxpbmsoaHJlZixudWxsLHRleHQpO2NvbnRpbnVlfWlmKGNhcD10aGlzLnJ1
bGVzLnVybC5leGVjKHNyYykpe3NyYz1zcmMuc3Vic3RyaW5nKGNhcFswXS5sZW5ndGgpO3RleHQ9
ZXNjYXBlKGNhcFsxXSk7aHJlZj10ZXh0O291dCs9dGhpcy5yZW5kZXJlci5saW5rKGhyZWYsbnVs
bCx0ZXh0KTtjb250aW51ZX1pZihjYXA9dGhpcy5ydWxlcy50YWcuZXhlYyhzcmMpKXtzcmM9c3Jj
LnN1YnN0cmluZyhjYXBbMF0ubGVuZ3RoKTtvdXQrPXRoaXMub3B0aW9ucy5zYW5pdGl6ZT9lc2Nh
cGUoY2FwWzBdKTpjYXBbMF07Y29udGludWV9aWYoY2FwPXRoaXMucnVsZXMubGluay5leGVjKHNy
Yykpe3NyYz1zcmMuc3Vic3RyaW5nKGNhcFswXS5sZW5ndGgpO291dCs9dGhpcy5vdXRwdXRMaW5r
KGNhcCx7aHJlZjpjYXBbMl0sdGl0bGU6Y2FwWzNdfSk7Y29udGludWV9aWYoKGNhcD10aGlzLnJ1
bGVzLnJlZmxpbmsuZXhlYyhzcmMpKXx8KGNhcD10aGlzLnJ1bGVzLm5vbGluay5leGVjKHNyYykp
KXtzcmM9c3JjLnN1YnN0cmluZyhjYXBbMF0ubGVuZ3RoKTtsaW5rPShjYXBbMl18fGNhcFsxXSku
cmVwbGFjZSgvXHMrL2csIiAiKTtsaW5rPXRoaXMubGlua3NbbGluay50b0xvd2VyQ2FzZSgpXTtp
ZighbGlua3x8IWxpbmsuaHJlZil7b3V0Kz1jYXBbMF0uY2hhckF0KDApO3NyYz1jYXBbMF0uc3Vi
c3RyaW5nKDEpK3NyYztjb250aW51ZX1vdXQrPXRoaXMub3V0cHV0TGluayhjYXAsbGluayk7Y29u
dGludWV9aWYoY2FwPXRoaXMucnVsZXMuc3Ryb25nLmV4ZWMoc3JjKSl7c3JjPXNyYy5zdWJzdHJp
bmcoY2FwWzBdLmxlbmd0aCk7b3V0Kz10aGlzLnJlbmRlcmVyLnN0cm9uZyh0aGlzLm91dHB1dChj
YXBbMl18fGNhcFsxXSkpO2NvbnRpbnVlfWlmKGNhcD10aGlzLnJ1bGVzLmVtLmV4ZWMoc3JjKSl7
c3JjPXNyYy5zdWJzdHJpbmcoY2FwWzBdLmxlbmd0aCk7b3V0Kz10aGlzLnJlbmRlcmVyLmVtKHRo
aXMub3V0cHV0KGNhcFsyXXx8Y2FwWzFdKSk7Y29udGludWV9aWYoY2FwPXRoaXMucnVsZXMuY29k
ZS5leGVjKHNyYykpe3NyYz1zcmMuc3Vic3RyaW5nKGNhcFswXS5sZW5ndGgpO291dCs9dGhpcy5y
ZW5kZXJlci5jb2Rlc3Bhbihlc2NhcGUoY2FwWzJdLHRydWUpKTtjb250aW51ZX1pZihjYXA9dGhp
cy5ydWxlcy5ici5leGVjKHNyYykpe3NyYz1zcmMuc3Vic3RyaW5nKGNhcFswXS5sZW5ndGgpO291
dCs9dGhpcy5yZW5kZXJlci5icigpO2NvbnRpbnVlfWlmKGNhcD10aGlzLnJ1bGVzLmRlbC5leGVj
KHNyYykpe3NyYz1zcmMuc3Vic3RyaW5nKGNhcFswXS5sZW5ndGgpO291dCs9dGhpcy5yZW5kZXJl
ci5kZWwodGhpcy5vdXRwdXQoY2FwWzFdKSk7Y29udGludWV9aWYoY2FwPXRoaXMucnVsZXMudGV4
dC5leGVjKHNyYykpe3NyYz1zcmMuc3Vic3RyaW5nKGNhcFswXS5sZW5ndGgpO291dCs9ZXNjYXBl
KHRoaXMuc21hcnR5cGFudHMoY2FwWzBdKSk7Y29udGludWV9aWYoc3JjKXt0aHJvdyBuZXcgRXJy
b3IoIkluZmluaXRlIGxvb3Agb24gYnl0ZTogIitzcmMuY2hhckNvZGVBdCgwKSl9fXJldHVybiBv
dXR9O0lubGluZUxleGVyLnByb3RvdHlwZS5vdXRwdXRMaW5rPWZ1bmN0aW9uKGNhcCxsaW5rKXt2
YXIgaHJlZj1lc2NhcGUobGluay5ocmVmKSx0aXRsZT1saW5rLnRpdGxlP2VzY2FwZShsaW5rLnRp
dGxlKTpudWxsO2lmKGNhcFswXS5jaGFyQXQoMCkhPT0iISIpe3JldHVybiB0aGlzLnJlbmRlcmVy
LmxpbmsoaHJlZix0aXRsZSx0aGlzLm91dHB1dChjYXBbMV0pKX1lbHNle3JldHVybiB0aGlzLnJl
bmRlcmVyLmltYWdlKGhyZWYsdGl0bGUsZXNjYXBlKGNhcFsxXSkpfX07SW5saW5lTGV4ZXIucHJv
dG90eXBlLnNtYXJ0eXBhbnRzPWZ1bmN0aW9uKHRleHQpe2lmKCF0aGlzLm9wdGlvbnMuc21hcnR5
cGFudHMpcmV0dXJuIHRleHQ7cmV0dXJuIHRleHQucmVwbGFjZSgvLS0vZywi4oCUIikucmVwbGFj
ZSgvKF58Wy1cdTIwMTQvKFxbeyJcc10pJy9nLCIkMeKAmCIpLnJlcGxhY2UoLycvZywi4oCZIiku
cmVwbGFjZSgvKF58Wy1cdTIwMTQvKFxbe1x1MjAxOFxzXSkiL2csIiQx4oCcIikucmVwbGFjZSgv
Ii9nLCLigJ0iKS5yZXBsYWNlKC9cLnszfS9nLCLigKYiKX07SW5saW5lTGV4ZXIucHJvdG90eXBl
Lm1hbmdsZT1mdW5jdGlvbih0ZXh0KXt2YXIgb3V0PSIiLGw9dGV4dC5sZW5ndGgsaT0wLGNoO2Zv
cig7aTxsO2krKyl7Y2g9dGV4dC5jaGFyQ29kZUF0KGkpO2lmKE1hdGgucmFuZG9tKCk+LjUpe2No
PSJ4IitjaC50b1N0cmluZygxNil9b3V0Kz0iJiMiK2NoKyI7In1yZXR1cm4gb3V0fTtmdW5jdGlv
biBSZW5kZXJlcigpe31SZW5kZXJlci5wcm90b3R5cGUuY29kZT1mdW5jdGlvbihjb2RlLGxhbmcp
e2lmKCFsYW5nKXtyZXR1cm4iPHByZT48Y29kZT4iK2VzY2FwZShjb2RlLHRydWUpKyJcbjwvY29k
ZT48L3ByZT4ifXJldHVybic8cHJlPjxjb2RlIGNsYXNzPSInKyJsYW5nLSIrbGFuZysnIj4nK2Vz
Y2FwZShjb2RlKSsiXG48L2NvZGU+PC9wcmU+XG4ifTtSZW5kZXJlci5wcm90b3R5cGUuYmxvY2tx
dW90ZT1mdW5jdGlvbihxdW90ZSl7cmV0dXJuIjxibG9ja3F1b3RlPlxuIitxdW90ZSsiPC9ibG9j
a3F1b3RlPlxuIn07UmVuZGVyZXIucHJvdG90eXBlLmh0bWw9ZnVuY3Rpb24oaHRtbCl7cmV0dXJu
IGh0bWx9O1JlbmRlcmVyLnByb3RvdHlwZS5oZWFkaW5nPWZ1bmN0aW9uKHRleHQsbGV2ZWwscmF3
LG9wdGlvbnMpe3JldHVybiI8aCIrbGV2ZWwrIj4iK3RleHQrIjwvaCIrbGV2ZWwrIj5cbiJ9O1Jl
bmRlcmVyLnByb3RvdHlwZS5ocj1mdW5jdGlvbigpe3JldHVybiI8aHI+XG4ifTtSZW5kZXJlci5w
cm90b3R5cGUubGlzdD1mdW5jdGlvbihib2R5LG9yZGVyZWQpe3ZhciB0eXBlPW9yZGVyZWQ/Im9s
IjoidWwiO3JldHVybiI8Iit0eXBlKyI+XG4iK2JvZHkrIjwvIit0eXBlKyI+XG4ifTtSZW5kZXJl
ci5wcm90b3R5cGUubGlzdGl0ZW09ZnVuY3Rpb24odGV4dCl7cmV0dXJuIjxsaT4iK3RleHQrIjwv
bGk+XG4ifTtSZW5kZXJlci5wcm90b3R5cGUucGFyYWdyYXBoPWZ1bmN0aW9uKHRleHQpe3JldHVy
biI8cD4iK3RleHQrIjwvcD5cbiJ9O1JlbmRlcmVyLnByb3RvdHlwZS50YWJsZT1mdW5jdGlvbiho
ZWFkZXIsYm9keSl7cmV0dXJuIjx0YWJsZT5cbiIrIjx0aGVhZD5cbiIraGVhZGVyKyI8L3RoZWFk
PlxuIisiPHRib2R5PlxuIitib2R5KyI8L3Rib2R5PlxuIisiPC90YWJsZT5cbiJ9O1JlbmRlcmVy
LnByb3RvdHlwZS50YWJsZXJvdz1mdW5jdGlvbihjb250ZW50KXtyZXR1cm4iPHRyPlxuIitjb250
ZW50KyI8L3RyPlxuIn07UmVuZGVyZXIucHJvdG90eXBlLnRhYmxlY2VsbD1mdW5jdGlvbihjb250
ZW50LGZsYWdzKXt2YXIgdHlwZT1mbGFncy5oZWFkZXI/InRoIjoidGQiO3ZhciB0YWc9ZmxhZ3Mu
YWxpZ24/IjwiK3R5cGUrJyBzdHlsZT0idGV4dC1hbGlnbjonK2ZsYWdzLmFsaWduKyciPic6Ijwi
K3R5cGUrIj4iO3JldHVybiB0YWcrY29udGVudCsiPC8iK3R5cGUrIj5cbiJ9O1JlbmRlcmVyLnBy
b3RvdHlwZS5zdHJvbmc9ZnVuY3Rpb24odGV4dCl7cmV0dXJuIjxzdHJvbmc+Iit0ZXh0KyI8L3N0
cm9uZz4ifTtSZW5kZXJlci5wcm90b3R5cGUuZW09ZnVuY3Rpb24odGV4dCl7cmV0dXJuIjxlbT4i
K3RleHQrIjwvZW0+In07UmVuZGVyZXIucHJvdG90eXBlLmNvZGVzcGFuPWZ1bmN0aW9uKHRleHQp
e3JldHVybiI8Y29kZT4iK3RleHQrIjwvY29kZT4ifTtSZW5kZXJlci5wcm90b3R5cGUuYnI9ZnVu
Y3Rpb24oKXtyZXR1cm4iPGJyPiJ9O1JlbmRlcmVyLnByb3RvdHlwZS5kZWw9ZnVuY3Rpb24odGV4
dCl7cmV0dXJuIjxkZWw+Iit0ZXh0KyI8L2RlbD4ifTtSZW5kZXJlci5wcm90b3R5cGUubGluaz1m
dW5jdGlvbihocmVmLHRpdGxlLHRleHQpe3ZhciBvdXQ9JzxhIGhyZWY9IicraHJlZisnIic7aWYo
dGl0bGUpe291dCs9JyB0aXRsZT0iJyt0aXRsZSsnIid9b3V0Kz0iPiIrdGV4dCsiPC9hPiI7cmV0
dXJuIG91dH07UmVuZGVyZXIucHJvdG90eXBlLmltYWdlPWZ1bmN0aW9uKGhyZWYsdGl0bGUsdGV4
dCl7dmFyIG91dD0nPGltZyBzcmM9IicraHJlZisnIiBhbHQ9IicrdGV4dCsnIic7aWYodGl0bGUp
e291dCs9JyB0aXRsZT0iJyt0aXRsZSsnIid9b3V0Kz0iPiI7cmV0dXJuIG91dH07ZnVuY3Rpb24g
UGFyc2VyKG9wdGlvbnMpe3RoaXMudG9rZW5zPVtdO3RoaXMudG9rZW49bnVsbDt0aGlzLm9wdGlv
bnM9b3B0aW9uc3x8bWFya2VkLmRlZmF1bHRzO3RoaXMub3B0aW9ucy5yZW5kZXJlcj10aGlzLm9w
dGlvbnMucmVuZGVyZXJ8fG5ldyBSZW5kZXJlcjt0aGlzLnJlbmRlcmVyPXRoaXMub3B0aW9ucy5y
ZW5kZXJlcn1QYXJzZXIucGFyc2U9ZnVuY3Rpb24oc3JjLG9wdGlvbnMscmVuZGVyZXIpe3ZhciBw
YXJzZXI9bmV3IFBhcnNlcihvcHRpb25zLHJlbmRlcmVyKTtyZXR1cm4gcGFyc2VyLnBhcnNlKHNy
Yyl9O1BhcnNlci5wcm90b3R5cGUucGFyc2U9ZnVuY3Rpb24oc3JjKXt0aGlzLmlubGluZT1uZXcg
SW5saW5lTGV4ZXIoc3JjLmxpbmtzLHRoaXMub3B0aW9ucyx0aGlzLnJlbmRlcmVyKTt0aGlzLnRv
a2Vucz1zcmMucmV2ZXJzZSgpO3ZhciBvdXQ9IiI7d2hpbGUodGhpcy5uZXh0KCkpe291dCs9dGhp
cy50b2soKX1yZXR1cm4gb3V0fTtQYXJzZXIucHJvdG90eXBlLm5leHQ9ZnVuY3Rpb24oKXtyZXR1
cm4gdGhpcy50b2tlbj10aGlzLnRva2Vucy5wb3AoKX07UGFyc2VyLnByb3RvdHlwZS5wZWVrPWZ1
bmN0aW9uKCl7cmV0dXJuIHRoaXMudG9rZW5zW3RoaXMudG9rZW5zLmxlbmd0aC0xXXx8MH07UGFy
c2VyLnByb3RvdHlwZS5wYXJzZVRleHQ9ZnVuY3Rpb24oKXt2YXIgYm9keT10aGlzLnRva2VuLnRl
eHQ7d2hpbGUodGhpcy5wZWVrKCkudHlwZT09PSJ0ZXh0Iil7Ym9keSs9IlxuIit0aGlzLm5leHQo
KS50ZXh0fXJldHVybiB0aGlzLmlubGluZS5vdXRwdXQoYm9keSl9O1BhcnNlci5wcm90b3R5cGUu
dG9rPWZ1bmN0aW9uKCl7c3dpdGNoKHRoaXMudG9rZW4udHlwZSl7Y2FzZSJzcGFjZSI6e3JldHVy
biIifWNhc2UiaHIiOntyZXR1cm4gdGhpcy5yZW5kZXJlci5ocigpfWNhc2UiaGVhZGluZyI6e3Jl
dHVybiB0aGlzLnJlbmRlcmVyLmhlYWRpbmcodGhpcy5pbmxpbmUub3V0cHV0KHRoaXMudG9rZW4u
dGV4dCksdGhpcy50b2tlbi5kZXB0aCl9Y2FzZSJjb2RlIjp7cmV0dXJuIHRoaXMucmVuZGVyZXIu
Y29kZSh0aGlzLnRva2VuLnRleHQsdGhpcy50b2tlbi5sYW5nKX1jYXNlInRhYmxlIjp7dmFyIGhl
YWRlcj0iIixib2R5PSIiLGkscm93LGNlbGwsZmxhZ3MsajtjZWxsPSIiO2ZvcihpPTA7aTx0aGlz
LnRva2VuLmhlYWRlci5sZW5ndGg7aSsrKXtmbGFncz17aGVhZGVyOnRydWUsYWxpZ246dGhpcy50
b2tlbi5hbGlnbltpXX07Y2VsbCs9dGhpcy5yZW5kZXJlci50YWJsZWNlbGwodGhpcy5pbmxpbmUu
b3V0cHV0KHRoaXMudG9rZW4uaGVhZGVyW2ldKSx7aGVhZGVyOnRydWUsYWxpZ246dGhpcy50b2tl
bi5hbGlnbltpXX0pfWhlYWRlcis9dGhpcy5yZW5kZXJlci50YWJsZXJvdyhjZWxsKTtmb3IoaT0w
O2k8dGhpcy50b2tlbi5jZWxscy5sZW5ndGg7aSsrKXtyb3c9dGhpcy50b2tlbi5jZWxsc1tpXTtj
ZWxsPSIiO2ZvcihqPTA7ajxyb3cubGVuZ3RoO2orKyl7Y2VsbCs9dGhpcy5yZW5kZXJlci50YWJs
ZWNlbGwodGhpcy5pbmxpbmUub3V0cHV0KHJvd1tqXSkse2hlYWRlcjpmYWxzZSxhbGlnbjp0aGlz
LnRva2VuLmFsaWduW2pdfSl9Ym9keSs9dGhpcy5yZW5kZXJlci50YWJsZXJvdyhjZWxsKX1yZXR1
cm4gdGhpcy5yZW5kZXJlci50YWJsZShoZWFkZXIsYm9keSl9Y2FzZSJibG9ja3F1b3RlX3N0YXJ0
Ijp7dmFyIGJvZHk9IiI7d2hpbGUodGhpcy5uZXh0KCkudHlwZSE9PSJibG9ja3F1b3RlX2VuZCIp
e2JvZHkrPXRoaXMudG9rKCl9cmV0dXJuIHRoaXMucmVuZGVyZXIuYmxvY2txdW90ZShib2R5KX1j
YXNlImxpc3Rfc3RhcnQiOnt2YXIgYm9keT0iIixvcmRlcmVkPXRoaXMudG9rZW4ub3JkZXJlZDt3
aGlsZSh0aGlzLm5leHQoKS50eXBlIT09Imxpc3RfZW5kIil7Ym9keSs9dGhpcy50b2soKX1yZXR1
cm4gdGhpcy5yZW5kZXJlci5saXN0KGJvZHksb3JkZXJlZCl9Y2FzZSJsaXN0X2l0ZW1fc3RhcnQi
Ont2YXIgYm9keT0iIjt3aGlsZSh0aGlzLm5leHQoKS50eXBlIT09Imxpc3RfaXRlbV9lbmQiKXti
b2R5Kz10aGlzLnRva2VuLnR5cGU9PT0idGV4dCI/dGhpcy5wYXJzZVRleHQoKTp0aGlzLnRvaygp
fXJldHVybiB0aGlzLnJlbmRlcmVyLmxpc3RpdGVtKGJvZHkpfWNhc2UibG9vc2VfaXRlbV9zdGFy
dCI6e3ZhciBib2R5PSIiO3doaWxlKHRoaXMubmV4dCgpLnR5cGUhPT0ibGlzdF9pdGVtX2VuZCIp
e2JvZHkrPXRoaXMudG9rKCl9cmV0dXJuIHRoaXMucmVuZGVyZXIubGlzdGl0ZW0oYm9keSl9Y2Fz
ZSJodG1sIjp7dmFyIGh0bWw9IXRoaXMudG9rZW4ucHJlJiYhdGhpcy5vcHRpb25zLnBlZGFudGlj
P3RoaXMuaW5saW5lLm91dHB1dCh0aGlzLnRva2VuLnRleHQpOnRoaXMudG9rZW4udGV4dDtyZXR1
cm4gdGhpcy5yZW5kZXJlci5odG1sKGh0bWwpfWNhc2UicGFyYWdyYXBoIjp7cmV0dXJuIHRoaXMu
cmVuZGVyZXIucGFyYWdyYXBoKHRoaXMuaW5saW5lLm91dHB1dCh0aGlzLnRva2VuLnRleHQpKX1j
YXNlInRleHQiOntyZXR1cm4gdGhpcy5yZW5kZXJlci5wYXJhZ3JhcGgodGhpcy5wYXJzZVRleHQo
KSl9fX07ZnVuY3Rpb24gZXNjYXBlKGh0bWwsZW5jb2RlKXtyZXR1cm4gaHRtbC5yZXBsYWNlKCFl
bmNvZGU/LyYoPyEjP1x3KzspL2c6LyYvZywiJmFtcDsiKS5yZXBsYWNlKC88L2csIiZsdDsiKS5y
ZXBsYWNlKC8+L2csIiZndDsiKS5yZXBsYWNlKC8iL2csIiZxdW90OyIpLnJlcGxhY2UoLycvZywi
JiMzOTsiKX1mdW5jdGlvbiByZXBsYWNlKHJlZ2V4LG9wdCl7cmVnZXg9cmVnZXguc291cmNlO29w
dD1vcHR8fCIiO3JldHVybiBmdW5jdGlvbiBzZWxmKG5hbWUsdmFsKXtpZighbmFtZSlyZXR1cm4g
bmV3IFJlZ0V4cChyZWdleCxvcHQpO3ZhbD12YWwuc291cmNlfHx2YWw7dmFsPXZhbC5yZXBsYWNl
KC8oXnxbXlxbXSlcXi9nLCIkMSIpO3JlZ2V4PXJlZ2V4LnJlcGxhY2UobmFtZSx2YWwpO3JldHVy
biBzZWxmfX1mdW5jdGlvbiBub29wKCl7fW5vb3AuZXhlYz1ub29wO2Z1bmN0aW9uIG1lcmdlKG9i
ail7dmFyIGk9MSx0YXJnZXQsa2V5O2Zvcig7aTxhcmd1bWVudHMubGVuZ3RoO2krKyl7dGFyZ2V0
PWFyZ3VtZW50c1tpXTtmb3Ioa2V5IGluIHRhcmdldCl7aWYoT2JqZWN0LnByb3RvdHlwZS5oYXNP
d25Qcm9wZXJ0eS5jYWxsKHRhcmdldCxrZXkpKXtvYmpba2V5XT10YXJnZXRba2V5XX19fXJldHVy
biBvYmp9ZnVuY3Rpb24gbWFya2VkKHNyYyxvcHQsY2FsbGJhY2spe2lmKGNhbGxiYWNrfHx0eXBl
b2Ygb3B0PT09ImZ1bmN0aW9uIil7aWYoIWNhbGxiYWNrKXtjYWxsYmFjaz1vcHQ7b3B0PW51bGx9
b3B0PW1lcmdlKHt9LG1hcmtlZC5kZWZhdWx0cyxvcHR8fHt9KTt2YXIgaGlnaGxpZ2h0PW9wdC5o
aWdobGlnaHQsdG9rZW5zLHBlbmRpbmcsaT0wO3RyeXt0b2tlbnM9TGV4ZXIubGV4KHNyYyxvcHQp
fWNhdGNoKGUpe3JldHVybiBjYWxsYmFjayhlKX1wZW5kaW5nPXRva2Vucy5sZW5ndGg7dmFyIGRv
bmU9ZnVuY3Rpb24oKXt2YXIgb3V0LGVycjt0cnl7b3V0PVBhcnNlci5wYXJzZSh0b2tlbnMsb3B0
KX1jYXRjaChlKXtlcnI9ZX1vcHQuaGlnaGxpZ2h0PWhpZ2hsaWdodDtyZXR1cm4gZXJyP2NhbGxi
YWNrKGVycik6Y2FsbGJhY2sobnVsbCxvdXQpfTtyZXR1cm4gZG9uZSgpfXRyeXtpZihvcHQpb3B0
PW1lcmdlKHt9LG1hcmtlZC5kZWZhdWx0cyxvcHQpO3JldHVybiBQYXJzZXIucGFyc2UoTGV4ZXIu
bGV4KHNyYyxvcHQpLG9wdCl9Y2F0Y2goZSl7ZS5tZXNzYWdlKz0iXG5QbGVhc2UgcmVwb3J0IHRo
aXMgdG8gaHR0cHM6Ly9naXRodWIuY29tL2NoamovbWFya2VkLiI7aWYoKG9wdHx8bWFya2VkLmRl
ZmF1bHRzKS5zaWxlbnQpe3JldHVybiI8cD5BbiBlcnJvciBvY2N1cmVkOjwvcD48cHJlPiIrZXNj
YXBlKGUubWVzc2FnZSsiIix0cnVlKSsiPC9wcmU+In10aHJvdyBlfX1tYXJrZWQub3B0aW9ucz1t
YXJrZWQuc2V0T3B0aW9ucz1mdW5jdGlvbihvcHQpe21lcmdlKG1hcmtlZC5kZWZhdWx0cyxvcHQp
O3JldHVybiBtYXJrZWR9O21hcmtlZC5kZWZhdWx0cz17Z2ZtOnRydWUsdGFibGVzOnRydWUsYnJl
YWtzOmZhbHNlLHBlZGFudGljOmZhbHNlLHNhbml0aXplOmZhbHNlLHNtYXJ0TGlzdHM6ZmFsc2Us
c2lsZW50OmZhbHNlLHNtYXJ0eXBhbnRzOmZhbHNlLHJlbmRlcmVyOm5ldyBSZW5kZXJlcn07bWFy
a2VkLlBhcnNlcj1QYXJzZXI7bWFya2VkLnBhcnNlcj1QYXJzZXIucGFyc2U7bWFya2VkLlJlbmRl
cmVyPVJlbmRlcmVyO21hcmtlZC5MZXhlcj1MZXhlcjttYXJrZWQubGV4ZXI9TGV4ZXIubGV4O21h
cmtlZC5JbmxpbmVMZXhlcj1JbmxpbmVMZXhlcjttYXJrZWQuaW5saW5lTGV4ZXI9SW5saW5lTGV4
ZXIub3V0cHV0O21hcmtlZC5wYXJzZT1tYXJrZWQ7aWYodHlwZW9mIGV4cG9ydHM9PT0ib2JqZWN0
Iil7bW9kdWxlLmV4cG9ydHM9bWFya2VkfWVsc2UgaWYodHlwZW9mIGRlZmluZT09PSJmdW5jdGlv
biImJmRlZmluZS5hbWQpe2RlZmluZShmdW5jdGlvbigpe3JldHVybiBtYXJrZWR9KX1lbHNle3Ro
aXMubWFya2VkPW1hcmtlZH19KS5jYWxsKGZ1bmN0aW9uKCl7cmV0dXJuIHRoaXN8fCh0eXBlb2Yg
d2luZG93IT09InVuZGVmaW5lZCI/d2luZG93Omdsb2JhbCl9KCkpOw==
