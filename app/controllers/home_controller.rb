class HomeController < ApplicationController

    def index
        @user_interestt = UserInterestt.all
    end

    

    
end