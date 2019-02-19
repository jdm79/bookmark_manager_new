require 'sinatra/base'
require './lib/bookmark'

# this is our controller
class BookmarkManager < Sinatra::Base

  get '/bookmarks' do
    @bookmarks = Bookmark.all


    erb :'bookmarks/index'
  end

  run! if app_file == $0
end