//
//  ContentView.swift
//  Telas
//
//  Created by Student25 on 11/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false;
    var body: some View {
        VStack {
            NavigationStack(){
                    NavigationLink("Modo 1") {
                        Modo_1()
                    }
                    NavigationLink("Modo 2") {
                        Modo_2()
                    }
                NavigationLink("Modo 3") {
                    Modo_3(){
                        showingSheet.toggle()
                        
                    }
                    .sheet(isPresented: $showingSheet){
                        SheetView()
                    }
                    
                }
                
                }
                
            }

        }
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//.sheet
