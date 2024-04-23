class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
#Read
  def show
    @article = Article.find(params[:id])
  end

#Create
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(title: "...", body: "...")
    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end
end
