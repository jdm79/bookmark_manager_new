require 'pg'

class Bookmark
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_new_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager_new')
    end
    result = connection.exec('select * from bookmarks')
    result.map { |bookmark| bookmark['url']}
  end
end