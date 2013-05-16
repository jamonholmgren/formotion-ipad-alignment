class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    form = Formotion::Form.new({
      sections: [{
        title: "Label",
        rows: [{
          title: "",
          name: "Textfield",
          type: :text,
          placeholder: "Textfield",
          # row_height: 100
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
