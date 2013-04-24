class AdminsController < ApplicationController
  before_filter  :authenticate_admin!
   
 def download
    send_file '/home/yurko/rails_projects/1/db/product.sqlite3', :type=>"application/sqlite3" 
 end



def index

@admins=Admin.all


  end

  def new
@admin=Admin.new
  end

  def show
@admin=Admin.find(params[:id])
  end

  def edit
@admin=Admin.find(params[:id])
  end

  def create
    @admin = Admin.new(params[:admin])

    if params[:admin][:password].blank?
      params[:admin].delete(:password)
      params[:admin].delete(:password_confirmation)
    end

    respond_to do |format|
      if @admin.save
        format.html { redirect_to admins_path }
      else
        format.html { render :action=> "new" }
      end
end
end

 def update

    @admin = Admin.find(params[:id])

    respond_to do |format|
      if @admin.update_attributes(params[:admin])
        format.html { redirect_to @admin, :notice => 'Propose was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @admin.errors, :status => :unprocessable_entity }
      end
    end  
 end 

def destroy

    @admin = Admin.find(params[:id])
    @admin.destroy

    respond_to do |format|
      format.html { redirect_to proposes_url }
      format.json { head :no_content }
    end
  end

 end 

