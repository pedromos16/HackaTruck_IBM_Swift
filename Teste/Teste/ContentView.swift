//
//  ContentView.swift
//  Teste
//
//  Created by Student25 on 13/04/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State var regiao = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -19.924433, longitude: -43.990387 ), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    @State var atual: String = "Savassi"
    
    var bairros = [
        Bairro(id: 1, nome: "Savassi", latitude: 19.93270, longitude: 43.93622),
        Bairro(id: 2, nome: "Coreu", latitude: 19.92432, longitude: 43.99282),
        Bairro(id: 3, nome: "Esplanada", latitude: 19.90560, longitude: 43.90529),
    ]
    
    var body: some View {
        VStack {
            HStack{
                Text(atual)
            }
            HStack{
                Map(coordinateRegion: $regiao)
                    .frame(width: 400, height: 400)
            }
            Spacer()
            
                
                ForEach(bairros){ Bairro in
                    HStack{
                        Button(Bairro.nome){
                                
                        }
                    }
                    
                    Spacer()
                    
                
                
            }
                
            
            }
    
        }
            
       
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
