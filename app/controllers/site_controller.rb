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
    lyrics_path = Rails.root.join('app', 'assets', 'data', 'song-lyrics.json')
    lyrics_data = JSON.parse(File.read(lyrics_path))
    # TODO: incorporate facts, album info here.
    # [{title: title, lyric: lyric, label: label}]
    @lyrics = lyrics_data.map do |k, v|
      {
        title: k,
        lyric: v,
        label: k.titleize,
        id: SecureRandom.uuid
      }
    end
    @props = { lyrics: @lyrics }
    render layout: "beatles"
  end
end
