//
//  DataService.swift
//  homework3
//
//  Created by Lovro Grgurić Mileusnić on 06.05.2021..
//

import Foundation

protocol DataService {
    
    func getShows(completion: @escaping ([Show]) -> Void)
    func getShowDetails(for showId: Int, completion: @escaping (Show) -> Void)
    func getShowEpisodeDetails(for episodeId: Int, completion: @escaping (showEpisode) -> Void)
    func getShowEpisodes(completion: @escaping ([showEpisode]) -> Void)
}

extension DataService {
    
    func getShows(completion: @escaping ([Show]) -> Void) {
        print("Service function not implemented")
    }
    
    func getShowDetails(for showId: Int, completion: @escaping (Show) -> Void) {
        print("Service function not implemented")
    }
    
    func getShowEpisodeDetails(for playerId: Int, completion: @escaping (showEpisode) -> Void) {
        print("Service function not implemented")
    }
    
    func getShowEpisodes(completion: @escaping ([showEpisode]) -> Void) {
        print("Service function not implemented")
    }
}
