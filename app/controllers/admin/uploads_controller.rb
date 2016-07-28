class Admin::UploadsController < Admin::BaseController
  def index
    @images = Image.last(6)
    @files  = Item.last(6)
  end
end
