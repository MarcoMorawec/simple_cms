class SubjectsController < ApplicationController

	def list
		@subject = Subject.order("subjects.position ASC")
	end

end
