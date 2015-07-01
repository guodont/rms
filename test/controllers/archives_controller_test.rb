require 'test_helper'

class ArchivesControllerTest < ActionController::TestCase
  setup do
    @archive = archives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:archives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create archive" do
    assert_difference('Archive.count') do
      post :create, archive: { archiveno: @archive.archiveno, dmaterial: @archive.dmaterial, firstsend: @archive.firstsend, hmaterial: @archive.hmaterial, isduyan: @archive.isduyan, issend: @archive.issend, jiyaono: @archive.jiyaono, mmaterial: @archive.mmaterial, omaterial: @archive.omaterial, pmaterial: @archive.pmaterial, remark: @archive.remark, secondsend: @archive.secondsend, sendway: @archive.sendway, umaterial: @archive.umaterial, zmaterial: @archive.zmaterial }
    end

    assert_redirected_to archive_path(assigns(:archive))
  end

  test "should show archive" do
    get :show, id: @archive
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @archive
    assert_response :success
  end

  test "should update archive" do
    patch :update, id: @archive, archive: { archiveno: @archive.archiveno, dmaterial: @archive.dmaterial, firstsend: @archive.firstsend, hmaterial: @archive.hmaterial, isduyan: @archive.isduyan, issend: @archive.issend, jiyaono: @archive.jiyaono, mmaterial: @archive.mmaterial, omaterial: @archive.omaterial, pmaterial: @archive.pmaterial, remark: @archive.remark, secondsend: @archive.secondsend, sendway: @archive.sendway, umaterial: @archive.umaterial, zmaterial: @archive.zmaterial }
    assert_redirected_to archive_path(assigns(:archive))
  end

  test "should destroy archive" do
    assert_difference('Archive.count', -1) do
      delete :destroy, id: @archive
    end

    assert_redirected_to archives_path
  end
end
