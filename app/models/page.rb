class Page < ActiveRecord::Base
   attr_accessible :name, :visible, :permalink, :position

   belongs_to :subject


end
