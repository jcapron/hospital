class SecretariesController < ApplicationController
  # GET /secretaries
  # GET /secretaries.json
  def index
    @secretaries = Secretary.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @secretaries }
    end
  end

  # GET /secretaries/1
  # GET /secretaries/1.json
  def show
    @secretary = Secretary.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @secretary }
    end
  end

  # GET /secretaries/new
  # GET /secretaries/new.json
  def new
    @secretary = Secretary.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @secretary }
    end
  end

  # GET /secretaries/1/edit
  def edit
    @secretary = Secretary.find(params[:id])
  end

  # POST /secretaries
  # POST /secretaries.json
  def create
    @secretary = Secretary.new(params[:secretary])

    respond_to do |format|
      if @secretary.save
        format.html { redirect_to @secretary, notice: 'Secretary was successfully created.' }
        format.json { render json: @secretary, status: :created, location: @secretary }
      else
        format.html { render action: "new" }
        format.json { render json: @secretary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /secretaries/1
  # PUT /secretaries/1.json
  def update
    @secretary = Secretary.find(params[:id])

    respond_to do |format|
      if @secretary.update_attributes(params[:secretary])
        format.html { redirect_to @secretary, notice: 'Secretary was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @secretary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secretaries/1
  # DELETE /secretaries/1.json
  def destroy
    @secretary = Secretary.find(params[:id])
    @secretary.destroy

    respond_to do |format|
      format.html { redirect_to secretaries_url }
      format.json { head :no_content }
    end
  end
end
