require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


  def setup
    @user = User.new(name: "cocomo", email:"cocomo@cocomo.com",istype:"student",password:"1234",rollnumber:"1231")
  end

  test "should be valid" do
    assert @user.valid?
  end
 
end
