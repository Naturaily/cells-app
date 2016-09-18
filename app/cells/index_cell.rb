class IndexCell < PageCell
  def items
    model[:items]
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

  def new_path
    new_polymorphic_path(model_name)
  end
end