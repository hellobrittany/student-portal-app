class CapstonesController < ApplicationController
  before_action :authenticate_user!
  
  def show

    @capstone = Unirest.get('https://secure-ravine-87574.herokuapp.com/api/v1/students/#{ @current_user.id}/capstones.json').body
  end 

  def edit
     @capstone = Unirest.get('https://secure-ravine-87574.herokuapp.com/api/v1/students/#{ @current_user.id}/capstones.json').body
    
  end
  
  def update
    capstone = Unirest.patch('https://secure-ravine-87574.herokuapp.com/api/v1/students/#{@current_user.id}/capstones.json')
      capstone.assign_attributes(
                                  name: params[:name],
                                  description: params[:description],
                                  url: params[:url],
                                  screenshot: params[:screenshot]
                                  )
      if capstone.save
        flash[:success] = "Capstone sucessfully updated"
        redirect_to '/capstone'
  end
end
