module ApplicationHelper

	def status_tag(boolean, options={})
		options[:true] ||= 'Yes'
		options[:true_class] ||= 'status_true'
		options[:false] ||= 'No'
		options[:false_class] ||= 'status_false'

		if boolean
			content_tag(:span, options[:true], :class => options[:true_class])
		else
			content_tag(:span, options[:false], :class => options[:false_class])
		end
	end



end
