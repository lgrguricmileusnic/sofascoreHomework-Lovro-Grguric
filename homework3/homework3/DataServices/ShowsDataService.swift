//
//  ShowsDataService.swift
//  homework3
//
//  Created by Lovro Grgurić Mileusnić on 06.05.2021..
//

import Foundation

struct ShowsDataService : DataService {
    
    var dataMocker = DataMocker();
    
    func getShows(completion: @escaping ([Show]) -> Void) {
        completion(dataMocker.shows)
    }
    
    func getShowDetails(for showId: Int, completion: @escaping (Show) -> Void) {
        completion(dataMocker.shows[showId])
    }
    
    
}
