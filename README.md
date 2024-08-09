自用的屏幕适配控件

主要功能：
  1. yq_current_device单例：当前设备信息
    - a. 提供方法获取设备TabBar、NavigationBar，以及全面屏状态下的安全高度，灵动岛高度等
              状态栏高度: yq_current_device.yq_statusBar_height()
              导航栏高度：yq_current_device.yq_navigationBar_height()
              导航条默认高度 + 状态栏高度：yq_current_device.yq_navigationBar_maxY()
              TabBar高度：yq_current_device.yq_tabBar_height()
              全面屏底部TabBar预留安全高度：yq_current_device.yq_tabBar_safe_height()
     b. 通过yq_current_device.yq_device_type()还能获得更多设备信息，比如宽、高、是否全面屏等
             是否为灵动岛：yq_current_device.yq_device_type().isDynamicIsland
             当前屏幕宽度：yq_current_device.yq_device_type().width
             横屏状态下的导航条高度：yq_current_device.yq_device_type().navigationBarHeight_H
             竖屏状态下的导航条高度：yq_current_device.yq_device_type().navigationBarHeight_V

2. 屏幕适配方法：
  a. UIScreen的扩展：
       当前屏幕宽度：UIScreen.yq_current_screen_width()
       当前屏幕宽度：UIScreen.yq_current_screen_height()
   b.获取屏幕缩放比例：由于设计稿可能是基于某一特定宽度设计的，当真实屏幕宽度与设计稿有差别，可以考虑通过宽度比例区别计算去一个值，然后将控件大小进行等比例缩放
     提供了多种获取比例的方法：
                                 view.yq_scale_to_width(originalWidth: 375)
                                 view.frame.yq_scale_to_width(originalWidth: 375)
                                 CGFloat(20).yq_scale_to(originalWidth: 375)
     
