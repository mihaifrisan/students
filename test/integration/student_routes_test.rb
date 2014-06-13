require 'test_helper'

class StudentRoutesTest < ActionDispatch::IntegrationTest

  test 'should route to students index' do
    assert_routing({ path: '/students', method: 'get' },
      {controller: 'students', action: 'index'  })
  end

end
