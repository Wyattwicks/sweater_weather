class PictureSerializer
  include FastJsonapi::ObjectSerializer
  attributes :description, :image_url, :source, :author, :author_url
end