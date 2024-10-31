class UsersController < ApplicationController
  def index
  end

  def show
    return not_found("User not found") unless params[:id] == "1"

    # METHOD 1
    user = UserService.new.get_user_oauth_provider
    render json: user

    # METHOD 2
    # user = UserService.new.get_user_google_oauth_provider
    # user = UserService.new.get_user_facebook_oauth_provider
    # render json: user

    # METHOD 3 - DIP
    # user = UserService.new.get_user_oauth_provider(UserGoogleService)
    # user = UserService.new.get_user_oauth_provider(UserFacebookService)
    # render json: user
  end
end