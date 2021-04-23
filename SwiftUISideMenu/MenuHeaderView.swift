//
//  SideMenuHeaderView.swift
//  SwiftUISideMenu
//
//  Created by Deepu Mishra on 23/04/21.
//

import SwiftUI

struct MenuHeaderView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button(action: {
                withAnimation(.spring()) {
                    isShowing.toggle()
                }
            }) {
                Image(systemName: "arrow.backward")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding()
            }
            
            VStack(alignment: .leading) {
              Image("user")
                .resizable()
                .scaledToFit()
                .clipped()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
                .padding(.bottom, 16)
                
                Text("Deepu Mishra")
                    .font(.system(size: 24, weight: .semibold))
                
                Text("Noida, India")
                    .font(.system(size: 14))
                    .padding(.bottom, 20)
                
                HStack(spacing: 12) {
                    HStack(spacing: 4) {
                        Text("1.24 M").bold()
                        Text("Followers")
                    }
                    HStack(spacing: 4) {
                        Text("1.0 M").bold()
                        Text("Followings")
                    }
                    
                    Spacer()
                }
                
                Spacer()
            }.padding()
        }
    }
}

struct MenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MenuHeaderView(isShowing: .constant(true))
    }
}
