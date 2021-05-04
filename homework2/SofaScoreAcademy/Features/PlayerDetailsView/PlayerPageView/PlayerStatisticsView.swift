//
//  PlayerStatisticsView.swift
//  SofaScoreAcademy
//
//  Created by Matija Kruljac on 09.03.2021..
//

import SwiftUI

struct PlayerStatisticsView: View {
    @EnvironmentObject var observablePlayer: ObservablePlayer
    private var viewModel: PlayerStatisticsViewModel
    
    var body: some View {
        VStack {
            ScrollView {
                
                Text("Player height compared to average player height")
                    .bold()
                    .font(Font.system(size: 12))
                HBarChart(data: [viewModel.getAveragePlayerHeight(), observablePlayer.player.height],
                          labels: ["average", "player"],
                          highlightIndex: 0,
                          mainColor: Color.blue,
                          highlightColor: Color.red,
                          textColor: Color.black)
                    .padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))
                
                Divider().padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 20))
                
                Text("Players taller than \(observablePlayer.player.name)")
                    .bold()
                    .font(Font.system(size: 12))
                HBarChart(data: viewModel.getPlayerHeights(),
                          labels: viewModel.players.map({(player: Player) -> String in
                                                            return player.name.components(separatedBy: " ")[1]}),
                          mainColor: Color.green,
                          highlightColor: Color.orange,
                          textColor: Color.black,
                          highlightCondition: {value in return value > observablePlayer.player.height})
                    .padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))
            }
        }
    }
    
    init(viewModel: PlayerStatisticsViewModel = .init()){
        self.viewModel = viewModel
    }
}
