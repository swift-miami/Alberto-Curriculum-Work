//
//  ViewController.swift
//  MusicLister
//
//  Created by Alberto Camacho on 6/30/19.
//  Copyright © 2019 Alberto Camacho. All rights reserved.
//

import UIKit

class SongTableViewCell: UITableViewCell {
    
    @IBOutlet weak var trackName: UILabel!
    @IBOutlet weak var trackArtist: UILabel!
    @IBOutlet weak var trackAlbum: UILabel!
    @IBOutlet weak var trackGenre: UILabel!
    @IBOutlet weak var trackTime: UILabel!
    
    
}

class ViewController: UITableViewController {

    let myArray = [Song(trackName: "Sea Shanty 2", artist: "Runescape", album: "Port Sarim", genre: "Kandarin", trackLength: "3:50"),
                   Song(trackName: "Human Silence", artist: "The Voidz", album: "Null and Void", genre: "Minimal", trackLength: "0:00"),
                   Song(trackName: "Swing Life Away", artist: "Rise Against", album: "Siren Song of the Counter Culture", genre: "Punk", trackLength: "3:16"),
                   Song(trackName: "'Till I Collapse", artist: "Eminem", album: "The Eminem Show", genre: "Rap", trackLength: "4:58"),
                   Song(trackName: "Mountain Sound", artist: "Of Monsters and Men", album: "My Head is an Animal", genre: "Indie Folk", trackLength: "3:31"),
                   Song(trackName: "End of May", artist: "Michael Buble", album: "Crazy Love", genre: "Pop Jazz", trackLength: "4:05"),
                   Song(trackName: "Whatever It Takes", artist: "Imagine Dragons", album: "Evolve", genre: "Rock", trackLength: "3:21"),
                   Song(trackName: "Pallet Town", artist: "Junichi Masuda", album: "Pokemon Red/Blue", genre: "Video Game", trackLength: "1:06"),
                   Song(trackName: "U + Ur Hand", artist: "P!nk", album: "I'm Not Dead", genre: "Pop", trackLength: "4:31"),
                   Song(trackName: "Song", artist: "Artist", album: "Album", genre: "Genre", trackLength: "2:32"),
                   Song(trackName: "Give it All", artist: "Rise Against", album: "Siren Song of the Counter Culture", genre: "Hard Rock", trackLength: "3:05"),
                   Song(trackName: "Hakuna Matata", artist: "Disney", album: "Lion King", genre: "Retro", trackLength: "3:20"),
                   Song(trackName: "Thnks fr th Mmrs", artist: "Fallout Boy", album: "Infinity on High", genre: "Rock", trackLength: "3:27"),
                   Song(trackName: "Golden", artist: "Fall Out Boy", album: "Infinity On High", genre: "Rock", trackLength: "3:43"),
                   Song(trackName: "Fly Me to the Moon", artist: "Frank Sinatra", album: "It Might as Well Be Swing", genre: "Jazz", trackLength: "2:31")]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self

        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "songcell", for: indexPath) as! SongTableViewCell
        cell.trackName?.text = myArray[indexPath.row].trackName
        cell.trackAlbum?.text = myArray[indexPath.row].album
        cell.trackArtist?.text = myArray[indexPath.row].artist
        cell.trackGenre?.text = myArray[indexPath.row].genre
        cell.trackTime?.text = myArray[indexPath.row].trackLength
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        return tableView.reloadData()
    }

}

