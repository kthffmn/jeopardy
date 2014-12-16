class User < ActiveRecord::Base

  def self.create_with_omniauth(auth)
    self.create(
      :provider => auth["provider"],
      :uid => auth["uid"],
      :name => auth["info"]["name"]
    )
  end

end