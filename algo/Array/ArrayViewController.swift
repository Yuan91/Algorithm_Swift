//
//  ArrayViewController.swift
//  algo
//
//  Created by du on 2020/4/28.
//  Copyright © 2020 alpha. All rights reserved.
//

import UIKit

class ArrayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        
        var array = MyArray(defaultElement: 0, capacity: 8)
        array.add(value: 1)
        let value = array.find(at: 0)
        print(value)
        array.delete(at: 0)
//        array.insert(value: 2, at: 2)
        print(array)
    }
}
