class CreateEpisodes < ActiveRecord::Migration[5.0]
  def change
    create_table :episodes do |t|
      t.belongs_to :show
      t.string :title
      t.string :subtitle
      t.integer :season
      t.integer :episode
      t.date :aired_on
      t.string :written_by
      t.string :directed_by

      t.timestamps
    end
  end
end
