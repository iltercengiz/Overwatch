Pod::Spec.new do |s|
  s.name             = 'Overwatch'
  s.version          = '1.1.0'
  s.summary          = 'Easily measure how long a task takes.'
  s.description      = <<-DESC
                       Stopwatch provides simple methods to start a timer and stop it. Using the description provided when starting a timer prints out the duration when stopped.
                       DESC
  s.homepage         = 'https://github.com/iltercengiz/Overwatch'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ilter Cengiz' => 'iltercengiz@icloud.com' }
  s.source           = { :git => 'https://github.com/iltercengiz/Overwatch.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/iltercengiz'
  s.ios.deployment_target = '9.0'
  s.source_files = 'Overwatch/Classes/**/*'
end
