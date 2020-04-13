//
//  ContentView.swift
//  unEqualityGame
//

//  Created by 佐藤一成 on 2020/04/11.
//  Copyright © 2020 s140. All rights reserved.
//

import SwiftUI

extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
}

struct Panels:View{
    
    var body:some View{
        VStack{
            HStack{
                ForEach(0..<9){x in
                    Panel()
                }
            }
            HStack{
                ForEach(0..<9){x in
                    Panel()
                }
            }
            HStack{
                ForEach(0..<9){x in
                    Panel()
                }
            }
            HStack{
                ForEach(0..<9){x in
                    Panel()
                }
            }
            HStack{
                ForEach(0..<9){x in
                    Panel()
                }
            }
            HStack{
                ForEach(0..<9){x in
                    Panel()
                }
            }
            HStack{
                ForEach(0..<9){x in
                    Panel()
                }
            }
            HStack{
                ForEach(0..<9){x in
                    Panel()
                }
            }
            HStack{
                ForEach(0..<9){x in
                    Panel()
                }
            }
        }
    }
}

struct Panel:View{
    var body:some View{
        ZStack {
            
            
            /*
             Rectangle()
             .fill(Color.offWhite)
                .frame(maxWidth: 100, maxHeight: 100)
             .cornerRadius(10)
             .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
             .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
            .padding(-5)
             */
            
            
            Image(systemName: "1.square")
                .frame(maxWidth: 300, maxHeight: 300)
                //.rotationEffect(.init(radians: Double.pi/3))
                .foregroundColor(Color.gray)
                .font(.system(size: 30))
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                .padding(-5.0)
            
            
            /*
             Image(systemName: "greaterthan")
             .foregroundColor(Color.gray)
             .font(.largeTitle)
             .offset(x:-40)
             */
            //.frame(maxWidth: 300, maxHeight: 300)
            /*
             Text("5")
             //.frame(maxWidth: 100, maxHeight: 100)
                .font(.system(size: 10.0))
             .foregroundColor(Color.gray)
             */
             
        }.aspectRatio(contentMode: .fit)
    }
}


struct ContentView: View {
    var body: some View {
        HStack{
            Panels()
            
            
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

