//: Playground - noun: a place where people can play

import UIKit

struct Point{
    var x: Double
    var y: Double
}

struct Line{
    var start: Point
    var end: Point
    func length() -> Double {
        print( self.start, self.end )
        var length = sqrt( pow( ( self.end.x - self.start.x ), 2 ) + pow( ( self.end.y - self.start.y ), 2 ) )
        print( "The length is \( length )" )
        return length
    }
}

struct Triangle{
    var vertices: [Point]
    func area() -> Double{
        var a = self.vertices[0]
        var b = self.vertices[1]
        var c = self.vertices[2]
        print( a, b, c )
        var area = abs( a.x * ( b.y - c.y ) + b.x * ( c.y - a.y ) + c.x * ( a.y - b.y ) ) / 2
        print( "The triangular area is: \( area )" )
        return area
    }
}


let start: Point = Point( x: 2, y: 1 )
let end: Point = Point( x: 6, y: 4 )

let a: Point = Point( x: 15, y: 20 )
let b: Point = Point( x: 25, y: 35 )
let c: Point = Point( x: 60, y: 25 )

let line: Line = Line( start: start, end: end )
let triangle: Triangle = Triangle( vertices: [a, b, c ] )

line.length()
triangle.area()
