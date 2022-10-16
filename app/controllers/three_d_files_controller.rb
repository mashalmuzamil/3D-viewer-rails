class ThreeDFilesController < ApplicationController
   def index   
      @ThreeDFiles = ThreeDFile.all   
   end   
      
   def new   
      @ThreeDFile = ThreeDFile.new   
   end   
      
   def create   
      @ThreeDFile = ThreeDFile.new(threedfile_params)   
         
      if @ThreeDFile.save   
      	 flash.notice = "Successfully loaded" 
         redirect_to three_d_files_path  
      else   
         render "new"   
      end   
         
   end   
      
   def destroy   
      @ThreeDFile = ThreeDFile.find(params[:id])   
      @ThreeDFile.destroy
      flash.notice = "Successfully deleted"
      redirect_to three_d_files_path  
   end   
      
  def show
  	 @ThreeDFile = ThreeDFile.find(params[:id])   
     
  end	

   private  

   def threedfile_params 

      params.require(:three_d_file).permit(:name, :attachment)   
   
   end  
end
