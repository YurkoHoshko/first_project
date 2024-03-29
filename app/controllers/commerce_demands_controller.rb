class CommerceDemandsController < ApplicationController
before_filter  :authenticate_admin!
require 'will_paginate/array'




  def index
    @commerce_demands_count= CommerceDemand.search(params[:search], params[:search1], params[:statuss],params[:phone]).paginate(:page => params[:page]).count
    @commerce_demands = CommerceDemand.search(params[:search], params[:search1], params[:statuss],params[:phone]).paginate(:page => params[:page], :per_page=>50)
     
  end


  def show
    @commerce_demand = CommerceDemand.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @commerce_demand }
    end
  end

  # GET /commerce_demands/new
  # GET /commerce_demands/new.json
  def new
    @commerce_demand = CommerceDemand.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @commerce_demand }
    end
  end

  # GET /commerce_demands/1/edit
  def edit
    @commerce_demand = CommerceDemand.find(params[:id])
  end

  # POST /commerce_demands
  # POST /commerce_demands.json
  def create
    @commerce_demand = CommerceDemand.new(params[:commerce_demand])

    respond_to do |format|
      if @commerce_demand.save
        format.html { redirect_to @commerce_demand, :notice => 'Запит успішно створено.' }
        format.json { render :json => @commerce_demand, :status => :created, :location => @commerce_demand }
      else
        format.html { render :action => "new" }
        format.json { render :json => @commerce_demand.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /commerce_demands/1
  # PUT /commerce_demands/1.json
  def update
    @commerce_demand = CommerceDemand.find(params[:id])

    respond_to do |format|
      if @commerce_demand.update_attributes(params[:commerce_demand])
        format.html { redirect_to @commerce_demand, :notice => 'Запит успішно оновлено.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @commerce_demand.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /commerce_demands/1
  # DELETE /commerce_demands/1.json
  def destroy
    @commerce_demand = CommerceDemand.find(params[:id])
    @commerce_demand.destroy

    respond_to do |format|
      format.html { redirect_to commerce_demands_url }
      format.json { head :no_content }
    end
  end
end
