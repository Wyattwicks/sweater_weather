class PictureFacade
  class << self
    def picture(location)
      data = PictureService.get_picture(location)
      pic = data[:results].first
      Picture.new(pic)
    end
  end
end