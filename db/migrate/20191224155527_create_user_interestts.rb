class CreateUserInterestts < ActiveRecord::Migration[6.0]
  def change
    create_table :user_interestts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :interest, null: false, foreign_key: true

      t.timestamps
    end
  end
end
