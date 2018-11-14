class CreateAdminCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_courses do |t|
      t.belongs_to :admin, index: true
      t.belongs_to :course, index: true
      t.timestamps
    end
  end
end
