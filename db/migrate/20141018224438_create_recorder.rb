class CreateRecorder < ActiveRecord::Migration
  def change
    add_column :exams, :recorder, :string
  end
end
