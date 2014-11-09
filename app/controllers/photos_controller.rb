class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    p = Photo.find(params[:id])
    @image_url = p.source
    @caption = p.caption
  end

   def new_form

   end

   def create_row
     p = Photo.new
     p.source = params[:the_source]
     p.caption = params[:the_caption]
     p.save

   end

    def destroy
      p = Photo.find(params[:id])
      p.destroy

    end

   def edit_form
      p = Photo.find(params[:id])
      @image_url = p.source
      @caption = p.caption
   end

    def update_row
      p = Photo.find(params[:id])
      p.source = params[:the_source]
      p.caption = params[:the_caption]
      p.save
    end

end
