//
//  RecBinarySearch.swift
//
//  Created by Layla Michel
//  Created on 2022-04-13
//  Version 1.0
//  Copyright (c) 2022 IMH. All rights reserved.
//
//  This program tells the user how to play the towers of hanoi
// in the least amount of moves.

import Foundation

func hanoi(diskNumber: Int, firstPeg: Int, middlePeg: Int, lastPeg: Int) {
    if diskNumber == 1 {
        // Default case
        print("Disk 1 moved from peg \(firstPeg) to peg \(lastPeg)")
    } else {
        // Move disk diskNumber-1 from firstPeg to middlePeg
        // using lastPeg as the middlePeg
        hanoi(diskNumber: diskNumber - 1, firstPeg: firstPeg,
            middlePeg: lastPeg, lastPeg: middlePeg)

        // Move last disk from firstPeg to lastPeg
        print("Disk \(diskNumber) moved from peg \(firstPeg) to peg \(lastPeg)")

        // Move disk diskNumber-1 from middlePeg to lastPeg
        // using firstPeg as middlePeg
        hanoi(diskNumber: diskNumber - 1, firstPeg: middlePeg,
            middlePeg: firstPeg, lastPeg: lastPeg)
    }
    return()
}

let startPeg = 1
let middlePeg = 2
let endPeg = 3

print("Towers of Hanoi\n")

while true {
    print("How many disks do you want to use?: ", terminator: "")
    let diskNumStr = readLine()

    let diskNumInt = Int(diskNumStr!) ?? -23847125624345235

    if diskNumInt == -23847125624345235 {
        // Error message if diskNumInt isn't an integer
        print("Please enter a valid integer.\n")
    } else if diskNumInt <= 0 {
        // Error message if diskNumInt is 0 or negative
        print("Please enter a positive integer.\n")
    } else {
        hanoi(diskNumber: diskNumInt, firstPeg: startPeg,
            middlePeg: middlePeg, lastPeg: endPeg)
        break
    }
}
