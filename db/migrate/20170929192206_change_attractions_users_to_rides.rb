class ChangeAttractionsUsersToRides < ActiveRecord::Migration
  def change
    rename_table :attractions_users, :rides
  end
end
