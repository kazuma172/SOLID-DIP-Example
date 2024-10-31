class UserService
  def initialize
  end

  # METHOD 1: đổi trực tiếp
  def get_user_oauth_provider
    # UserGoogleService.new.get_user
    UserFacebookService.new.get_user
  end

  # METHOD 2: tạo nhiều method để gọi từng service
  # def get_user_google_oauth_provider
  #   UserGoogleService.new.get_user
  # end

  # def get_user_facebook_oauth_provider
  #   UserFacebookService.new.get_user
  # end

  # METHOD 3: dùng method chung để gọi service từ param
  # def get_user_oauth_provider(user_oauth_service)
  #   user_oauth_service.new.get_user
  # end
end