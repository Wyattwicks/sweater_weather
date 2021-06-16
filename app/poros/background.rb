class Background
  attr_reader :id,
              :type,
              :description,
              :image_url,
              :source,
              :author,
              :credit,
              :author_url

  def initialize(data)
    @id = nil
    @type = "image"
    @description = data[:alt_description]
    @image_url = data[:urls][:regular]
    @credit = {}
      @credit[:source] = data[:links][:html]
      @credit[:author] = data[:user][:username]
      @credit[:author_url] = data[:user][:portfolio_url]
  end
end