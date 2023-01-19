//
//  StonesController.swift
//  BankApp
//
//  Created by Кирилл Жогальский on 19.01.23.
//

import UIKit

class StonesController: UIViewController {

    
    @IBOutlet var tableView: UITableView!
    
    var stones = [ModelStones]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        registerCell()

    }
    
    func registerCell() {
        let nib = UINib(nibName: StonesCell.id, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: StonesCell.id)
    }

    private func getData() {
        ProviderStones().getBanki { result in
            self.stones = result
            self.tableView.reloadData()
        } failure: {
            
        }

    }

}

extension StonesController: UITableViewDelegate {
    
}

extension StonesController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: StonesCell.id, for: indexPath)
        guard let stoneCell = cell as? StonesCell else { return cell }
        stoneCell.set(stones: stones[indexPath.row])
        return stoneCell
    }
    
}
