//
//  ContentView.swift
//  MicroSpotify
//
//  Created by Student25 on 12/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationStack{
                HStack{
                    Image("Hackatruck").resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .clipped()
                }
                Spacer()
                
                HStack{
                    Text("Musicas")
                }
                Spacer()
                
                HStack{
                    
                }
            }
        }
            
        .padding().background(
            LinearGradient(gradient: Gradient(colors: [.blue,.black, .black]), startPoint: .top, endPoint: .bottom))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
