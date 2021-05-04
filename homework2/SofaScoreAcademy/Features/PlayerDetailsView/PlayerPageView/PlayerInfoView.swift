//
//  PlayerInfoView.swift
//  SofaScoreAcademy
//
//  Created by Matija Kruljac on 09.03.2021..
//

import SwiftUI

struct PlayerInfoView: View {
    @EnvironmentObject var observableplayer: ObservablePlayer
    @State var currentscale: CGFloat = 1
    
    var body: some View {
        GeometryReader{reader in
            VStack(spacing: 80) {
                Image(observableplayer.player.image)
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .scaledToFill()
                    .shadow(color: Color.black.opacity(0.5), radius: 2, x: 0, y: 2)
                    .frame(height: 200, alignment: .top)
                    .padding(EdgeInsets(top: 50, leading: 0, bottom: 100, trailing: 0))
                    .scaleEffect(currentscale)
                    .onTapGesture {
                        currentscale = currentscale == 1 ? 1.2 : 1
                    }
                    
                
                VStack(alignment:.leading, spacing:4) {
                    getFormattedText(for: "Date of birth: ", with: observableplayer.player.dateOfBirth, size: 24)
                    getFormattedText(for: "Nationality: ", with: observableplayer.player.nationality, size: 24)
                    getFormattedText(for: "Height: ", with: "\(observableplayer.player.height)", size: 24)
                    getFormattedText(for: "Preffered foot: ", with: observableplayer.player.preferredFoot, size: 24)
                    getFormattedText(for: "Position: ", with: observableplayer.player.position, size: 24)
                    getFormattedText(for: "Shirt Number: ", with: "\(observableplayer.player.shirtNumber)", size: 24)
                }
                .frame(width: reader.size.width * 0.9, alignment: .leading)
                .padding(10)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.5), radius: 4, x: 0, y: 2)
                
            }.frame(width:reader.size.width, alignment:.topLeading)
        }
    }

}
