//
//  TwoViewController.swift
//  swift-布局
//
//  Created by 王俊钢 on 2016/10/19.
//  Copyright © 2016年 wangjungang. All rights reserved.
//

import UIKit

class TwoViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    let label1 = UILabel()
    let m_tableview = UITableView.init()
    
    var shoppingList = ["Eggs", "Milk","Banana"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        self.title = "two"
        label1.text = "第二页";
        label1.adjustsFontSizeToFitWidth = true
        label1.layer.masksToBounds = true
        label1.layer.cornerRadius = 20
        //self.view.addSubview(label1)
        
        
        let nextItem = UIBarButtonItem.init(title: "next", style: UIBarButtonItemStyle.plain, target: self, action: #selector(TwoViewController.nextclick))
        self.navigationItem.rightBarButtonItem = nextItem;
        
        m_tableview.delegate = self
        m_tableview.dataSource = self
        self.view.addSubview(m_tableview)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        label1.frame = CGRect.init(x: UIScreenwidth-100, y: 79, width: 80, height: 40)
        m_tableview.frame = CGRect.init(x: 0, y: 0, width: UIScreenwidth, height: UIScreenheight)
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return shoppingList.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: nil)
        cell.textLabel?.text = shoppingList[indexPath.row]
        
        return cell
    }
    
    func nextclick()
    {
        let threevc = ThreeViewController()
        self.present(threevc, animated: true) { 
            
        }
    }
    
}
