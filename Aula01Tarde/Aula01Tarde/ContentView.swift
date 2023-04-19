//
//  ContentView.swift
//  Aula01Tarde
//
//  Created by Student25 on 05/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("truck")
                .resizable().scaledToFit()
                //.scaleEffect(0.4)
            Text("HackaTruck")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
                .bold()
            HStack{
                Text("Maker")
                    .font(.title)
                    .foregroundColor(Color.yellow)
                Text("Space")
                    .font(.title)
                    .foregroundColor(Color.red)
            }
        }.padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
