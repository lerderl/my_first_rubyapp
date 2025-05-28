class CommentsController < ApplicationController
  before_action :set_article

  def create
    @comment = @article.comments.new(comment_params)
    # @comment.user = current_user

    if @comment.save
      redirect_to @article, notice: "Comment was successfully created."
    else
      render "articles/show"
    end
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end

  def comment_params
    params.require(:comment).permit(:body, :article_id)
  end
end
