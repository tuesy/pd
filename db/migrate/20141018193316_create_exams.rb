class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :patient
      t.column :type, :string
      t.text :notes
      t.timestamps
    end
  end
end
