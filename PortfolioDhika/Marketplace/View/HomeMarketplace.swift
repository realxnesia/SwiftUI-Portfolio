//
//  HomeMarketplace.swift
//  PortfolioDhika
//
//  Created by Dhika Aditya Are on 02/08/21.
//

import SwiftUI

struct HomeMarketplace: View {
    var body: some View {
        Produk()
    }
}

struct HomeMarketplace_Previews: PreviewProvider {
    static var previews: some View {
        HomeMarketplace()
    }
}

struct Produk: View {
    var body: some View {
        VStack(alignment: .leading){
            ZStack(alignment: .topTrailing){
                Image("book1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                    .clipped()
                    
                Button(action: {print("OK")}){
                    Image(systemName: "heart")
                        .padding()
                        .foregroundColor(Color.red)
                }
            }
            Text("Harry Potter Book Series")
                .font(.title)
                .bold()
                .padding(.leading)
                .padding(.trailing)
            Text("Rp. 2000")
                .font(.title)
                .foregroundColor(Color.red)
                .bold()
                .padding(.leading)
                .padding(.trailing)
            
            HStack{
                Image(systemName: "mappin.circle")
                Text("DKI Jakarta")
            }
            .padding(.leading)
            .padding(.trailing)
            
            HStack{
                HStack{
                    Image(systemName: "star.fill").foregroundColor(Color.yellow)
                }
            }
            .padding(.leading)
            .padding(.trailing)
            
            Button(action: {print()}){
                HStack{
                    Spacer()
                    Image(systemName: "cart")
                    Text("Tambah ke keranjang")
                        .font(.callout)
                        .padding()
                    Spacer()
                }
            }
            .background(Color.green)
            .foregroundColor(Color.white)
            .cornerRadius(10)
            .padding()
        }
        .background(Color.gray)
        .cornerRadius(13)
    }
}
