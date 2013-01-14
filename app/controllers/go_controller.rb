class GoController < ApplicationController

	def index
	end


	require 'net/http'
	require 'uri'

	octopart_api_key = '298ff890'

	octopart_api_base_url      = 'http://octopart/api/v2/'
	fetch_multi_pns_by_ids_url = octopart_api_base_url + "parts/get_multi"
	search_pns_url = 						 octopart_api_base_url + "parts/search"

	CYP_SRAMS_URL = search_pns_url + "/q=CY7C"

	# HOME 
	# Queries Octopart with a PN string, and displays the results.

  def home
  	#uri = URI.parse("http://octopart.com/api/v2/parts/search?q=CY7C2544")
  	uri = URI.parse("http://octopart.com/api/v2/parts/search?q=MT49H&apikey=298ff890")
  	#@data = Net::HTTP.get(uri) - works
  	#render :json => @data
  	@data = MultiJson.load(Net::HTTP.get(uri))
  	@data = @data["results"]
  end

  
end
