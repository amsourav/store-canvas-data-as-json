class CreateAnnotations < ActiveRecord::Migration
  def change
    create_table :annotations do |t|
      t.integer :mark
      t.json :sketch
      t.integer :submission_id

      t.timestamps null: false
    end
  end
end
