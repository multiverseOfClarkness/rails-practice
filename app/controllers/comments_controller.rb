class CommentsController < ApplicationController

  http_basic_authenticate_with name: "clark", password: "clark", only: :destroy

  
    def create
      @article = Article.find(params[:article_id])
      @comment = @article.comments.build(comment_params)
      puts @comment.inspect
      if @comment.save
        redirect_to article_path(@article)
      else
        render "articles/show", status: :unprocessable_entity
      end
      
    end

    def destroy
      @article = Article.find(params[:article_id])
      @comment = @article.comments.find(params[:id])
      @comment.destroy  
      redirect_to article_path(@article), status: :see_other
    end
  
    private
      def comment_params
        params.require(:comment).permit(:commenter, :body, :status)
      end
  end
  