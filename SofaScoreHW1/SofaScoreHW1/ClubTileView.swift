//
//  ClubTileView.swift
//  SofaScoreHW1
//
//  Created by SofaScore Akademija on 16.03.2021..
//

import SwiftUI


struct ImageOverlay: View{
    private let club: Club
    
    init(club: Club){
        self.club=club
    }
    
    var body: some View{
        Rectangle().foregroundColor(Color("offWhite"))
            .frame(height:90)
            .overlay(VStack(alignment: .leading){
                Divider()
                Text(club.name).bold().font(.headline)
                
                Text(club.address).foregroundColor(.gray).font(.system(size: 9))
                
                Text(club.desc).font(.system(size:10))
            
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment:.topLeading)
            .padding(EdgeInsets(top: 5, leading: 10, bottom: 0, trailing: 0)))
    }
}

struct ClubTileView: View {
        
    private let club: Club
    
    init(club: Club){
        self.club = club
    }
    
    var body: some View{
        VStack(spacing:0){
            Image(club.image).resizable().scaledToFill().offset(y:-30).overlay(ImageOverlay(club: club), alignment: .bottom)
            
            
            
            
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color("offWhite")).clipped().cornerRadius(15).shadow(radius: 4)
    }
    
}
