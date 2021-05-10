//
//  ShowView.swift
//  homework3
//
//  Created by Lovro Grgurić Mileusnić on 09.05.2021..
//

import Foundation
import SwiftUI

struct ShowView : View {
    
    private let show : Show
    
    var body : some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(show.coverArt)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                .frame(maxWidth: 400, maxHeight: .infinity)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            HStack(alignment: .bottom){
                Text(show.showTitle)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                Text(String(show.yearOfRelease))
                    .font(.title)
                    .bold()
                    .foregroundColor(.gray)
            }
        }
        .padding()

        
    }
    
    init(show : Show) {
        self.show = show
    }
}
