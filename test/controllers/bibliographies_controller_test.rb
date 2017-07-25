require 'test_helper'

class BibliographiesControllerTest < ActionController::TestCase
  setup do
    @bibliography = bibliographies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bibliographies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bibliography" do
    assert_difference('Bibliography.count') do
      post :create, bibliography: { cited_work: @bibliography.cited_work, comment: @bibliography.comment, page: @bibliography.page, volume: @bibliography.volume }
    end

    assert_redirected_to bibliography_path(assigns(:bibliography))
  end

  test "should show bibliography" do
    get :show, id: @bibliography
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bibliography
    assert_response :success
  end

  test "should update bibliography" do
    patch :update, id: @bibliography, bibliography: { cited_work: @bibliography.cited_work, comment: @bibliography.comment, page: @bibliography.page, volume: @bibliography.volume }
    assert_redirected_to bibliography_path(assigns(:bibliography))
  end

  test "should destroy bibliography" do
    assert_difference('Bibliography.count', -1) do
      delete :destroy, id: @bibliography
    end

    assert_redirected_to bibliographies_path
  end
end
