//
//  HeaderButtonDomeinModel.swift
//  TaskFour-Telda
//
//  Created by Ahmed Abo Elsood on 07/07/2025.
//

import Foundation

struct HeaderButtonDomeinModel : Identifiable{
    var id = UUID()
    var image : String
    var title : String
}

var headerButtonData : [HeaderButtonDomeinModel] = [
    HeaderButtonDomeinModel(image: "plus", title: "Add money"),
    HeaderButtonDomeinModel(image: "arrow.up", title: "Withdraw"),
    HeaderButtonDomeinModel(image: "chart.bar.fill", title: "Insights"),
    HeaderButtonDomeinModel(image: "creditcard.fill", title: "Cards")
]
