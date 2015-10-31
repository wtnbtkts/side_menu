//
//  Menusegue.swift
//  side_menu
//
//  Created by Takatoshi Watanabe on 2015/10/31.
//  Copyright © 2015年 Takatoshi Watanabe. All rights reserved.
//

import Foundation
import ObjectiveC

private var key = 0

//class MenuSegue: UIStoryboardSegue {
//    override init(identifier: String!, source: UIViewController, destination: UIViewController) {
//        assert(destination is Menu, "Destination must conform to \(NSStringFromProtocol(Menu)) protocol")
//        super.init(identifier: identifier, source: source, destination: destination)
//    }
//    
//    override func perform() {
//        let source = sourceViewController as UIViewController
//        let target = destinationViewController as UIViewController
//        
//        target.modalPresentationStyle = .Custom
//        target.transitioningDelegate = self
//        
//        source.presentViewController(target, animated: true, completion: nil)
//    }
//}
//
//extension MenuSegue: UIViewControllerTransitioningDelegate {
//    func animationControllerForPresentedController(presented: UIViewController, presentingController _: UIViewController,
//        sourceController _: UIViewController) -> UIViewControllerAnimatedTransitioning? {
//            
//            objc_setAssociatedObject(presented, &key, self, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
//            return MenuTransitionAnimator(.Presentation)
//    }
//    
//    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
//        dispatch_async(dispatch_get_main_queue()) {
//            objc_setAssociatedObject(dismissed, &key, nil, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
//        }
//        return MenuTransitionAnimator(.Dismissal)
//    }
//}