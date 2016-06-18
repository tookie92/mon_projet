class ArticlesController < ApplicationController
	before_action :set_article, only:[:edit, :destroy, :show, :update]
  before_action :authenticate_user!, except: [:index, :show]
  def index
  	@articles = Article.all
  end

  def new
  	@article = current_user.article.build
  end

  def create
  	@article = current_user.article.build(article_params)
  	if @article.save
  	redirect_to articles_path
    else
    	render 'new'
    end
  end

  def edit
  	
  end

  def show
  end

  def update
  	
  	@article.update(article_params)
  	redirect_to articles_path
  end

  def destroy
  	
  	@article.destroy
  	redirect_to articles_path
  end

  private
  	def article_params
  		params.require(:article).permit(:titre, :contenu, :auteur, :tag, :user_id, :image, :image_uid, :image_name)
  	end
  	def set_article
  		@article = Article.find(params[:id])
  	end

end
