//
//  ContentView.swift
//  SwiftUISideMenu
//
//  Created by Deepu Mishra on 23/04/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowing = false
    var body: some View {
        NavigationView {
            ZStack {
                if isShowing {
                    SideMenuView(isShowing: $isShowing)
                }
               HomeView()
                .cornerRadius(isShowing ? 20 : 10)
                .offset(x: isShowing ? 320 : 0, y: isShowing ? 44 : 0)
                .scaleEffect(isShowing ? 0.8 : 1)
                .navigationBarItems(leading: Button(action: {
                    withAnimation(.spring()) {
                        isShowing.toggle()
                    }
                    print("Show menu here")
                }, label: {
                    Image(systemName: "list.bullet")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                        .contentShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }))
                .navigationTitle(Text("Home"))
                .navigationBarTitleDisplayMode(.inline)
            }
            .onAppear {
              isShowing = false
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}

struct HomeView: View {
    var body: some View {
        ZStack {
            Color(.white)
            
            Text("Hello world!")
        }
    }
}
