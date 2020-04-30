//
//  MyArray.swift
//  algo
//
//  Created by du on 2020/4/30.
//  Copyright © 2020 alpha. All rights reserved.
//

import Foundation

struct MyArray<Element> {
    private var data: [Element]
    /// 容量
    private var capacity = 0
    /// 最大索引值
    private var count = 0
    
    init(defaultElement: Element, capacity: Int) {
        data = [Element](repeating: defaultElement, count: capacity)
        self.capacity = capacity
    }
    
    /// 根据 index 查找元素
    func find(at index: Int) -> Element? {
        guard index >= 0 , index < count else {
            return nil
        }
        return data[index]
    }
    
    /// 根据 index 删除元素
    mutating func delete(at index: Int) -> Bool {
        guard index >= 0, index < count else {
            return false
        }
        /// 将数组中 [index, count - 1) 的所有元素前移一位
        for i in index ..< count - 1 {
            data[i] = data[i+1]
        }
        count = count - 1
        return true
    }
    
    /// 根据 index 插入元素
    mutating func insert(value: Element, at index: Int) -> Bool {
        guard index >= 0, index < count, count < capacity else {
            return false
        }
        //倒序移动
        for i in (index ... count - 1).reversed() {
            data[i + 1] = data[i]
        }
        data[index] = value
        count = count + 1
        return true
    }
    
    /// 添加元素
    mutating func add(value: Element) -> Bool {
        guard count < capacity else {
            return false
        }
        data[count] = value
        count = count + 1
        return true
    }
    
    func printAll() {
        print("\(data)")
    }
}
