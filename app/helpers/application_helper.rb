module ApplicationHelper
  def show_options
    options_for_select([5,4,3,2,1].map{|number| [pluralize(number, "Star")]})
  end
end
