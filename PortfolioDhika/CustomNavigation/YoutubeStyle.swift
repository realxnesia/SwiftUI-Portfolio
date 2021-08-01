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
    }
}

struct YoutubeCustom: View {
    var body: some View {
        NavigationView{
            Text("Content in here")
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
            
            
        }
    }
}

