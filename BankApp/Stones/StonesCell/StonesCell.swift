//
//  StonesCell.swift
//  BankApp
//
//  Created by Кирилл Жогальский on 19.01.23.
//

import UIKit

class StonesCell: UITableViewCell {

    static let id = String(describing: StonesCell.self)
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var filial_textLabel: UILabel!
    @IBOutlet var atestatlabel: UILabel!
    @IBOutlet var name_ruLabel: UILabel!
    @IBOutlet var graniLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var colorLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    func set(stones: ModelStones) {
        self.nameLabel.text = "Город: \(stones.name)"
        
        self.filial_textLabel.text = "Форма огранки: \(stones.filials_text)"
        self.atestatlabel.text = "Номер аттестата: \(stones.attestat)"
        self.name_ruLabel.text = "Форма: \(stones.name_ru)"
        self.graniLabel.text = "Кол-во граней: \(stones.grani)"
        self.weightLabel.text = "Вес: \(stones.weight)"
        self.colorLabel.text = "Цвет: \(stones.color)"
    }

    
    
    
}
