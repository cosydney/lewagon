class Post
  # TODO: Gather all code from all previous exercises
  attr_reader :id
  attr_accessor :title, :url, :votes

  def initialize(attributes = {})
    @id = attributes[:id]
    @url = attributes[:url]
    @votes = attributes[:votes] || 0
    @title = attributes[:title]
  end

  def self.find(id)
    found_post = DB.execute("SELECT * FROM posts WHERE posts.id = ?", id)[0]

    return nil if found_post.nil?
    attributes = {}
    attributes[:id] = found_post[0]
    attributes[:title] = found_post[1]
    attributes[:url] = found_post[2]
    attributes[:votes] = found_post[3]
    new_post = Post.new(attributes)
    new_post
  end

  def self.all
    found_posts = DB.execute("SELECT * FROM posts ")
    new_posts = []
    found_posts.each do |post|
      new_posts << Post.new(id: post[0], title: post[1], url: post[2], votes: post[3])
    end
    new_posts
  end

  def destroy
    DB.execute("DELETE FROM posts WHERE id = ?", @id)
    # TODO: destroy the current instance from the database
  end

  def save
    if @id.nil?
      DB.execute <<-SQL
      INSERT INTO posts (url, votes, title) VALUES ("#{@url}", "#{@votes}", "#{@title}")
      SQL
      @id = DB.last_insert_row_id
    else
      DB.execute <<-SQL
      UPDATE posts SET title = "#{@title}",url = "#{@url}", votes = "#{@votes}"WHERE id = "#{@id}"
      SQL
    end
  end
end