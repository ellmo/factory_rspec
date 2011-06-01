require 'test_helper'

class UserTest < ActiveSupport::TestCase
  context "a new user" do
    setup do
      @user = Factory.create(:user)
    end
    
    should validate_uniqueness_of :login
    should validate_uniqueness_of :email
  end
end
