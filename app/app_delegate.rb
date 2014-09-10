class AppDelegate < Prime::BaseAppDelegate
  def on_load(app, options)
    mp __method__
    open_screen "pickers#multi_columns"
  end
end
