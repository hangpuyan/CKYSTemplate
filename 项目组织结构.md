# CKYSTemplate
CKYSTemplate
创客云商
项目模板及代码规范

1. 使用cocoapod 管理第三方库，必要时可以代码引入，放置在thirdlib
2. podfile 传入git服务器即可

1. AppDelegate
    1. AppDelegate 分类及helper类，负责拆分AppDelegate业务中代码，保证appdelegate中代码在300行之内，细分逻辑也业务进行抽离
2. Classes
    1. app
        1. app 信息（app version | bundle ID  | systemtime...）
        2. 保证app信息的数据获取只在此处获取，保证数据唯一性，正确性
    2. framework
        1. const(项目中全局的const )
            1. 屏幕尺寸常量
            2. 全局网络提示常量
            3. 各个业务模块内部的常量各个业务模块自己内部知道就可以
            4. 多个模块公共用到的放在此处
        2. utility（所有模块的数据网络通知线程处理都必须由此处触发，避免重复代码，方便定位问题）
            1. file
                1. 文件处理类，负责创建文件
                2. 负责文件数据读取，写入
            2. userDefault
                1. 对系统的NSUserDefault进行封装盘空处理，
                2. 保证工程中所有的userDefault存取都是使用一个同一份代码，方便bug定位
            3. NSDate
                1. NSDate 格式处理，可以使用分类，也可以使用工具类，
                2. 建议使用工具类，工具类不给系统类创建函数
            4. network
                1. 网络数据请求基类，处理公共逻辑
                2. 配置debug || release url
                3. 发送同步请求 || 异步请求
            5. notification 
                1. 通知发送中心
                2. 系统通知存在缺陷，线程不统一，此处保证统一在主线长发送在主线长接收，防止多线程问题
            6. threading
                1. 线程创建类，保证工程中只有此处有权限创建线程，方便定位问题
            6. connectivity
                1. 网络状态获取及变更状态监听
    3. Modules
        1. 业务1
            1. 业务模块结构可以使用 MVC || MVVM
                1. M || VM 数据加工及逻辑处理
                2. V UI展示
                3. C 调度M & V 的数据流向及事件处理
        2. 业务2
        3.业务3
    4. ThirdLib
        1. 需要使用的第三方库
        2. 需要使用的分类

