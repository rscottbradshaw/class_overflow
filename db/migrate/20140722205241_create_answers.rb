class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :response
      t.string :responder
      t.references :question, index: true

      t.timestamps
    end
  end
end
