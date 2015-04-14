class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :admin_user
  acts_as_taggable
end
