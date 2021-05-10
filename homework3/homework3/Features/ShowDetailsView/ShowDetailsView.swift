//
//  ShowDetailsView.swift
//  homework3
//
//  Created by Lovro Grgurić Mileusnić on 09.05.2021..
//

import Foundation
import SwiftUI

struct ShowDetailsView : View {
    
    private let showId : Int
    
    @StateObject private var viewmodel : ShowDetailsViewModel
    
    var body : some View {
        buildView().onAppear(perform: {
            viewmodel.getShowDetails(for: showId)
        })
    }
    
    init (showId : Int, viewmodel: ShowDetailsViewModel = ShowDetailsViewModel()) {
        self.showId = showId
        _viewmodel = StateObject(wrappedValue: viewmodel)
    }
    
    @ViewBuilder
    func buildView() -> some View {
        if let show = viewmodel.show {
            VStack(alignment:.leading){
                VStack(alignment: .leading) {
                    Text(show.showTitle)
                        .font(Font.title)
                        .bold()
                    Text(show.genre)
                        .foregroundColor(Color.gray)
                        .italic()
                    
                }
                Image(show.coverArt)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity, maxHeight: 400, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                Text("Summary").bold()
                Text(show.description)
                Divider()
                Text("Episodes").bold()
                ScrollView{
                    LazyVStack(alignment: .leading) {
                        ForEach(show.episodes, id: \.id){ episode in
                            HStack(alignment: .center) {
                                Text("\(episode.id + 1)")
                                Text(episode.episodeTitle)
                                Spacer()
                                Text(episode.dateOfRelease)
                                
                            }
                            Divider()
                        }
                    }
                }
            }.padding()
        }
        else {
            Text("No data")
        }
    }
    
}

struct ShowsDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ShowDetailsView(showId: 0)
    }
}
