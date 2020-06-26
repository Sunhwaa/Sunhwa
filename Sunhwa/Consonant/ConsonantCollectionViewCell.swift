//
//  ConsonantCollectionViewCell.swift
//  Sunhwa
//
//  Created by 양어진 on 2020/06/26.
//  Copyright © 2020 eojine. All rights reserved.
//

import UIKit

final class ConsonantCollectionViewCell: UICollectionViewCell {
   
    @IBOutlet private weak var consonantLabel: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        consonantLabel.text = nil
    }
       
    
    func setConsonantCollectionViewCellProperties(labelText: String) {
        consonantLabel.text = labelText
    }
}
