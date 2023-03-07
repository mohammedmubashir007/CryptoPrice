//
//  AllCoinsView.swift
//  CryptoPrice
//
//  Created by Mohammed Mubashir on 07/03/23.
//

import SwiftUI

struct AllCoinsView: View {
    var body: some View {
       
        VStack(alignment: .leading) {
            Text("All Coins")
                .font(.headline)
                .padding()
            
            HStack {
             
                Text("Coin")
                Spacer()
                Text("Price")
                   
                
            }
            .foregroundColor(.gray)
            .font(.caption)
            .padding(.horizontal)
            
            
            ScrollView(.vertical,showsIndicators: false){
                VStack {
                    ForEach(0..<50,id: \.self){
                        _ in
                        CoinRowView()
                    }
                }
            }
            
        }
        
    }
}

struct AllCoinsView_Previews: PreviewProvider {
    static var previews: some View {
        AllCoinsView()
    }
}
