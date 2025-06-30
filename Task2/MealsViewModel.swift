//
//  MealsViewModel.swift
//  Task2
//
//  Created by OSX on 25/06/2025.
//

import Foundation

class MealsViewModel: ObservableObject {
    
    @Published var sections: [sectionModel] = []
    @Published var meals: [MealModel] = []
    @Published var gifts: [sectionModel] = []
    @Published var searchText: String = ""
    
    func fetchSections() {
        let sections = [
            sectionModel(image: "1", name: "Food"),
            sectionModel(image: "2", name: "talabat mart"),
            sectionModel(image: "3", name: "Groceries"),
            sectionModel(image: "4", name: "Health & beauty"),
            sectionModel(image: "5", name: "Gift & Donate"),
            sectionModel(image: "6", name: "Store"),
        ]
        
        self.sections = sections
    }
    
    func fetchMeals() {
        let meals = [
            MealModel(backgroundImage: "1", sideImage: "6", title: "Asian Corner", reviewCount: 4.2),
            MealModel(backgroundImage: "2", sideImage: "5", title: "GRIIX", reviewCount: 4.1),
            MealModel(backgroundImage: "3", sideImage: "4", title: "Pizza", reviewCount: 4.5),
            MealModel(backgroundImage: "4", sideImage: "3", title: "Burger", reviewCount: 4.4),
            MealModel(backgroundImage: "5", sideImage: "2", title: "Mac", reviewCount: 4.2),
            MealModel(backgroundImage: "6", sideImage: "1", title: "vegetables", reviewCount: 4.4),
        ]
        
        self.meals = meals
    }
    
    func fetchGifts() {
        let gifts = [
            sectionModel(image: "ticket", name: "2,935 points"),
            sectionModel(image: "2", name: "2 vouchers")
        ]
        
        self.gifts = gifts
    }
}

