require 'pry'
require 'rspotify'


require_relative 'cli_project/api'
require_relative 'cli_project/cli'
require_relative 'cli_project/music'
require_relative 'cli_project/version'

module RSpotify
  autoload :Album,              'rspotify/album'
  autoload :Artist,             'rspotify/artist'
  autoload :AudioFeatures,      'rspotify/audio_features'
  autoload :Base,               'rspotify/base'
  autoload :Category,           'rspotify/category'
  autoload :Device,             'rspotify/device'
  autoload :Player,             'rspotify/player'
  autoload :Playlist,           'rspotify/playlist'
  autoload :Recommendations,    'rspotify/recommendations'
  autoload :RecommendationSeed, 'rspotify/recommendation_seed'
  autoload :Track,              'rspotify/track'
  autoload :TrackLink,          'rspotify/track_link'
  autoload :User,               'rspotify/user'
end

RSpotify.authenticate("f2d6e54d3bed499983183cb8c183dd75", "14e98f258cce4f89b5eb48f8342f6f37")
