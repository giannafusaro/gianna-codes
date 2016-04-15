require 'static_content'
class SiteController < ApplicationController
  def home
  end
  def projects
    @projects = StaticContent::PROJECTS
  end
  def gallery
    @media = StaticContent::MEDIA
  end
  def contact
  end
  def sf_map
    render layout: false
  end
end
