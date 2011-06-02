# This will guess the User class
require 'digest'

Factory.define :user do |u|
  u.sequence(:login) {|i| "JohnDoe#{i}" } 
  u.pass {|u| Digest::SHA1.hexdigest(u.login)}
  u.email {|u| u.login + "@example.com"}
  u.association :role
end