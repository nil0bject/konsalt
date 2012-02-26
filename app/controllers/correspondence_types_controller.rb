class CorrespondenceTypesController < ApplicationController
  # GET /correspondence_types
  # GET /correspondence_types.json
  def index
    @correspondence_types = CorrespondenceType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @correspondence_types }
    end
  end

  # GET /correspondence_types/1
  # GET /correspondence_types/1.json
  def show
    @correspondence_type = CorrespondenceType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @correspondence_type }
    end
  end

  # GET /correspondence_types/new
  # GET /correspondence_types/new.json
  def new
    @correspondence_type = CorrespondenceType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @correspondence_type }
    end
  end

  # GET /correspondence_types/1/edit
  def edit
    @correspondence_type = CorrespondenceType.find(params[:id])
  end

  # POST /correspondence_types
  # POST /correspondence_types.json
  def create
    @correspondence_type = CorrespondenceType.new(params[:correspondence_type])

    respond_to do |format|
      if @correspondence_type.save
        format.html { redirect_to @correspondence_type, notice: 'Correspondence type was successfully created.' }
        format.json { render json: @correspondence_type, status: :created, location: @correspondence_type }
      else
        format.html { render action: "new" }
        format.json { render json: @correspondence_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /correspondence_types/1
  # PUT /correspondence_types/1.json
  def update
    @correspondence_type = CorrespondenceType.find(params[:id])

    respond_to do |format|
      if @correspondence_type.update_attributes(params[:correspondence_type])
        format.html { redirect_to @correspondence_type, notice: 'Correspondence type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @correspondence_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /correspondence_types/1
  # DELETE /correspondence_types/1.json
  def destroy
    @correspondence_type = CorrespondenceType.find(params[:id])
    @correspondence_type.destroy

    respond_to do |format|
      format.html { redirect_to correspondence_types_url }
      format.json { head :no_content }
    end
  end
end
