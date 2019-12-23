class CreateRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :relations do |t|
      t.string :title

      t.timestamps
    end
  end
end
