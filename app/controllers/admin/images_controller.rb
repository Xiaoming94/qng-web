class Admin::ImagesController < Admin::BaseController
  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    @image.filetype = 'image'
    if @image.save
      redirect_to admin_images_path, notice: "The resume #{@image.name} has been uploaded"
    else
      render "new"
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to admin_images_path, notice: "The resume #{@image.name} has been deleted"
  end

  private
    def image_params
      params.require(:image).permit(:name, :attachment)
    end
end
