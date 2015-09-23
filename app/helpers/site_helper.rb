module SiteHelper

  def photo_orders
    photo_orders = {
      "camcos1.jpg"  => { order: 0, width: "two" },
      "camcos2.jpg"  => { order: 1, width: "two" },
      "camcos3.jpg"  => { order: 2, width: "two" },
      "pearson5.jpg" => { order: 5, width: "two" },
      "ic3.jpg"      => { order: 3, width: "two" },
      "awards2.JPG"  => { order: 13, width: "three" },
      "awards3.JPG"  => { order: 14, width: "three" },
      "hsevent.jpg"  => { order: 11, width: "two" },
      "awards1.jpg"  => { order: 15, width: "three" },
      "pearson3.jpg" => { order: 9, width: "three" },
      "pearson4.jpg" => { order: 8, width: "three" },
      "pearson1.jpg" => { order: 7, width: "three" },
      "workshop.jpg" => { order: 6, width: "two" },
      "apicon.jpg"   => { order: 4, width: "one" },
      "pearson2.jpg" => { order: 10, width: "one" },
      "pinger.jpg"   => { order: 12, width: "two" }
    }.sort_by {|_key, value| value[:order] }.to_h
  end

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
