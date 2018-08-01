class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :text
      t.integer :position, default: 1
      t.references :quiz, foreign_key: true

      t.timestamps
    end
  end
end
