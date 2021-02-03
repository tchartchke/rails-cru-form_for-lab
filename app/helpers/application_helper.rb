module ApplicationHelper

  def input_params(req, *args)
    params.require(req).permit(*args)
  end 
  
end
