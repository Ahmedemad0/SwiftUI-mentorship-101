//
//  OrdersViewModel.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 03/07/2025.
//

import Combine

class OrdersViewModel: ObservableObject {
    @Published var ordersModel: [OrderModel] = []
    
    func getData() {
        fetchOrders()
    }
    
    private func fetchOrders() {
        ordersModel = [
            OrderModel(
                returantName: "Primo's Pizza",
                id: "5001846",
                imageName: "primos",
                price: "980",
                orderDetails: [
                    OrderDetails(id: "2", imageName: "rest5", name: "pepperoni Pizza", price: "350"),
                    OrderDetails(id: "3", imageName: "seafood", name: "Seafood Pizza", price: "300"),
                    OrderDetails(id: "4", imageName: "chicken", name: "Chicken Ranch Pizza", price: "330")
                ],
                arrivalTime: "Today . 4:30pm", isPro: true),
            OrderModel(
                returantName: "Caizo",
                id: "2887972",
                imageName: "caizo",
                price: "600",
                orderDetails: [
                    OrderDetails(id: "2", imageName: "shawerma", name: "6 Shawerma Sandwiches", price: "600"),
                    OrderDetails(id: "4", imageName: "hawawshy", name: "6 Hawashy Sandwiches", price: "550")
                ],
                arrivalTime: "1, Jul . 6:30pm", isPro: false)
        ]
    }
}
