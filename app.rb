require 'sinatra/base'
require './lib/bookmark'

# this is our controller
class BookmarkManager < Sinatra::Base

  get '/bookmarks' do
    @bookmarks = [
      "http://www.makersacademy.com",
      "http://www.destroyallsoftware.com",
      "http://www.google.com"
     ]

    erb :'bookmarks/index'
  end

  run! if app_file == $0
end