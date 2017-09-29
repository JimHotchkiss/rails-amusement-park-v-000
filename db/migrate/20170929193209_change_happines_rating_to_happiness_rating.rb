class ChangeHappinesRatingToHappinessRating < ActiveRecord::Migration
  def change
    rename_column :attractions, :happines_rating, :happiness_rating 
  end
end
