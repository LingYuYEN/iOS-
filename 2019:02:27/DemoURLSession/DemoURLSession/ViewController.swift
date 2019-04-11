//
//  ViewController.swift
//  DemoURLSession
//
//  Created by Louis on 2019/2/27.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let path = "http://datacenter.taichung.gov.tw/swagger/OpenData/b6c235ef-ec2f-4585-ab39-cacf83cb793d"
        guard let url = URL(string: path) else { return }
        ClientManager().getJsonData(method: .get, url: url) { data in
            guard let data = data else { return }
            
            // let dataArray: [CarModel]? = try? JSONDecoder().decode([CarModel].self, from: data)
            
            let dataArray = try? JSONDecoder().decode([CarModel].self, from: data)
            for model in dataArray! {
                print(model)
            }
        }
    }


}

