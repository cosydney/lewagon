require "sinatra"
require "sinatra/reloader" if development?
require "sqlite3"


DB = SQLite3::Database.new(File.join(File.dirname(__FILE__), 'db/jukebox.sqlite'))
DB.results_as_hash = true

get "/" do
  # TODO: Gather all artists to be displayed on home page
  @artists = DB.execute("SELECT * FROM artists")
  erb :home # Will render views/home.erb file (embedded in layout.erb)
end

# Then:
# 1. Create an artist page with all the albums. Display genres as well
get "/artists/:id" do
  @artist = DB.execute("SELECT * FROM artists WHERE id=#{params[:id]}").first
  @albums = DB.execute("SELECT * FROM albums WHERE artist_id=#{params[:id]}")

  @count_by_genre = DB.execute(%(
    SELECT count(tracks.id) AS count, genres.name
    FROM tracks
    JOIN genres ON genres.id = tracks.genre_id
    JOIN albums ON albums.id = tracks.album_id
    WHERE albums.artist_id = ?
    GROUP BY genres.name
    ORDER BY count DESC
    ), params[:id])
  erb :artist # Will render views/artist.erb file (embedded in layout.erb)
end

# 2. Create an album pages with all the tracks
get "/albums/:id" do
  @album = DB.execute("SELECT * FROM albums WHERE id=#{params[:id]}").first
  @tracks = DB.execute("SELECT * FROM tracks WHERE album_id=#{params[:id]}")
  erb :album
end

# 3. Create a track page, and embed a Youtube video (you might need to hit Youtube API)
get "/tracks/:id" do
  @track = DB.execute(%(
	SELECT t.name AS track, t.composer AS composer, t.unit_price AS price, alb.title AS album, alb.id AS album_id, art.name AS artist, g.name AS genre
	FROM tracks t
	JOIN albums alb ON alb.id = t.album_id
	JOIN artists art ON alb.artist_id = art.id
	JOIN genres g ON t.genre_id = g.id
	WHERE t.id=#{params[:id]}
	)).first
  erb :track
end