class Profile < ActiveRecord::Base
attr_accessor :name, :email
belongs_to :user
end
