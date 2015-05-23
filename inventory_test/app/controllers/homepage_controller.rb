class HomepageController < ApplicationController
	def home
	end


	def login
		# id = 0
	    #user = User.find_by()
	    # if  id
			# flash[:danger] = 'success'
			render 'login'
		# else
			# flash[:danger] = 'Invalid email/password combination'
			# render 'home'
		# end
	end

	def destroy
	end
end
