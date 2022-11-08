//
//  ViewController.swift
//  ParseJson
//
//  Created by Сампилов Ильдар on 06.11.2022.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var temperatureLabel: UILabel!
    @IBOutlet var windLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!

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
                DispatchQueue.main.async {
                    self.temperatureLabel.text = weather.temperature
                    self.windLabel.text = weather.wind
                    self.descriptionLabel.text = weather.description
                }
                
                
            } catch let error {
                print(error)
            }
        }.resume()
    }
}
