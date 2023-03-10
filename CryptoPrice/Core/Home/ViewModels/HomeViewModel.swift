//
//  HomeViewModel.swift
//  CryptoPrice
//
//  Created by Mohammed Mubashir on 07/03/23.
//

import Foundation

class HomeViewModel:ObservableObject {
    @Published var coins = [Coin]()
    @Published var topMovingCoins = [Coin]()
    
    init(){
        fetchCoinData()
    }
    
    func fetchCoinData() {
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=inr&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h"
        
        guard let url = URL(string: urlString) else {return}
        
        URLSession.shared.dataTask(with: url) {data , response , error in
            if let error = error {
                print("debug error \(error.localizedDescription)")
                return
            }
            
            if let response = response as? HTTPURLResponse{
                print("debug response code \(response.statusCode)")
            }
             
            guard let data = data else {return}
            
            do {
                let coins = try JSONDecoder().decode([Coin].self , from: data)
                DispatchQueue.main.async {
                    self.coins = coins
                    self.configureTopMovingCoins() 
                }
            }catch let error {
                print("Failed to debug with error: \(error)")
            }
           
        }.resume()
    }
    
    func configureTopMovingCoins() {
        
        let TopMovers = coins.sorted(by: {$0.priceChangePercentage24H > $1.priceChangePercentage24H})
        self.topMovingCoins = Array(TopMovers.prefix(5))
    }
    
}
