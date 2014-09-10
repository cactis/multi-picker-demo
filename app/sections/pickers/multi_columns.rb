class PickersMultiColumnsSection < Prime::Section
  element :title, text: 'your input:'#, as: :view

  after_render :after_render
  def after_render
    @picker = UIPickerView.alloc.init
    @picker.delegate = self
    @picker.top = 100
    screen.view.addSubview @picker
  end

  def numberOfComponentsInPickerView(pickerView)
    4
  end

  def pickerView(pickerView, numberOfRowsInComponent: component)
    component_options[component].count
  end

  def pickerView(pickerView, titleForRow: row, forComponent: component)
    component_options[component][row]
  end

  def pickerView(pickerView, didSelectRow: row, inComponent: component)
    mp [pickerView, row, component, 'pickerView, row, component']
    value = (0..numberOfComponentsInPickerView(pickerView) - 1).map{|i|
      component_options[i][@picker.selectedRowInComponent i]
    }.join(', ')
    view(:title).text = "your input: #{value}"
  end

  def component_options
    [
      (0..9).to_a.map{|i| i.to_s},
      (0..99).to_a.map{|i| i.to_s},
      ('A'..'Z').to_a,
      ('a'..'z').to_a
    ]
  end
end
