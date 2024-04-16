//
//  ScheduleView.swift
//  TravelSchedule
//
//  Created by Антон Кашников on 15/04/2024.
//

import SwiftUI

struct ScheduleView: View {
    @State private var from = ""
    @State private var to = ""
    @State private var path = [String]()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Spacer()
                ZStack {
                    Rectangle()
                        .fill(.blueUniversal)
                        .frame(height: 128)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    HStack(spacing: 16) {
                        VStack(spacing: 28) {
                            TextField("Откуда", text: $from)
                                .padding(.leading)
                                .onTapGesture {
                                    path.append("SearchView")
                                }
                            TextField("Куда", text: $to)
                                .padding(.leading)
                                .onTapGesture {
                                    path.append("SearchView")
                                }
                        }
                        .frame(height: 96)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding(.leading, 16)
                        
                        Image("Сhange")
                            .resizable()
                            .frame(width: 36, height: 36)
                            .padding(.trailing, 16)
                    }
                }
                .padding(.horizontal, 10)
                
                Spacer()
                Rectangle()
                    .frame(height: 0.5)
                    .foregroundStyle(.black.opacity(0.3))
                
            }
            .navigationDestination(for: String.self) { id in
                if id == "SearchView" {
                    SearchView()
                }
            }
        }
    }
}

#Preview {
    ScheduleView()
}
