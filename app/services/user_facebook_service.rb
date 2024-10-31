class UserFacebookService
  def initialize
  end

  def get_user
    {
      id: 1,
      oauth_provider: "facebook",
      name: "John Doe",
      email: ""
    }
  end
end
