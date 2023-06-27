class ArticlesController < ApplicationController
  def index
    @articles = Article.all.page(params[:page]).per(5)
    puts "ssssss#{@articles.inspect}"
  end

  def show
    # 重复的代码试试抽共通
    @article = Article.find(params[:id])
  end  

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])
   
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
  
  def destroy
    @article = Article.find(params[:id])
    puts "!!!!!!!!!!!!#{@article.inspect}"
    @article.destroy
 
    redirect_to articles_path 
  end
  

 
    private
      def article_params
        params.require(:article).permit(:title, :content)
      end

end
