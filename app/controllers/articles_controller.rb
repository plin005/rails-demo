class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    # Rails will pass all instance variables to the view -> app/views/articles/show.html.erb
  end

  def create
    # render plain: params[:article].inspect

    # 如下定义不符合安全特性
    # @article = Article.new(params[:article])

    # 如下定义被允许传入的参数
    # @article = Article.new(params.require(:article).permit(:title, :text))
    @article = Article.new(article_params)

    if @article.save # save的结果为true, 说明持久化成功
      redirect_to @article
    else
      render 'new'
    end
  end

  private 
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
