class CreateMovie < ActiveRecord::Migration[5.0]
  def change
    create_table :movies, id: :uuid do |t|
      t.string :title
      t.string :subtitle
      t.date :released_on
      t.string :written_by
      t.string :directed_by
    end
  end
end
