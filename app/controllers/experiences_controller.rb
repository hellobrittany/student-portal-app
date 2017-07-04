class ExperiencesController < ApplicationController

 def index
  @experiences = Unireset.get('https://secure-ravine-87574.herokuapp.com/api/v1/students/#{ @current_user.id}/experiences.json').body
 end 

 def edit
  @experiences = Unireset.get('https://secure-ravine-87574.herokuapp.com/api/v1/students/#{ @current_user.id}/experiences.json').body
 end 

 def update
  @experiences = Unireset.patch('https://secure-ravine-87574.herokuapp.com/api/v1/students/#{ @current_user.id}/experiences.json').body
      experiences.assign_attributes(
                                    start_date: params[:start_date],
                                    end_data: params[:end_data],
                                    job_title: params[:job_title],
                                    company_name: params[:company_name],
                                    details: params[:details]
                                    )
      if experiences.save 
        flash[:success] = "Experience successfully updated"
        redirect_to '/'
      end
 end 
 
end
