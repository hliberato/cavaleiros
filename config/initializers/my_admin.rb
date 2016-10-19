Paperclip.options[:command_path] = "/usr/bin/"

MyAdmin.setup do |config|
  config.title = "Focusnetworks"
  config.url_prefix = "admin"
end

MyAdmin::Application.add([MyAdmin::Group, MyAdmin::Log, MyAdmin::User, MyAdmin::Locale])
MyAdmin::Application.add([Store])
#MyAdmin::Application.add([Social])
MyAdmin::Application.add([Service])
MyAdmin::Application.add([Contact])
MyAdmin::Application.add([Newsletter])
MyAdmin::Application.add([Product])
MyAdmin::Application.add([Notice])
MyAdmin::Application.add([Person])
MyAdmin::Application.add([About])
MyAdmin::Application.add([Mediabox])
MyAdmin::Application.add([Faq])
MyAdmin::Application.add([Document])
MyAdmin::Application.add([Gallery])
MyAdmin::Application.add([Client])
#MyAdmin::Application.add([Tag])
MyAdmin::Application.add([Video])
MyAdmin::Application.add([Case])
MyAdmin::Application.add([Customercare])
MyAdmin::Application.add([Category])
MyAdmin::Application.add([Advertising])
MyAdmin::Application.add([Sponsor])
MyAdmin::Application.add([Event])