//
//  main.swift
//  StandardAlgorithms
//
//  Created by Khemaney, Akshay (SPH) on 11/11/2020.
//

import Foundation

func main(_ descriptions: [String]) {
    
    let choice = getValue("Choose an Algorithm: \n\n\t1. Bubble Sort\n\t2. Merge Sort\n\t3. Quick Sort\n\t4. Insertion Sort\n\t5. Linear Search\n\t6. Binary Search")
    
    let sorting = Sorting()
    let searching = Searching()
    let data = [127, 5, 23, 12, 3, 84, 1]
    
    switch choice {
    case 1:
        printDescription("Bubble Sort", descriptions[choice-1], data, sorting.bubbleSort(data: data))
    case 2:
        printDescription("Merge Sort", descriptions[choice-1], data, sorting.mergeSort(data: data))
    case 3:
        printDescription("Quick Sort", descriptions[choice-1], data, sorting.quickSort(data: data))
    case 4:
        printDescription("Insertion Sort", descriptions[choice-1], data, sorting.insertionSort(data: data))
    case 5:
        printDescription("Linear Search", descriptions[choice-1], "\(data) and 84", searching.linearSearch(data: data, toFind: 84))
    case 6:
        printDescription("Binary Search", descriptions[choice-1], "\(data) and 256", searching.binarySearch(data: data, toFind: 256))
    default:
        print("Invalid Input")
    }
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

func printDescription(_ algorithm: String, _ description: String, _ data: Any, _ result: Any){
    print(description)
    print("\nExample:\n\t\(algorithm) with Input, \(data), returns \(result)\n")
}

let descriptions = [
    "\nBUBBLE SORT\n\nA sorting algorithm that works by looping through an array of integers and comparing pairs, sawpping if the first is greater than the second. This process continues until the a pass is made without any swaps.\n\n\tPreconditions: None\n\tTime Complexity: O(n^2)",
    "\nMERGE SORT\n\nA sorting algorithm that works by dividing an array of integers in two and repeating this process until all arrays are of length 1. The arrays are then merged in the correct order to create a final sorted array.\n\n\tPreconditions: None\n\tTime Complexity: O(nlog(n))",
    "\nQUICK SORT\n\nA sorting algorithm that works by choosing a pivot (often the first element) and comparing all other elements to the pivot to form two arrays on either side of the pivot. This process is repeated on the unsorted sections of the array until all elements are sorted.\n\n\tPreconditions: None\n\tTime Complexity: O(nlog(n))",
    "\nINSERTION SORT\n\nA sorting algorithm that works by sorting the data one element at a time. It takes an element, puts it in the correct location in the array and repeats this for all elements in the array.\n\n\tPreconditions: None\n\tTime Complexity: O(n^2)",
    "\nLINEAR SEARCH\n\nA searching algorithm that works by looping through the array and comparing each element to the desired value. If they are the same, the algorithm returns true whereas the algorithm will return false if the loop finishes.\n\n\tPreconditions: None\n\tTime Complexity: O(n)",
    "\nBINARY SEARCH\n\nA searching algorithm that works by taking the middle term, comparing it to the desired value, if the values are the same, the algorithm returns true if the desired value is greater than the middle value, the process will be repeated on the right half of the list, otherwise the process will be repeated on the left half of the list. If the value is not found when the array is of length 1, then the algorithm returns false.\n\n\tPreconditions: Array must be sorted.\n\tTime Complexity: O(log(n))"]

main(descriptions)




