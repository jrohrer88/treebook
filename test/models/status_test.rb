require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  test "that a status requires content" do 
  	status = Status.new
  	assert !status.save
  	assert !status.errors[:content].empty?
  	
  end

	test "That the minimum length is two characters" do 
		status = Status.new
		status.content = "H"
		assert !status.save
		assert !status.errors[:content].empty?
	end

	test "That a status has a user id" do
		status = Status.new
		status.content = "Hello"
		assert !status.save
		assert !status.errors[:user_id].empty?
	end


end
