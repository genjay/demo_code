require 'open-uri'
require 'Nokogiri'
require 'ap'

source_html = open('http://www.esunbank.com.tw/info/rate_spot_exchange.aspx').read

html_doc = Nokogiri::HTML(source_html)

is_first = true
rate={}

html_doc.search('table.datatable tr').each do |tr|

	  tds = tr.search('td')
	  key = tds[0].search('a').inner_html
	  rate[key]= [tds[1].inner_html.to_f, tds[2].inner_html.to_f]
	  key = tds[3].search('a').inner_html if tds[3]
	  rate[key]= [tds[4].inner_html.to_f, tds[5].inner_html.to_f]
end
 ap rate
 
