// pattern
// 設計模式 design pattern
// ModelViewController(MVC-缺點，View資料佔比可能較大) Model-View-ViewModel(MVVM)



//
//  ViewController.swift
//  GarbageTruck
//
//  Created by Louis on 2019/3/4.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit
import MapKit

class MainVC: UIViewController {

    // 鉛筆盒(裝鉛筆的盒子)
    // ViewController(View的控制器)
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var trackBarButtonItem: UIBarButtonItem!
    @IBOutlet weak var reloadBarButtonItem: UIBarButtonItem!
    @IBOutlet weak var loadingAnimatingView: LoadingAnimatingView!
    
    var viewModel: MainViewModel?
    var manager: MainDataManager?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 初始化畫面
        self.viewModel = MainViewModel(target: self)
        self.viewModel?.setupMapView()

        // 初始化資料
        self.manager = MainDataManager()
        

        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // 取得用戶地理資料授權
        self.viewModel?.requestAuthorization()
        // 取得資訊
        self.fetchData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let model = sender as? TrackModel
        let pointVC = segue.destination as? PointVC
        pointVC?.manager.model = model
    }
    
    @IBAction func onTrackBarButtonItemAction(_ sender: Any) {
        self.manager?.showTracks(self, tapHandler: { line_id in
            guard let tracks = self.manager?.tracks else { return }
            // 更新路線，尤其針對選中的路線，用不同樣式的大頭針呈現
            self.viewModel?.updateLines(tracks, line_id: line_id)
        })
    }
    
    @IBAction func onReloadBarButtonItemAction(_ sender: Any) {
        self.fetchData()
    }
    
    private func fetchData() {
        let dispatchGroup = DispatchGroup()
        dispatchGroup.enter()
        self.manager?.fetchTruckData {
            print("fetchTruckData")
            dispatchGroup.leave()
            guard let trucks = self.manager?.trucks else { return }
            // 更新代表垃圾車的大頭針
            self.viewModel?.updateTrucks(trucks)
        }
        
        dispatchGroup.enter()
        self.manager?.fetchTrackData {
            print("fetchTrackData")
            dispatchGroup.leave()
            guard let tracks = self.manager?.tracks else { return }
            // 更新路線上的大頭針
            self.viewModel?.updateLines(tracks)
        }
        
        dispatchGroup.notify(queue: .main) {
            print("done")
            self.viewModel?.stopLoading()
        }
        
        
    }
    
    
}

