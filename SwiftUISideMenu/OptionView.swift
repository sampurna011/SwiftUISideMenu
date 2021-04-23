//
//  OptionView.swift
//  SwiftUISideMenu
//
//  Created by Deepu Mishra on 23/04/21.
//

import SwiftUI

struct OptionView: View {
    let viewModel: SideMenuModel
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: viewModel.image)
                .frame(width: 24, height: 24)
            
            Text(viewModel.title)
                .font(.system(size: 15, weight: .semibold))
            
            Spacer()
        }
        .padding()
        .foregroundColor(.white)
    }
}

struct OptionView_Previews: PreviewProvider {
    static var previews: some View {
        OptionView(viewModel: .message)
    }
}
