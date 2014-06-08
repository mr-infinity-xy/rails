class ArticlesController < ApplicationController
	def new
		@article = Article.new
	end
	def create
		#render plain: params[:article].inspect
		#@title=params[:article][:title]
		 @article = Article.new(article_params)
		 
		  if @article.save
		      redirect_to @article
		  else
		      render new_article_path
		      #redirect_to 'new'
		  end
	end

	def show
	  @article = Article.find_by(title: params[:title])
	end	 
	
	def index
	  @articles = Article.all
	end

	def edit
	  @article = Article.find_by(title: params[:title])
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
		#provide condition as provided in a where clause eg title='validTitle'
		@article=Article.delete_all("title='"<<params[:title]<<"'")	
		#delete_all deltes all record without firing callbackas and returns num of rows deleted
		#destroy_all fires callback like before_destroy and after_destroy. It returns all the deleted objects
		#other way to do is to provide hash as a condition
		#@article=Article.delete_all(:title => params[:title])	
		#redirect_to articles_path

	end	
	
	private
	def article_params
		params.require(:article).permit(:title, :text)
	end

	
end
