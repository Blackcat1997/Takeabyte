---
title: "《iOS Apprentice》读书笔记（一）"
date: 2018-12-07T13:00:44+08:00
Math: true
---
1. 每一个屏幕Screen都由一个view controller所管理
    * 设计模式
2. 如何让按钮进行工作
    * 在View Controller的Swift文件中定义一个动作
    * 与Interface Builder进行连接（*MVC模式*）
    * **如何连接？**
3. 检查大括号是否缺失
    * 按住⌘键，点击大括号
4. 在iOS中，app是事件驱动，意思就是对象object监听所发生的特定事件，并加以执行。
5. 什么是Cocoa Touch？
    * iOS中所有framework的集合统称为Cocoa Touch
        * 什么是framework？
            * UIKit
            * Foundation
            * Core Graphics
            * AVFoundation
            * Etc.
6. UIKit使用的是point不是pixel
    * **什么是point和pixel，区别在哪里？**
    *Developers work in points, designers work in pixels.*
7. Method是什么？
    * a method is simply a function that belongs to an object. 
    *Method是属于一个object的函数*
        * 什么是object
        * 什么是函数
8. “Calling a method”和“Sending a message”的意思相同
    * 跳转到所调用的method的地方，然后在method执行完成之后，将return返回值传递回跳转前的地方
    
    * **如何调用一个method？**
9. Function函数和method方法的区别
    * 函数并不属于一个object，但method是
    * method是函数，但函数不一定是method
    * 两者分别用什么用途？什么时候用method？什么时候会用到函数？
10. Locals
    * Global scope 全局 —— 声明之后可在任何地方使用
    * Instance scope 实例作用域 —— These objects are alive for as long as the object that owns them stays alive. alive是什么意思？
    * Local scope 局部 —— 只作用在一定范围内
    *You use instance variables if you want to keep a certain value around, from one action event to the next.*
    
11. 一个outlet的变量需要声明成@IBOutlet weak var类型，并在末尾加上"!"。

    * 一个outlet必须和storyboard的某个部件连接
   
12. 如果要在两个不同的地方做同样的事情，创建一个method去实现，而不是复制代码。
13. Action method和常规method之间有区别吗？
    * 没有
    * 唯一特别之处在于action method中的IBAction的属性允许Interface Builder看见method，这样才能让此method连接上按钮等
    
14. Type Inference 类型推断
    * Swift可定义方式自动推断类型
    `var number = 0`
     `var number: Int = 0`
15. 常量也能拥有不同的值？
    * each time a method is invoked, its local variables and constants are created anew. The old values have long been discarded and you get brand new ones.
    每次当一个方法被调用的时候，它的局部变量和常量都会被重新创建，因此之前的旧值被丢弃，便可以得到新值了。
16. **什么是实例变量？**
17. 项目的设置基本上都存在Info.plist里面。
18. 对于每一个view，在position和size上都要设置constraint。
    * 如果出现的不是蓝条而是橙条，则说明Auto Layout有问题
        * 解决方法
            * 点击目标部件
            * 在Auto Layout附近点击Update Frames按钮
            * 也可以用菜单栏 Editor ▸ Resolve Auto Layout Issues ▸ Update Frames