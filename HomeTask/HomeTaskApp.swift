//
//  HomeTaskApp.swift
//  HomeTask
//
//  Created by Sergey Ivchenko on 13.02.2024.
//

import SwiftUI

@main
struct HomeTaskApp: App {
    
    var body: some Scene {
        
        WindowGroup {
            
                ListView(viewModel: ListViewModel(items: generateImages(type: ImageListItem.self)))
                ListView(viewModel: ListViewModel(items: generateEmoji(type: EmojiListItem.self)))
        }
    }

    func generateImages<T: ListItem>(type: T.Type) -> [T] {
            let systemImageItems = ["star", "circle", "square", "car", "house"].map {
                T(icon: Image(systemName: $0) as! T.ItemIcon, title: $0.capitalized)
            }
            return systemImageItems
        }
    
    func generateEmoji<T: ListItem>(type: T.Type) -> [T] {
        let emojiItems = ["smile": "😊", "rocket": "🚀", "party": "🎉", "heart": "❤️", "thumbsUp": "👍", "sun": "☀️"].map { key, value in
            T(icon: Text(value) as! T.ItemIcon, title: key)
        }
        
        return emojiItems
    }
}
