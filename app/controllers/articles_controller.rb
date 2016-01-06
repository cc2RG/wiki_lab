class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    current_user.articles.create(article_params)
    redirect_to(articles_index_path)
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    article = Article.find(params[:id])
    article.update(article_params)
    redirect_to(articles_path)
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy
    redirect_to(articles_path)
  end




end
