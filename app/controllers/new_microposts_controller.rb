class NewMicropostsController < ApplicationController
  # GET /new_microposts
  # GET /new_microposts.json
  def index
    @new_microposts = NewMicropost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @new_microposts }
    end
  end

  # GET /new_microposts/1
  # GET /new_microposts/1.json
  def show
    @new_micropost = NewMicropost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @new_micropost }
    end
  end

  # GET /new_microposts/new
  # GET /new_microposts/new.json
  def new
    @new_micropost = NewMicropost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @new_micropost }
    end
  end

  # GET /new_microposts/1/edit
  def edit
    @new_micropost = NewMicropost.find(params[:id])
  end

  # POST /new_microposts
  # POST /new_microposts.json
  def create
    @new_micropost = NewMicropost.new(params[:new_micropost])

    respond_to do |format|
      if @new_micropost.save
        format.html { redirect_to @new_micropost, notice: 'New micropost was successfully created.' }
        format.json { render json: @new_micropost, status: :created, location: @new_micropost }
      else
        format.html { render action: "new" }
        format.json { render json: @new_micropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /new_microposts/1
  # PUT /new_microposts/1.json
  def update
    @new_micropost = NewMicropost.find(params[:id])

    respond_to do |format|
      if @new_micropost.update_attributes(params[:new_micropost])
        format.html { redirect_to @new_micropost, notice: 'New micropost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @new_micropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_microposts/1
  # DELETE /new_microposts/1.json
  def destroy
    @new_micropost = NewMicropost.find(params[:id])
    @new_micropost.destroy

    respond_to do |format|
      format.html { redirect_to new_microposts_url }
      format.json { head :no_content }
    end
  end
end
