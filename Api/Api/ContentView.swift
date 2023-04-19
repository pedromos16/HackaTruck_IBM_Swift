//
//  ContentView.swift
//  Api
//
//  Created by Student25 on 14/04/23.
//

import SwiftUI

struct ContentView: View {
    @State var viewModel = ViewModel()
    var body: some View {
        VStack {
            ForEach(viewModel.arts, id: \.artist){ art in
                Text(art.artist)
            }
            ForEach(viewModel.arts, id: \.date){ art in
                Text(art.date)
            }
            ForEach(viewModel.arts, id: \.name){ art in
                Text(art.name)
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
