//
//  ThreeViewController.swift
//  swift-布局
//
//  Created by 王俊钢 on 2016/10/22.
//  Copyright © 2016年 wangjungang. All rights reserved.
//

import UIKit

class ThreeViewController: UIViewController {
    let btn = UIButton.init()
    let imageview = UIImageView.init()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.lightGray
        btn.setTitle("返回", for: UIControlState.normal)
        btn.addTarget(self, action: #selector(ThreeViewController.btnclick), for: .touchUpInside)
        self.view.addSubview(btn)
        
        //imageview.backgroundColor = UIColor.green
        let url = NSURL.init(string: "http://a.hiphotos.baidu.com/image/h%3D200/sign=89ffa247237f9e2f6f351a082f31e962/d8f9d72a6059252dfc5e0da5309b033b5ab5b9c1.jpg")
        imageview.sd_setImage(with: url as URL!)
        imageview.layer.masksToBounds = true
        imageview.layer.cornerRadius = 100
        self.view.addSubview(imageview)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        btn.frame = CGRect.init(x: 20, y: 70, width: 100, height: 40)
        imageview.frame = CGRect.init(x: UIScreenwidth/2-100, y: 100, width: 200, height: 200)
    }

    func btnclick()
    {
        self.dismiss(animated: true) { 
            
        }
    }
}
