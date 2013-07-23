class ImagesController < ApplicationController
  def new
  end

  def create 
   @image = Image.new(image_params)
    if @image.save
        redirect_to :action => :show, :id => @image.id
    else
      render 'new'
    end
  end

   def show
    @id = params[:id]
    @image = Image.find(@id)
  end

  private

  def image_params
    params.require(:image).permit(:image)
  end

end
