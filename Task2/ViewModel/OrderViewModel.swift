//
//  OrderViewModel.swift
//  Task2
//
//  Created by OSX on 03/07/2025.
//

import Foundation
class OrderViewModel: ObservableObject {
    
    @Published var orders: [OrderModel] = []
    
    
    func fetchOrders() {
        self.orders = [
            OrderModel(status: "Delivered", time: "May 27 • 3:00 AM", image: "4", storeName: "Batates And Zalabya", orderId: "2934943495959", itemsCount: 2, currency: "EGP", price: 100, rate: "5/5"),
            
            OrderModel(status: "Preparing", time: "May 28 • 1:00 PM", image: "1", storeName: "Koshary ElTahrir", orderId: "2934943495960", itemsCount: 3, currency: "EGP", price: 75, rate: "4/5"),
            
            OrderModel(status: "On the way", time: "May 29 • 7:45 PM", image: "2", storeName: "Pizza Hut", orderId: "2934943495961", itemsCount: 1, currency: "EGP", price: 250, rate: "5/5"),
            
            OrderModel(status: "Delivered", time: "May 30 • 12:00 PM", image: "3", storeName: "Macdonalds", orderId: "2934943495962", itemsCount: 4, currency: "EGP", price: 180, rate: "3/5"),
            
            OrderModel(status: "Cancelled", time: "May 31 • 5:30 PM", image: "5", storeName: "Hardees", orderId: "2934943495963", itemsCount: 2, currency: "EGP", price: 95, rate: "0/5"),
            
            OrderModel(status: "Delivered", time: "June 1 • 2:15 PM", image: "6", storeName: "Cook Door", orderId: "2934943495964", itemsCount: 5, currency: "EGP", price: 120, rate: "4/5")
        ]
    }

}
