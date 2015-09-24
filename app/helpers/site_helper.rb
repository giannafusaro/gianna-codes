module SiteHelper



  # def photos_info
  #   relative = "app/assets/images/photos/"
  #   photos = group_photos
  #   photo_paths = photos.keys
  #   @photos = photo_paths.each_with_object(photos) do |path, memo|
  #     width = EXIFR::JPEG.new("#{relative}#{path}").width
  #
  #     size = case width
  #     when 0..300 then "small"
  #     when 300..450 then "medium"
  #     when 400..660 then "large"
  #     when 660..1000 then "xlarge"
  #     end
  #     logger.debug "memo #{memo}"
  #     memo[path].merge!({ width: width, class: size })
  #   end
  # end
end
