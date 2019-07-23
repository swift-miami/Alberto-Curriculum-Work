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
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var artist: UILabel!
    @IBOutlet weak var album: UILabel!
    @IBOutlet weak var genre: UILabel!
    @IBOutlet weak var length: UILabel!
    
    func configure(_ song: Song) {
        name?.text = song.name
        album?.text = song.album
        artist?.text = song.artist
        genre?.text = song.genre
        length?.text = song.length
    }
}
