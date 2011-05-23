if defined?(::User)
  User.find(:all).each do |user|
    if user.plugins.where(:name => 'image_rotators').blank?
      user.plugins.create(:name => "image_rotators",
                          :position => (user.plugins.maximum(:position) || -1) +1)
    end
  end
end
