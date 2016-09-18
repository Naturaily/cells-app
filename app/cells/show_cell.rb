class ShowCell < Cell::ViewModel
  def item
    model[:item]
  end

  def attributes
    model[:attributes]
  end

  def model_name
    model[:model_name]
  end

  def notice
    model[:notice]
  end

  def edit_path
    edit_polymorphic_path(model_name)
  end

  def back_path
    polymorphic_path(model_name.pluralize)
  end
end