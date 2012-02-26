class RepresentativesController < ApplicationController
  # GET /representatives
  # GET /representatives.json
  def index
    @representatives = Representative.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @representatives }
    end
  end

  # GET /representatives/1
  # GET /representatives/1.json
  def show
    @representative = Representative.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @representative }
    end
  end

  # GET /representatives/new
  # GET /representatives/new.json
  def new
    @representative = Representative.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @representative }
    end
  end

  # GET /representatives/1/edit
  def edit
    @representative = Representative.find(params[:id])
  end

  # POST /representatives
  # POST /representatives.json
  def create
    @representative = Representative.new(params[:representative])

    respond_to do |format|
      if @representative.save
        format.html { redirect_to @representative, notice: 'Representative was successfully created.' }
        format.json { render json: @representative, status: :created, location: @representative }
      else
        format.html { render action: "new" }
        format.json { render json: @representative.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /representatives/1
  # PUT /representatives/1.json
  def update
    @representative = Representative.find(params[:id])

    respond_to do |format|
      if @representative.update_attributes(params[:representative])
        format.html { redirect_to @representative, notice: 'Representative was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @representative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /representatives/1
  # DELETE /representatives/1.json
  def destroy
    @representative = Representative.find(params[:id])
    @representative.destroy

    respond_to do |format|
      format.html { redirect_to representatives_url }
      format.json { head :no_content }
    end
  end
end
