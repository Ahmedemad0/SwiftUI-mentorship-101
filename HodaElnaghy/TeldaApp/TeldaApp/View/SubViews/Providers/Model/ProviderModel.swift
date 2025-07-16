//
//  ProviderModel.swift
//  TeldaApp
//
//  Created by Hoda Elnaghy on 08/07/2025.
//

import Foundation

struct ProviderModel: Identifiable {
    let id = UUID()
    let providerName: String
    let providerImage: String
    let backgroundImage: String
    let type: String
}
