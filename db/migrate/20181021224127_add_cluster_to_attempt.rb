class AddClusterToAttempt < ActiveRecord::Migration[5.0]
  def change
    add_column :attempts, :cluster, :integer
  end
end
