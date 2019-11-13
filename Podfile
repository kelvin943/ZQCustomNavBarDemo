# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'
source 'git@gitee.com:Kelvin943/macro-spec.git'
source 'https://cdn.cocoapods.org/'
inhibit_all_warnings!

#指定安装时导入多个project而不是 pod project 中多 target 
install! 'cocoapods',
:generate_multiple_pod_projects => true,
:incremental_installation => true


target 'ZQCustomNavBarDemo' do
  use_frameworks!

  pod 'ZQFoundation', :git => 'git@github.com:kelvin943/ZQFoundation.git', :branch => 'develop'

end
