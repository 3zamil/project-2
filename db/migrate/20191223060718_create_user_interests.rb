class CreateUserInterests < ActiveRecord::Migration[6.0]
  def change
    create_table :user_interests do |t|
      t.references :user, null: false, foreign_key: true
      t.references :interest, null: false, foreign_key: true
      t.integer :relation, null: false, foreign_key: true, default: 1

      t.timestamps
    end
  end
end
