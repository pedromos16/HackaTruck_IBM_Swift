//
//  ContentView.swift
//  IMC_Calculator
//
//  Created by Student25 on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var status:String = " ";
    @State var altura:String = " ";
    @State var peso:String = " ";
    
    
    var body: some View {
        VStack {
            VStack{
                Text("Calculadora de IMC").font(Font.title)
                Form{
                    TextField(text: $altura){
                        Text("Altura")
                    }
                    TextField(text: $peso) {
                        Text("Password")
                    }
                }
                Button("Calcular"){
                    
                }
            }
            Spacer()
            VStack{
                Text(status)
            }
            Spacer()
            VStack{
                Text("Teste 2")
            }
        }
        .padding()
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
