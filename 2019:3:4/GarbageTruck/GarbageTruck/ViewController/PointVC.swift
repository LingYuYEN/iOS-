//
//  PointVC.swift
//  GarbageTruck
//
//  Created by Louis on 2019/3/20.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class PointVC: UIViewController {

    var viewModel: PointViewModel?
    var manager = PointDataManager()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel = PointViewModel(target: self, manager: self.manager)
        self.title = self.manager.model?.name
    }
    
//
//    override func viewDidAppear(_ animated: Bool) {
//        print(self.manager.model)
//    }


}
