class BackgroundSerializer
  include FastJsonapi::ObjectSerializer
  attributes :description, :image_url, :credit
end