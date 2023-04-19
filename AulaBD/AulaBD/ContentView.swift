//
//  ContentView.swift
//  AulaBD
//
//  Created by Student25 on 18/04/23.
//

import SwiftUI

struct Carro: Decodable{
    var modelo: String
    var ano: Int
    var cor: String
    var preco: Double
}

struct Estacionamento: Decodable{
    var nomeEstacionamento: String
    var endereco : String
    var vagas: Int
    var carros: [Carro]
}

var reading: URL {
        URL(string: read)!
    }

var updating: URL {
        URL(string: update)!
    }

var creating: URL {
        URL(string: create)!
    }

var deleting: URL {
        URL(string: delete)!
    }


let read = "http://127.0.0.1:1880/lendopm/"
let create = "http://127.0.0.1:1880/criandopm/"
let update = "http://127.0.0.1:1880/atualizandopm/"
let delete = "http://127.0.0.1:1880/deletapm/"

class ViewModel : ObservableObject {
    @Published var estacionamentos : [Estacionamento] = []
    
//    var chars: Estacionamento
    
    func fetch(){
        guard let url = URL(string: read) else{
            return
        }
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _ , error in
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Estacionamento].self, from: data)
                
                DispatchQueue.main.async {
                    self?.estacionamentos = parsed
                }
            }catch{
                print("error")
            }
            
        }
        task.resume()
    }
}

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        VStack {
            
            
            ForEach(viewModel.estacionamentos, id: \.nomeEstacionamento){ estacionamento in
                Text(estacionamento.nomeEstacionamento)
                
            }
            
        }.onAppear(){
            viewModel.fetch()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
