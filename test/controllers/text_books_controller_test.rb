require 'test_helper'

class TextBooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get text_books_index_url
    assert_response :success
  end

  test "should get show" do
    get text_books_show_url
    assert_response :success
  end

  test "should get new" do
    get text_books_new_url
    assert_response :success
  end

  test "should get create" do
    get text_books_create_url
    assert_response :success
  end

  test "should get edit" do
    get text_books_edit_url
    assert_response :success
  end

end
