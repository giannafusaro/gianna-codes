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

  def beatles_lyrics
    @some_props = { name: "Stranger" }
    render layout: "beatles"
  end
end
