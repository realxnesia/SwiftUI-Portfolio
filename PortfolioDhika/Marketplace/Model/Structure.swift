//
//  Structure.swift
//  PortfolioDhika
//
//  Created by Dhika Aditya Are on 02/08/21.
//

import Foundation

struct Structure : Identifiable{
    let id: Int
    let namaProduk: String
    let fotoProduk: String
    let hargaProduk: String
    let lokasi: String
    let ratingCount: Int
    let jumlahRating: Int
    
    init(id: Int, namaProduk: String, fotoProduk: String, hargaProduk: String, lokasi: String, ratingCount: Int, jumlahRating: Int) {
        self.id = id
        self.namaProduk = namaProduk
        self.fotoProduk = fotoProduk
        self.hargaProduk = hargaProduk
        self.lokasi = lokasi
        self.ratingCount = ratingCount
        self.jumlahRating = jumlahRating
    }
}
