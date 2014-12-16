class User < ActiveRecord::Base

  def self.find_or_create_from_auth_hash(auth)
    found = User.where(:provider => auth["provider"], :uid => auth["uid"])
    return found[0] if !found.empty?
    user = self.create(
      :provider => auth["provider"],
      :uid => auth["uid"],
      :name => auth["info"]["name"],
      :first_name => auth["info"]["first_name"],
      :last_name => auth["info"]["last_name"],
      :image => auth["info"]["image"]
    )
  end

end
