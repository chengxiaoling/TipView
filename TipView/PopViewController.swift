//
//  PopViewController.swift
//  TipView
//
//  Created by kayling on 2018/6/6.
//  Copyright © 2018年 Kayling. All rights reserved.
//

import UIKit

class PopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func button1Action(_ sender: UIButton) {
        
        var preferences = PopView.globalPreferences
        preferences.drawing.backgroundColor = sender.backgroundColor!
        
        preferences.animating.dismissTransform = CGAffineTransform(translationX: 0, y: -15)
        preferences.animating.showInitialTransform = CGAffineTransform(translationX: 0, y: -15)
        preferences.animating.showInitialAlpha = 0
        preferences.animating.showDuration = 1.5
        preferences.animating.dismissDuration = 1.5
        preferences.drawing.arrowPosition = .top
        
        let text = "This tip view cannot be presented with the arrow on the top position"
        PopView.show(forView: sender,
                         withinSuperview: navigationController?.view,
                         text: text,
                         preferences: preferences)
    }
    
    
    @IBAction func button2Action(_ sender: UIButton) {
        
        var preferences = PopView.Preferences()
        preferences.drawing.backgroundColor = UIColor(hue:0.58, saturation:0.1, brightness:1, alpha:1)
        preferences.drawing.foregroundColor = UIColor.darkGray
        preferences.drawing.textAlignment = NSTextAlignment.center
        
        preferences.animating.dismissTransform = CGAffineTransform(translationX: 100, y: 0)
        preferences.animating.showInitialTransform = CGAffineTransform(translationX: -100, y: 0)
        preferences.animating.showInitialAlpha = 0
        preferences.animating.showDuration = 1
        preferences.animating.dismissDuration = 1
        
        let view = PopView(text: "Tip view within the green superview. Tap to dismiss.", preferences: preferences)
        view.show(forView: sender, withinSuperview: self.view)
    }
    
    
    @IBAction func button3Action(_ sender: UIButton) {
        
        var preferences = PopView.globalPreferences
        preferences.drawing.foregroundColor = UIColor.white
        preferences.drawing.font = UIFont(name: "HelveticaNeue-Light", size: 14)!
        preferences.drawing.textAlignment = NSTextAlignment.justified
        
        preferences.animating.dismissTransform = CGAffineTransform(translationX: 0, y: -15)
        preferences.animating.showInitialTransform = CGAffineTransform(translationX: 0, y: 15)
        preferences.animating.showInitialAlpha = 0
        preferences.animating.showDuration = 1
        preferences.animating.dismissDuration = 1
        preferences.drawing.arrowPosition = .top
        
        let text = "Tip view inside the navigation controller's view. Tap to dismiss!"
        PopView.show(forView: sender,
                         withinSuperview: self.navigationController?.view,
                         text: text,
                         preferences: preferences)
    }
    
    
    @IBAction func button4Action(_ sender: UIButton) {
        
        var preferences = PopView.Preferences()
        preferences.drawing.backgroundColor = sender.backgroundColor!
        preferences.drawing.foregroundColor = UIColor.white
        preferences.drawing.textAlignment = NSTextAlignment.center
        
        preferences.drawing.arrowPosition = .right
        
        preferences.animating.dismissTransform = CGAffineTransform(translationX: 0, y: 100)
        preferences.animating.showInitialTransform = CGAffineTransform(translationX: 0, y: -100)
        preferences.animating.showInitialAlpha = 0
        preferences.animating.showDuration = 1
        preferences.animating.dismissDuration = 1
        
        preferences.positioning.maxWidth = 150
        
        let view = PopView(text: "Tip view positioned with the arrow on the right. Tap to dismiss.", preferences: preferences)
        view.show(forView: sender, withinSuperview: self.navigationController?.view!)
    }
    
    @IBAction func button5Action(_ sender: UIButton) {
        
        var preferences = PopView.Preferences()
        preferences.drawing.backgroundColor = sender.backgroundColor!
        preferences.drawing.foregroundColor = UIColor.white
        preferences.drawing.textAlignment = NSTextAlignment.center
        
        preferences.drawing.arrowPosition = .left
        
        preferences.animating.dismissTransform = CGAffineTransform(translationX: -30, y: -100)
        preferences.animating.showInitialTransform = CGAffineTransform(translationX: 30, y: 100)
        preferences.animating.showInitialAlpha = 0
        preferences.animating.showDuration = 1
        preferences.animating.dismissDuration = 1
//        preferences.animating.dismissOnTap = false
        
        preferences.positioning.maxWidth = 150
        
        let view = PopView(text: "Tip view positioned with the arrow on the left. Tap won't dismiss.", preferences: preferences)
        view.show(forView: sender, withinSuperview: self.navigationController?.view!)
    }
    
    @IBAction func button6Action(_ sender: UIButton) {
        
        var preferences = PopView.globalPreferences
        preferences.drawing.arrowPosition = .bottom
        preferences.drawing.font = UIFont.systemFont(ofSize: 14)
        preferences.drawing.textAlignment = .center
        preferences.drawing.backgroundColor = sender.backgroundColor!
        
//        preferences.positioning.maxWidth = 130
        
        preferences.animating.dismissTransform = CGAffineTransform(translationX: 100, y: 0)
        preferences.animating.showInitialTransform = CGAffineTransform(translationX: 100, y: 0)
        preferences.animating.showInitialAlpha = 0
        preferences.animating.showDuration = 1
        preferences.animating.dismissDuration = 1
        
        let view = PopView(text: "上海市黄浦区同济大学", preferences: preferences)
        view.show(forView: sender, withinSuperview: self.navigationController?.view!)

    }
    
    @IBAction func defaultButton(_ sender: UIButton) {
        
        var preferences = PopView.globalPreferences
        preferences.drawing.backgroundColor = sender.backgroundColor!
        
        preferences.animating.dismissTransform = CGAffineTransform(translationX: 0, y: -15)
        preferences.animating.showInitialTransform = CGAffineTransform(translationX: 0, y: -15)
        preferences.animating.showInitialAlpha = 0
        preferences.animating.showDuration = 1.5
        preferences.animating.dismissDuration = 1.5
        preferences.drawing.arrowPosition = .top
        
        let view = PopView(text: "This tip view cannot be presented with the arrow on the top position, so position bottom has been chosen instead. Tap to dismiss.", preferences: preferences)
        view.show(forView: sender, withinSuperview: self.navigationController?.view!)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
