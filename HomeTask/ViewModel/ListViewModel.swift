//
//  ListViewModel.swift
//  HomeTask
//
//  Created by Sergey Ivchenko on 13.02.2024.
//

import Foundation

class ListViewModel<T: ListItem>: ObservableObject {
    
    @Published var items: [T]

    let intArray = [1,2,3,4,5,6,7,8,9]
    init(items: [T]) {
        self.items = items
        print(summAllElemets(array: intArray))
    }

    func selected(item: T) {
        print("Selected item: \(String(describing: items.first(where: { $0.id == item.id })))")
    }
    
    func summAllElemets(array: [Int]) -> Int {
       return array.reduce(0, +)
    }
}
