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

  def beatles_songs
    lyrics_path = Rails.root.join('app', 'assets', 'data', 'song-lyrics.json')
    facts_path = Rails.root.join('app', 'assets', 'data', 'song-facts.json')
    lyrics_data = JSON.parse(File.read(lyrics_path))
    facts_data = JSON.parse(File.read(facts_path))
    @discogs = Discogs::Wrapper.new("Beatles", user_token: ENV['DISCOGS_KEY'])
    # TODO: incorporate facts, album info here.
    # [{title: title, lyric: lyric, label: label}]
    @songs = lyrics_data.map do |k, v|
      {
        title: k,
        lyric: v,
        fact: facts_data[k],
        label: k.titleize,
        id: SecureRandom.uuid
      }
    end
    @props = { songs: @songs }
    render layout: "beatles"
  end

end
