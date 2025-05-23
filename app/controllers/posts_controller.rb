class PostsController < ApplicationController
  def make
    # create a post
    post1 = Post.create(body: "Welcome to my first post", title: "First post")
    post2 = Post.create(body: "Welcome to my second post", title: "Second post")

    # show number of posts created
  end

  def print
    # show a post
    # query for a post
    # send to the view for display
    @post1 = Post.find(1)
    @post2 = Post.last
  end

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
