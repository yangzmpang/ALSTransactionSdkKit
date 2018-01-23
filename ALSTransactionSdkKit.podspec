#
# Be sure to run `pod lib lint ALSTransactionSdkKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ALSTransactionSdkKit'
  s.version          = '0.1.14'
  s.summary          = 'A short description of ALSTransactionSdkKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/yangzmpang/ALSTransactionSdkKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yangzmpang' => 'zimin.yzm@alibaba-inc.com' }
  s.source           = { :git => 'https://github.com/yangzmpang/ALSTransactionSdkKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.subspec 'public' do |cs|
    cs.source_files = 'ALSTransactionSdkKit/public/**/*'
  end

  s.subspec 'interface' do |face|
     face.dependency 'ALSTransactionSdkKit/public'
     face.vendored_frameworks = 'ALSTransactionSdkKit/Classes/ALSInterfaceSdk.framework'
     #face.dependency 'ALSPayMent'
     face.dependency 'ALSInAppPurchase'
  end

  s.subspec 'plugin' do |myplugin|
    myplugin.dependency 'ALSTransactionSdkKit/public'
    myplugin.source_files = 'ALSTransactionSdkKit/plugin/**/*'
  end
  s.pod_target_xcconfig = {
  'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/**',
  'OTHER_LDFLAGS'          => '$(inherited) -undefined dynamic_lookup'
  }

end
