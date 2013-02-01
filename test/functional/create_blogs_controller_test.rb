require 'test_helper'

class CreateBlogsControllerTest < ActionController::TestCase
  setup do
    @create_blog = create_blogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:create_blogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create create_blog" do
    assert_difference('CreateBlog.count') do
      post :create, create_blog: { body: @create_blog.body, title: @create_blog.title }
    end

    assert_redirected_to create_blog_path(assigns(:create_blog))
  end

  test "should show create_blog" do
    get :show, id: @create_blog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @create_blog
    assert_response :success
  end

  test "should update create_blog" do
    put :update, id: @create_blog, create_blog: { body: @create_blog.body, title: @create_blog.title }
    assert_redirected_to create_blog_path(assigns(:create_blog))
  end

  test "should destroy create_blog" do
    assert_difference('CreateBlog.count', -1) do
      delete :destroy, id: @create_blog
    end

    assert_redirected_to create_blogs_path
  end
end
