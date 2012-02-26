class StakeholdersController < ApplicationController
  # GET /stakeholders
  # GET /stakeholders.json
  def index
    @stakeholders = Stakeholder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stakeholders }
    end
  end

  # GET /stakeholders/1
  # GET /stakeholders/1.json
  def show
    @stakeholder = Stakeholder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stakeholder }
    end
  end

  # GET /stakeholders/new
  # GET /stakeholders/new.json
  def new
    @stakeholder = Stakeholder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stakeholder }
    end
  end

  # GET /stakeholders/1/edit
  def edit
    @stakeholder = Stakeholder.find(params[:id])
  end

  # POST /stakeholders
  # POST /stakeholders.json
  def create
    @stakeholder = Stakeholder.new(params[:stakeholder])

    respond_to do |format|
      if @stakeholder.save
        format.html { redirect_to @stakeholder, notice: 'Stakeholder was successfully created.' }
        format.json { render json: @stakeholder, status: :created, location: @stakeholder }
      else
        format.html { render action: "new" }
        format.json { render json: @stakeholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stakeholders/1
  # PUT /stakeholders/1.json
  def update
    @stakeholder = Stakeholder.find(params[:id])

    respond_to do |format|
      if @stakeholder.update_attributes(params[:stakeholder])
        format.html { redirect_to @stakeholder, notice: 'Stakeholder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stakeholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stakeholders/1
  # DELETE /stakeholders/1.json
  def destroy
    @stakeholder = Stakeholder.find(params[:id])
    @stakeholder.destroy

    respond_to do |format|
      format.html { redirect_to stakeholders_url }
      format.json { head :no_content }
    end
  end
end
