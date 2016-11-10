
class PostsController
  def initialize
    @view = PostsView.new
  end

  ################################################################
  # BEWARE: you MUST not use the global variable DB in this file #
  ################################################################

  def index
    @view.list_all(Post.all)
    # TODO: implement listing all posts
  end

  def create
    Post.new(@view.ask_new_post).save
    # TODO: implement creating a new post
  end

  def update
    index
    # id = @view.ask_post_id
    user_info_hash = @view.user_info
    post_to_update = Post.find(user_info_hash[:id])

    if post_to_update == Post.find(user_info_hash[:id]).nil?
      @view.id_doesnt_exist
    else
      post_to_update = Post.find(user_info_hash[:id])
      post_to_update.title = user_info_hash[:title]
      post_to_update.url = user_info_hash[:url]
      post_to_update.save
    end
    # TODO: implement updating an existing post
  end

  def destroy
    index
    Post.find(@view.ask_delete).destroy
    # TODO: implement destroying a post
  end

  def upvote
    index
    post = Post.find(@view.upvote)
    post.votes += 1
    post.save
    index
    # TODO: implement upvoting a post
  end
end
