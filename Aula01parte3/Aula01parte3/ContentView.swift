//
//  ContentView.swift
//  Aula01parte3
//
//  Created by Student25 on 05/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            HStack(){
            Image("truck").blur(radius: 5).overlay(Text("Bem Vindo, Fulano")
                .font(.largeTitle)
                .padding())
            }
            HStack{
                Image("truck")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
