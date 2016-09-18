class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :subtitle
      t.date :released_on
      t.string :written_by
      t.string :directed_by

      t.timestamps
    end
  end
end
