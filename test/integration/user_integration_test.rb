require 'test_helper'

class UserIntegrationTest < ActionDispatch::IntegrationTest
    
    def setup 
        @user = User.create(username: "exaple", email: "example@grinnell.edu", password: "example_password" )
    end 
    
    test "user can login and logout" do 
        get user_session_path
        post user_session_path, params: { session: {email: @user.email, password: 'example_password' } }
        # test doesn't know what the user_signed_in? method is
        assert user_signed_in?
        assert_redirected_to root_url
        follow_redirect!
        assert_template '/'
        user_session.destroy
        assert_not user_signed_in?
        assert_redirected_to root_url
    end 
    
    test "cannot login if account does not exist" do 
        one_count = User.count
        get user_session_path
        post user_session_path, params: { session: {login: "notvalid@gmail.com", password: 'invalid_password' } }
        assert_not user_signed_in?
        new_count = User.count
        assert_equal(one_count, new_count, "invalid login doesn't update database")
    end 
    
    test "will login if account exists" do 
        get user_session_path
        post user_session_path, params: { session: { login: "example", password: "example_password" } }
        assert user_signed_in?
    end 
    
    test "signup adds user to database, they can now log in" do 
        first_count = User.count
        get new_user_registration_path
        post new_user_registration_path, params: { session: {username: "test", 
                                                             email: "test@grinnell.edu", 
                                                             password: "testpassword", 
                                                             password_confirmation: "testpassword" } }
        assert_equal(first_count + 1, User.count, "user successfully added to database")
        get user_session_path 
        post user_session_path, params: { session: {login: "test@grinnell.edu", password: "testpassword" } }
        assert user_signed_in?
    end
    
    test "update password and check to see if it works" do 
        
    end 
    
    
    
end 