require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @item = Item.new(title: "Example Item", 
                     author: "Example Author", 
                     description: "Example Description", 
                     url: "example.com", 
                     category: "Journal")
    
    @invalid_item = Item.new(title: "", 
                             author: "", 
                             description: "", 
                             url: "", 
                             category: "Journal")
  end
  
  
  
#### PAGE REQUEST TESTS ####

  test "should get new" do
    get items_new_url
    assert_response :success
  end
  
  test "should get update" do 
    get items_edit_url
    assert_response :success
  end 
  
  test "should get index (all resources)" do 
    get items_index_url
    assert_response :success
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
