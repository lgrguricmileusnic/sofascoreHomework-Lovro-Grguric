//
//  ContentView.swift
//  homework3
//
//  Created by Lovro Grgurić Mileusnić on 06.05.2021..
//

import SwiftUI

struct ShowsView: View {
    
    @StateObject var viewModel : ShowsViewModel
    
    var body: some View {
        
        GeometryReader { reader in
            NavigationView {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(viewModel.shows, id: \.id){ show in
                            NavigationLink(destination: ShowDetailsView(showId: show.id)){
                                ShowView(show: show)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                }.navigationBarTitle("TV SHOWS")
            }
            .onAppear(perform: viewModel.getShows)
        }
    }
    
    
    init(viewModel: ShowsViewModel = .init()) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
}

struct ShowsView_Previews: PreviewProvider {
    static var previews: some View {
        ShowsView()
    }
}
