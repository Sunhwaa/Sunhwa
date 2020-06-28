//
//  WordTableViewCell.swift
//  Sunhwa
//
//  Created by 이재은 on 26/06/2020.
//  Copyright © 2020 eojine. All rights reserved.
//

import UIKit

class WordTableViewCell: UITableViewCell {

    // MARK: - Properties
    @IBOutlet private weak var wrongWordLabel: UILabel!
    @IBOutlet private weak var correctWordLabel: UILabel!

    // MARK: - Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    // MARK: - Function
    func setProperties() {
        wrongWordLabel.text = "야끼만두"
        correctWordLabel.text = "군만두"
    }
    
}
