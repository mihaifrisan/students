require 'test_helper'

class StudentTest < ActiveSupport::TestCase

  test 'should return student name' do
    john = students(:john)
    assert john.name == "#{john.first_name} #{john.last_name}"
  end

  test 'should not create user without first name' do
    student = Student.new(last_name: 'Doe', email: 'john@doe.com')
    assert student.invalid?
    assert student.errors[:first_name].any?
  end

  test 'should not create user without last name' do
    student = Student.new(first_name: 'John', email: 'john@doe.com')
    assert student.invalid?
    assert student.errors[:last_name].any?
  end

  test 'should not create user without email' do
    student = Student.new(first_name: 'John', last_name: 'Doe')
    assert student.invalid?
    assert student.errors[:email].any?
  end

  test 'has many addresses' do
    student = students(:john)
    assert(student.addresses.size == 2)
    assert(student.addresses.first.class.name == 'Address')
    assert(student.addresses.include?(addresses(:john_horea)))
  end

end
