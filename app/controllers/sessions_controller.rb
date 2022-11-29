class SessionsController < ApplicationController
  #we set a cookie on the user's browser by writing their user ID into the session hash.
  #the user is logged in. session[:user_id] will hold their user ID.
  def create
        user = User.find_by(username: params[:username])
        if user
            session[:user_id] = user.id
            render json: user
        end
  end
    #use delete the session once user refresh the screen
    def destroy
        session.delete :user
        head :no_content
    end
end
