//
//  SongTableViewCell.swift
//  MusicLister
//
//  Created by Alberto Camacho on 7/22/19.
//  Copyright © 2019 Alberto Camacho. All rights reserved.
//

import Foundation
import UIKit

class SongTableViewCell: UITableViewCell {
    static let identifier = String(describing: SongTableViewCell.self)
    @IBOutlet weak var trackName: UILabel!
    @IBOutlet weak var trackArtist: UILabel!
    @IBOutlet weak var trackAlbum: UILabel!
    @IBOutlet weak var trackGenre: UILabel!
    @IBOutlet weak var trackTime: UILabel!
    
    func configure(_ song: Song) {
        trackName?.text = song.trackName
        trackAlbum?.text = song.trackAlbum
        trackArtist?.text = song.trackArtist
        trackGenre?.text = song.trackGenre
        trackTime?.text = song.trackLength
    }
}
