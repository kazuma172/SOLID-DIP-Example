class UserGoogleService
  def initialize
  end

  def get_user
    {
      id: 1,
      oauth_provider: "google",
      name: "John Doe",
      email: ""
    }
  end
end
