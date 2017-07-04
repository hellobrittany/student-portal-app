class ResumesController < ApplicationController
	def show
		@student = Unirest.get("https://secure-ravine-87574.herokuapp.com/api/v1/students/#{@current_user.id}.json").body
		
	end

	def edit
		student = Unirest.get("https://secure-ravine-87574.herokuapp.com/api/v1/students/#{@current_user.id}.json").body

	end

	def update
		student = Unirest.patch("https://secure-ravine-87574.herokuapp.com/api/v1/students/#{@current_user.id}.json").body
		student.assign_attributes(
														first_name: params[:first_name], 
														last_name: params[:last_name],
														email: params[:email], 
														phone_number: params[:phone_number], 
														short_bio: params[:short_bio], 
														linkedin_url: params[:linkedin_url], 
														twitter_handle: params[:twitter_handle], 
														personal_blog: params[:personal_blog], 
														online_resume_url: params[:online_resume_url], 
														github_url: params[:github_url], 
														photo: params[:photo]
														) 


		resume.save
			
		
	end




end
