class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: [:showproject]
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def showproject
    @project=Project.find(params[:id])
  end

  def userprojects
    @user=current_user
    @projects=Project.where("user_id=?",@user)
  end

  def saveprofilepic
    @p=Project.find(params[:id])
    @p.profile_pic = (params[:data])
    @p.annotation = (params[:annot])
    respond_to do |format|
    if @p.save
       
        format.html { redirect_to @p, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :created, location: @p }
      else
        format.html { render :new }
        format.json { render json: @p.errors, status: :unprocessable_entity }
      end
    end

  end

  def submitproject

    @p=Project.find(params[:id])
    @p.requested=true
    @p.confirmdate = Time.now
    @p.enddate = Time.now+(@p.duration).to_i.days

    respond_to do |format|
    if @p.save
       
        format.html { redirect_to @p, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @p }
      else
        format.html { render :new }
        format.json { render json: @p.errors, status: :unprocessable_entity }
      end
    end
  end

  def enableproject
    @p=Project.find(params[:id])
    @p.enabled = true

    respond_to do |format|
    if @p.save
       
        format.html { redirect_to "/adminpage", notice: 'Project was successfully enabled.' }
        format.json { render :show, status: :created, location: @p }
      else
        format.html { render :new }
        format.json { render json: @p.errors, status: :unprocessable_entity }
      end
    end
  end

   def returnproject
    @p=Project.find(params[:id])
    @p.requested = false
    @p.enabled = false

    respond_to do |format|
    if @p.save
       
        format.html { redirect_to "/adminpage", notice: 'Project was successfully enabled.' }
        format.json { render :show, status: :created, location: @p }
      else
        format.html { render :new }
        format.json { render json: @p.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end


  # POST /projects
  # POST /projects.json
  def create

    @project = Project.new(project_params)
    @project.user_id = current_user.id
    @project.enabled = false
    @project.requested = false

    respond_to do |format|
      if @project.save
       
        format.html { redirect_to @project, notice: 'Projekt je vytvorený a čaká na pridanie obsahu' }
        #format.html { redirect_to new_reward_path, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      if current_user.admin?
      format.html { redirect_to adminpage_path , notice: 'Projekt bol  vymazaný.' }
    else
      format.html { redirect_to root_path, notice: 'Projekt bol  vymazaný.' }
    end
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :user_id, :about, :amount, :category_id, :annotation, :duration, :profile_pic, {:pictures=>[]})
    end
end
