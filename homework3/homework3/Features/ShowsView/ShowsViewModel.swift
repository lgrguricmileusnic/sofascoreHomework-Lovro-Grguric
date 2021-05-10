//
//  ShowsViewModel.swift
//  homework3
//
//  Created by Lovro Grgurić Mileusnić on 06.05.2021..
//

import Foundation


class ShowsViewModel : ObservableObject {
    
    private let showsDataService : ShowsDataService
    @Published var shows = [Show]()
    
    
    init(showsDataService: ShowsDataService = ShowsDataService()) {
        self.showsDataService = showsDataService
    }
    
    func getShows() {
        showsDataService.getShows { shows in
            self.shows = shows
        }
    }
    
}
