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

enum PanelPattern{
    case square1,square2,square3,square4,square5
}


struct Game:View{
    
    var body:some View{
        Text("Game")
    }
}

struct Panels:View{
    static var panels:[[Panel]] = [[Panel]]()
    init(){
        var sqStrings:[String] = [String]()
      
            for i in 1...5{
                sqStrings.append("\(i).square")
            }
            for i in 1...5{
                sqStrings.append("\(i).square.fill")
            }
            sqStrings.append("square")
            sqStrings.append("lessthan")
            print(sqStrings)
        
        for y in 0..<9{
            Panels.panels.append([Panel]())
            for x in 0..<9{
                Panels.panels[y].append(Panel(x: x, y: y))
                Panels.panels[y][x].cnt = (x * 9 + y) % 9 + 1
            }
        }
    }
    
    var body:some View{
        
        VStack{
            ForEach(0..<9){ y in
                HStack{
                    Spacer()
                    ForEach(0..<9){x in
                        Panels.panels[y][x]
                        //Spacer()
                    }
                    Spacer()
                }
            }
        }
    }
}

struct Panel:View{
    var x:Int
    var y:Int
    var cnt:Int = 0
    
    
    
    
    var body:some View{
        ZStack {
            Rectangle()
                .foregroundColor(Color.offWhite)
                .cornerRadius(5.0)
            Image(systemName: "\(self.cnt).square")
                .foregroundColor(Color.gray)
                .font(.system(size: 35))
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

