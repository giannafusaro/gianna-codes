class SiteController < ApplicationController
  def home
  end
  def blog
  end
  def projects
    logger.debug Dir['*']
    files = Dir['app/assets/images/photos/*']
    @photo_names = files.inject([]) { |memo, file| memo << file.gsub("app/assets/images/photos/", "") }
    logger.debug @photo_names.inspect
  end
  def contact
  end
end
