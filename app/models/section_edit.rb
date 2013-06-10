class SectionEdit < ActiveRecord::Base
  attr_accessible :summary, :editor, :section, :admin_user_id, :section_id

  belongs_to :editor, :class_name => "AdminUser", :foreign_key => 'admin_user_id'
  belongs_to :section

end
