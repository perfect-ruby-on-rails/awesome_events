module SignInHelper
  def sign_in_as(user)
    OmniAuth.config.test_mode = true
    OmniAuth.config.add_mock(
      user.provider,
      uid: user.uid,
      info: { nickname: user.name,
              image: user.image_url })

    visit root_url
    click_on "GitHubでログイン"
    @current_user = user
  end

  def current_user
    @current_user
  end
end