class CreateVideo < ActiveRecord::Migration[5.0]
  def change
    create_table :videos, id: :uuid do |t|
      t.references :streamable, type: :uuid, polymorphic: true
      t.string :rtmp_uri
    end
  end
end
