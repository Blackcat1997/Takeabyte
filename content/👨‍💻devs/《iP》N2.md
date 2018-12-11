---
title: "《iOS Apprentice》读书笔记（二）"
date: 2018-12-12T01:12:59+08:00
Math: true
---

## 1.关于TableView中的row和cell的问题

如果使用tableview作为页面的话，那么data就是显示在tableview的cell里面，而数据是以row的形式展示，也就是一行一行的显示，那么一个row就对应一个cell，但cell的数量是固定的，屏幕上一次性能显示多少个cell，就有多少个cell，但row可以有很多个，当一个row被划上去看不到了之后，那它之前所在的cell就被移上来的row填充，这说明cell是可以重复使用的（re-used）。

要是cell能够被不同类型重复使用，就要给cell添加一个Resue Identifier。

## 2.return返回值通常被称为方法的结果。

## 3.特殊注释

- // Mark:- ABC

    Mark表示这是一个标记，用于标记一段代码，方便管理代码，能够通过Xcode的Jump Bar快速找到代码的位置。 

- // TODO:- 可以表示待办提醒，表示代码需要完成
- //FIXME:- 表示代码需要重写或是调整

\* 其中的 - 用于分割区间

![](https://github.com/Blackcat1997/Blackcat1997.github.io/raw/master/%F0%9F%91%A8%E2%80%8D%F0%9F%92%BBdevs/p1.png)

## 4.如何在tableview中创建cell

### View层

- 添加Table View Controller，会自动附带一个prototype cell
- 在左侧的Document Outline点击**Table View Cell**，在右侧的Attributes inspector的Identifier的位置给cell命个名

### Controller层

调用
```swift
    tableview.dequeueReusableCell(withIdentifier:for:)
```

- 用于拷贝一个新的cell或是循环使用一个不在使用中的已经存在的cell， 比如这样，
```swift

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
    
    }
```

## 5.IndexPath索引定位

IndexPath用于指向table中特定的一个row，也就是说IndexPath是用于索引数据层的，而cell只是显示IndexPath指向的那个row中所存的data。

## 6.Method和Function的区别

Method是函数，但函数不一定是method，method是基于object的，函数是独立的，method是不是只能由其所属的class中的object调用?

### 关于Method的构造

```swift

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    ...
    }
```

- 首先这个method的名字不是tableview，而是tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)。也就是说形参parameter的名字也是方法名的一部分。
- func代表是函数
- 形参Parameter
    - _  tableview和 cellForRowAt  indexPath是形参名
    - 前面的 _ 和 cellForRowAt是外部形参名，用于外部调用时使用
    - 后面的tableview和 indexPath是局部形参名，用于方法本身内部使用
    - UITableView和IndexPath是形参的类型
- 返回值
    →代表存在返回值，后面的UITableViewCell就是返回值的类型，如果没有返回值，可以省略不写箭头和类型。

## 7.iOS中的三种基本设计模式Design Patterns

- MVC
- Delegation
    让一个object代替另一个去做事情
- Target-action
    将事件events（如点击按钮）与具体的动作方法method连接起来

*《iOS Apprentice》Page 229*