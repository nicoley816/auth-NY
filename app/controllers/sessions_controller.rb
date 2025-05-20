class SessionsController < ApplicationController
  def new
    # render login form in sessions/new.html.erb
  end

  def create #when user submits session code
    # authenticate the user
    # 1. try to find the user by their unique identifier
    @user = User.find_by({"email" => params["email"]})
    # 2. if the user exists -> check if they know their password 
    if @user !=nil #if user doesn't exist, send them to 4

    # 3. if they know their password -> login is successful
  #if do exist, need to check password
      if BCrypt::Password.new(@user["password"]) == params["password"] #if matches
        
        #add cookies here
        #cookies["monster"] = "me like cookies"
        #session = encrypted version of a cookie jar

        flash["notice"] = "Welcome"
        redirect_to "/companies?logged_in_user_id=#{user["id"]}"
    else
      flash["notice"] = "Nope"
      redirect_to "/login"
    end
  else

    # 4. if the user doesn't exist or they don't know their password -> login fails
        flash["notice"] = "Nope"
        redirect_to "/login"
    end
  end

  def destroy
    # logout the user
    session["user_id"] = nil
    flash["notice"] = "Goodbye."
    redirect_to "/login"
  end
end
