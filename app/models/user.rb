class User < ActiveRecord::Base
  include Authem::User
  validates :email, :password, presence: true
end
