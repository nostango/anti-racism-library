require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  
  # page request tests
  test "should get new" do
    get items_new_url
    assert_response :success
  end
  
  test "should get update" do 
    
    
  end 
  
  
  # functionality tests
  test "invalid item isn't saved" do 
    
  end
  
  test "new items are saved to database" do 
    
  end 
  
  test "destroyed item no longer exists" do 
    
  end 
  
  test "update item does not add a new item" do
  
  end 
  
  test "update item has updated parameters" do 
    
  end 
  
  test "cannot get item that doesn't exist" do 
    
  end 

end
