class ArticlesController < ApplicationController
  before_action :login_validity, except:[:index]

  def index
    @articles = Article.all.page(params[:page]).per(5)
  end

  def show
    @article = Article.find(params[:id])
    # @comment = Comment.new
  end  

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    @article.account_id = session[:account_id] 
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
