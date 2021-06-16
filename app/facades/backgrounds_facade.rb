class BackgroundsFacade
  class << self
    def picture(location)
      data = BackgroundsService.get_picture(location)
      pic = data[:results].first
      Background.new(pic)
    end
  end
end