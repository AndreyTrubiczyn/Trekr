//
//  ContentView.swift
//  Trekr
//
//  Created by Andrey Trubiczyn on 26.02.2021.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    
    var body: some View {
        
        ScrollView {
            
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
                .cornerRadius(20.0)
            
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .tracking(6.0)
                .multilineTextAlignment(.center)
            
            Text(location.country)
                .font(.title)
                .italic()
                .tracking(1.5)
                .foregroundColor(.secondary)
            
            Text(location.description)
                .padding(.horizontal)
            
            Text("Did you know?")
                .font(.title3)
                .bold()
                .padding(.top)
            
            Text(location.more)
                .padding(.horizontal)
        }
        .navigationTitle("Discover!")
    }
}

struct TrekrUIView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(location: Locations().primary)
        }
    }
}
