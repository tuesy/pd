class Exam < ActiveRecord::Base
  has_attached_file :recording, :default_url => "/images/:style/missing.png"
  do_not_validate_attachment_file_type :recording


  self.inheritance_column = nil
  extend Enumerize
  enumerize :type, in: ['Stationary','Pinch','Grab','Rotate','Trace']
end
