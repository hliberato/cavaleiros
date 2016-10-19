if MyAdmin::Configuration.count == 0
  MyAdmin::Configuration.create(value: 'darkblue')
end