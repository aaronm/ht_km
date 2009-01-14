class AbstractsController < ApplicationController
  before_filter :login_required
  
  active_scaffold :abstract do |config| 
  config.create.columns = [:headline, :abstract_text,  :source, :link, :importance, :date_found]
  config.update.columns = [ :headline, :abstract_text, :source, :link, :importance]
    
  end
  protected



   def before_create_save(record)
     record.created_by = current_user
   end
   
   
end
