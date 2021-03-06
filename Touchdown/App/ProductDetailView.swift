//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by clydies freeman on 1/21/21.
//

import SwiftUI

struct ProductDetailView: View {
    
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            // NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top,
                         UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // HEADER
           HeaderDetailView()
            .padding()
            
            // DETAIL TOP PART
            
            TopPartDetailView()
                .padding(.horizontal)
            // DETAIL BOTTOM PART
            // RATINGS + SIZES
            // DESCRIPTION
            // QUANTITY + FAVOURITE
            // ADD TO CART
            Spacer()
            
        })//: VSTACK
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(
                        red: sampleProduct.red,
                        green: sampleProduct.green,
                        blue: sampleProduct.blue)
        ).ignoresSafeArea(.all, edges: .all)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
