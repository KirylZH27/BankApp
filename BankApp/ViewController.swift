//
//  ViewController.swift
//  BankApp
//
//  Created by Кирилл Жогальский on 17.01.23.
//

import UIKit
import GoogleMaps
import CoreLocation

class ViewController: UIViewController {

    var ArrayBanks = ["Банки","Филлиалы","Все"]
    
    @IBOutlet var cityCollection: UICollectionView!
    
    @IBOutlet var sortCollection: UICollectionView!
    
    @IBOutlet var mapView: GMSMapView!
    
    
    var selectedIndexPath = IndexPath(row: 0, section: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        sortCollection.dataSource = self
        registerCityCell()
        
    }
    
    private func registerCityCell() {
        let nib = UINib(nibName: CityCollectionCell.id, bundle: nil)
        cityCollection.register(nib, forCellWithReuseIdentifier: CityCollectionCell.id)
        let nib2 = UINib(nibName: SortCollectionCell.id, bundle: nil)
        sortCollection.register(nib2, forCellWithReuseIdentifier: SortCollectionCell.id)
    }


}

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 3
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SortCollectionCell", for: indexPath)

        guard let newCell = cell as? SortCollectionCell else { return cell }
        return newCell
        
    }
    
    
}


