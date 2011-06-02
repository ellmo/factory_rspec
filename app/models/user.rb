class User < ActiveRecord::Base
  belongs_to :role
  
  validates_presence_of :login, :pass, :email #, :role_id
  validates_uniqueness_of :login, :email
end
