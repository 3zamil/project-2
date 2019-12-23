class CreateInterests < ActiveRecord::Migration[6.0]
  def change
    create_table :interests do |t|
      t.string :title
      t.text :description
      t.string :link
      t.string :image

      t.timestamps
    end
  end
end
