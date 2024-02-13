//
//  Model.swift
//  HomeTask
//
//  Created by Sergey Ivchenko on 13.02.2024.
//

import SwiftUI

protocol ListItem: Identifiable {
    associatedtype ItemIcon: View
    var icon: ItemIcon { get }
    var title: String { get }

    init(icon: ItemIcon, title: String)
}

struct ImageListItem: ListItem {
    
    var id = UUID()
    var icon: some View {
        Image(systemName: systemImageName)
    }
    var title: String
    var systemImageName: String

    init(icon: some View, title: String) {
        self.systemImageName = title.lowercased()
        self.title = title
    }
}

struct EmojiListItem: ListItem {
    
    var id = UUID()
    var icon: Text
    var title: String
    
    init(icon: Text, title: String) {
        self.icon = icon
        self.title = title
     }
}
