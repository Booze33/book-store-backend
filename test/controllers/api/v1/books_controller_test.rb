require 'test_helper'

class Api::V1::BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_book = api_v1_books(:one)
  end

  test 'should get index' do
    get api_v1_books_url, as: :json
    assert_response :success
  end

  test 'should show api_v1_book' do
    get api_v1_book_url(@api_v1_book), as: :json
    assert_response :success
  end

  test 'should destroy api_v1_book' do
    assert_difference('Api::V1::Book.count', -1) do
      delete api_v1_book_url(@api_v1_book), as: :json
    end

    assert_response :no_content
  end
end
