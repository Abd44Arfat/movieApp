//
//  ContentView.swift
//  movieapp
//
//  Created by ABDO on 24/06/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            Text("Search View")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }

            Text("Profile View")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
        .accentColor(Color("BannerColor")) // لون الأيقونات المختارة
        .background(Color("BannerColor")) // يمكن تخصيص الخلفية
    }
}


#Preview {
    
    ContentView()
    
}
