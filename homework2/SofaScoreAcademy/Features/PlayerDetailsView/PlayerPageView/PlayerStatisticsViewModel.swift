//
//  PlayerStatisticsViewModel.swift
//  SofaScoreAcademy
//
//  Created by Lovro Grgurić Mileusnić on 03.05.2021..
//

import Foundation

class PlayerStatisticsViewModel : ObservableObject {
    
    @Published var players = [Player]()

    private let dataService: DataService

    init(dataService: DataService = PlayersDataService()) {
        self.dataService = dataService
    }
    
    func getAveragePlayerHeight() -> Double{
        self.getPlayers()
        
        return Double(self.players.map({(player: Player) -> Double in return player.height;})
                                  .reduce(0, {height1, height2 in height1 + height2})) /
               Double(self.players.count)
    }
    
    func getPlayers() {
        dataService.getPlayers { [self] players in
            self.players = players
        }
    }
    
    func getPlayerHeights() -> [Double]{
        self.getPlayers()
        return self.players.map({(player: Player) -> Double in return player.height;})
                                  
    }
    
}
