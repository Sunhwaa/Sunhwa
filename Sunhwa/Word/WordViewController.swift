//
//  WordViewController.swift
//  Sunhwa
//
//  Created by 이재은 on 26/06/2020.
//  Copyright © 2020 eojine. All rights reserved.
//

import UIKit

class WordViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet private weak var tableView: UITableView!

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    private func registerXib() {
        let nibName = UINib(nibName: "WordTableViewCell", bundle: Bundle.main)
        tableView.register(nibName, forCellReuseIdentifier: "WordTableViewCell")

    }

}

// MARK : - UITableViewDataSource
extension WordViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }


}

// MARK : - UITableViewDelegate
extension WordViewController: UITableViewDelegate {

}
