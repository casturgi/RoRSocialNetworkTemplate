module ApplicationHelper

	def bootstrap_class_for(flash_type)
		case flash_type
		when "success"
			"alert-success"
		when "error"
			"alert-danger"
		when "alert"
			"alert-warning"
		when "notice"
			"alert-info"
		else
			flash_type.to_s
		end	
	end

	def gravatar_url(email, size)
	  gravatar = Digest::MD5::hexdigest(email).downcase
	  url = "http://gravatar.com/avatar/#{gravatar}.png?s=#{size}"
	end
end
