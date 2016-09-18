class CreateEpisode < ActiveRecord::Migration[5.0]
  def change
    create_table :episodes, id: :uuid do |t|
      t.belongs_to :show, type: :uuid, index: true
      t.string :title
      t.string :subtitle
      t.integer :season_number
      t.integer :episode_number
      t.date :aired_on
      t.string :written_by
      t.string :directed_by
    end
  end
end
