require 'pg'

class Bookmark
  def self.all
    connection = PG.connect(dbname: 'bookmark_manager_new')
    result = connection.exec('select * from bookmarks')
    result.map { |bookmark| bookmark['url']}
  end
end