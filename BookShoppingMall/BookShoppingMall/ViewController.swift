//
//  ViewController.swift
//  BookShoppingMall
//
//  Created by apple on 2019/12/22.
//  Copyright © 2019年 cancerwu. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{

    var bookcells: [myModel] = []
    var bookShoppingCart: [myModel] = []
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        bookcells = [
            myModel(id: "1", image: "se", rank: "Top1:", title: "《软件工程》", intro: "机械工业出版社/69.00元", price: 69, descriptions: "----------内容简介：----------\n本书第7版包含了很多新的内容，而且调整了全书的结构，以改进教学顺序，同时更加强调一些新的、重要的软件工程过程和软件工程实践知识。全书分软件过程、建模、质量管理、软件项目管理和软件工程高级课题五个部分，系统地论述了软件工程领域最新的基础知识，包括新的概念、原则、技术、方法和工具，同时提供了大量供读者进一步研究探索的参考信息。 本书适合作为本科生和研究生的软件工程及相关课程的教材，新版中五个部分的划分有利于教师根据学时和教学要求安排教学，同时也适合作为软件专业人员的工作指南，即使是资深专业人员，阅读本书也能获益匪浅。"),
            
            myModel(id: "2", image: "linux", rank: "Top2:", title: "《鸟哥的Linux私房菜》", intro: "人民邮电出版社/88.00元", price: 88, descriptions: "----------内容简介：----------\n本书是全面而详细地介绍了Linux操作系统。全书分为5个部分：第一部分着重说明Linux的起源及功能，如何规划和安装Linux主机；第二部分介绍Linux的文件系统、文件、目录与磁盘的管理；第三部分介绍文字模式接口 shell和管理系统的好帮手shell脚本，另外还介绍了文字编辑器vi和vim的使用方法；第四部分介绍了对于系统安全非常重要的Linux账号的管理，以及主机系统与程序的管理，如查看进程、任务分配和作业管理；第五部分介绍了系统管理员(root)的管理事项，如了解系统运行状况、系统服务，针对登录文件进行解析，对系统进行备份以及核心的管理等。"),
            
            myModel(id: "3", image: "algorithm", rank: "Top3:", title: "《算法导论》", intro: "机械工业出版社/128.00元", price: 128, descriptions: "----------内容简介：----------\n在有关算法的书中，有一些叙述非常严谨，但不够全面；另一些涉及了大量的题材，但又缺乏严谨性。本书将严谨性和全面性融为一体，深入讨论各类算法，并着力使这些算法的设计和分析能为各个层次的读者接受。全书各章自成体系，可以作为独立的学习单元；算法以英语和伪代码的形式描述，具备初步程序设计经验的人就能看懂；说明和解释力求浅显易懂，不失深度和数学严谨性。\n全书选材经典、内容丰富、结构合理、逻辑清晰，对本科生的数据结构课程和研究生的算法课程都是非常实用的教材，在IT专业人员的职业生涯中，本书也是一本案头必备的参考书或工程实践手册。"),
            
            myModel(id: "4", image: "html", rank: "Top4:", title: "《深入浅出HTML与CSS、XHTML》", intro: "东南大学出版社/98.00元", price: 98, descriptions: "----------内容简介：----------\n《深入浅出HTML与CSS XHTML》(影印版)能让你避免认为Web-safe颜色还是紧要问题的尴尬，以及不明智地把标记放入你的页面。最大的好处是，你将毫无睡意地学习HTML、XHTML 和CSS。如果你曾经读过深入浅出（Head First）系列图书中的任一本，就会知道书中展现的是什么：一个按人脑思维方式设计的丰富的可视化学习模式。《深入浅出HTML与CSS XHTML》的编写采用了许多最新的研究，包括神经生物学、认知科学以及学习理论，这使得《深入浅出HTML与CSS XHTML》能让HTML和CSS深深地烙印在你的脑海里。"),
            
            myModel(id: "5", image: "java", rank: "Top5:", title: "《Java核心技术·卷1：基础知识》", intro: "机械工业出版社/88.00元",price: 88, descriptions: "----------内容简介：----------\n《Java核心技术·卷1：基础知识》共14章。第1章概述了Java语言与其他程序设计语言不同的性能；第2章讲解了如何下载和安装JDK及本书的程序示例；第3章介绍了变量、循环和简单的函数；第4章讲解了类和封装；第5章介绍了继承；第6章解释了接口和内部类；第7章概述了图形用户界面程序设计知识；第8章讨论AWT的事件模型；第9章探讨了SwingGUI工具箱；第10章讲解如何部署自己的应用程序或applet；第11章讨论异常处理；第12章概要介绍泛型程序设计；第13章讲解Java平台的集合框架；第14章介绍了多线程。本书最后还有一个附录，其中列出了Java语言的保留字。"),
            
            myModel(id: "6", image: "ios", rank: "Top6:", title: "《Hacking and Securing iOS Applications》", intro: "McGraw-Hill Osborne Media/98.00元",price:  98, descriptions: "----------内容简介：----------\nBased on unique and previously undocumented research, this book by noted iOS expert Jonathan Zdziarski shows the numerous weaknesses that exist in typical iPhone and iPad apps. Zdziarski shows finance companies, large institutions and others where the exploitable flaws lie in their code, and in this book he will show you as well, in a clear, direct, and immediately applicable style. More importantly. Topics cover manipulating the Objective-C runtime, debugger abuse, hijacking network traffic, testing and class validation, jailbreak detection, and much more."),
            
            myModel(id: "7", image: "oc", rank: "Top7:", title: "《Programming in Objective-C》", intro: "Addison-Wesley Professional/70.00元", price: 70, descriptions: "----------内容简介：----------\nUpdated for OS X 10.9 Mavericks, iOS 7, and Xcode 5 Programming in Objective-C is a concise, carefully written tutorial on the basics of Objective-C and object-oriented programming for Apple's iOS and OS X platforms. The book makes no assumptions about prior experience with object-oriented programming languages or with the C language. Because of this, both beginners and experienced programmers alike can use this book to quickly and effectively learn the fundamentals of Objective-C.")
            
        ]
        //the left bar button item of navigation
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "本月图书销量排行榜：",style: .plain ,target: self, action: nil)
        
        
    }
    // MARK: - table view data source
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookcells.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let book : myModel = bookcells[indexPath.row]
        bookShoppingCart.append(book)
        let titleaddprice : String = book.title + " \(book.price).00元"
        let alertView : UIAlertController = UIAlertController(title: "~~您已成功加入购物车耶耶~~", message: titleaddprice, preferredStyle: .alert)
        let okaction : UIAlertAction = UIAlertAction(title: "嗯，本宝宝知道了~", style: .default, handler: nil)
        alertView.addAction(okaction)
        self .present(alertView, animated: true, completion: nil)
    }
    
    
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "bookcells")! as UITableViewCell
        
        let bookcell = bookcells[indexPath.row] as myModel
        
        let image = cell.viewWithTag(101) as! UIImageView
        let rank = cell.viewWithTag(102) as! UILabel
        let title = cell.viewWithTag(103) as! UILabel
        let intro = cell.viewWithTag(104) as! UILabel
        
        image.image = UIImage(named: bookcell.image)
        rank.text = bookcell.rank
        title.text = bookcell.title
        intro.text = bookcell.intro
        
        return cell
    }
    
    //MARK: - tableView deleagte
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let book : myModel = bookcells[indexPath.row]
        
        let detalVc : DetailViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detalVc.book = book
        self.navigationController?.pushViewController(detalVc, animated: true)
        
    }
    

}

