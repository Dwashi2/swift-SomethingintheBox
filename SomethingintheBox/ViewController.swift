//
//  ViewController.swift
//  SomethingintheBox
//
//  Created by Daniel Washington Ignacio on 02/06/21.
//

/*
 Create a function that returns true if an asterisk * is inside a box.

 Examples

 inBox([
   "###",
   "#*#",
   "###"
 ]) ➞ true

 inBox([
   "####",
   "#* #",
   "#  #",
   "####"
 ]) ➞ true

 inBox([
   "*####",
   "# #",
   "#  #*",
   "####"
 ]) ➞ false

 inBox([
   "#####",
   "#   #",
   "#   #",
   "#   #",
   "#####"
 ]) ➞ false
 Notes

 The asterisk may be in the array, however, it must be inside the box, if it exists.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(self.inBox([
            "###",
            "#*#",
            "###"
          ]))
        
        print(self.inBox([
            "####",
            "#* #",
            "#  #",
            "####"
          ]))
        
        print(self.inBox([
            "*####",
            "# #",
            "#  #*",
            "####"
          ]))
        
        print(self.inBox([
            "#####",
            "#   #",
            "#   #",
            "#   #",
            "#####"
          ]) )
        
        
    }
    

    func inBox(_ arr: [String]) -> Bool {
        var n: Bool = false
            for m in arr {
                for char in m {
                    if char == "*" {
                        n = true
                         if (m[m.startIndex] == "*") || (m[m.index(before: m.endIndex)] == "*") {
                            n = false
                            }
                     }
                 }
            }
              
            return n
    }

}

