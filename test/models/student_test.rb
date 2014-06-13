require 'test_helper'

class StudentTest < ActiveSupport::TestCase

  test 'should return student name' do
    john = students(:john)
    assert john.name == "#{john.first_name} #{john.last_name}"
  end

end
