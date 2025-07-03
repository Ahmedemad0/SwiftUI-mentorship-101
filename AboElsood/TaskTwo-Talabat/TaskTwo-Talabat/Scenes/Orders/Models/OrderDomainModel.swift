//
//  OrderDomainModel.swift
//  TaskTwo-Talabat
//
//  Created by 2B on 03/07/2025.
//

import Foundation

struct OrderDomainModel : Identifiable{
    var id = UUID()
    var status : String
    var date : String
    var resturantImage : String
    var resurantName : String
    var orderID : String
    var isPro : Bool
    var numberOfItems : String
    var items : [OrderItemDomainModel]
    var totalPrice : String
    var rating : String?
}

struct OrderItemDomainModel :Identifiable{
    var id = UUID()
    var name : String
    var image : String
    var price : String
}


let mockOrders: [OrderDomainModel] = [
    OrderDomainModel(
        status: "Delivered",
        date: "May 17, 03:00 AM",
        resturantImage: "https://www.mcdonalds.eg/Cms_Data/Contents/En/Media/images/logo20.png",
        resurantName: "McDonald's",
        orderID: "ORD-1001",
        isPro: true,
        numberOfItems: "3",
        items: [
            OrderItemDomainModel(name: "Big Mac", image: "https://s7d1.scene7.com/is/image/mcdonalds/DC_202302_0005-999_BigMac_1564x1564-1?wid=1564&hei=1564&dpr=off", price: "90.00 EGP"),
            OrderItemDomainModel(name: "Fries", image: "https://s7d1.scene7.com/is/image/mcdonalds/DC_202411_6050_SmallFrenchFries_Standing_McValue_1564x1564:nutrition-calculator-tile", price: "45.00 EGP"),
            OrderItemDomainModel(name: "Coke", image: "https://s7d1.scene7.com/is/image/mcdonalds/DC_202402_0521_MediumCoke_ContourGlassv1_1564x1564:nutrition-calculator-tile", price: "45.00 EGP")
        ],
        totalPrice: "180.00 EGP",
        rating: "4.5"
    ),
    OrderDomainModel(
        status: "Cancelled",
        date: "June 10, 05:15 PM",
        resturantImage: "https://w7.pngwing.com/pngs/498/197/png-transparent-kfc-logo-kfc-fast-food-crispy-fried-chicken-logo-round-kfc-logo-food-free-logo-design-template-fast-food-restaurant-thumbnail.png",
        resurantName: "KFC",
        orderID: "ORD-1002",
        isPro: false,
        numberOfItems: "2",
        items: [
            OrderItemDomainModel(name: "Zinger Sandwich", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQr8qaxLZuPolzDZEi-WDI0ibDmC2vnh-XYUg&s", price: "110.00 EGP"),
            OrderItemDomainModel(name: "Pepsi", image: "https://w7.pngwing.com/pngs/674/292/png-transparent-pepsi-soda-bottle-digital-art-pepsi-one-carbonated-water-fizzy-drinks-pizza-pepsi-food-cola-7-up-thumbnail.png", price: "30.00 EGP")
        ],
        totalPrice: "140.00 EGP",
        rating: nil
    ),
    OrderDomainModel(
        status: "Delivered",
        date: "May 17, 03:00 AM",
        resturantImage: "https://www.mcdonalds.eg/Cms_Data/Contents/En/Media/images/logo20.png",
        resurantName: "McDonald's",
        orderID: "ORD-1001",
        isPro: true,
        numberOfItems: "3",
        items: [
            OrderItemDomainModel(name: "Big Mac", image: "https://s7d1.scene7.com/is/image/mcdonalds/DC_202302_0005-999_BigMac_1564x1564-1?wid=1564&hei=1564&dpr=off", price: "90.00 EGP"),
            OrderItemDomainModel(name: "Fries", image: "https://s7d1.scene7.com/is/image/mcdonalds/DC_202411_6050_SmallFrenchFries_Standing_McValue_1564x1564:nutrition-calculator-tile", price: "45.00 EGP"),
            OrderItemDomainModel(name: "Coke", image: "https://s7d1.scene7.com/is/image/mcdonalds/DC_202402_0521_MediumCoke_ContourGlassv1_1564x1564:nutrition-calculator-tile", price: "45.00 EGP")
        ],
        totalPrice: "180.00 EGP",
        rating: "4.5"
    ),
    OrderDomainModel(
        status: "Cancelled",
        date: "June 10, 05:15 PM",
        resturantImage: "https://w7.pngwing.com/pngs/498/197/png-transparent-kfc-logo-kfc-fast-food-crispy-fried-chicken-logo-round-kfc-logo-food-free-logo-design-template-fast-food-restaurant-thumbnail.png",
        resurantName: "KFC",
        orderID: "ORD-1002",
        isPro: false,
        numberOfItems: "2",
        items: [
            OrderItemDomainModel(name: "Zinger Sandwich", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQr8qaxLZuPolzDZEi-WDI0ibDmC2vnh-XYUg&s", price: "110.00 EGP"),
            OrderItemDomainModel(name: "Pepsi", image: "https://w7.pngwing.com/pngs/674/292/png-transparent-pepsi-soda-bottle-digital-art-pepsi-one-carbonated-water-fizzy-drinks-pizza-pepsi-food-cola-7-up-thumbnail.png", price: "30.00 EGP")
        ],
        totalPrice: "140.00 EGP",
        rating: nil
    )
]
