class User < ActiveRecord::Base
  include Authem::User
  validates :email, :password, presence: true
  has_many :about_comments, foreign_key: 'about_id', class_name: 'Comment'
  has_many :written_comments, foreign_key: 'author_id', class_name: 'Comment'
end
