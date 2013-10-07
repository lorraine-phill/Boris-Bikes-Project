class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.string :answer_a
      t.string :answer_b
      t.string :answer_c
      t.string :correct_answer
    end
  end
end
