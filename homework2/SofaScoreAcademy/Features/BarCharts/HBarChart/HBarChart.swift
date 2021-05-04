//
//  HBarChart.swift
//  SofaScoreAcademy
//
//  Created by Lovro Grgurić Mileusnić on 03.05.2021..
//

import Foundation
import SwiftUI

struct HBarChart: View {
    
    private let data: [Double]
    private let labels: [String]
    private let highlightIndex: Int
    private let mainColor: Color
    private let highlightColor: Color
    private let textColor: Color
    private let highlightCondition: ((Double) -> (Bool))
    
    var body: some View {
        VStack{
            HStack {
                Divider().background(Color.black)
                Spacer()
                ForEach(0 ..< data.count) { index in
                    VStack {
                        Spacer()
                        Text("\(Int(data[index]))")
                            .font(Font.system(size: 11))
                            .foregroundColor(textColor)
                        ZStack(alignment: .center) {
                            Rectangle()
                                .fill((index == highlightIndex || highlightCondition(data[index])) ? highlightColor : mainColor)
                                .frame(width: 20,
                                       height: CGFloat(data[index] / (data.max() ?? 200.0)) * 150)
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                            Text("\(labels[index])")
                                .fixedSize()
                                .frame(width: 20, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .font(Font.system(size: 8))
                                .rotationEffect(.degrees(-90))
                                .lineLimit(1)
                                .foregroundColor(textColor)
                                
                        }
                    }
                }
                Spacer()
            }
            Divider().background(Color.black)
        }.padding()
    }
    
    init(data: [Double],
         labels: [String],
         highlightIndex: Int = -1,
         mainColor: Color,
         highlightColor: Color,
         textColor: Color,
         highlightCondition: @escaping ((Double) -> (Bool)) = { _ in return false}) {
        self.data = data
        self.labels = labels
        self.highlightIndex = highlightIndex
        self.mainColor = mainColor
        self.highlightColor = highlightColor
        self.textColor = textColor
        self.highlightCondition = highlightCondition;
        
    }
}


//MARK: - Private methods

private extension HBarChart {

}
