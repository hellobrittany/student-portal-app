class SkillsController < ApplicationController

  def edit
    @capstone = Unirest.get('https://secure-ravine-87574.herokuapp.com/api/v1/students/#{ @current_user.id}/skills.json').body
  end

  def update
    @skill = Skills.patch('https://secure-ravine-87574.herokuapp.com/api/v1/students/#{ @current_user.id}/skills.json').body
      skill.assign_attributes(
                              skill_name: params[:skill_name]
                              )
      if skill.save 
        flash[:success] = "Skill sucessfully updated"
        redirect_to '/'
  end 

end
