require 'spec_helper'

describe Role do
  it "should not be allowed to take an existing name" do
    role = Factory.create(:role)
    role2 = Role.new
    role2.name = role.name
    role2.valid?.should be_false
  end
end
