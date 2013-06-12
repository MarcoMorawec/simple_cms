class SubjectsController < ApplicationController

	#force our list page to render in case somebody goes directly to the url ./subjects (otherwise we'd get an error)
	def index
		list
		render ('list')
	end


	def list
		@subjects = Subject.order("subjects.position ASC")
	end

	def show
		@subject = Subject.find(params[:id])
	end

end
