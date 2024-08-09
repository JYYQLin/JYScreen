//
//  JY_Extension_UIScreen.swift
//  JYScreen
//
//  Created by Jing on 2024/8/9.
//

import UIKit

/** 设计稿宽度 */
let yq_original_width = 375.0


/**
 最大比例缩放
    手机系列最大宽度为
            15 pro max的 430
        最小宽度为
            375
 所以最大缩放比例就是 430 / 375 = 1.14
 
 平板最小宽度为
    mini 6 的 744
 
 所以最小缩放比例就是 768 / 375 = 1.98
 
 最后取平均值 = 1.56
 
 */
let yq_max_scale = 1.56

extension UIScreen {
    //  屏幕宽度
    public static func yq_current_screen_width() -> CGFloat {
        
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        
        return window?.bounds.width ?? 0
    }
    
    //  屏幕高度
    public static func yq_current_screen_height() -> CGFloat {
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        
        return window?.bounds.height ?? 0
    }
    
    //  宽度比例
    public static func yq_scale_to_screen_width() -> CGFloat {
        let scale = (yq_current_screen_width() / yq_original_width)
        return scale > yq_max_scale ? yq_max_scale : scale
    }
}

extension UIView {
    /** 根据控件宽度进行比例缩放 */
    public func yq_scale_to_width(originalWidth: CGFloat) -> CGFloat {
        let scale = (self.frame.width / originalWidth)
        return scale > yq_max_scale ? yq_max_scale : scale
    }
}

extension CGRect {
    /** 根据控件宽度进行比例缩放 */
    public func yq_scale_to_width(originalWidth: CGFloat) -> CGFloat {
        let scale = (self.width / originalWidth)
        return scale > yq_max_scale ? yq_max_scale : scale
    }
}

extension CGFloat {
    /** 根据控件宽度进行比例缩放 */
    public func yq_scale_to(originalWidth: CGFloat) -> CGFloat {
        let scale = (self / originalWidth)
        return scale > yq_max_scale ? yq_max_scale : scale
    }
}
