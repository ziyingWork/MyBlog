class PostsController < ArticlesController
    

    def create_comment
        
        @article = Article.find(params[:article_id])
        puts "!!!!!!#{@article.inspect}"
        lll = params[:article_id]
        article_id = params[:id]
        post_comment = params[:comment]
        puts "@@@@@@@@@@#{lll}"
        puts "@@@@@@@@@@#{article_id}"
        puts "@@@@@@@@@@#{post_comment}

        render "articles/show"
    end
end
