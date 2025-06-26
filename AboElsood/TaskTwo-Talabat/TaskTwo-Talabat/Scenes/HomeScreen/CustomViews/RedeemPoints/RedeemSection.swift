//
//  RedeemSection.swift
//  TaskTwo-Talabat
//
//  Created by Ahmed Abo Elsood on 26/06/2025.
//

import SwiftUI

struct RedeemSection: View {
    var points : String
    var vouchersNumber : String
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Redeem & Save")
                .font(.headline.bold())
            HStack{
               RedeemAndSaveView(text: "\(points) points", image: "bitcoinsign.circle.fill")
                    
               RedeemAndSaveView(text: "\(vouchersNumber) vouchers", image: "ticket.fill")
            }
        }.padding()
    }
}
