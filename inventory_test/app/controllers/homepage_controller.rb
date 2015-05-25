class HomepageController < ApplicationController
	def home
		flash[:notice] = ''
	end


	def login
		
		user = params[:homepage][:email];
		pass = params[:homepage][:password];

	    user = User.find_by(:email => user, :password => pass);
	    if  user != nil
			#render 'login'
			#flash[:notice] = 'Invalid email/password combination'
			#flash.now[:error] = 'Invalid email/password combination'
			flash[:notice] = 'Login Successful'
			respond_to do |format|
				format.html { render :login, notice: 'Login Successful' }
				#format.json { render :home, status: :created,notice: 'Invalid Username and/or password' }
			end
			



		else
			
			#flash[:notice] = "Invalid Username and/or password"
			#format.html { render :home, notice: 'Invalid Username and/or password' }
			#format.json { render :home, status: :created}	
			flash[:notice] = 'Invalid email/password combination' 

			respond_to do |format|
				format.html { render :home, notice: 'Invalid Username and/or password' }
				#format.json { render :home, status: :created,notice: 'Invalid Username and/or password' }
			end
			#render 'home'
			#flash.now[:error] = 'Invalid email/password combination'
		end
	end

	def destroy
	end
end
