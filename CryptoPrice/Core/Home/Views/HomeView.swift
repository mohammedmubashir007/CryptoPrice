//
//  HomeView.swift
//  CryptoPrice
//
//  Created by Mohammed Mubashir on 06/03/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators: false) {
                
                // top movers view
                TopMoversView(viewModel: viewModel)
                
                Divider()
                
                // all coins view
                AllCoinsView(viewModel: viewModel)
                
                
            }.navigationTitle("Live Prices")
        }
    }
}

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
