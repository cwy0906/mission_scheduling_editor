class PagesController < ApplicationController
    def index
        @missions = Mission.all     
    end    

    

end
