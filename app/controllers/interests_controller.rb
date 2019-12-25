class InterestsController < ApplicationController
    before_action :set_interest, only: [:show, :edit, :update, :destroy]
    
    def index
        # @user_interestt = UserInterestt.all
        @user_interestt = current_user.user_interestts

    end
    def new
        @interest = Interest.new
    end
    def create
        @interest = Interest.where(link: interest_params[:link]).first_or_create(interest_params) 
        # @interest = Interest.create(interest_params)
        # @user_interestt = UserInterestt.create(user_id: current_user.id, interest_id: @interest.id)
        @user_interestt = UserInterestt.where(user_id: current_user.id, interest_id: @interest.id).first_or_create

    end
    
    def destroy
        
        @interestx.destroy
        # respond_to do |format|
        #   format.html { redirect_to films_url, notice: 'Film was successfully destroyed.' }
        #   format. json { head :no_content }
        # end
    
    
    end

    def set_interest
        @interestx = UserInterestt.find(params[:id])

    end
    private
    def interest_params
        params.require(:interest).permit(:title, :description, :link, :image)
    end
end