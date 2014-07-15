class ArticlesController < ApplicationController
	def search
		@articles = Article.search(params[:search])
	end

	def auto_suggest
		if params[:search].present?
			@articles_suggest = Article.search(params[:search])	
		else
			@articles_suggest = Article.none
		end
			render partial: 'shared/auto_suggest'
	end
	
	def new
		@article = Article.new
		#article.fact_no = 5
		#@factorial = article.factorial
		#render 'facts/facts_view', :locals => { :result1 => @factorial, :result2 => Article.new.factorial_parameter(5)  }
	end

	def find_multiple
		@article = Article.where('id > 30 and id < 39')
	end

	def title
		'rohan'
	end

	def create
		#render plain: params[:article].inspect
		#@title=params[:article][:title]
		 @article = Article.new(article_params)
		  if @article.save
		      redirect_to @article
		  else                                                                       
		      render new_article_path
		      #redirect_to new_article_path
		      #redirect_to '/welcome/index'
		      #render 'new'
		  end
	end

	def show
	  @article = Article.find(params[:id])
	end	 
	
	def index
		@articles = Article.all
		#render partial:'partial'
	  #render :template => 'welcome/index'
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
	def destroy
		#provide condition as provided in a where clause eg title='validTitle'
		Article.delete_all("id='#{params[:id]}'")	
		#@articles = Article.all
		redirect_to action: 'index'
		#delete_all deltes all record without firing callbackas and returns num of rows deleted
		#destroy_all fires callback like before_destroy and after_destroy. It returns all the deleted objects
		#other way to do is to provide hash as a condition
		#@article=Article.delete_all(:title => params[:title])	
		#redirect_to articles_path

	end	
	
	private
	def article_params
		params.require(:article).permit(:title, :text, :tag)
	end

	
end
