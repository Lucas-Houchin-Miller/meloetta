class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :picture_id
      t.string :desc

      t.timestamps
    end
  end
end
