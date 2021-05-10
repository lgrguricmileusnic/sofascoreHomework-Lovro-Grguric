//
//  ShowDetailsViewModel.swift
//  homework3
//
//  Created by Lovro Grgurić Mileusnić on 09.05.2021..
//

import Foundation


class ShowDetailsViewModel : ObservableObject {
    
    private let dataService : DataService
    
    @Published var show : Show?
    
    func getShowDetails(for showId : Int) {
        dataService.getShowDetails(for: showId, completion: { show in
            self.show = show
        })
    }
    init(dataService: DataService = ShowsDataService()) {
        self.dataService = dataService
    }
}
