//
//  TextFormat.swift
//  SofaScoreAcademy
//
//  Created by Lovro Grgurić Mileusnić on 02.05.2021..
//

import Foundation
import SwiftUI


func getFormattedText(for placeholder: String, with value: String, size: CGFloat) -> Text {
    Text("\(placeholder)").font(Font.system(size: size))
        .foregroundColor(Color.secondaryText)
        + Text("\(value)").font(Font.system(size: size).bold())
        .foregroundColor(Color.secondaryText)
}
