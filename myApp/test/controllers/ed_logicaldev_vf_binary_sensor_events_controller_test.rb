require 'test_helper'

class EdLogicaldevVfBinarySensorEventsControllerTest < ActionController::TestCase
  setup do
    @ed_logicaldev_vf_binary_sensor_event = ed_logicaldev_vf_binary_sensor_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ed_logicaldev_vf_binary_sensor_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ed_logicaldev_vf_binary_sensor_event" do
    assert_difference('EdLogicaldevVfBinarySensorEvent.count') do
      post :create, ed_logicaldev_vf_binary_sensor_event: { ed_logicaldev_id: @ed_logicaldev_vf_binary_sensor_event.ed_logicaldev_id, v_f_binary_sensor_event_id: @ed_logicaldev_vf_binary_sensor_event.v_f_binary_sensor_event_id }
    end

    assert_redirected_to ed_logicaldev_vf_binary_sensor_event_path(assigns(:ed_logicaldev_vf_binary_sensor_event))
  end

  test "should show ed_logicaldev_vf_binary_sensor_event" do
    get :show, id: @ed_logicaldev_vf_binary_sensor_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ed_logicaldev_vf_binary_sensor_event
    assert_response :success
  end

  test "should update ed_logicaldev_vf_binary_sensor_event" do
    patch :update, id: @ed_logicaldev_vf_binary_sensor_event, ed_logicaldev_vf_binary_sensor_event: { ed_logicaldev_id: @ed_logicaldev_vf_binary_sensor_event.ed_logicaldev_id, v_f_binary_sensor_event_id: @ed_logicaldev_vf_binary_sensor_event.v_f_binary_sensor_event_id }
    assert_redirected_to ed_logicaldev_vf_binary_sensor_event_path(assigns(:ed_logicaldev_vf_binary_sensor_event))
  end

  test "should destroy ed_logicaldev_vf_binary_sensor_event" do
    assert_difference('EdLogicaldevVfBinarySensorEvent.count', -1) do
      delete :destroy, id: @ed_logicaldev_vf_binary_sensor_event
    end

    assert_redirected_to ed_logicaldev_vf_binary_sensor_events_path
  end
end