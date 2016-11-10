class PostsView
  def list_all(posts)
    posts.each do |post|
      puts "(#{post.id}) #{post.title} - #{post.url} °#{post.votes}"
    end
  end

  def upvote
    puts "Which post do you want to upvote?"
    gets.chomp.to_i
  end

  def ask_new_post
    puts "Post title :"
    title = gets.chomp.strip
    puts "Post url: "
    url = gets.chomp.strip
    #   puts "Enter Votes"
    # votes = gets.chomp.to_i
    { title: title, url: url }
  end

  def ask_delete
    puts "Which post do you want to delete?"
    gets.chomp.to_i
  end

  def ask_post_id
    puts "which id do you want to update?"
    gets.chomp.to_i
  end

  def id_doesnt_exist
    puts "ID selected doesn't exist, would you like to update an existing post? yes/no"
    answer = gets.chomp
    if answer == "no"
      true
    else
      post_to_update
    end
  end

  def user_info
    id = ask_post_id
    puts "new post title :"
    title = gets.chomp.strip
    puts "new post url: "
    url = gets.chomp.strip
    puts "New Votes"
    # votes = gets.chomp.to_i
    { id: id, title: title, url: url }
  end
  # TODO: implement methods called by the PostsController
end
