require 'sinatra'
require 'rubygems'
require 'pismo'
require 'json'
require 'thin'

get '/' do
	begin
		url = params[:url]
		logger.info "#{url}"
		unless url[/^http:\/\//] || url[/^https:\/\//]
	    url = 'http://' + url
	  end
		raise 'Invalid URL' if url.empty?
		doc = Pismo::Document.new(url)
		post = {
			:url => url,
			:favicon => doc.favicon,
			:feed => doc.feed,
			:title => doc.title,
			:author => doc.author,
			:excerpt => doc.description,
			:body_text => doc.body,
			:body_html => doc.html_body,
			:images => nil,
			:timestamp => doc.datetime
		}
		if !doc.images.nil?
			post[:images] = doc.images
		end
	  content_type :json
	  JSON.pretty_generate(post)
	rescue Exception => e
		logger.error e
	end
end