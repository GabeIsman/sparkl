class ApiController < ApplicationController
    respond_to :json

    def data
        stub_data = { 
            :type => "tweet",
            :content => "Sparkl like a clear october day on a lake in the mountains.",
            :url => "http://www.google.com",
            :author => "@gabeisman",
            :source => "twitter"
        }

        respond_with(stub_data)
    end
end
