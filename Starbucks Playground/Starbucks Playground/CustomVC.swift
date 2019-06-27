//
//  CustomVC.swift
//  Starbucks Playground
//
//  Created by Alberto Camacho on 6/26/19.
//  Copyright © 2019 Alberto Camacho. All rights reserved.
//

import Foundation
import UIKit

class CustomVC: UITableViewCell {
    
    lazy var button : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        //button.sett
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //setupUI()
    }
        
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
