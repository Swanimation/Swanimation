//
//  Bouncers.swift
//  Swanimation
//
//  Created by AM on 1/11/15.
//  Copyright (c) 2015 Swanimation. All rights reserved.
//

import UIKit

extension UIView {
    
    public func bounce(duration:Double = 1, delay:Double = 0.0,
        springWithDamping:Double = 0.3, initialSpringVelocity:Double = 0.0,
        options: UIViewAnimationOptions = nil,
        completion: ((Bool) -> Void)? = nil) {
            
            let damping : CGFloat = CGFloat(springWithDamping)
            let aimationVelocity : CGFloat = CGFloat(initialSpringVelocity)
            
            let initialCenter = self.center
            // TODO::make the offset value a parameter
            self.center = CGPoint(x: initialCenter.x, y: initialCenter.y -  15)
            
            UIView.animateWithDuration(duration, delay: delay,
                usingSpringWithDamping: damping, initialSpringVelocity: aimationVelocity,
                options: options,
                animations: {
                    self.center = initialCenter
                }, completion: completion)
    }
    
    public func shake(duration:Double = 0.5, delay:Double = 0.0,
        springWithDamping:Double = 0.1, initialSpringVelocity:Double = 10.0,
        options: UIViewAnimationOptions = nil,
        completion: ((Bool) -> Void)? = nil) {
            
            let damping : CGFloat = CGFloat(springWithDamping)
            let aimationVelocity : CGFloat = CGFloat(initialSpringVelocity)
            
            let initialCenter = self.center
            self.center = CGPoint(x: initialCenter.x - 15, y: initialCenter.y)
            
            UIView.animateWithDuration(duration, delay: delay,
                usingSpringWithDamping: damping, initialSpringVelocity: aimationVelocity,
                options: options,
                animations: {
                    self.center = initialCenter
                }, completion: completion)
    }
    
    public func bounceEnterLeft(duration:Double = 1.0, delay:Double = 0.0,
        springWithDamping:Double = 0.5, initialSpringVelocity:Double = 0.0,
        options: UIViewAnimationOptions = nil,
        completion: ((Bool) -> Void)? = nil) {
            
            bounceEnter(duration: duration, delay: delay, from: Direction.Left, springWithDamping: springWithDamping, initialSpringVelocity: initialSpringVelocity, options: options, completion: completion)
    }
    
    public func bounceEnterRight(duration:Double = 1.0, delay:Double = 0.0,
        springWithDamping:Double = 0.5, initialSpringVelocity:Double = 0.0,
        options: UIViewAnimationOptions = nil,
        completion: ((Bool) -> Void)? = nil) {
            
            bounceEnter(duration: duration, delay: delay, from: Direction.Right, springWithDamping: springWithDamping, initialSpringVelocity: initialSpringVelocity, options: options, completion: completion)
    }
    
    public func bounceEnterTop(duration:Double = 1.0, delay:Double = 0.0,
        springWithDamping:Double = 0.6, initialSpringVelocity:Double = 0.0,
        options: UIViewAnimationOptions = nil,
        completion: ((Bool) -> Void)? = nil) {
            
            bounceEnter(duration: duration, delay: delay, from: Direction.Top, springWithDamping: springWithDamping, initialSpringVelocity: initialSpringVelocity, options: options, completion: completion)
    }
    
    public func bounceEnterBottom(duration:Double = 1.0, delay:Double = 0.0,
        springWithDamping:Double = 0.6, initialSpringVelocity:Double = 0.0,
        options: UIViewAnimationOptions = nil,
        completion: ((Bool) -> Void)? = nil) {
            
            bounceEnter(duration: duration, delay: delay, from: Direction.Bottom, springWithDamping: springWithDamping, initialSpringVelocity: initialSpringVelocity, options: options, completion: completion)
    }
    
    public func bounceEnter(duration:Double = 1.0, delay:Double = 0.0,
        from:Direction = .Left, springWithDamping:Double = 0.5, initialSpringVelocity:Double = 0.0,
        options: UIViewAnimationOptions = nil,
        completion: ((Bool) -> Void)? = nil) {
            
            let damping : CGFloat = CGFloat(springWithDamping)
            let aimationVelocity : CGFloat = CGFloat(initialSpringVelocity)
            
            switch from {
                
            case .Left:
                self.center.x -= self.window!.rootViewController!.view!.bounds.width
                UIView.animateWithDuration(duration, delay: delay,
                    usingSpringWithDamping: damping, initialSpringVelocity: aimationVelocity,
                    options: options,
                    animations: {
                        self.alpha = 1.0
                        self.center.x += self.window!.rootViewController!.view!.bounds.width
                    }, completion: completion)
                
            case .Right:
                self.center.x += self.window!.rootViewController!.view!.bounds.width
                UIView.animateWithDuration(duration, delay: delay,
                    usingSpringWithDamping: damping, initialSpringVelocity: aimationVelocity,
                    options: options,
                    animations: {
                        self.alpha = 1.0
                        self.center.x -= self.window!.rootViewController!.view!.bounds.width
                    }, completion: completion)
            case .Top:
                self.center.y -= self.window!.rootViewController!.view!.bounds.height
                UIView.animateWithDuration(duration, delay: delay,
                    usingSpringWithDamping: damping, initialSpringVelocity: aimationVelocity,
                    options: options,
                    animations: {
                        self.alpha = 1.0
                        self.center.y += self.window!.rootViewController!.view!.bounds.height
                    }, completion: completion)
            case .Bottom:
                self.center.y += self.window!.rootViewController!.view!.bounds.height
                UIView.animateWithDuration(duration, delay: delay,
                    usingSpringWithDamping: damping, initialSpringVelocity: aimationVelocity,
                    options: options,
                    animations: {
                        self.alpha = 1.0
                        self.center.y -= self.window!.rootViewController!.view!.bounds.height
                    }, completion: completion)
            };
    }
    
}