//
//  ViewController.swift
//  MusicLister
//
//  Created by Alberto Camacho on 6/30/19.
//  Copyright © 2019 Alberto Camacho. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let myArray = [Song(name: "Sea Shanty 2", artist: "Runescape", album: "Port Sarim", genre: "Kandarin", length: "3:50"),
                   Song(name: "Human Silence", artist: "The Voidz", album: "Null and Void", genre: "Minimal", length: "0:00"),
                   Song(name: "Swing Life Away", artist: "Rise Against", album: "Siren Song of the Counter Culture", genre: "Punk", length: "3:16"),
                   Song(name: "'Till I Collapse", artist: "Eminem", album: "The Eminem Show", genre: "Rap", length: "4:58"),
                   Song(name: "Mountain Sound", artist: "Of Monsters and Men", album: "My Head is an Animal", genre: "Indie Folk", length: "3:31"),
                   Song(name: "End of May", artist: "Michael Buble", album: "Crazy Love", genre: "Pop Jazz", length: "4:05"),
                   Song(name: "Whatever It Takes", artist: "Imagine Dragons", album: "Evolve", genre: "Rock", length: "3:21"),
                   Song(name: "Pallet Town", artist: "Junichi Masuda", album: "Pokemon Red/Blue", genre: "Video Game", length: "1:06"),
                   Song(name: "U + Ur Hand", artist: "P!nk", album: "I'm Not Dead", genre: "Pop", length: "4:31"),
                   Song(name: "Song", artist: "Artist", album: "Album", genre: "Genre", length: "2:32"),
                   Song(name: "Give it All", artist: "Rise Against", album: "Siren Song of the Counter Culture", genre: "Hard Rock", length: "3:05"),
                   Song(name: "Hakuna Matata", artist: "Disney", album: "Lion King", genre: "Retro", length: "3:20"),
                   Song(name: "Thnks fr th Mmrs", artist: "Fallout Boy", album: "Infinity on High", genre: "Rock", length: "3:27"),
                   Song(name: "Golden", artist: "Fall Out Boy", album: "Infinity On High", genre: "Rock", length: "3:43"),
                   Song(name: "Fly Me to the Moon", artist: "Frank Sinatra", album: "It Might as Well Be Swing", genre: "Jazz", length: "2:31")]
    
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

