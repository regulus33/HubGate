require 'net/http'
class ContactsController < ApplicationController
	def recent
		url = URI.parse('https://api.hubapi.com/contacts/v1/lists/all/contacts/recent?hapikey=demo&count=2')
		req = Net::HTTP::Get.new(url.to_s)
		res = Net::HTTP.start(url.host, url.port) {|http|
		  http.request(req)
		}
		puts res.body
	end
end
