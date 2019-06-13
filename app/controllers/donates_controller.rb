class DonatesController < ApplicationController
  before_action :set_donate, only: [:show]
  before_action :set_project, only: [:new]

  # GET /donates
  # GET /donates.json
  def index
    @donates = Donate.where(user_id: current_user.id).all
  end

  # GET /donates/1
  # GET /donates/1.json
  def show
  end

  # GET /donates/new
  def new
    @donate = Donate.new
  end

  # POST /donates
  # POST /donates.json
  def create
    @donate = Donate.new(donate_params)
    @project = Project.find(@donate.project_id)

    respond_to do |format|
      if @donate.save
        format.html { redirect_to @donate, notice: 'Donate was successfully created.' }
        format.json { render :show, status: :created, location: @donate }
      else
        format.html { render :new }
        format.json { render json: @donate.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donate
      @donate = Donate.find(params[:id])
    end

    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donate_params
      params.require(:donate).permit(:donate, :user_id, :project_id)
    end
end
