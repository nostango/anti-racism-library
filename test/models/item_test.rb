require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  
  def setup
    @item = Item.new(title: "Example Item", author: "Example Author", description: "Example Description")
    end
    
  test "should be valid" do
    assert @item.valid?
  end
  
  test "title should be present" do
    @item.title = " "
    assert_not @item.valid?
  end
  
  test "author should be present" do
    @item.author = " "
    assert_not @item.valid?
  end
  
  test "description should be present" do
    @item.description = " "
    assert_not @item.valid?
  end
end
