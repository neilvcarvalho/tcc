class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.integer :order
      t.string :title
      t.integer :answer_type, default: 0

      t.timestamps
    end
  end
end
