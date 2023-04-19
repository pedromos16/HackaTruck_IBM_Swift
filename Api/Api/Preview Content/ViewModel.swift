//
//  ViewModel.swift
//  Api
//
//  Created by Student25 on 14/04/23.
//

import Foundation

class ViewModel : ObservableObject{
    @Published var arts : [Art] = []
    
    func fetch(){
        guard let url = URL(string: "https://api.artic.edu/api/v1/artworks") else{
            return
        }
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _ , error in
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Art].self, from: data)
                
                DispatchQueue.main.async {
                    self?.arts = parsed
                }
            }catch{
                print(error)
            }
            
        }
        task.resume()
    }
}
