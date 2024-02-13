//
//  ListView.swift
//  HomeTask
//
//  Created by Sergey Ivchenko on 13.02.2024.
//

import SwiftUI

struct ListView<T: ListItem>: View {

    @ObservedObject var viewModel: ListViewModel<T>

    var body: some View {
        
        NavigationView {
            
            List(viewModel.items) { item in
                
                Button(action: {
                    viewModel.selected(item: item)
                }) {
                    HStack {
                        
                        item.icon
                        
                        Text(item.title)
                    }
                }
            }
            .navigationTitle("List of T items")
            .listStyle(.plain)
        }
    }
}


