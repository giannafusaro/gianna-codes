require 'static_content'
class SiteController < ApplicationController
  def home
  end
  def blog
  end
  def projects
    @projects = StaticContent::PROJECTS
  end
  def gallery
    @media = StaticContent::MEDIA
  end
  def contact
  end
end
