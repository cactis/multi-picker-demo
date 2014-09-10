class PickersScreen < ApplicationScreen
  title "Pickers"

  def multi_columns
    mp __method__

    set_title 'Multiple Columns Demo'
    set_section :pickers_multi_columns
  end

  # open_screen "pickers#index"
  def index
    set_title "Pickers"
    set_navigation_right_button 'New' do
      open_screen "pickers#new"
    end
    set_section :pickers_index_table
  end

  # open_screen "pickers#show"
  def show
    @model = params[:model]
    set_title "Show Picker"
    set_navigation_back_button 'Back'
    set_navigation_right_button 'Edit' do
      open_screen "pickers#edit", params: { model: @model }
    end
    set_section :pickers_show, model: @model
  end

  # open_screen "pickers#edit"
  def edit
    @model = params[:model]
    set_title "Edit Picker"
    set_navigation_back_button 'Cancel'
    set_section :pickers_form, model: @model
  end

  # open_screen "pickers#new"
  def new
    @model = Picker.new
    set_title "New Picker"
    set_navigation_back_button 'Cancel'
    set_section :pickers_form, model: @model
  end

  def on_return
    if action?(:index) || action?(:show)
      refresh
    end
  end
end
