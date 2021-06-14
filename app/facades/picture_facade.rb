class PictureFacade
  class << self
    def city_picture(location)
      data = PictureService.get_picture(location)
      pic = data[:results].first
      Picture.new(pic)
    end

  end
end