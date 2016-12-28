class ContactAppsController < ApplicationController
  before_action :set_contact_app, only: [:show, :edit, :update, :destroy]

  # GET /contact_apps
  # GET /contact_apps.json
  def index
    @contact_apps = ContactApp.all
  end

  # GET /contact_apps/1
  # GET /contact_apps/1.json
  def show
  end

  # GET /contact_apps/new
  def new
    @contact_app = ContactApp.new
  end

  # GET /contact_apps/1/edit
  def edit
  end

  # POST /contact_apps
  # POST /contact_apps.json
  def create
    @contact_app = ContactApp.new(contact_app_params)

    respond_to do |format|
      if @contact_app.save
        format.html { redirect_to @contact_app, notice: 'Contact app was successfully created.' }
        format.json { render :show, status: :created, location: @contact_app }
      else
        format.html { render :new }
        format.json { render json: @contact_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_apps/1
  # PATCH/PUT /contact_apps/1.json
  def update
    respond_to do |format|
      if @contact_app.update(contact_app_params)
        format.html { redirect_to @contact_app, notice: 'Contact app was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact_app }
      else
        format.html { render :edit }
        format.json { render json: @contact_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_apps/1
  # DELETE /contact_apps/1.json
  def destroy
    @contact_app.destroy
    respond_to do |format|
      format.html { redirect_to contact_apps_url, notice: 'Contact app was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_app
      @contact_app = ContactApp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_app_params
      params.require(:contact_app).permit(:First_name, :Last_Name, :Phone, :Telephone, :Work_Phone, :Email_Id, :Work_Email, :Github_Id, :Facebook_Id)
    end
end
