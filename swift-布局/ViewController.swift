//
//  ViewController.swift
//  swift-布局
//
//  Created by 王俊钢 on 2016/10/19.
//  Copyright © 2016年 wangjungang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let label1 = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //创建组件
        let textField = UITextField() //这里不再需要刻意制定x,y坐标
        textField.borderStyle = UITextBorderStyle.roundedRect
        self.view.addSubview(textField)
        
        let button = UIButton(type: .system);
        button.setTitle("按钮", for:UIControlState.normal)
        button.backgroundColor = UIColor(red: 55/255, green: 186/255, blue: 89/255,
                                         alpha: 0.5)
        self.view.addSubview(button)
        
        let textView = UITextView()
        textView.text="hangge.com"
        
        textView.backgroundColor = UIColor(red: 55/255, green: 186/255, blue: 89/255,
                                           alpha: 0.5)
        self.view.addSubview(textView)
        
        //使用Auto Layout的方式来布局
        textField.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        //创建一个控件数组
        let views:[String:AnyObject] = ["textField": textField,
                                        "button": button, "textView": textView]
        
        //创建一个水平居中约束（按钮）
        let constraint:NSLayoutConstraint = NSLayoutConstraint(
            item: button, attribute: .centerX, relatedBy: .equal,
            toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(constraint)
        //创建水平方向约束
        self.view.addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-5-[textField]-5-|", options:NSLayoutFormatOptions.alignAllCenterX,
            metrics: nil, views: views))
        self.view.addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-5-[textView]-5-|", options: NSLayoutFormatOptions.alignAllCenterX,
            metrics: nil, views: views))
        //创建垂直方向约束
        self.view.addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "V:|-20-[textField]-20-[textView]-20-[button]-20-|",
            options:NSLayoutFormatOptions.alignAllCenterX, metrics: nil, views: views))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
}

