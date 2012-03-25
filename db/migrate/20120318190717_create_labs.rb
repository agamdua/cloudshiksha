class CreateLabs < ActiveRecord::Migration
  def change
    create_table :labs do |t|
      t.text :description

      t.timestamps
    end
  end
end
