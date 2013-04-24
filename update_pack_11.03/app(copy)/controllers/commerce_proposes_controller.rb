class CommerceProposesController < ApplicationController
before_filter  :authenticate_admin!
  # GET /commerce_proposes
  # GET /commerce_proposes.json
  def index
    @commerce_proposes = CommercePropose.search(params[:search], params[:search1], params[:search2], params[:search3], params[:search4], params[:search5], params[:statuss],params[:phone])
    @all_proposes = CommercePropose.all
  end


  # GET /commerce_proposes/1
  # GET /commerce_proposes/1.json
  def show
    @commerce_propose = CommercePropose.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @commerce_propose }
    end
  end

  # GET /commerce_proposes/new
  # GET /commerce_proposes/new.json
  def new
    @commerce_propose = CommercePropose.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @commerce_propose }
    end
  end

  # GET /commerce_proposes/1/edit
  def edit
    @commerce_propose = CommercePropose.find(params[:id])
  end

  # POST /commerce_proposes
  # POST /commerce_proposes.json
  def create
    @commerce_propose = CommercePropose.new(params[:commerce_propose])

    respond_to do |format|
      if @commerce_propose.save
        format.html { redirect_to @commerce_propose, :notice => 'Commerce propose was successfully created.' }
        format.json { render :json => @commerce_propose, :status => :created, :location => @commerce_propose }
      else
        format.html { render :action => "new" }
        format.json { render :json => @commerce_propose.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /commerce_proposes/1
  # PUT /commerce_proposes/1.json
  def update
    @commerce_propose = CommercePropose.find(params[:id])

    respond_to do |format|
      if @commerce_propose.update_attributes(params[:commerce_propose])
        format.html { redirect_to @commerce_propose, :notice => 'Commerce propose was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @commerce_propose.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /commerce_proposes/1
  # DELETE /commerce_proposes/1.json
  def destroy
    @commerce_propose = CommercePropose.find(params[:id])
    @commerce_propose.destroy

    respond_to do |format|
      format.html { redirect_to commerce_proposes_url }
      format.json { head :no_content }
    end
  end
end
