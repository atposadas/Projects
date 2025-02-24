class AddIndexToSubscribers < ActiveRecord::Migration[8.0]
  def change
    add_index :subscribers, :email 
  end
end
