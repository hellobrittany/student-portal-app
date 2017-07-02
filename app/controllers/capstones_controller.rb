class CapstonesController < ApplicationController
  
  def show
    @capstone = Capstone.find(
                              params[:id],
                              name: params[:name],
                              description: params[:description],
                              url: params[:url],
                              screenshot: params[:screenshot]
                              )
  end 

  def edit
    
  end
  
  def update
    
  end
end
