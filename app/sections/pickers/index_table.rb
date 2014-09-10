class PickersIndexTableSection < Prime::TableSection
  def collection_data
    Picker.all.map do |model|
      PickersIndexCellSection.new(model: model)
    end
  end

  def on_click(index)
    section = data[index.row]
    screen.open_screen 'pickers#show', params: { model: section.model }
  end
end