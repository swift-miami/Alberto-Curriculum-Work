//
//  AppDelegate.swift
//  MusicLister
//
//  Created by Alberto Camacho on 6/26/19.
//  Copyright © 2019 Alberto Camacho. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        //This is our new main since we will not be using the storyboard file.
        /*
         Part 1
         - Create a UITableView that displays a list of your top 15 favorite songs.
         - Each cell should display (at least) the artist, album, track name, genre, and track length.
         - The song data can be hard-coded.
         - Use a mixture of different artists, albums, and genres.
         - The interface should be able to rotate.
         
         Part 2
         - Allow the user to swipe a cell to mark an item as a favorite or to unfavorite an item.
         - There should be some sort of indication that a cell is favorited.
         - As of now there should have been a single view (a UITableView). Add a UITabBar with 2 tabs. The first tab should contain the original table view. The second tab should contain a new table view with the list of favorites. The interface and features should be the same as the first tab.
         - If a user unfavorites an item from the favorites tab it should be removed from the table view.
         - Favorites do not need to be persisted if the user quits the app.
         
         Part 3
         - Add a search bar that allows the user to filter the results.
         - The filter should apply to the artist, album, track name, and genre.
         
         Part 4
         - Add a UISegmentedControl with the following segments: All, Artist, Album, Genre.
         - By default 'All' should be selected.
         - Selecting 'Artist', 'Album', or 'Genre' should display a single cell for each unique grouping. For example, selecting 'Genre' could have cells labeled 'Reggae', 'Hip-Hop', and 'Jazz'.
         - Selecting a cell should push a new UIViewController with a UITableView containing all items for that category using a UINavigationController.
         
         Part 5
         - When a user force-quits the app and later re-launches it, the favorited items should still be persisted.
 
         */
        
        // Set up the main UI Window for this project
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

