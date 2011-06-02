require 'spec_helper'

describe User do
  
  it "should not be allowed to take an existing login" do
    user = Factory.create(:user)
    user2 = User.new
    user2.login = user.login
    user2.valid?.should be_false
  end
  
  it "should not be allowed to take an existing email" do
    user = Factory.create(:user)
    user2 = User.new
    user2.email = user.email
    user2.valid?.should be_false
  end
  
end
