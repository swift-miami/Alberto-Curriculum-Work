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

    let myArray = [Song(trackName: "Sea Shanty 2", trackArtist: "Runescape", trackAlbum: "Port Sarim", trackGenre: "Kandarin", trackLength: "3:50"),
                   Song(trackName: "Human Silence", trackArtist: "The Voidz", trackAlbum: "Null and Void", trackGenre: "Minimal", trackLength: "0:00"),
                   Song(trackName: "Swing Life Away", trackArtist: "Rise Against", trackAlbum: "Siren Song of the Counter Culture", trackGenre: "Punk", trackLength: "3:16"),
                   Song(trackName: "'Till I Collapse", trackArtist: "Eminem", trackAlbum: "The Eminem Show", trackGenre: "Rap", trackLength: "4:58"),
                   Song(trackName: "Mountain Sound", trackArtist: "Of Monsters and Men", trackAlbum: "My Head is an Animal", trackGenre: "Indie Folk", trackLength: "3:31"),
                   Song(trackName: "End of May", trackArtist: "Michael Buble", trackAlbum: "Crazy Love", trackGenre: "Pop Jazz", trackLength: "4:05"),
                   Song(trackName: "Whatever It Takes", trackArtist: "Imagine Dragons", trackAlbum: "Evolve", trackGenre: "Rock", trackLength: "3:21"),
                   Song(trackName: "Pallet Town", trackArtist: "Junichi Masuda", trackAlbum: "Pokemon Red/Blue", trackGenre: "Video Game", trackLength: "1:06"),
                   Song(trackName: "U + Ur Hand", trackArtist: "P!nk", trackAlbum: "I'm Not Dead", trackGenre: "Pop", trackLength: "4:31"),
                   Song(trackName: "Song", trackArtist: "Artist", trackAlbum: "Album", trackGenre: "Genre", trackLength: "2:32"),
                   Song(trackName: "Give it All", trackArtist: "Rise Against", trackAlbum: "Siren Song of the Counter Culture", trackGenre: "Hard Rock", trackLength: "3:05"),
                   Song(trackName: "Hakuna Matata", trackArtist: "Disney", trackAlbum: "Lion King", trackGenre: "Retro", trackLength: "3:20"),
                   Song(trackName: "Thnks fr th Mmrs", trackArtist: "Fallout Boy", trackAlbum: "Infinity on High", trackGenre: "Rock", trackLength: "3:27"),
                   Song(trackName: "Golden", trackArtist: "Fall Out Boy", trackAlbum: "Infinity On High", trackGenre: "Rock", trackLength: "3:43"),
                   Song(trackName: "Fly Me to the Moon", trackArtist: "Frank Sinatra", trackAlbum: "It Might as Well Be Swing", trackGenre: "Jazz", trackLength: "2:31")]
    
    
    
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
        cell.trackAlbum?.text = myArray[indexPath.row].trackAlbum
        cell.trackArtist?.text = myArray[indexPath.row].trackArtist
        cell.trackGenre?.text = myArray[indexPath.row].trackGenre
        cell.trackTime?.text = myArray[indexPath.row].trackLength
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        return tableView.reloadData()
    }

}

