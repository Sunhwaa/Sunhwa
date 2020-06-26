//
//  ConsonantViewController.swift
//  Sunhwa
//
//  Created by 양어진 on 2020/06/26.
//  Copyright © 2020 eojine. All rights reserved.
//

import UIKit

final class ConsonantViewController: UIViewController {
    
    @IBOutlet private weak var consonantCollectionView: UICollectionView!
    
    var consonants = ["ㄱ", "ㄴ", "ㄷ", "ㄹ", "ㅁ", "ㅂ", "ㅅ", "ㅇ", "ㅈ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}

extension ConsonantViewController: UICollectionViewDelegate {
    
}

extension ConsonantViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return consonants.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView
            .dequeueReusableCell(withReuseIdentifier: "ConsonantCollectionViewCell",
                                 for: indexPath) as? ConsonantCollectionViewCell
            else {
                return UICollectionViewCell()
        }
        
        cell.setConsonantCollectionViewCellProperties(labelText: consonants[indexPath.row])
        
        return cell
    }

}

extension ConsonantViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let size = CGSize(width: (self.view.frame.width - 10) / 3, height: (self.view.frame.width - 10) / 3)
        return size
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
}
