//
//  main.swift
//  StandardAlgorithms
//
//  Created by Khemaney, Akshay (SPH) on 11/11/2020.
//

import Foundation

func main() {
    
    let choice = getValue("Choose an Algorithm: \n\n\t1. Bubble Sort\n\t2. Merge Sort\n\t3. Quick Sort\n\t4. Insertion Sort\n\t5. Linear Search\n\t6. Binary Search")
    
    bubbleSort()
    mergeSort()
    quickSort()
    insertionSort()
    linearSearch()
    binarySearch()
}

func getValue(_ prompt: String) -> Int {
    print(prompt)
    if let input = readLine() {
        if let choice = Int(input){
            return choice
        }
    }
    
    return 0
}

func bubbleSort(){
    print("TODO")
}

func mergeSort() {
    print("TODO")
}

func quickSort() {
    print("TODO")
}

func insertionSort() {
    print("TODO")
}

func linearSearch() {
    print("TODO")
}

func binarySearch() {
    print("TODO")
}

main()




