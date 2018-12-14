---
title: "《iOS Apprentice》读书笔记（三）"
date: 2018-12-14T20:03:54+08:00
Math: true
---
<font face="PingFang SC">
## 1. 关于MVC

MVC是一种设计模式
* M代表Model objects，用于数据存储
* V代表View objects，用于视觉处理，UI动效等
* C代表Controller objects，连接M和V，用户通过点击V，C检测到点击事件，对所点击的V对应的M进行数据处理.

![](https://github.com/Blackcat1997/Blackcat1997.github.io/raw/master/%F0%9F%91%A8%E2%80%8D%F0%9F%92%BBdevs/3.png)

## 2. 什么是Property（属性）

Property是在一个对象中所使用到的变量或常量。

## 3.Refactoring(代码重构)

定义：整理代码的过程叫做代码重构

- 不修正错误
- 不增加新的功能
- 不影响输出结果

作用

- 调整代码，增加可读性
- 简化结构

## 4. Automatic Reference Counting （ARC）自动引用计数

内存管理（待补充）

## 5.屏幕screens之间的跳转

屏幕直接连接类型称为segue，segue的类型有：

- Show
- Show Detail
- Present Modally
- Present as Popover
- Custom

## 6.一个view controller的对象只在用户与它交互时是活动的，在用完之后，这个对象会被摧毁，并且所占用的内存也会被回收。

## 7. 什么时候使用static cells？

事先知道table view会有多少个区域和多少行数据的时候，使用static cell。

## 8. 什么是delegate？（待补充）

## 9.View Controller之间信息传递

App的基础任务之一就是将信息从一个View Controller传递到另一个View Controller，具体是如何传递的？

- prepareForSegue
- Delegate&Protocol

## 10. Loose Coupling 松散耦合

屏幕B独立于屏幕A，但仍然与其交流，成为松散耦合。

## 11. Protocol 协议

协议就是一组方法名字的集合，协议可以继承。

## 12. Null pointer deference 空指针引用错误

当你没想到一个变量的值为nil，而程序调用了这个变量的时候，程序就会崩溃。

## 13.如何实现delegate委托

- 为对象B定义一个delegate protocol委托协议
- 给对象B定义一个optional delegate可选委托
- 当事件发生时，将信息从对象B传递给委托——对象A
- 让对象A遵守委托协议
- 告诉对象B，对象A是它的委托delegate

## 14. “==”的用处

“==”不仅仅适用于数字，同样适用于字符串

## 15. as!的用法

什么是forced downcast？

## 16.weak的用法

![](https://github.com/Blackcat1997/Blackcat1997.github.io/raw/master/%F0%9F%91%A8%E2%80%8D%F0%9F%92%BBdevs/2.png)

用weak防止循环引用，让A和B不互相持有，“被动”的一方不去持有“主动”的一方。

如果能够确定在访问的时候不会已被释放的话，尽量使用unowned，如果存在释放，用weak。

*Page 316
</font>