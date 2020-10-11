require 'test_helper'

class UserTest < ActiveSupport::TestCase
  VALID_GRINNELL_EMAIL_REGEX = /\A[\w+\-.]+@grinnell\.edu/i
  def setup
    @user = User.new(email: "user@grinnell.edu")
  end

  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@grinnell.edu USER123@grinnell.edu userUs12eR@grinnell.edu]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert :email, format: { with: VALID_GRINNELL_EMAIL_REGEX }
    end
  end
end
