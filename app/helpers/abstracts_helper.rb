module AbstractsHelper
  
  def importance_form_column(record, input_name)
      select :record, :importance, ["high", "medium", "low"], :name => input_name
    end

  
end
