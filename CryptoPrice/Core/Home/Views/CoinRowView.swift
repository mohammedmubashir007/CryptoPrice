//
//  CoinRowView.swift
//  CryptoPrice
//
//  Created by Mohammed Mubashir on 07/03/23.
//

import SwiftUI

struct CoinRowView: View {
    let coin : Coin
    
    var body: some View {
        
        HStack {
            
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption)
                .foregroundColor(.gray)
            
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 32,height: 32)
                .foregroundColor(.orange)
             
            
            VStack(alignment: .leading,spacing: 4) {
                
                Text(coin.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading,4)
                
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .padding(.leading,6)
            }.padding(.leading,2)
            
            
            Spacer()
            
            
            VStack(alignment: .trailing,spacing: 4) {
                
                Text("\(coin.currentPrice)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading,4)
                
                Text("\(coin.priceChangePercentage24H)")
                    .font(.caption)
                    .padding(.leading,6)
                    .foregroundColor(.red)
            }
            .padding(.leading,2)
        }
        .padding(.horizontal)
        .padding(.vertical,4)
    }
}

//struct CoinRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        CoinRowView()
//    }
//}
