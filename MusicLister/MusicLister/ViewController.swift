//
//  ViewController.swift
//  MusicLister
//
//  Created by Alberto Camacho on 6/30/19.
//  Copyright © 2019 Alberto Camacho. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    @IBOutlet var tableview: UITableView!
    let myArray = ["Alberto", "Armando", "Gio", "Luis"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customcell", for: indexPath)
        cell.textLabel?.text = myArray[indexPath.item]
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        return tableview.reloadData()
    }

}

