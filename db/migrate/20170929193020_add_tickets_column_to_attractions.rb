class AddTicketsColumnToAttractions < ActiveRecord::Migration
  def change
    add_column :attractions, :tickets, :integer
  end
end
