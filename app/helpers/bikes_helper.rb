module BikesHelper
  def get_bike_picture(bike)
    if bike.photo.nil?
      return image_path "default-bike.png"
    else
      return cl_image_path bike.photo.path, height: 300, width: 400, crop: :fill
    end
  end

    def get_bike_banner(bike)
    if bike.photo.nil?
      return image_path "default-bike.png"
    else
      return cl_image_path bike.photo.path
    end
  end


end
