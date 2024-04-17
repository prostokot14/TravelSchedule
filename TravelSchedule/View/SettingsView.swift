//
//  SettingsView.swift
//  TravelSchedule
//
//  Created by Антон Кашников on 17/04/2024.
//

import SwiftUI

struct SettingsView: View {
    @Binding var darkModeEnabled: Bool
    
    var body: some View {
        VStack {
            HStack {
                Text("Темная тема")
                    .padding(.leading)
                    .foregroundStyle(.blackYP)
                Spacer()
                Toggle("", isOn: $darkModeEnabled)
                    .padding(.trailing)
                    .tint(.blueUniversal)
                    .onChange(of: darkModeEnabled) {
                        ThemeManager.shared.handleTheme(darkMode: darkModeEnabled)
                    }
            }
            .frame(height: 60)
            
            HStack {
                Text("Пользовательское соглашение")
                    .padding(.leading)
                    .foregroundStyle(.blackYP)
                Spacer()
                Image(.chevron)
                    .padding(.trailing)
            }
            .frame(height: 60)
            
            Spacer()
            Text("Приложение использует API «Яндекс.Расписания»")
                .font(.system(size: 12))
                .foregroundStyle(.blackYP)
            Spacer()
                .frame(height: 16)
            Text("Версия 1.0 (beta)")
                .font(.system(size: 12))
                .foregroundStyle(.blackYP)
            Spacer()
                .frame(height: 24)
            Rectangle()
                .frame(height: 0.5)
                .foregroundStyle(.black.opacity(0.3))
        }
    }
}

#Preview {
    SettingsView(darkModeEnabled: .constant(false))
}