//
//  PlayersDataService.swift
//  SofaScoreAcademy
//
//  Created by Lovro Grgurić Mileusnić on 03.05.2021..
//

import Foundation


class PlayersDataService: DataService {
    
    func getPlayers(completion: @escaping ([Player]) -> Void) {
        let players = DataMocker().players
        completion(players)
    }
}
