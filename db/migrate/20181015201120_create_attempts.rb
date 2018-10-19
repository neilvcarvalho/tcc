class CreateAttempts < ActiveRecord::Migration[5.0]
  def change
    create_table :attempts do |t|
      t.jsonb :answers, default: []

      t.timestamps
    end
  end
end
