//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Zaki on 19.06.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var user: UserSettings
    
    
    var body: some View {
        VStack {
            Text("Hi, \(user.name)")
                .font(.largeTitle)
                .padding(.top, 100)
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            
            Spacer()
            
            
            
            Spacer()
        }
        
    }
}

struct ButtonView: View {
    @ObservedObject var timer: TimeCounter
  
    var body: some View {
        Button(action: timer.startTimer) {
            Text(timer.buttonTitle)
                .foregroundColor(.white)
                .font(.title)
                .fontWeight(.bold)
            
        }
        .frame(width: 160, height: 50)
        .background(Color.red)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserSettings())
    }
}


