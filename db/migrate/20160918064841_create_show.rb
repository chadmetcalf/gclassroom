class CreateShow < ActiveRecord::Migration[5.0]
  def change
    create_table :shows, id: :uuid do |t|
      t.string :title
    end
  end
end
