class SparksController < ApplicationController
    respond_to :json
    def index
        response = HTTParty.get("https://api.instagram.com/v1/media/popular?client_id=d833736ad4074a84b7dde1aeed72ab31")
        urls = response.parsed_response["data"].map{|a| a["images"]}.map{|a| a["low_resolution"]}
        respond_with(urls)
    end

    def view
        @spark = { 
            :type => "tweet",
            :content => "Sparkl dude this is awesome.",
            :url => "http://www.google.com",
            :author => "@gabeisman",
            :source => "twitter",
            :id => params[:id]
        }

        respond_with(@spark)
    end
end
