class CreateSource < ActiveRecord::Migration[5.0]
  def change
    create_table :sources, id: :uuid do |t|
      t.string :uri
      t.string :media_type
      t.belongs_to :video, type: :uuid, index: true
    end
  end
end
