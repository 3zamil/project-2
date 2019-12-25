class RemoveCategoryFromInterest < ActiveRecord::Migration[6.0]
  def change
    remove_reference :interests, :category, null: false, foreign_key: true
  end
end
