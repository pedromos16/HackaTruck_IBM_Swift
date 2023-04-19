//
//  Modo 2.swift
//  Telas
//
//  Created by Student25 on 11/04/23.
//

import SwiftUI

struct Modo_2: View {
    var body: some View {
        VStack{
            NavigationStack(){
                NavigationLink("Outro") {
                    DentroModo2()
                }
            }
        }
    }
}

struct Modo_2_Previews: PreviewProvider {
    static var previews: some View {
        Modo_2()
    }
}
