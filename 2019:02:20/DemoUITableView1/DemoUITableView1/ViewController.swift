//
//  ViewController.swift
//  DemoUITableView1
//
//  Created by Louis on 2019/2/20.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var dataArray = [Int]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for _ in 0 ..< 10 {
            self.dataArray.append(Int.random(in: 1 ... 100))
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell_id = "cell_id"
        var cell = tableView.dequeueReusableCell(withIdentifier: cell_id)
        
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: cell_id)
            // cell?.selectionStyle = .none
        }
        
        cell!.textLabel?.text = String(self.dataArray[indexPath.row])
        return cell!
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(self.dataArray[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true) // 造成選擇後的反白消除
    }
    
}

