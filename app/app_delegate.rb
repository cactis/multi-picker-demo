class AppDelegate < Prime::BaseAppDelegate
  def on_load(app, options)
    open_screen "pickers#multi_columns"
  end
end
