class PrivateRealtyProposesController < ApplicationController
  # GET /private_realty_proposes
  # GET /private_realty_proposes.json
  def index
    @private_realty_proposes = PrivateRealtyPropose.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @private_realty_proposes }
    end
  end

  # GET /private_realty_proposes/1
  # GET /private_realty_proposes/1.json
  def show
    @private_realty_propose = PrivateRealtyPropose.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @private_realty_propose }
    end
  end

  # GET /private_realty_proposes/new
  # GET /private_realty_proposes/new.json
  def new
    @private_realty_propose = PrivateRealtyPropose.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @private_realty_propose }
    end
  end

  # GET /private_realty_proposes/1/edit
  def edit
    @private_realty_propose = PrivateRealtyPropose.find(params[:id])
  end

  # POST /private_realty_proposes
  # POST /private_realty_proposes.json
  def create
    @private_realty_propose = PrivateRealtyPropose.new(params[:private_realty_propose])

    respond_to do |format|
      if @private_realty_propose.save
        format.html { redirect_to @private_realty_propose, :notice => 'Private realty propose was successfully created.' }
        format.json { render :json => @private_realty_propose, :status => :created, :location => @private_realty_propose }
      else
        format.html { render :action => "new" }
        format.json { render :json => @private_realty_propose.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /private_realty_proposes/1
  # PUT /private_realty_proposes/1.json
  def update
    @private_realty_propose = PrivateRealtyPropose.find(params[:id])

    respond_to do |format|
      if @private_realty_propose.update_attributes(params[:private_realty_propose])
        format.html { redirect_to @private_realty_propose, :notice => 'Private realty propose was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @private_realty_propose.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /private_realty_proposes/1
  # DELETE /private_realty_proposes/1.json
  def destroy
    @private_realty_propose = PrivateRealtyPropose.find(params[:id])
    @private_realty_propose.destroy

    respond_to do |format|
      format.html { redirect_to private_realty_proposes_url }
      format.json { head :no_content }
    end
  end
end
