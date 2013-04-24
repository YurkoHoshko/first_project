class DemandsController < ApplicationController
before_filter  :authenticate_admin!
require 'will_paginate/array' 

   def index

params[:min_price] = case current_admin.level
	when 1 then -1
	when 2 then 2800
	when 3 then 2400
	when 4 then -1
        else 0
end

params[:max_price] = case current_admin.level
	when 1 then 100000
	when 2 then 100000
	when 3 then 5000
	when 4 then 2800
	else 0
end

params[:statuss] = case current_admin.level
	when 1 then  params[:statuss]
	when 2 then "Актуально"
	when 3 then "Актуально"
	when 4 then "Актуально"
end
    @demandscount=Demand.search(params[:search], params[:search2], params[:min_price],params[:max_price],params[:statuss],params[:phone]).count
    @demands = Demand.search(params[:search], params[:search2], params[:min_price],params[:max_price],params[:statuss],params[:phone]).paginate(:page => params[:page], :per_page=>50)
  end


  # GET /demands/1
  # GET /demands/1.json
  def show
    @demand = Demand.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @demand }
    end
  end

  # GET /demands/new
  # GET /demands/new.json
  def new
    @demand = Demand.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @demand }
    end
  end

  # GET /demands/1/edit
  def edit
    @demand = Demand.find(params[:id])
  end

  # POST /demands
  # POST /demands.json
  def create
    @demand = Demand.new(params[:demand])

    respond_to do |format|
      if @demand.save
        format.html { redirect_to @demand, :notice => 'Demand was successfully created.' }
        format.json { render :json => @demand, :status => :created, :location => @demand }
      else
        format.html { render :action => "new" }
        format.json { render :json => @demand.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /demands/1
  # PUT /demands/1.json
  def update
    @demand = Demand.find(params[:id])

    respond_to do |format|
      if @demand.update_attributes(params[:demand])
        format.html { redirect_to @demand, :notice => 'Demand was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @demand.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /demands/1
  # DELETE /demands/1.json
  def destroy
    @demand = Demand.find(params[:id])
    @demand.destroy

    respond_to do |format|
      format.html { redirect_to demands_url }
      format.json { head :no_content }
    end
  end
end
