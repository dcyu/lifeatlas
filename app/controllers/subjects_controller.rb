class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  def work
    client = Asana::Client.new do |c|
      c.authentication :access_token, ENV['ASANA_ACCESS_TOKEN']
    end
    
    workspaces = client.workspaces.find_all.to_a
    work_workspace = workspaces.first
    personal_workspace = workspaces.last
    @work_tasks = client.tasks.find_all(assignee: "me", workspace: work_workspace.id, completed_since: "now")
    @personal_tasks = client.tasks.find_all(assignee: "me", workspace: personal_workspace.id, completed_since: "now")

  end

  # GET /subjects
  # GET /subjects.json
  def index
    @subjects = Subject.all
  end

  # GET /subjects/1
  # GET /subjects/1.json
  def show
    @posts = @subject.posts
  end

  # GET /subjects/new
  def new
    @subject = Subject.new
  end

  # GET /subjects/1/edit
  def edit
  end

  # subject /subjects
  # subject /subjects.json
  def create
    @subject = Subject.new(subject_params)

    if @subject.save
      redirect_to subjects_url, notice: 'Subject created'
    else
      render :new
    end
  end

  # PATCH/PUT /subjects/1
  # PATCH/PUT /subjects/1.json
  def update
    if @subject.update(subject_params)
      redirect_to @subject.destination, notice: 'subject updated'
    else
      render :edit
    end
  end

  # DELETE /subjects/1
  # DELETE /subjects/1.json
  def destroy
    @subject.destroy
    respond_to do |format|
      format.html { redirect_to subjects_url, notice: 'subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject
      @subject = Subject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_params
      params.require(:subject).permit(:title, :body, :destination_id, :venue_id, :rating, :song, :private)
    end
end
