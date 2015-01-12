//
//  Faders.swift
//  Swanimation
//
//  Created by AM on 1/9/15.
//  Copyright (c) 2015 Swanimation. All rights reserved.
//

import UIKit

extension UIView {
    
    public func fadeIn(duration:Double = 1.0, delay:Double = 0.0,
        options: UIViewAnimationOptions = nil,
        completion: ((Bool) -> Void)? = nil) {
            
            UIView.animateWithDuration(duration, delay: delay,
                options: options,
                animations: { self.alpha = 1.0 },
                completion: completion)
    }
    
    public func fadeOut(duration:Double = 1.0, delay:Double = 0.0,
        options: UIViewAnimationOptions = nil,
        completion: ((Bool) -> Void)? = nil) {
            
            UIView.animateWithDuration(duration, delay: delay,
                options: options,
                animations: { self.alpha = 0.0 },
                completion: completion)
    }
    
    public func fadeToggle(duration:Double = 1.0, delay:Double = 0.0,
        options: UIViewAnimationOptions = nil,
        completion: ((Bool) -> Void)? = nil) {
            
            if (self.alpha == 0.0) {
                fadeIn(duration: duration, delay: delay,
                    options: options, completion: completion)
            }
            else {
                fadeOut(duration: duration, delay: delay,
                    options: options, completion: completion)
            }
    }
    
    public func fadeInEnterLeft(duration:Double = 1.0, delay:Double = 0.0,
        options: UIViewAnimationOptions = nil,
        completion: ((Bool) -> Void)? = nil) {
            
            fadeInEnter(duration: duration, delay: delay, from:
                Direction.Left, options: options, completion: completion)
    }

    public func fadeInEnterRight(duration:Double = 1.0, delay:Double = 0.0,
        options: UIViewAnimationOptions = nil,
        completion: ((Bool) -> Void)? = nil) {
            
            fadeInEnter(duration: duration, delay: delay, from:
                Direction.Right, options: options, completion: completion)
    }
    
    public func fadeInEnterTop(duration:Double = 1.0, delay:Double = 0.0,
        options: UIViewAnimationOptions = nil,
        completion: ((Bool) -> Void)? = nil) {
            
            fadeInEnter(duration: duration, delay: delay, from:
                Direction.Top, options: options, completion: completion)
    }

    public func fadeInEnterBottom(duration:Double = 1.0, delay:Double = 0.0,
        options: UIViewAnimationOptions = nil,
        completion: ((Bool) -> Void)? = nil) {
            
            fadeInEnter(duration: duration, delay: delay, from:
                Direction.Bottom, options: options, completion: completion)
    }

    
    public func fadeInEnter(duration:Double = 1.0, delay:Double = 0.0,
        from:Direction = .Left,
        options: UIViewAnimationOptions = nil,
        completion: ((Bool) -> Void)? = nil) {
            
            self.alpha = 0.0
            
            switch from {
            
            case .Left:
                self.center.x -= self.window!.rootViewController!.view!.bounds.width
                UIView.animateWithDuration(duration, delay: delay,
                    options: options,
                    animations: {
                        self.alpha = 1.0
                        self.center.x += self.window!.rootViewController!.view!.bounds.width
                    }, completion: completion)
                
            case .Right:
                self.center.x += self.window!.rootViewController!.view!.bounds.width
                UIView.animateWithDuration(duration, delay: delay,
                    options: options,
                    animations: {
                        self.alpha = 1.0
                        self.center.x -= self.window!.rootViewController!.view!.bounds.width
                    }, completion: completion)
            case .Top:
                self.center.y -= self.window!.rootViewController!.view!.bounds.height
                UIView.animateWithDuration(duration, delay: delay,
                    options: options,
                    animations: {
                        self.alpha = 1.0
                        self.center.y += self.window!.rootViewController!.view!.bounds.height
                    }, completion: completion)
            case .Bottom:
                self.center.y += self.window!.rootViewController!.view!.bounds.height
                UIView.animateWithDuration(duration, delay: delay,
                    options: options,
                    animations: {
                        self.alpha = 1.0
                        self.center.y -= self.window!.rootViewController!.view!.bounds.height
                    }, completion: completion)
            };
    }
}







