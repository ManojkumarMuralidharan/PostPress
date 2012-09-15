class CommentvotesController < ApplicationController
  # GET /commentvotes
  # GET /commentvotes.json
  def index
    @commentvotes = Commentvote.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @commentvotes }
    end
  end

  # GET /commentvotes/1
  # GET /commentvotes/1.json
  def show
    @commentvote = Commentvote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @commentvote }
    end
  end

  # GET /commentvotes/new
  # GET /commentvotes/new.json
  def new
    @commentvote = Commentvote.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @commentvote }
    end
  end

  # GET /commentvotes/1/edit
  def edit
    @commentvote = Commentvote.find(params[:id])
  end

  # POST /commentvotes
  # POST /commentvotes.json
  def create
    @commentvote = Commentvote.new(params[:commentvote])

    respond_to do |format|
      if @commentvote.save
        format.html { redirect_to @commentvote, notice: 'Commentvote was successfully created.' }
        format.json { render json: @commentvote, status: :created, location: @commentvote }
      else
        format.html { render action: "new" }
        format.json { render json: @commentvote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /commentvotes/1
  # PUT /commentvotes/1.json
  def update
    @commentvote = Commentvote.find(params[:id])

    respond_to do |format|
      if @commentvote.update_attributes(params[:commentvote])
        format.html { redirect_to @commentvote, notice: 'Commentvote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @commentvote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commentvotes/1
  # DELETE /commentvotes/1.json
  def destroy
    @commentvote = Commentvote.find(params[:id])
    @commentvote.destroy

    respond_to do |format|
      format.html { redirect_to commentvotes_url }
      format.json { head :no_content }
    end
  end
end
