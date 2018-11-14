class CreateAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :assets do |t|
      t.string :title
      t.string :description
      t.string :link
      t.boolean :accepted, default: false
      t.boolean :deleted, default: false
      t.integer :votes, default: 0
      t.integer :course_id
    end
  end
end
