class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :admin_user
  has_many :comments
  acts_as_taggable
end
