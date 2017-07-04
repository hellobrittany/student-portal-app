class EducationsController < ApplicationController

  def edit
    @education = Education.find(params[:id])
  end

  def update
    education = Education.find(params[:id])
    education.assign_attributes(
                                start_date: params[:start_date], 
                                end_date: params[:end_date], 
                                degree: params[:degree], 
                                university_name: params[:university_name], 
                                details: params[:details]
                                )
    education.save
    flash[:success] = "Education Successfully Updated"
    redirect "/resumes/#{ @current_user.id }"
  end

  def destroy
    education = Education.find(params[:id])
    education.destroy
    flash[:success] = "Education Successfully Deleted"
    redirect_to "/resumes/#{ @current_user.id }"
  end
end
