class FormCell < Cell::ViewModel
  def item
    model[:item]
  end

  def attributes
    model[:attributes]
  end

  def model_name
    model[:model_name]
  end

  #it's necessary for form_for helper
  def dom_class(record, prefix = nil)
    ActionView::RecordIdentifier.dom_class(record, prefix)
  end

  def dom_id(record, prefix = nil)
    ActionView::RecordIdentifier.dom_id(record, prefix)
  end
end