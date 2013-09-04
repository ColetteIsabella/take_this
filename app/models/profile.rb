class Profile < ActiveRecord::Base

  belongs_to :user

  has_many :permissions, :as => :thing
  def self.viewable_by(user)
    joins(:permissions).where(permissions: { :action => "view", :user_id => user.id })
  end

  def self.for(user)
    user.admin? ? Profile : Profile.viewable_by(user)
  end
end
