class SparklController < ApplicationController
    respond_to :html
    def index
        @sparks = { 
            :type => "tweet",
            :content => "Sparkl dude this is awesome.",
            :url => "http://www.google.com",
            :author => "@gabeisman",
            :source => "twitter",
            :id => params[:id]
        }

        respond_with(@sparks)
    end
end
