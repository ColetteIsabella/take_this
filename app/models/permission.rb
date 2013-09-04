class Permission < ActiveRecord::Base
attr_accessor :user, :action, :thing
belongs_to :user
belongs_to :thing, polymorphic: true
end
