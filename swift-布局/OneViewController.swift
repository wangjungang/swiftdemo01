//
//  OneViewController.swift
//  swift-布局
//
//  Created by 王俊钢 on 2016/10/19.
//  Copyright © 2016年 wangjungang. All rights reserved.
//

import UIKit

class OneViewController: UIViewController,UITextFieldDelegate {
    
    let btn01 = UIButton()
    let label1 = UILabel()
    let btn02 = UIButton()
    let textfiled1 = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title="One";
        //Item 标题        //Item样式       //目标所有        //nxet 事件触发的方法名字
        let nextItem=UIBarButtonItem(title:"下一页",style:.plain,target:self,action:#selector(OneViewController.next as (OneViewController) -> () -> ()));
        //  添加到到导航栏上
        self.navigationItem.rightBarButtonItem = nextItem;
        
        btn01.backgroundColor = UIColor.gray
        btn01.addTarget(self, action: #selector(OneViewController.btn01click), for: .touchUpInside)
        self.view.addSubview(btn01)
        
        label1.text = "烽火征途"
        label1.backgroundColor = UIColor.green
        label1.layer.masksToBounds = true
        label1.layer.cornerRadius = 20
        label1.textAlignment = NSTextAlignment.center
        self.view.addSubview(label1)
        
        
        btn02.setTitle("按钮2", for: UIControlState.normal)
        btn02.backgroundColor = UIColor.red
        btn02.addTarget(self, action: #selector(OneViewController.btn02click), for: .touchUpInside)
        self.view.addSubview(btn02)
        
        
        textfiled1.backgroundColor = UIColor.gray
        textfiled1.delegate = self
        self.view.addSubview(textfiled1)
        
        self.view.isUserInteractionEnabled = true
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(OneViewController.textfiledresi)))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        btn01.frame = CGRect(x:10,y:220,width:100,height:50)
        label1.frame = CGRect(x:10,y:64,width:100,height:40)
        btn02.frame = CGRect.init(x: UIScreen.main.bounds.size.width-80, y: 100, width: 60, height: 30)
        textfiled1.frame = CGRect.init(x: 30, y: 400, width: UIScreenwidth-60, height: 40)
    }
    
    //Item 事件
    func next()
    {
        print("点击了下一页")
        // 定义一个控制器
        let tow_vc = TwoViewController();
        //推入下一个视图
        self.navigationController?.pushViewController(tow_vc,animated:true);
    }
    
    func btn01click()
    {
        print("点击button1")
        label1.text = "软件学院"
    }
    
    func btn02click()
    {
        print("点击了button2")
        
        let alertcontrol = UIAlertController.init(title: "title", message: "message", preferredStyle: UIAlertControllerStyle.alert)
        let cancelAction = UIAlertAction(title:"取消", style: UIAlertActionStyle.cancel, handler: nil)
        let okAction = UIAlertAction(title:"好的", style: UIAlertActionStyle.default, handler: nil)
        
        let backaction = UIAlertAction.init(title: "back", style: UIAlertActionStyle.default) { (self) in
            print("123")
        }
        alertcontrol.addAction(cancelAction)
        alertcontrol.addAction(okAction)
        alertcontrol.addAction(backaction)
        self.present(alertcontrol, animated:true, completion: nil)
        
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        textfiled1.resignFirstResponder()
        return true
    }
    
    //键盘回收
//    
//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//        textfiled1.resignFirstResponder()
//    }
//    
    
    func textfiledresi()
    {
        textfiled1.resignFirstResponder()

    }
    
}
