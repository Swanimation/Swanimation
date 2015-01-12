//
//  ViewController.swift
//  AnimationsExampleApp
//
//  Created by AM on 1/9/15.
//  Copyright (c) 2015 Swanimation. All rights reserved.
//

import UIKit
import Swanimation

enum Animations : String {
    case FadeIn="FadeIn", FadeOut="FadeOut",
    FadeToggle="FadeToggle", FadeInEnterLeft="FadeInEnterLeft",
    FadeInEnterRight="FadeInEnterRight", FadeInEnterTop="FadeInEnterTop",
    FadeInEnterBottom="FadeInEnterBottom", Bounce="Bounce", Shake="Shake",
    BounceEnterLeft="BounceEnterLeft", BounceEnterRight="BounceEnterRight",
    BounceEnterTop="BounceEnterTop", BounceEnterBottom="BounceEnterBottom"
    
    
    static let allValues = [FadeIn, FadeOut, FadeToggle,
        FadeInEnterLeft, FadeInEnterRight, FadeInEnterTop,
        FadeInEnterBottom, Bounce, Shake, BounceEnterLeft,
        BounceEnterRight, BounceEnterTop, BounceEnterBottom]
}

class ViewController: UIViewController, UIPickerViewDelegate {

    @IBOutlet weak var animationLabel: UILabel!
    @IBOutlet weak var animationPicker: UIPickerView!

    let animations = Animations.allValues
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func animate(sender: UIButton) {
        
        switch animations[animationPicker.selectedRowInComponent(0)] {
            case .FadeIn:
                animationLabel.fadeIn()
            case .FadeOut:
                animationLabel.fadeOut()
            case .FadeToggle:
                animationLabel.fadeToggle()
            case .FadeInEnterLeft:
                animationLabel.fadeInEnterLeft()
            case .FadeInEnterRight:
                animationLabel.fadeInEnterRight()
            case .FadeInEnterTop:
                animationLabel.fadeInEnterTop()
            case .FadeInEnterBottom:
                animationLabel.fadeInEnterBottom()
            case .Bounce:
                animationLabel.bounce()
            case .Shake:
                animationLabel.shake()
            case .BounceEnterLeft:
                animationLabel.bounceEnterLeft()
            case .BounceEnterRight:
                animationLabel.bounceEnterRight()
            case .BounceEnterTop:
                animationLabel.bounceEnterTop()
            case .BounceEnterBottom:
                animationLabel.bounceEnterBottom()
            default:
                fatalError("Unknown Swanimation")
        }
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return animations.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return animations[row].rawValue
    }

}

