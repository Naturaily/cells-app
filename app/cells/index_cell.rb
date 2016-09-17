class IndexCell < Cell::ViewModel
  def items
    model[:items]
  end

  def attributes
    model[:attributes]
  end

  def model_name
    model[:model_name]
  end

  def scope
    model[:scope] || []
  end

  def notice
    model[:notice]
  end

  def new_path
    new_polymorphic_path(scope.push(model_name))
  end
end