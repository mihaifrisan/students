require 'test_helper'

class StudentsControllerTest < ActionController::TestCase

  test 'should get index' do
    get :index
    assert_response :success
    students = assigns(:students)
    assert_not_nil students
    assert students.size == 2
    assert_select 'table tr', 3
    assert_select 'table tr td', 'John Doe'
  end

end
