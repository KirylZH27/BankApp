//
//  DiamondsController.swift
//  BankApp
//
//  Created by Кирилл Жогальский on 19.01.23.
//

import UIKit

class DiamondsController: UIViewController {
    
    @IBOutlet var segmentControl: UISegmentedControl!
    
    @IBOutlet var tableVIew: UITableView!
    
    var diamonds = [ModelDiamonds]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableVIew.delegate = self
        tableVIew.dataSource = self
        registerCell()
        getData()
    }
    
    @IBAction func segmentDidChange(_ sender: Any) {
        tableVIew.reloadData()
    }
    
    func registerCell() {
        let nib = UINib(nibName: DiamondsCell.id, bundle: nil)
        tableVIew.register(nib, forCellReuseIdentifier: DiamondsCell.id)
    }
    
    private func getData() {
        ProviderDiamonds().getBanki { result in
            self.diamonds = result
            self.tableVIew.reloadData()
        } failure: {
            
        }
    }
    
}


extension DiamondsController: UITableViewDelegate {
    
}

extension DiamondsController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return diamonds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DiamondsCell.id, for: indexPath)
        guard let diamondCell = cell as? DiamondsCell else { return cell }
       // diamondCell.set(metal: diamonds[indexPath.row])
        
        let diamond = diamonds[indexPath.row]
        switch segmentControl.selectedSegmentIndex {
            case 0:
                diamondCell.set(town: diamond.name, filial: diamond.filials_text, prise_10: diamond.ZOL_10_out, prise_20: diamond.ZOL_20_out, prise_50: diamond.ZOL_50_out)
            case 1:
                diamondCell.set(town: diamond.SIL_10_out, filial: diamond.filials_text, prise_10: diamond.SIL_10_out, prise_20: diamond.SIL_20_out , prise_50: diamond.SIL_50_out)
            case 2:
                diamondCell.set(town: diamond.name, filial: diamond.filials_text, prise_10: diamond.PL_10_out, prise_20: diamond.PL_20_out, prise_50: diamond.PL_50_out)
            default:
                break
        }
        return diamondCell
    }
    
    
}
