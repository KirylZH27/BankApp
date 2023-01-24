//
//  DiamondsCell.swift
//  BankApp
//
//  Created by Кирилл Жогальский on 19.01.23.
//

import UIKit

class DiamondsCell: UITableViewCell {

    static let id = String(describing: DiamondsCell.self)
    
    
    @IBOutlet var Label_10: UILabel!
    @IBOutlet var Label_20: UILabel!
    @IBOutlet var Label_50: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var filialLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    func set(town: String, filial: String, prise_10: String, prise_20: String, prise_50: String){
        self.Label_10.text = "Цена 10 грамм \(prise_10)"
        self.Label_20.text = "Цена 20 грамм \(prise_20)"
        self.Label_50.text = "Цена 50 грамм \(prise_50)"
        self.cityLabel.text = "Город:  \(town)"
        self.filialLabel.text = "Отделение:  \(filial)"
    }
    
    
}
