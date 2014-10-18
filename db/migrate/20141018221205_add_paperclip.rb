class AddPaperclip < ActiveRecord::Migration
  def up
    add_attachment :exams, :recording
  end
  def down
    remove_attachment :exams, :recording
  end
end
