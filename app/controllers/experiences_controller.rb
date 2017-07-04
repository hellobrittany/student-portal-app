class ExperiencesController < ApplicationController

 def index
  @experiences = Unireset.get('https://secure-ravine-87574.herokuapp.com/api/v1/students/#{ @current_user.id}/experiences.json').body
 end 

 def edit
  @experiences = Unireset.get('https://secure-ravine-87574.herokuapp.com/api/v1/students/#{ @current_user.id}/experiences.json').body
 end 

 def update
  @experiences = Unireset.patch('https://secure-ravine-87574.herokuapp.com/api/v1/students/#{ @current_user.id}/experiences.json').body
 end 
 
end
