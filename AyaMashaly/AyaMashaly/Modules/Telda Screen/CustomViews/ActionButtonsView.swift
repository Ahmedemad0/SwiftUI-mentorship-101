//
//  ActionButtonsView.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 16/07/2025.
//

import SwiftUI

struct ActionButtonsView: View {
    @ObservedObject var viewModel: TeldaViewModel
    
    var body: some View {
        HStack(spacing: 15) {
            ForEach(viewModel.buttonsInfo) { model in
                ActionButton(model: model)
            }
        }
        .padding(.bottom, 30)
        .task {
            viewModel.fetchButtonsInfo()
        }
    }
}

struct ActionButton: View {
    var model: ButtonsInfo
    
    var body: some View {
        VStack(spacing: 5) {
            Image(systemName: model.icon)
                .scaledToFit()
                .frame(width: 20, height: 20)
                .foregroundColor(.white)
                .frame(width: 50, height: 50)
                .background(Color.gray.opacity(0.4))
                .clipShape(Circle())
            
            Text(model.title)
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

#Preview {
    ActionButtonsView(viewModel: TeldaViewModel())
}
