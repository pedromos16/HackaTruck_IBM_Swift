//
//  ContentView.swift
//  TagView
//
//  Created by Student25 on 11/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            
        TabView{
            Um().tabItem(){
                Text("Um")
                Image(systemName: "pencil.circle")
            }
            
            Cinco().tabItem(){
                Text("Cinco")
                Image(systemName: "pencil.circle")
                }
            
            Quatro().tabItem(){
                    Text("Quatro")
                Image(systemName: "pencil.circle")
                }
            
            Tres().tabItem(){
                Text("Tres")
                Image(systemName: "pencil.circle")
            }
            
            Dois().tabItem(){
                Text("Dois")
                Image(systemName: "pencil.circle")
            }
            
           
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
