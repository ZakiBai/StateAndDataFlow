//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Zaki on 19.06.2023.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(color)
                .fontWeight(.bold)
                .font(.title)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Start", color: .red, action: {})
    }
}
