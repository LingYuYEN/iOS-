//
//  ViewController.swift
//  DemoUITableView2
//
//  Created by Louis on 2019/2/20.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let model = TvModel()
    let cell_id = "cell_id"
    let headerHeight: CGFloat = 31.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.sectionIndexColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.tableView.sectionIndexBackgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.6993257705)   // 或使用.withAlphaComponent(0.6)
        self.tableView.layer.cornerRadius = 15
    }


}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.model.programs.count
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return self.model.programs[section]
//    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return self.headerHeight
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = MyHeader()
        header.frame.size = CGSize(width: tableView.bounds.width, height: self.headerHeight)
        header.title = self.model.programs[section]
        return header
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return self.model.news.count
        case 1:
            return self.model.sports.count
        case 2:
            return self.model.recreations.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        var cell = tableView.dequeueReusableCell(withIdentifier: self.cell_id)
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: self.cell_id)
            cell?.selectionStyle = .none // 點選無反白效果
        }
        
        switch indexPath.section {
        case 0:
            cell?.textLabel?.text = model.news[indexPath.row]
        case 1:
            cell?.textLabel?.text = model.sports[indexPath.row]
        case 2:
            cell?.textLabel?.text = model.recreations[indexPath.row]
        default:
            cell?.textLabel?.text = ""
        // 因為dequeueReusableCell重複使用cell，所以透過63清空cell避免前次資料留存
        }
        
        return cell!
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return self.model.programs
    }
}

