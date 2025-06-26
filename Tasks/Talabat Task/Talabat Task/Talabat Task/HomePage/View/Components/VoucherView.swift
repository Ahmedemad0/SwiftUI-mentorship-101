//
//  VoucherView.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 26/06/2025.
//

import SwiftUI

struct VoucherView: View {
    let voucherImage: String
    let voucherDescription: String
    
    var body: some View {
        HStack {
            TalabatImage(imageName: voucherImage, height: 30, width: 30)
            TalabatText(text: voucherDescription, textColor: .black, textWeight: .semibold, textSize: 18)
        }
        .outline()
    }
}

#Preview {
    VoucherView(voucherImage: "voucher1", voucherDescription: "2 vouchers")
}
