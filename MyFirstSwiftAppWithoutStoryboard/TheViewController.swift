//
//  TheViewController.swift
//  MyFirstSwiftAppWithoutStoryboard
//
//  Created by haochen on 14-6-8.
//  Copyright (c) 2014年 lk. All rights reserved.
//

import UIKit

class TheViewController:UIViewController
{
    var TheTitle : String = ""
    
    override func viewDidLoad()
    {
        self.view.backgroundColor = UIColor.whiteColor()
        
        //button
        let button : UIButton = UIButton(frame: CGRectMake(20, 100, 280, 44))
        var buttonColor : UIColor = UIColor.blueColor()
        
        // Button text
        button.setTitle(TheTitle, forState: UIControlState.Normal)
        button.setTitleColor(buttonColor, forState: UIControlState.Normal)
        
        // Give our button a border
        button.layer.cornerRadius = 6
        button.layer.borderWidth = 1
        button.layer.borderColor = buttonColor.CGColor
        
        self.view.addSubview(button)
    }
}
