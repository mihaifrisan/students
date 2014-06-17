class CreateStudentsCourses < ActiveRecord::Migration
  def change
    create_table :students_courses do |t|
      t.references :student
      t.references :course
      t.integer :grade

      t.timestamps
    end
  end
end
