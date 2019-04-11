//
//  PointViewModel.swift
//  GarbageTruck
//
//  Created by Louis on 2019/3/20.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class PointViewModel: NSObject {
    var manager: PointDataManager
    
    var target: PointVC
    var tableView: UITableView
    
    
    init(target: PointVC, manager: PointDataManager) {
        self.target = target
        self.manager = manager
        self.tableView = target.tableView
        super.init()
//        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
}

extension PointViewModel: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.manager.infoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell_id = "cell_id"
        var cell = tableView.dequeueReusableCell(withIdentifier: cell_id)
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: cell_id)
            cell?.selectionStyle = .none
        }
        cell?.textLabel?.text = self.manager.infoArray[indexPath.row].title
        cell?.detailTextLabel?.text = self.manager.infoArray[indexPath.row].sub
        return cell!
    }
}

//extension PointViewModel: UITableViewDelegate {
//
//}
