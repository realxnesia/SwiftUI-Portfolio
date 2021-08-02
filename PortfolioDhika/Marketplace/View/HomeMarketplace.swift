//
//  HomeMarketplace.swift
//  PortfolioDhika
//
//  Created by Dhika Aditya Are on 02/08/21.
//

import SwiftUI

struct HomeMarketplace: View {
    var body: some View {
        //Produk()
        NavigationView{
            ScrollView{
                //Looping Semua Data
                ForEach(Data){ row in
                    VStack(spacing: 10){
                        Produk(loadData: row)
                    }
                    .padding()
                }
            }
            .navigationBarTitle("Collection Book")
            .navigationBarItems(
            trailing:
                HStack(spacing: 15){
                    Button(action: {print()}){
                        Image(systemName: "person.fill")
                    }
                    
                    Button(action: {print()}){
                        Image(systemName: "cart.fill")
                    }
                }
            
            )
        }
        .accentColor(Color.secondary)
        .navigationViewStyle(StackNavigationViewStyle()) //Mengatasi ketika landscape tidak kelihatan
    }
}

struct HomeMarketplace_Previews: PreviewProvider {
    static var previews: some View {
        HomeMarketplace()
    }
}

struct Produk: View {
    let loadData : Structure
    
    var body: some View {
        VStack(alignment: .leading){
            ZStack(alignment: .topTrailing){
                Image(loadData.fotoProduk)
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
            Text(loadData.namaProduk)
                .font(.title)
                .bold()
                .padding(.leading)
                .padding(.trailing)
            Text(loadData.hargaProduk)
                .font(.title)
                .foregroundColor(Color.red)
                .bold()
                .padding(.leading)
                .padding(.trailing)
            
            HStack{
                Image(systemName: "mappin.circle")
                Text(loadData.lokasi)
            }
            .padding(.leading)
            .padding(.trailing)
            
            HStack{
                HStack{
                    
                    ForEach(0..<loadData.ratingCount){
                        items in
                    }
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
