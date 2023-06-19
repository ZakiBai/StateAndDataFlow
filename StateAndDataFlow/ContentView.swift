//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Zaki on 19.06.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    
    
    var body: some View {
        VStack {
            Text("Hi, ...")
                .font(.largeTitle)
                .padding(.top, 100)
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            
            Spacer()
            
            ButtonView(timer: timer.counter)
            
            Spacer()
        }
        
    }
}

struct ButtonView: View {
    @ObservedObject var timer: TimeCounter
  
    var body: some View {
        Button(action: { }) {
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
    }
}


