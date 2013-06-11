class Section < ActiveRecord::Base
	attr_accessible :name, :position, :visible, :content_type, :content

	belongs_to :page

	has_many :section_edits
	#section has many :editors (using the class_name method to point :editors to "AdminUser") if you go :through the :section_Edits rich join table
	has_many :editors, :through => :section_edits, :class_name => "AdminUser"

end
