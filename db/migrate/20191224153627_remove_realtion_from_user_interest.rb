class RemoveRealtionFromUserInterest < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_interests, :relation
  end
end
