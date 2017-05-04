if Rails.env.test?
  Capybara.register_driver :headless_chrome do |app|
    caps = Selenium::WebDriver::Remote::Capabilities.chrome(
      'chromeOptions' => {
        'args' => ['headless', 'disable-gpu', 'no-sandbox']
      }
    )

    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      desired_capabilities: caps
    )
  end
end
