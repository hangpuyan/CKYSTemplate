#  cocoaPods 管理第三方框架 
## 如果需要添加第三方框架，请在 podfile 中添加 

`
请在 podfile 中添加 pod 'XXX' 提交即可，本地pod install，
不相关的数据不要提交到Git服务端，eg：断点，Xcode 配置，pod framework
`

target 'CKYSTemplate' do

# 异常统计
pod 'Bugly'
#网络请求处理多线程框架
pod 'AFNetworking', '~> 3.1.0'
#上下拉刷新
pod 'MJRefresh'
#autoLyout 布局
pod 'Masonry', '~> 1.1.0’
#UI costum self
pod 'UIButtonUnit'
#数据解析
pod 'MJExtension'
#地图
pod 'BaiduMapKit', '~>3.4.4'
#阿里云存储
pod 'AliyunOSSiOS'
#推送
pod 'JPush'
#图片异步加载
pod 'SDWebImage'
#融云 即时通讯
pod 'RongCloudIM'

end
