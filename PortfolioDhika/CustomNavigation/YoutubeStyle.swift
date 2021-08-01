//
//  YoutubeStyle.swift
//  PortfolioDhika
//
//  Created by Dhika Aditya Are on 01/08/21.
//

import SwiftUI

struct YoutubeStyle: View {
    var body: some View {
        YoutubeCustom()
    }
}

struct YoutubeStyle_Previews: PreviewProvider {
    static var previews: some View {
        YoutubeStyle()
            .previewDevice("iPhone 12")
    }
}

struct YoutubeCustom: View {
    var body: some View {
        NavigationView{
            //Text("Content in here")
            ListContentView()
            
                //MARK: Navigation Bar
                .navigationBarItems(
                leading:
                    HStack{
                        Button(action: {print("test")}, label: {
                            //Image(systemName: "person.fill")
                            Image("YouTube-Logo")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 90, height: 65)
                                
                        })
                    },
                trailing:
                    HStack(spacing: 30){
                        Button(action: {print("test")}, label: {
                            Image(systemName: "tray.full")
                                .foregroundColor(Color.secondary)
                        })
                        
                        Button(action: {print("test")}, label: {
                            Image(systemName: "video.fill")
                                .foregroundColor(Color.secondary)
                        })
                        
                        Button(action: {print("test")}, label: {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color.secondary)
                        })
                        
                        Button(action: {print("test")}, label: {
                            Image(systemName: "person.fill")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 20, height: 20)
                                .clipShape(Circle())
                        })

                    }
            )
                .navigationBarTitle("", displayMode: .inline) //Biar dia pendek dan berwarna abu-abu
        }
        .navigationViewStyle(StackNavigationViewStyle()) //tujuannya biar di ipad dia tetp muncul
        
        
    }
}

struct ListContentView : View{
    var body : some View{
        List{
            VStack{
                //MARK: Thumbnail + Time Bottom Trailing
                ZStack(alignment: .bottomTrailing){
                    Image("Thumbnail1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    Text("10:30")
                        //Ukuran
                        .padding(.all, 5)
                        .cornerRadius(5)
                        
                        //Latar Belakang
                        .font(.caption)
                        .foregroundColor(Color.white)
                        .background(Color.black)
                    
                        //Tata Letak
                        .padding(.bottom, 5)
                        .padding(.trailing, 5)

                }
                
                //MARK: Detail
                HStack(spacing: 15){
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    
                    //Tittle
                    VStack(alignment: .leading){
                        Text("Membuat Kopi Gayo #1").font(.headline)
                        Text("Disini kita belajar cara membuat kopi gayo yang nikmat").font(.caption)
                    }
                    Image(systemName: "list.bullet")
                    
                    
                }
            }
            
            
            
            VStack{
                //MARK: Thumbnail + Time Bottom Trailing
                ZStack(alignment: .bottomTrailing){
                    Image("Thumbnail2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    Text("10:30")
                        //Ukuran
                        .padding(.all, 5)
                        .cornerRadius(5)
                        
                        //Latar Belakang
                        .font(.caption)
                        .foregroundColor(Color.white)
                        .background(Color.black)
                    
                        //Tata Letak
                        .padding(.bottom, 5)
                        .padding(.trailing, 5)

                }
                
                //MARK: Detail
                HStack(spacing: 15){
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    
                    //Tittle
                    VStack(alignment: .leading){
                        Text("Membuat Kopi Gayo #1").font(.headline)
                        Text("Disini kita belajar cara membuat kopi gayo yang nikmat").font(.caption)
                    }
                    Image(systemName: "list.bullet")
                    
                    
                }
            }
            
            VStack{
                //MARK: Thumbnail + Time Bottom Trailing
                ZStack(alignment: .bottomTrailing){
                    Image("Thumbnail1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    Text("10:30")
                        //Ukuran
                        .padding(.all, 5)
                        .cornerRadius(5)
                        
                        //Latar Belakang
                        .font(.caption)
                        .foregroundColor(Color.white)
                        .background(Color.black)
                    
                        //Tata Letak
                        .padding(.bottom, 5)
                        .padding(.trailing, 5)

                }
                
                //MARK: Detail
                HStack(spacing: 15){
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    
                    //Tittle
                    VStack(alignment: .leading){
                        Text("Membuat Kopi Gayo #1").font(.headline)
                        Text("Disini kita belajar cara membuat kopi gayo yang nikmat").font(.caption)
                    }
                    Image(systemName: "list.bullet")
                    
                    
                }
            }
            
        }
    }
}

