//
//  PostGridView.swift
//  TikTokTutorial
//
//  Created by lexi sanders on 12/14/23.
//

import SwiftUI

struct PostGridView: View {
    
    private let items = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1)
    ]
    
    private let width = (UIScreen.main.bounds.width / 3) - 2 // 1:11 for math explanation
    
    var body: some View {
        LazyVGrid(columns: items, spacing: 2) {
            ForEach(0..<15) { post in
                Rectangle()
                    .frame(width: width, height: 160)
                    .clipped()
            }
        }
    }
}

#Preview {
    PostGridView()
}
