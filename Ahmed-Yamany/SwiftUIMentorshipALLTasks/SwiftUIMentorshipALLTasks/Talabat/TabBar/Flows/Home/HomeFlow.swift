//
//  HomeFlow.swift
//  Talabat
//
//  Created by Ahmed Yamany on 28/06/2025.
//

import Coordinator
import SwiftUI

struct HomeFlow: View {
    @StateObject private var router = NavigationStackRouter()

    var body: some View {
        RoutableNavigationStack(router: router)
            .onDidLoad {
                setRoot()
            }
            .toolbarVisibility(.hidden, for: .navigationBar)
    }

    private func setRoot() {
        let view = HomeScreen(coordinator: self)
        router.setView(AnyHashableView(view), animated: false, completion: nil)
    }

    func presentSelectLocationScreen() {
        let view = SelectLocationScreen()
            .presentationDetents([.medium])
            .presentationDragIndicator(.visible)
            .presentationCornerRadius(18)

        router.present(AnyHashableView(view), animated: true, style: .sheet, completion: nil)
    }

    func navigateToCategoryDetails(_ category: CategoryEntity) {
        let view = Text("Category Details \(category.name)")
        router.push(AnyHashableView(view), animated: true, completion: nil)
    }
    
    func navigateToTrendDetails(_ trend: TrendViewModel) {
        let view = Text("Trend Details \(trend.name), isFavourited: \(trend.isFavourited)")
        router.push(AnyHashableView(view), animated: true, completion: nil)
    }
}

extension HomeFlow: HomeCoordinator {}

#Preview {
    TabBarFlow()
}
