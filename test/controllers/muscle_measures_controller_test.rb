require 'test_helper'

class MuscleMeasuresControllerTest < ActionController::TestCase
  setup do
    @muscle_measure = muscle_measures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:muscle_measures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create muscle_measure" do
    assert_difference('MuscleMeasure.count') do
      post :create, muscle_measure: { calf_left: @muscle_measure.calf_left, calf_right: @muscle_measure.calf_right, chest: @muscle_measure.chest, forearm_left: @muscle_measure.forearm_left, forearm_right: @muscle_measure.forearm_right, references: @muscle_measure.references, shoulder: @muscle_measure.shoulder, thigh_left: @muscle_measure.thigh_left, thigh_right: @muscle_measure.thigh_right, upper_arm_left: @muscle_measure.upper_arm_left, upper_arm_right: @muscle_measure.upper_arm_right, waist: @muscle_measure.waist }
    end

    assert_redirected_to muscle_measure_path(assigns(:muscle_measure))
  end

  test "should show muscle_measure" do
    get :show, id: @muscle_measure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @muscle_measure
    assert_response :success
  end

  test "should update muscle_measure" do
    patch :update, id: @muscle_measure, muscle_measure: { calf_left: @muscle_measure.calf_left, calf_right: @muscle_measure.calf_right, chest: @muscle_measure.chest, forearm_left: @muscle_measure.forearm_left, forearm_right: @muscle_measure.forearm_right, references: @muscle_measure.references, shoulder: @muscle_measure.shoulder, thigh_left: @muscle_measure.thigh_left, thigh_right: @muscle_measure.thigh_right, upper_arm_left: @muscle_measure.upper_arm_left, upper_arm_right: @muscle_measure.upper_arm_right, waist: @muscle_measure.waist }
    assert_redirected_to muscle_measure_path(assigns(:muscle_measure))
  end

  test "should destroy muscle_measure" do
    assert_difference('MuscleMeasure.count', -1) do
      delete :destroy, id: @muscle_measure
    end

    assert_redirected_to muscle_measures_path
  end
end
