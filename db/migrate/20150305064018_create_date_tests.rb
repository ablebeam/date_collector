class CreateDateTests < ActiveRecord::Migration
  def change
    create_table :date_tests do |t|
      t.string :name, default: "", null: false
      t.string :expected, default: "", null: false

      t.timestamps null: false
    end
    add_index :date_tests, :name, unique: true
  end
end
