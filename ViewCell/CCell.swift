//
//  CCell.swift
//  ViewCell
//
//  Created by App Partner on 11/7/17.
//  Copyright © 2017 App Partner. All rights reserved.
//

import UIKit

class CCell: UICollectionViewCell {

    @IBOutlet weak var name : UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.backgroundColor = UIColor.red
    }
 
    
    func setCellData(data : String){
        self.name.text = data
    }

}
