module FormsHelper 
	def generate_list(input)
	    if input.is_a? Hash
	    	output ="" 
	    	input.each do|parent, child|
					output += "<li>#{parent}</li>"  
					if child.is_a? Array
						output += "<ul class='ul-margin'>"
						child.each do|array_value|
							if array_value.is_a? Hash
								output += generate_list(array_value)
							elsif array_value.is_a? String
								output += "<li>#{array_value}</li>"
							end
						end
					end
					output += "</ul>" 		
	    	end
	    end
	    output.html_safe
end
end
