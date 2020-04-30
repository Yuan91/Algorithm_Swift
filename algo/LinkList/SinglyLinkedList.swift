//
//  SinglyLinkedList.swift
//  algo
//
//  Created by du on 2020/4/28.
//  Copyright © 2020 alpha. All rights reserved.
//

import Foundation

class Node<T> {
    var value: T?
    var next: Node?
    
    init(_ value:T) {
        self.value = value
    }
    
    init() {
    }

}

/**
 单向链表
 实现插入,删除,查找等api
 */
class List<Element: Equatable> {
    ///哨兵节点
    private var dummy = Node<Element>()
    
    var size: Int {
        var num = 0
        var tempNode = dummy.next
        while tempNode != nil {
            num = num + 1
            tempNode = tempNode?.next
        }
        return num
    }
    
    var isEmpty: Bool {
        return size > 0
    }
    
    /// 根据 value 查找节点
    func node(with value: Element) -> Node<Element>? {
        var node = dummy.next
        while node != nil {
            if node?.value == value {
                return node
            }
            node = node?.next
        }
        return nil
    }
    
    /// 根据 索引 查找节点. 约定:链表的 index 从 1 开始
    func node(at index: Int) -> Node<Element>? {
        guard index > size else {
            return nil
        }
        var num = 1
        var tempNode = dummy.next
        while tempNode != nil {
            if index == num {
                return tempNode
            }
            tempNode = tempNode?.next
            num = num + 1
        }
        return nil
    }
    
    ///头部插入value
    func insertToHead(value: Element) {
        let node = Node(value)
        insertToHead(node: node)
    }
    
    ///头部插入Node
    func insertToHead(node: Node<Element>) {
        node.next = dummy.next
        dummy.next = node
    }
    
    ///指定位置之后插入value
    func insert(after node: Node<Element>, newValue: Element) {
        let newNode = Node(newValue)
        insert(after: node, newNode: newNode)
    }
    
    ///指定位置之后插入Node
    func insert(after node: Node<Element>, newNode: Node<Element>) {
        newNode.next = node.next
        node.next = newNode
    }
    
    ///指定位置之前插入value
    func insert(before node: Node<Element>, newValue: Element) {
        let newNode = Node(newValue)
        insert(before: node, newNode: newNode)
    }
    
    ///指定位置之前插入Node
    func insert(before node: Node<Element>, newNode: Node<Element>){
        var lastNode = dummy
        var tempNode = dummy.next
        while tempNode != nil {
            if tempNode === node {
                newNode.next = node
                lastNode.next = newNode
                break
            }
            lastNode = tempNode!
            tempNode = tempNode?.next
        }
    }
    
    ///删除指定的Node
    func delete(node: Node<Element>)  {
        var lastNode = dummy
        var tempNode = dummy.next
        while tempNode != nil {
            if tempNode === node {
                lastNode.next = tempNode?.next
                break
            }
            lastNode = tempNode!
            tempNode = tempNode?.next
        }
    }
        
    ///删除首个value相等的node
    func delete(value: Element) {
        var lastNode = dummy
        var tempNode = dummy.next
        while tempNode != nil {
            if tempNode?.value == value {
                lastNode.next = tempNode?.next
                break
            }
            lastNode = tempNode!
            tempNode = tempNode?.next
        }
    }
    
    ///打印链表数据
    func  descrption() {
        var start = dummy.next
        var index = 1
        while start != nil {
            print("链接第\(index)个元素为:\(String(describing: start?.value))")
            start = start?.next
            index = index + 1
        }
        print("-------------------")
    }
}
