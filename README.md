#Tang

打算开发一门新语言Tang。

主要是为了将“逻辑可视化“的概念引入编程中。

##特点

逻辑可视化；函数式编程；完全(?)面向对象；动态执行；弱类型

##开发动机

1. 中国人没有自己的编程语言
1. 毕业论文

##实现
（初期打算）将.tang代码文件编译成Javascript代码，并用V8引擎运行

##包括

1. 部分逻辑以可视化的形式呈现，可不是顺序的逻辑。如：一些if表达式的赋值
1. 减少各类符号和关键字的使用，以可视化的方法让程序员判断代码的运作机制

##安装与执行方法

1. 安装node.js最新版和ruby1.9.x（本人用的是1.9.3）。
2. 使用nodejs的包管理系统npm安装coffee-script: npm install -g coffee-script
3. 将文件tang复制到系统环境的可执行目录中，如：
    `sudo cp tang /usr/local/bin`

4. 然后像所有动态语言一样，通过：
    `$ tang Your_File_name`

即可执行
