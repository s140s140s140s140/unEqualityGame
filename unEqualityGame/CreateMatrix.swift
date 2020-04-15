//
//  CreateMatrix.swift
//  unEqualityGame
//
//  Created by 佐藤一成 on 2020/04/16.
//  Copyright © 2020 s140. All rights reserved.
//

import Foundation

class CreateMatrix{
    func getMatrix()->[[(val:Int,isShown:Bool)]]{
        var result = [[Int]]()
        
        
        for y in 0..<5{
            result.append([Int]())
            for x in 0..<5{
                result[y].append((y + x) % 5 + 1)
            }
        }
        for _ in 0..<100{
            result.swapAt((0..<5).randomElement()!, (0..<5).randomElement()!)
        }
        var result2 = [[Int]]()
        for y in 0..<5{
            result2.append([Int](repeating: 0, count: 5))
            for x in 0..<5{
                result2[y][x] = result[x][y]
            }
        }
        result = result2
        
        for _ in 0..<100{
            result.swapAt((0..<5).randomElement()!, (0..<5).randomElement()!)
        }
        
        var matrix:[[(val:Int,isShown:Bool)]] = [[(Int,Bool)]]()
        
        for y in 0..<9{
            matrix.append([(val: Int, isShown: Bool)](repeating: (val: 0, isShown: false), count: 9))
            for x in 0..<9{
                if (y % 2 == 1) && (x % 2 == 1){
                    matrix[y][x] = (-1,false)
                }
            }
        }
        
        for y in 0..<5{
            for x in 0..<5{
                matrix[y * 2][x * 2].val = result[y][x]
            }
        }
        
        
        func getXandY(n:Int)->(x:Int,y:Int){
            var y:Int = n/9
            var x:Int = n - 9 * y
            
            if (x<=3){
                y *= 2
                x = x*2+1
            }else{
                x = (x-4)*2
                y = y*2+1
            }
            return (x,y)
        }
        var shownNum:Set<Int> = []
        repeat{
            shownNum.insert((0..<25).randomElement()!)
        }while(shownNum.count<2)
        for i in shownNum{
            var y:Int = i/5
            var x:Int = i - y*5
            y *= 2
            x *= 2
            matrix[y][x].isShown = true
        }
        
        var shownPanel:Set<Int> = []
        repeat{
            shownPanel.insert((0..<40).randomElement()!)
        }while(shownPanel.count < 10)
        for i in shownPanel{
            let loc = getXandY(n: i)
            matrix[loc.y][loc.x].isShown = true
        }
        return matrix
    }
    
}
