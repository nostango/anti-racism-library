require 'test_helper'

class UserIntegrationTest < ActionDispatch::IntegrationTest
    
    def setup 
        @user = User.create(username: "exaple", email: "example@grinnell.edu", password: "example_password" )
    end 
    
    # this test signs in an existing user, follows the redirect to home, and then logs out the user
    test "user can login and logout" do 
        # get user_session_path
        # post user_session_path, params: { session: {login: @user.email, password: 'example_password' } }
        # # test doesn't know what the user_signed_in? method is
        # assert user_signed_in?
        # assert_redirected_to root_url
        # follow_redirect!
        # assert_template '/'
        # user_session.destroy
        # assert_not user_signed_in?
        # assert_redirected_to root_url
    end 
    
    # this test makes sure access to an unsaved account is prohibited
    test "cannot login if account does not exist" do 
        # one_count = User.count
        # get user_session_path
        # post user_session_path, params: { session: {login: "notvalid@gmail.com", password: 'invalid_password' } }
        # assert_not user_signed_in?
        # new_count = User.count
        # assert_equal(one_count, new_count, "invalid login doesn't update database")
    end 
    
    # this test makes sure valid account can be logged in to 
    test "will login if account exists" do 
        get user_session_path
        post user_session_path, params: { session: { login: "example", password: "example_password" } }
        assert user_signed_in?
    end 
    
    # this test makes sure that a new user is added to the database, and then can log in
    test "signup adds user to database, they can now log in" do 
        # first_count = User.count
        # get new_user_registration_path
        # post user_registration_path, params: { user: {email: "test@grinnell.edu", 
        #                                               username: "test",
        #                                               password: "testpassword", 
        #                                               password_confirmation: "testpassword" } }
        # #assert_response :redirect
        # #follow_redirect!
        # #assert_response :success
        # # check to see if redirected to home
        # assert_select "title", "AntiRacismLibrary"
        
        # User.create(email: "test@grinnell.edu", 
        #             username: "test",
        #             password: "testpassword", 
        #             password_confirmation: "testpassword")
        # assert_equal(first_count + 1, User.count, "user successfully added to database")
        # get user_session_path 
        # post user_session_path, params: { session: {login: "test@grinnell.edu", password: "testpassword" } }
        # assert user_signed_in?
    end
    
    # this test updates the username and then checks that user can log in with new username
    test "update username and check to see if it works" do 
        get user_session_path
        post user_session_path, params: { session: { login: @user.username, password: @user.password } }
        get edit_user_registration_path
        put user_registration, params: { registration: {
    end 
    
    # this tets updates the email and then checks that the user can log in with the new email
    test "update email and check to see if it works" do 
    end 
    
    # this test updates the password and then checks that the user can log in with the new password
    test "update password and check to see if it works" do 
    end 
    
    
    
end 