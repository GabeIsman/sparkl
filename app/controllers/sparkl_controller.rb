class SparklController < ApplicationController
    respond_to :html
    def index
        @sparks = { 
            :type => "tweet",
            :content => "Sparkl dude this is awesome.",
            :url => "http://www.google.com",
            :author => "@gabeisman",
            :source => "twitter"
        }

        respond_with(@sparks)
    end
end
