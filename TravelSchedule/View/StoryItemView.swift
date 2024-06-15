//
//  StoryItemView.swift
//  TravelSchedule
//
//  Created by Антон Кашников on 09/06/2024.
//

import SwiftUI

struct StoryItemView: View {
    let story: Story
    
    @Binding var currentStoryIndex: Int
    @Binding var path: [String]
    
    var body: some View {
        ZStack {
            Image("Story\(story.id + 1)")
                .resizable()
                .frame(width: 92, height: 140)
                .clipShape(.rect(cornerRadius: 16))
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.blueUniversal, lineWidth: 4)
                )
                .overlay {
                    Text(story.title)
                        .font(.regular12)
                        .lineLimit(3)
                        .foregroundStyle(.whiteUniversal)
                        .padding(.init(top: 83, leading: 8, bottom: 12, trailing: 8))
                }
        }
        .onTapGesture {
            currentStoryIndex += story.id
            path.append("StoryItemView")
        }
    }
}

#Preview {
    StoryItemView(story: .story1, currentStoryIndex: .constant(0), path: .constant([]))
}