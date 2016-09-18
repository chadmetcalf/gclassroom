class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.references :streamable, polymorphic: true
      t.string :rtmp_url

      t.timestamps
    end
  end
end
