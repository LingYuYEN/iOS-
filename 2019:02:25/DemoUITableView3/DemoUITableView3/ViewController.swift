//
//  ViewController.swift
//  DemoUITableView3
//
//  Created by Louis on 2019/2/25.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum Gender {
        case male, female, unknown
    }
    
    enum CellType {
        case headshot(UIImage?, String?)
        case age(Int)
        case gender(Gender)
        case address(String)
        case phone(String)
    }
    
    let dataArray: [CellType] = [
        .headshot(#imageLiteral(resourceName: "background-1974926_960_720"), "哈哈笑"),
        .age(30),
        .gender(Gender.unknown),
        .address("屏東市華山街141號"),
        .phone("0926XXXXXX")
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.register(UINib(nibName: "HeadshotCell", bundle: Bundle.main), forCellReuseIdentifier: "Headshot")
        self.tableView.tableFooterView = UIView()   // 將tableFooter以一個UIView取代，()則為Rect是0
        // 如此當沒有資料的cell即不呈現tableFooter
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let type = self.dataArray[indexPath.row]
        switch type {
        case .headshot:
            let cell = tableView.dequeueReusableCell(withIdentifier: "Headshot") as! HeadshotCell
            cell.data = type
            return cell
        case .age(let number):
            var cell = tableView.dequeueReusableCell(withIdentifier: "age")
            if cell == nil {
                cell = UITableViewCell(style: .default, reuseIdentifier: "age")
            }
            cell?.imageView?.image = #imageLiteral(resourceName: "background-1974926_960_720")
            cell?.textLabel?.text = "\(number)"
            cell?.detailTextLabel?.text = "detailTextLabel" // 因為59行 style: .default,形成於APP不顯示
            cell?.accessoryType = .checkmark
            return cell!
        case .gender(let G):
            var cell = tableView.dequeueReusableCell(withIdentifier: "gender")
            if cell == nil {
                cell = UITableViewCell(style: .subtitle, reuseIdentifier: "gender")
            }
            cell?.imageView?.image = #imageLiteral(resourceName: "background-1974926_960_720")
            cell?.textLabel?.text = "\(G)"
            cell?.detailTextLabel?.text = "detailTextLabel" // 因為59行 style: .default,形成於APP不顯示
            cell?.accessoryType = .detailButton
            return cell!
        case .address(let A):
            var cell = tableView.dequeueReusableCell(withIdentifier: "address")
            if cell == nil {
                cell = UITableViewCell(style: .value1, reuseIdentifier: "address")
            }
            cell?.imageView?.image = #imageLiteral(resourceName: "background-1974926_960_720")
            cell?.textLabel?.text = "\(A)"
            cell?.detailTextLabel?.text = "detailTextLabel" // 因為59行 style: .default,形成於APP不顯示
            cell?.accessoryType = .detailDisclosureButton
            return cell!
        case .phone(let P):
            var cell = tableView.dequeueReusableCell(withIdentifier: "phone")
            if cell == nil {
                cell = UITableViewCell(style: .value2, reuseIdentifier: "phone")
            }
            cell?.imageView?.image = #imageLiteral(resourceName: "background-1974926_960_720")
            cell?.textLabel?.text = "\(P)"
            cell?.detailTextLabel?.text = "detailTextLabel" // 因為59行 style: .default,形成於APP不顯示
            cell?.accessoryType = .disclosureIndicator
            return cell!
        }
        
        
        
        //// 處理headshot
        ////
    }
    
    
}

