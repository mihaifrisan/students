require 'test_helper'

class AddressTest < ActiveSupport::TestCase

  test 'belongs to student' do
    address = addresses(:john_horea)
    #assert(address.student.class.name == 'Student')
    assert(address.addressable_type == 'Student')
    #assert(address.student == students(:john))
  end

end
