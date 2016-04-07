//
//  main.swift
//  calc2
//
//  Created by iGuest on 4/5/16.
//  Copyright © 2016 jingwen. All rights reserved.
//

import Foundation


//SimpleCalc2

let addFunc = {(left: Int, right : Int) -> Int in return left + right}
print("2 + 4 = \(addFunc(2,4))")

let minusFunc = {(left: Int, right : Int) -> Int in return left - right}
print("4 - 2 = \(minusFunc(4,2))")

let mulFunc = {(left: Int, right : Int) -> Int in return left * right}
print("2 * 2 = \(mulFunc(2,2))")

let divFunc = {(left: Int, right : Int) -> Int in return left / right}
print("4 / 2 = \(divFunc(4,2))")

func operation(left : Int, right : Int, op : (Int, Int) -> Int ) -> Int {
        return op(left,right)
}
let addResult = operation(2, right: 2){ $0 + $1 }
print("test genetic function: 2 + 2 = \(addResult)")



//ArrayFun

var numArray = [2, 4, 6]

func addArray(numArray: [Int]) -> Int {
    var result = 0
    for num in numArray {
        result = result + num
    }
    return result
}

func multArray(numArray: [Int]) -> Int {
    var result = 1
    for num in numArray {
        result = result * num
    }
    return result
}

func countArray(numArray: [Int]) -> Int {
    return numArray.count
}

func avgArray(numArray: [Int]) -> Int {
    var result = 0
    for num in numArray {
        result = result + num
    }
    return result/numArray.count
    }

print("add array\(numArray) result = \(addArray(numArray)) ")
print("multiply array\(numArray) result = \(multArray(numArray))")
print("count array\(numArray) = \(countArray(numArray))")
print("average of array \(numArray) = \(avgArray(numArray))")

// genetic operation math for array
typealias MathFunc = ([Int]) -> Int

func calc (numArray: [Int], op : MathFunc) -> Int {
    return op(numArray)
}

let addArray2 = calc(numArray){_ in 
    var result = 0
    for num in numArray {
        result = result + num
    }
    return result
}

let mulArray2 = calc(numArray){_ in
    var result = 1
    for num in numArray{
        result = result * num
    }
    return result
}

let countArray2 = calc(numArray){_ in 
    return numArray.count
}

let avgArray2 = calc(numArray){_ in 
    var result = 0
    for num in numArray {
        result = result + num
    }
    return result/numArray.count
    
}

print("test add array\(numArray) genetic function \(addArray2)")
print("test multiply array\(numArray) genetic function \(mulArray2)")
print("test count array\(numArray) genetic function \(countArray2)")
print("test average array\(numArray) genetic funtion \(avgArray2)")



//point
//use tuple to present the points
var pointX = (1,2)
var pointY = (3,4)
func addPoint(pointA:(Int, Int), pointB:(Int, Int)) -> (Int,Int) {
    return (pointA.0 + pointB.0 , pointA.1 + pointB.1 )
}

func subPoint(pointA: (Int, Int), pointB: (Int, Int)) -> (Int, Int) {
    return(pointA.0 - pointB.0, pointA.1 - pointB.1)
}

print("\(pointX) + \(pointY) =  \(addPoint(pointX, pointB:pointY))")
print("\(pointX) - \(pointY) = \(subPoint(pointX, pointB: pointY))")



//use dictionary to represent the points
var pointA :[String : Int] = ["x": 1, "y" : 2]
var pointB :[String : Int] = ["x": 3, "y": 4]


func addDic(A:[String: Int], B:[String: Int] ) -> [String : Int] {
    var result = [String : Int]()
    result = A
    for (coor, value) in B {
        result[coor] = result[coor]! + value
    }
    return result
}


func subDic(A:[String: Int], B: [String: Int] ) -> [String : Int] {
    
    var result = [String : Int]()
    result = A
    for (coor, value) in B {
        result[coor] = result[coor]! - value
    }
    return result
}


print("add dictionary \(pointA) + \(pointB) = \(addDic(pointA, B: pointB))")
print("subtracting dictionary \(pointA) - \(pointB) = \(subDic(pointA, B: pointB))")

