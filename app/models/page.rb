class Page < ActiveRecord::Base
   attr_accessible :name, :visible, :permalink, :position

   belongs_to :subject
   has_many :sections

   #going against rails naming convention here, but telling rails that by editors 
   #we mean actually AdminUsers in the class => AdminUser
   has_and_belongs_to_many :editors, :class => "AdminUser"


end
