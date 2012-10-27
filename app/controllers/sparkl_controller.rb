class SparklController < ApplicationController
    respond_to :html
    def index
        @sparks = { 
            :type => "tweet",
            :content => "Sparkl dude this is awesome.",
            :url => "http://profile.ak.fbcdn.net/hprofile-ak-snc6/277110_162454007121996_446887833_n.jpg",
            :author => "@gabeisman",
            :source => "twitter",
            :id => params[:id]
        }

        respond_with(@sparks)
    end
end
