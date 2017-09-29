class CreateRides < ActiveRecord::Migration
  # Write your migrations here
  def change
    create_join_table :users, :attractions do |t|
      t.index :user_id
      t.index :attraction_id 
    end
  end

end
