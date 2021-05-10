//
//  Show.swift
//  homework3
//
//  Created by Lovro Grgurić Mileusnić on 06.05.2021..
//

import Foundation

struct Show: Identifiable {
    let id: Int
    let coverArt: String
    let showTitle: String
    let genre: String
    let description: String
    let yearOfRelease: Int
    let numberOfSeasons: Int
    let episodes: [showEpisode]
}
