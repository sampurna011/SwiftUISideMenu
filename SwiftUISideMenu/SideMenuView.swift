//
//  SideMenuView.swift
//  SwiftUISideMenu
//
//  Created by Deepu Mishra on 23/04/21.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.red, .purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                // Header
                MenuHeaderView(isShowing: $isShowing)
                    .foregroundColor(.white)
                    .frame(height: 200)
                // Option
                ForEach(SideMenuModel.allCases, id: \.self) { option in
                    NavigationLink(
                        destination: Text(option.title),
                        label: {
                            OptionView(viewModel: option)
                        })
                }
                
                Spacer()
            }
        }.navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
