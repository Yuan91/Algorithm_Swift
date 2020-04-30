//
//  LinkedListViewController.swift
//  algo
//
//  Created by du on 2020/4/28.
//  Copyright © 2020 alpha. All rights reserved.
//

import UIKit

class LinkedListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        
        let listNode = List<Int>()
        
        let zeroNode = Node(0)
        let oneNode = Node(1)
        let twoNode = Node(2)
        let threeNode = Node(3)
        let fourNode = Node(4)
        let fiveNode = Node(5)
        
        listNode.insertToHead(node: fiveNode)
        listNode.insertToHead(node: fourNode)
        listNode.insertToHead(node: threeNode)
        listNode.insertToHead(node: twoNode)
        listNode.insertToHead(node: oneNode)
        listNode.insertToHead(node: zeroNode)
        //输出0.1.2.3.4.5.
        listNode.descrption()
        
        
        let testNode1 = Node(111)
        let testNode2 = Node(333)
        let testNode3 = Node(999)
        
        //`insert after` 头/中间/尾 插入测试
//        listNode.insert(after: zeroNode, newNode: testNode1)
//        listNode.insert(after: threeNode, newNode: testNode2)
//        listNode.insert(after: fiveNode, newNode: testNode3)
//        listNode.descrption()
        
        //`insert before` 头/中间/尾 插入测试
        listNode.insert(before: zeroNode, newNode: testNode1)
        listNode.insert(before: threeNode, newNode: testNode2)
        listNode.insert(before: fiveNode, newNode: testNode3)
        listNode.descrption()
        
        //`delete`删除测试
        //将insert的node 删除
        listNode.delete(node: testNode1)
        listNode.delete(node: testNode2)
        listNode.delete(node: testNode3)
        listNode.descrption()
        
        //`delete`删除值测试
        listNode.delete(value: 0)
        listNode.descrption()
    }
    

    

}
