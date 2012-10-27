class SparksController < ApplicationController
    respond_to :json
    def index
        @sparks = { 
            :sparks => {
                :type => "tweet",
                :content => "Sparkl dude this is awesome.",
                :url => "http://www.google.com",
                :author => "@gabeisman",
                :source => "twitter",
            }
        }

        respond_with(@sparks)
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
