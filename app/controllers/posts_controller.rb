class PostsController < ArticlesController
    
    def create_comment
        account_id = session[:account_id]
        article_id = params[:id]
        post_comment = params[:comment].strip
        puts "!!!!!!!!!!!!!!#{account_id}"
        puts "!!!!!!!!!!!!!!#{article_id}"
        puts "!!!!!!!!!!!!!!#{post_comment}"
        @comment = Comment.new
        @comment.account_id = account_id
        @comment.article_id = article_id
        @comment.content = post_comment
        @comment.parent_id = 0 
        @comment.save
        redirect_to article_path
        # render  json: { success: 'success' }, status: 200
    end

end
