class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.date :init
      t.date :deadline
      t.text :observation
      t.integer :status
      t.integer :importance
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
