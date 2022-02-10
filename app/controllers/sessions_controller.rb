class SessionsController < ApplicationController

    def new
        
    end

    def create
        user = User.find_by_email(params[:email])
    # If the user exists AND the password entered is correct.
        if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      @message = "ok"
      redirect_to root_path
        else
            @message = "Incorrect email / password"
            redirect_to login_path
      #render :action => :new, :alert => "Some errors occured"
    end
    end
    
    def destroy
        session[:user_id] = nil
        redirect_to login_path
    end
    
    
end
