class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    
    # @authorization = Authorization.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
    # if @authorization
    #   render :text => "Welcome back #{@authorization.user.name}! You have already signed up."
    # else
    #   user = User.new :name => auth_hash["info"]["name"], :email => auth_hash["info"]["email"]
    #   user.authorizations.build :provider => auth_hash["provider"], :uid => auth_hash["uid"]
    #   user.save
    #   render :text => "Hi #{user.name}! You've signed up."
    # end
    # puts current_user
    # redirect_to user_path
  end

  def destroy
    session[:user_id] = nil
    logout
    flash[:notice] = "Successfully logged out."
    redirect_to root_path
  end

  def failure
    render :text => "Sorry, but you didn't allow access to our app!"
  end
end
