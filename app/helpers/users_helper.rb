module UsersHelper

  # returns the gravatar for the given user
  def gravatar_for user, params = { size: 40 }
    gravatar_id = Digest::MD5::hexdigest user.email.downcase
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{params[:size]}"
    image_tag gravatar_url, alt: user.name, class: 'gravatar'
  end

end
