require 'test_helper'

class ContactAppsControllerTest < ActionController::TestCase
  setup do
    @contact_app = contact_apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_app" do
    assert_difference('ContactApp.count') do
      post :create, contact_app: { Email_Id: @contact_app.Email_Id, Facebook_Id: @contact_app.Facebook_Id, First_name: @contact_app.First_name, Github_Id: @contact_app.Github_Id, Last_Name: @contact_app.Last_Name, Phone: @contact_app.Phone, Telephone: @contact_app.Telephone, Work_Email: @contact_app.Work_Email, Work_Phone: @contact_app.Work_Phone }
    end

    assert_redirected_to contact_app_path(assigns(:contact_app))
  end

  test "should show contact_app" do
    get :show, id: @contact_app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact_app
    assert_response :success
  end

  test "should update contact_app" do
    patch :update, id: @contact_app, contact_app: { Email_Id: @contact_app.Email_Id, Facebook_Id: @contact_app.Facebook_Id, First_name: @contact_app.First_name, Github_Id: @contact_app.Github_Id, Last_Name: @contact_app.Last_Name, Phone: @contact_app.Phone, Telephone: @contact_app.Telephone, Work_Email: @contact_app.Work_Email, Work_Phone: @contact_app.Work_Phone }
    assert_redirected_to contact_app_path(assigns(:contact_app))
  end

  test "should destroy contact_app" do
    assert_difference('ContactApp.count', -1) do
      delete :destroy, id: @contact_app
    end

    assert_redirected_to contact_apps_path
  end
end
