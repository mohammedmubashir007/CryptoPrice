//
//  TopMoversView.swift
//  CryptoPrice
//
//  Created by Mohammed Mubashir on 06/03/23.
//

import SwiftUI

struct TopMoversView: View {
    @StateObject var viewModel:HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Top Movers")
                .font(.headline)
            
            ScrollView(.horizontal,showsIndicators: false) {
                HStack(spacing: 16){
                    ForEach(viewModel.topMovingCoins){
                        coin in
                        TopMoversItemView(coin: coin)
                            .padding(2)
                    }

                }
            }
            
        }.padding()
    }
}

//struct TopMoversView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoversView()
//    }
//}
