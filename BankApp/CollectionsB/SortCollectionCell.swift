//
//  SortCollectionCell.swift
//  BankApp
//
//  Created by Кирилл Жогальский on 17.01.23.
//

import UIKit

class SortCollectionCell: UICollectionViewCell {

    
    @IBOutlet var sortButton: UIButton!
    
    static let id = String(describing: SortCollectionCell.self)
   
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }
    func setButtonsName(name: String) {
        sortButton.setTitle(name, for:.normal)
        
    }

}
