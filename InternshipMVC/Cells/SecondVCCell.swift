//
//  SecondVCCell.swift
//  InternshipMVC
//
//  Created by talgat on 12/13/20.
//

import UIKit

class SecondVCCell: UICollectionViewCell {

    @IBOutlet weak var myFoto: UIImageView!
    
    @IBOutlet weak var myName: UILabel!
    
    @IBOutlet weak var dataImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .cyan
    }

}
