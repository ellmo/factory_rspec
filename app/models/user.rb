class User < ActiveRecord::Base
  validates_presence_of :login, :pass, :email
  validates_uniqueness_of :login, :email
end
