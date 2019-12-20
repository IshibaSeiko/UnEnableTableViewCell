//
//  InitialViewController.swift
//  UnEnableTableViewCellDemo
//
//  Created by 石場清子 on 2019/12/20.
//  Copyright © 2019 石場清子. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

// MARK: - UITableViewDelegate
extension InitialViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("didTapedCell")
    }
}

// MARK: - UITableViewDataSource
extension InitialViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Int.random(in: 5 ... 10)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as? CustomTableViewCell else { return UITableViewCell() }
        
        cell.textLabel?.text = "\(indexPath.row)番"
        cell.isUserInteractionEnabled = false
        
        return cell
    }
    
    
}
