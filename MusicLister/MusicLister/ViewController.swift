//
//  ViewController.swift
//  MusicLister
//
//  Created by Alberto Camacho on 6/30/19.
//  Copyright © 2019 Alberto Camacho. All rights reserved.
//

import UIKit

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
        return tableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SongTableViewCell.identifier, for: indexPath) as! SongTableViewCell
        let song = myArray[indexPath.row]
        cell.configure(song)
        return cell
    }
}

