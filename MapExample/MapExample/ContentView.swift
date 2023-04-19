//
//  ContentView.swift
//  MapExample
//
//  Created by Student25 on 13/04/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var region = MKCoordinatoRegion(center: CLLocatfonCoordinato2D (latitude: -19.924433,
    longitude: -43.990387), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $region)
                .frame(width: 400, height: 300)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
