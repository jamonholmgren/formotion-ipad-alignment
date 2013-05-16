class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    form = Formotion::Form.new({
      sections: [{
        title: "Label",
        rows: [{
          title: "Yo",
          name: "Textfield",
          type: :text,
          placeholder: "Textfield"
        }]
      }]
    })

    @view_controller = Formotion::FormController.alloc.initWithForm(form)
    @view_controller.form.on_submit do |form|
      p @view_controller.form.render
    end

    @window.rootViewController = @view_controller
    @window.makeKeyAndVisible
    true
  end
end
