class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.integer :order
      t.string :text
      t.integer :value
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
