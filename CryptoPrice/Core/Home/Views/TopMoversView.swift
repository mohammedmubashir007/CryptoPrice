//
//  TopMoversView.swift
//  CryptoPrice
//
//  Created by Mohammed Mubashir on 06/03/23.
//

import SwiftUI

struct TopMoversView: View {
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Top Movers")
                .font(.headline)
            
            ScrollView(.horizontal,showsIndicators: false) {
                HStack(spacing: 16){
                    ForEach(1..<5,id: \.self){
                        _ in
                        TopMoversItemView()
                            .padding(2)
                    }

                }
            }
            
        }.padding()
    }
}

struct TopMoversView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversView()
    }
}
