class UserInteresttsController < ApplicationController
    before_action :set_interest, only: [:show]

    def show
        
    end
    
    def destroy
    @user_interestt = UserInterestt.find(params[:id])
    @user_interestt.destroy
    redirect_to interests_path
    end

    def set_interest
        @interestx = UserInterestt.find(params[:id])

    end

end