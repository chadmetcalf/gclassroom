class CreateSources < ActiveRecord::Migration[5.0]
  def change
    create_table :sources do |t|
      t.string :uri
      t.string :media_type
      t.references :video, index: true

      t.timestamps
    end
  end
end
