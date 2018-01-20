Pod::Spec.new do |s|
  s.name = 'InAppNotificationFramework'
  s.version = '1.0.2'
  s.license = 'BSD'
  s.summary = 'Gather, stack, display, app notifications as a single list'
  s.homepage = 'https://github.com/4AMOC-iOSFramework/InAppNotificationFramework'
  s.authors = { '4A MOC Dream Team' => 'fodeguipro@gmail.com' }
  s.source = { :git => 'https://github.com/4AMOC-iOSFramework/InAppNotificationFramework.git', :tag => s.version }

  s.ios.deployment_target = '9.0'
  #s.osx.deployment_target = '10.10'
  #s.tvos.deployment_target = '9.0'
  #s.watchos.deployment_target = '2.0'

  #s.ios.framework = 'UIFoundation'
  s.source_files = 'InAppNotificationFramework/*.swift'

end
