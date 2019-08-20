//
//  MusicTabBarController.swift
//  MusicLister
//
//  Created by Alberto Camacho on 8/18/19.
//  Copyright © 2019 Alberto Camacho. All rights reserved.
//

import UIKit

class MusicTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupControllers()
    }
    
    func setupControllers() -> Void {
        let musicController = MusicViewController()
        
        let favoritesController = FavoriteMusicViewController()
        
        let viewControllerArray: [UIViewController] = [musicController, favoritesController]

        viewControllers = viewControllerArray
        
    }
}
