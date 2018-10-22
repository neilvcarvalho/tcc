class RemoveClusterFromAttempt < ActiveRecord::Migration[5.0]
  def change
    remove_column :attempts, :cluster, :integer
  end
end
