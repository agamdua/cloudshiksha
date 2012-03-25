class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :notetake

      t.timestamps
    end
  end
end
