class ArticlesController < ApplicationController
	# layout "articles"
  # instanisasi class harus sesuai nama kelas {tapi harus sama : article}
  def index

  end

  def new
    @article = Article.new
  	
  end

  def create
    @article = Article.new(params_artikel)
    if @article.save
    flash[:notice] = "Success Add Rows"
    redirect_to action: 'index'
  else
    flash[:notice] = "Error Add Rows"
    render 'new'
  end

  end

  private
   def params_artikel
    params.require(:article).permit(:title, :content, :status, :created_at, :updated_at)
  end  

  def edit
  end

  def list
  	  @artikel = Article.all
  end
end
