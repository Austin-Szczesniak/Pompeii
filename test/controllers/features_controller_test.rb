require 'test_helper'

class FeaturesControllerTest < ActionController::TestCase
  setup do
    @feature = features(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:features)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feature" do
    assert_difference('Feature.count') do
      post :create, feature: { artist: @feature.artist, bw_roll: @feature.bw_roll, category: @feature.category, color_roll: @feature.color_roll, contiguous_relationship: @feature.contiguous_relationship, date: @feature.date, description: @feature.description, digital_image: @feature.digital_image, drawing: @feature.drawing, entrance: @feature.entrance, feature: @feature.feature, file_number: @feature.file_number, gate: @feature.gate, insula: @feature.insula, jashemski_bw_roll: @feature.jashemski_bw_roll, jashemski_color_roll: @feature.jashemski_color_roll, jashemski_digital_image: @feature.jashemski_digital_image, jashemski_photographer: @feature.jashemski_photographer, minority_report: @feature.minority_report, negative_feature: @feature.negative_feature, photographer: @feature.photographer, recorder: @feature.recorder, region: @feature.region, researcher: @feature.researcher, season: @feature.season, sheet: @feature.sheet, sheet_type: @feature.sheet_type, space_number: @feature.space_number, space_type: @feature.space_type, structure: @feature.structure, tape_number: @feature.tape_number, time_count: @feature.time_count, usage: @feature.usage, video_comments: @feature.video_comments, videographer: @feature.videographer }
    end

    assert_redirected_to feature_path(assigns(:feature))
  end

  test "should show feature" do
    get :show, id: @feature
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feature
    assert_response :success
  end

  test "should update feature" do
    patch :update, id: @feature, feature: { artist: @feature.artist, bw_roll: @feature.bw_roll, category: @feature.category, color_roll: @feature.color_roll, contiguous_relationship: @feature.contiguous_relationship, date: @feature.date, description: @feature.description, digital_image: @feature.digital_image, drawing: @feature.drawing, entrance: @feature.entrance, feature: @feature.feature, file_number: @feature.file_number, gate: @feature.gate, insula: @feature.insula, jashemski_bw_roll: @feature.jashemski_bw_roll, jashemski_color_roll: @feature.jashemski_color_roll, jashemski_digital_image: @feature.jashemski_digital_image, jashemski_photographer: @feature.jashemski_photographer, minority_report: @feature.minority_report, negative_feature: @feature.negative_feature, photographer: @feature.photographer, recorder: @feature.recorder, region: @feature.region, researcher: @feature.researcher, season: @feature.season, sheet: @feature.sheet, sheet_type: @feature.sheet_type, space_number: @feature.space_number, space_type: @feature.space_type, structure: @feature.structure, tape_number: @feature.tape_number, time_count: @feature.time_count, usage: @feature.usage, video_comments: @feature.video_comments, videographer: @feature.videographer }
    assert_redirected_to feature_path(assigns(:feature))
  end

  test "should destroy feature" do
    assert_difference('Feature.count', -1) do
      delete :destroy, id: @feature
    end

    assert_redirected_to features_path
  end
end
