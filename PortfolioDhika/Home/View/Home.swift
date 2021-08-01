//
//  Home.swift
//  PortfolioDhika
//
//  Created by Dhika Aditya Are on 01/08/21.
//

import SwiftUI

struct Home: View {
    var body: some View {
        
        NavigationView{
            Form{
                //MARK: Section Profile
                Section{
                    NavigationLink(destination: Profile()){
                        HStack{
                            Image(systemName: "person.fill")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            
                            
                            VStack(alignment: .leading){
                                Text("Dhika Aditya").font(.headline)
                                Text("Coder Enthusiast/Learner").font(.caption)
                            }
                        }
                    }
                }
                .padding(.top, 10)
                .padding(.bottom, 10)
                
                
                //MARK: Section SWIFTUI
                Section(header: Text("Code SwiftUI")){
                    HStack(spacing: 20){
                        Image(systemName: "star.fill")
                            .frame(width: 35, height: 35)
                            .background(Color.orange)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                        
                        Text("Page Login")
                    }
                    HStack(spacing: 20){
                        Image(systemName: "star.fill")
                            .frame(width: 35, height: 35)
                            .background(Color.green)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                        
                        Text("Custom Navigation Youtube")
                    }
                }
                
                //MARK: Section UIKIT
                Section(header: Text("Code UIKIT")){
                    HStack(spacing: 20){
                        Image(systemName: "star")
                            .frame(width: 35, height: 35)
                            .background(Color.orange)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                        
                        Text("Dummy Features")
                    }
                    HStack(spacing: 20){
                        Image(systemName: "star")
                            .frame(width: 35, height: 35)
                            .background(Color.green)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                        
                        Text("Dummy Features")
                    }
                }
            }
            .navigationBarTitle("Home")
        }
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct Profile : View{
    var body : some View{
        Text("Halaman Profile")
    }
}
