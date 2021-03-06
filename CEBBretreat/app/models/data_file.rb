class DataFile < ActiveRecord::Base

  belongs_to :registration
  
  def self.save(upload)
    
    name =  upload['datafile'].original_filename

    directory = "public/data"
    
    # create the file path
    path = File.join(directory, name)

    # write the file
    File.open(path, "wb") { |f| f.write(upload['datafile'].read) }
  
  end


end
