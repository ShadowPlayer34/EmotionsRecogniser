//
//  MainView.swift
//  LiveCameraSwiftUI
//
//  Created by Andrew Hudik on 8/12/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    ContentView()
                } label: {
                    Text("Start")
                        .padding(.horizontal, 70)
                        .padding(.vertical, 8)
                        .background(Color.secondary.gradient)
                        .foregroundStyle(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
            .navigationTitle("Emotions Detection")
        }
    }
}

#Preview {
    ContentView()
}
