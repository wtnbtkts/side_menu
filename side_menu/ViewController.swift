//
//  ViewController.swift
//  side_menu
//
//  Created by Takatoshi Watanabe on 2015/10/31.
//  Copyright © 2015年 Takatoshi Watanabe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let view : UIView = UIView(frame: CGRectMake(100, 100, 100, 100))
        
        view.backgroundColor = UIColor.grayColor()
        view.userInteractionEnabled = true
        view.tag = 1
        
        self.view.addSubview(view)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesBegan(touches, withEvent: event)
        
        let touche : UITouch = touches.first!
        
        switch (touche.view!.tag as Int) {
        case 1:
            let animation : CABasicAnimation = CABasicAnimation(keyPath: "transform")
            animation.duration = 0.5
            animation.repeatCount = 1
            animation.autoreverses = true
            
            let transform : CATransform3D = CATransform3DMakeRotation(CGFloat(M_PI),  1.0, 0.5, 0.0)
            animation.toValue = NSValue(CATransform3D : transform)
            
            touche.view!.layer.addAnimation(animation, forKey: "transform")
        default:
            break
        }
    }
}



//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//}

