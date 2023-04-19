//
//  ContentView.swift
//  Aula01Parte2
//
//  Created by Student25 on 05/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Image("truck").resizable().scaledToFit()
            }
            Spacer()
            HStack{
                ZStack{
                    Image("truck").resizable().scaledToFit()
                    .clipShape(Circle())
                    Text("Hacka")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                    
                }
                
            }
            Spacer()
            HStack{
                Text("HackaTruck")
                    .font(.largeTitle)
                    .foregroundColor(Color.red)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.black/*@END_MENU_TOKEN@*/)
               
            }
        }
        //.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
