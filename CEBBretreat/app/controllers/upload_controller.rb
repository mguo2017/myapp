class UploadController < ApplicationController

  def index
     render :file => 'app\views\upload\uploadfile.html.erb'
  end
 
  def original_filename
  	if upload.blank? render :text => "<><><><><><><>  No File Has Been Select !  <><><><><><><>"
  	end 
  end
   
  def uploadFile
    post = DataFile.save(params[:upload])
    render :file => 'app\views\upload\FileUploaded.html.erb'
    end
  
  def sanitize_filename(file_name)
    # get only the filename, not the whole path (from IE)
    just_filename = File.basename(file_name) 
    # replace all none alphanumeric, underscore or perioids
    # with underscore
    just_filename.sub(/[^\w\.\-]/,'_')
  end 

  def cleanup
    	File.delete("#{RAILS_ROOT}/dirname/#{@filename}")if File.exist?("#{RAILS_ROOT}/dirname/#{@filename}")
  end



end
