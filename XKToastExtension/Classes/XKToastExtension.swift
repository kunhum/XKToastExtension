//
//  XKToastExtension.swift
//  XKToastExtension
//
//  Created by kenneth on 2022/4/27.
//

import Foundation
import Toast_Swift

/*
 具体配置看ToastManager
 */

public typealias XKToastCompletion = ((_ didTap: Bool) -> Void)

public extension UIView {
    
    func xk_makeToast(_ message: String?,
                      completion: XKToastCompletion? = nil) {
        xk_makeToast(message,
                     duration: ToastManager.shared.duration,
                     position: ToastManager.shared.position,
                     title: nil,
                     image: nil,
                     style: ToastManager.shared.style,
                     completion: completion)
    }
    func xk_makeToast(_ message: String?,
                      position: ToastPosition) {
        xk_makeToast(message,
                     duration: ToastManager.shared.duration,
                     position: position,
                     title: nil,
                     image: nil,
                     style: ToastManager.shared.style,
                     completion: nil)
    }
    func xk_makeToast(_ message: String?,
                      position: ToastPosition,
                      completion: XKToastCompletion? = nil) {
        xk_makeToast(message,
                     duration: ToastManager.shared.duration,
                     position: position,
                     title: nil,
                     image: nil,
                     style: ToastManager.shared.style,
                     completion: completion)
    }
    func xk_makeToast(_ message: String?,
                      duration: TimeInterval) {
        xk_makeToast(message,
                     duration: duration,
                     position: ToastManager.shared.position,
                     title: nil,
                     image: nil,
                     style: ToastManager.shared.style,
                     completion: nil)
    }
    func xk_makeToast(_ message: String?,
                      duration: TimeInterval,
                      completion: XKToastCompletion? = nil) {
        xk_makeToast(message,
                     duration: duration,
                     position: ToastManager.shared.position,
                     title: nil,
                     image: nil,
                     style: ToastManager.shared.style,
                     completion: completion)
    }
    func xk_makeToast(_ message: String?,
                      duration: TimeInterval = ToastManager.shared.duration,
                      position: ToastPosition = ToastManager.shared.position,
                      title: String? = nil,
                      image: UIImage? = nil,
                      style: ToastStyle = ToastManager.shared.style,
                      completion: XKToastCompletion? = nil) {
        
        hideToast()
        makeToast(message,
                  duration: duration,
                  position: position,
                  title: title,
                  image: image,
                  style: style,
                  completion: completion)
    }
    
}
