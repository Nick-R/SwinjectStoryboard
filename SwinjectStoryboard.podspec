Pod::Spec.new do |s|
  s.name             = "SwinjectStoryboard"
  s.version          = "2.2.0"
  s.summary          = "Swinject extension for automatic dependency injection via Storyboard"
  s.description      = <<-DESC
                       SwinjectStoryboard is an extension of Swinject to automatically inject dependency to view controllers instantiated by a storyboard.
                       DESC
  s.homepage         = "https://github.com/Swinject/SwinjectStoryboard"
  s.license          = 'MIT'
  s.author           = 'Swinject Contributors'
  s.source           = { :git => "https://github.com/Swinject/SwinjectStoryboard.git", :tag => s.version.to_s }

  s.osx.source_files = 'Sources/*.{swift,m,h}'
  s.ios.source_files = 'Sources/*.{swift,m,h}'
  s.tvos.source_files = 'Sources/*.{swift,m,h}'

  s.subspec 'OSX' do |ss|
    ss.osx.source_files = 'Sources/OSX/*.{swift,h,m}'
  end
  s.subspec 'iOS' do |ss|
    ss.ios.source_files = 'Sources/iOS-tvOS/*.{swift,h,m}'
  end
  s.subspec 'tvOS' do |ss|
    ss.tvos.source_files = 'Sources/iOS-tvOS/*.{swift,h,m}'
  end

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.dependency 'Swinject', '~> 2.6'
  s.requires_arc = true
end
