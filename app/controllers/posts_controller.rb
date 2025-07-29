class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :write, :update_writing]
  before_action :set_destination, except: :writing
  before_action :authenticate_user!, except: [:show, :index]

  def writing
    date1 = "1/1/2016".to_date
    date2 = "31/12/2016".to_date
    @word_count = Post.where.not(body: nil).where("created_at >= ? AND created_at <= ?", date1, date2).pluck(:body).map{|post| post.split.size}.inject(0, :+)

    @posts = Post.order(:created_at).reverse
    
  end

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  def write
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to write_destination_post_path(@destination, @post)
    else
      render :new
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    if @post.update(post_params)
      redirect_to write_destination_post_path(@destination, @post)
    else
      render :edit
    end
  end

  def update_writing
    if @post.update(post_params)
      redirect_to @destination
    else
      render :write
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    def set_destination
      @destination = Destination.find(params[:destination_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body, :destination_id, :venue_id, :rating, :song, :private, :subject_id)
    end
end
