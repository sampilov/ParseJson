//
//  ViewController.swift
//  ParseJson
//
//  Created by Сампилов Ильдар on 06.11.2022.
//

import UIKit

final class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "https://goweather.herokuapp.com/weather/Curitiba"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data else { return }
            guard error == nil else { return }
            
            do {
                let weather = try JSONDecoder().decode(Weather.self, from: data)
                print(weather)
                
            } catch let error {
                print(error)
            }
        }.resume()
    }
}
