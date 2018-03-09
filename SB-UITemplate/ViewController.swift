//
//  ViewController.swift
//  SB-UITemplate
//
//  Created by Sercan Burak AĞIR on 1.02.2018.
//  Copyright © 2018 Sercan Burak AĞIR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCellNibs()
    }
    
    func registerCellNibs(){
        let cvCellNib = UINib(nibName: "CVinsideCell", bundle: nil)
        self.tableView.register(cvCellNib, forCellReuseIdentifier: "CVinsideCell")
        
        let detailCellNib = UINib(nibName: "DetailTVCell", bundle: nil)
        self.tableView.register(detailCellNib, forCellReuseIdentifier: "detailCell")
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section{
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CVinsideCell", for: indexPath) as! CVinsideCell
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath) as! DetailTVCell
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 3
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section{
        case 0:
            return 320
        case 1:
            return 410
        default:
            return 50
        }
    }
    
}

