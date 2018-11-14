class CreateAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :assets do |t|
      t.string :name
      t.string :description
      t.string :link
      t.boolean :accepted, default: false
      t.boolean :deleted, default: false
      t.integer :votes
    end
  end
end
