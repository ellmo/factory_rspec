require 'test_helper'

class UserTest < ActiveSupport::TestCase
  context "a new user" do
    setup do
      @user = Factory.create(:user)
    end
    
    # PRESENCE
    should validate_presence_of :login
    should validate_presence_of :email
    should validate_presence_of :pass
    
    # UNIQUE
    should validate_uniqueness_of :login
    should validate_uniqueness_of :email
  end
end
