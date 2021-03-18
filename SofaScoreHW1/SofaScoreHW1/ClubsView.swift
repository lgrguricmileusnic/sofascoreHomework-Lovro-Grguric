//
//  ContentView.swift
//  SofaScoreHW1
//
//  Created by SofaScore Akademija on 16.03.2021..
//

import SwiftUI



struct ClubsView: View {
    private let viewModel = ClubsViewModel()
    private var columns: [GridItem] {
        Array(repeating:GridItem(.flexible(), spacing:20, alignment: .center), count: 1)
    }
    


    
    
    var body: some View {
        let itemClubsData = viewModel.getItemViewClubs()
        let galleryClubsData = viewModel.getGalleryViewClubs()
        let rowCount = itemClubsData.count/2 + galleryClubsData.count
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns, content: {
                    ForEach(0..<rowCount) {
                        index in
                        if (index % 2 == 0){
                            HStack(content: {
                                ClubTileView(club: itemClubsData[index])
                                if(index+1 < itemClubsData.count){
                                    ClubTileView(club: itemClubsData[index+1])
                                    
                                }
                                

                            }).padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                            
                        }else{
                            
                            
                            
                            Image(galleryClubsData[index/2].image).resizable()
                                    .cornerRadius(15)
                                    .scaledToFill()
                                    .shadow(radius: 4)
                                    .overlay(Text(galleryClubsData[index/2].name)
                                                .font(.largeTitle)
                                                .foregroundColor(Color.white).bold()
                                                .offset(x: 20, y: 20)
                                                .shadow(radius:10), alignment: .topLeading)
                                
                                

                            
                        }
                        
                            
                    }
                }).padding(10)

                        
                        
                        
            }.navigationBarTitleDisplayMode(.inline).toolbar(content: {
                ToolbarItem(placement: .principal){
                    HStack{
                        Image("logo").resizable().frame(width:24, height:24).background(Color("offWhite")).clipped().cornerRadius(3).shadow(radius: 2)
                        Text("Klubovi").font(.headline)
                    }
                    
                }
            })
        }
    }

}
        



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ClubsView()
    }
}


