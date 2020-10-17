# IMPORTANT: This file assumes that there are no library items in the database except for the seeded items. 
#            If the seed file has been updated, (ie has more than 5 items), please update test for items show page.

require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @item = Item.new(title: "Example Item", 
                     author: "Example Author", 
                     description: "Example Description", 
                     url: "example.com", 
                     category: "Journal")
      # total number of items in database is: 6
    
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

  
#### FUNCTIONALITY TESTS ####

  test "invalid item isn't saved" do 
    item_count = Item.count
    @invalid_item = Item.create(title: "", 
                             author: "", 
                             description: "", 
                             url: "", 
                             category: "Journal")
    new_item_count = Item.count 
    assert_equal(item_count, new_item_count, "invalid item isn't saved")
  end
  
  test "new items are saved to database" do 
    item_count = Item.count
    @item = Item.create(title: "Example Item", 
                        author: "Example Author", 
                        description: "Example Description", 
                        url: "example.com", 
                        category: "Journal")
    new_item_count = Item.count 
    net = new_item_count - item_count
    assert_equal(net, 1, "valid item is saved")
  end 
  
  test "new item parameters are saved" do 
    
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
