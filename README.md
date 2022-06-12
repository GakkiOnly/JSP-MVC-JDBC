# JSP-MVC-JDBC
本系统是JSP基础教程配合MVC三层架构，使用最简单的JDBC连接数据库的例子，适合新手玩家了解三层架构的含义，以及连接数据的方法，前端页面使用的是LayUI布局，LayUI官网已经下线了，所有的项目也已经托管到GIthub上了，但并不妨碍我们使用它。另附上GitHub地址：https://github.com/layui/layui

![image-20220612174616135](C:\Users\Jerry\AppData\Roaming\Typora\typora-user-images\image-20220612174616135.png)

项目的详细功能介绍（若图片无法显示，内附有文档说明）

\1. 功能模块描述，三个大模块

1.1管理员模块：分为两个功能：管理学生，管理教师；

1.2教师模块：分为三个功能：查看/增加毕设选题（带搜索功能）；给学生打分；下载学生的作品；

1.3学生模块：选择毕设题目（带搜索功能）；提交作品，查看我的成绩；

![img](file:///C:\Users\Jerry\AppData\Local\Temp\ksohtml7860\wps1.png) 

\2. 具体功能截图：

***\*注册功能：用户注册选择自己的身份，有学生跟老师选项，注册失败跟注册成功都会给出提示，注册成功后两秒后跳转回登录界面。\****

![img](file:///C:\Users\Jerry\AppData\Local\Temp\ksohtml7860\wps2.jpg) 

![img](file:///C:\Users\Jerry\AppData\Local\Temp\ksohtml7860\wps3.jpg) 

![img](file:///C:\Users\Jerry\AppData\Local\Temp\ksohtml7860\wps4.jpg) 

***\*管理员模块：管理学生\****

***\*管理员可以查询所有注册的学生信息，也可以编辑信息跟删除，修改信息后数据库同步更新。\****

网址：http://localhost:8888/毕业设计管理子系统/ViewMainFormServlet

（封装在view层里面，每一种用户登录时选择登录类型，在数据库中查询到数据后，不同种类型进入不同的view层）

![img](file:///C:\Users\Jerry\AppData\Local\Temp\ksohtml7860\wps5.jpg) 

![img](file:///C:\Users\Jerry\AppData\Local\Temp\ksohtml7860\wps6.jpg) 

![img](file:///C:\Users\Jerry\AppData\Local\Temp\ksohtml7860\wps7.jpg) 

 

***\*管理员模块：管理老师\****

***\*管理员可以查询所有注册的老师信息，也可以编辑信息跟删除，修改信息后数据库同步更新。\****

网址：http://localhost:8888/毕业设计管理子系统/ViewMainFormServlet

（封装在view层里面，每一种用户登录后会判断是哪一个类型，不同种类型进入不同的view层）

![img](file:///C:\Users\Jerry\AppData\Local\Temp\ksohtml7860\wps8.jpg) 

![img](file:///C:\Users\Jerry\AppData\Local\Temp\ksohtml7860\wps9.jpg) 

***\*老师模块：查看/增加毕设选题\****

***\*可以查看所有的毕设选题，也可以\*******\*自己\*******\*搜索选题跟增加选题，增加选题可以选择上传选题文档\*******\*，学生就可以选择选题作为毕设题目，如果有文档学生也可以下载\****

网址：http://localhost:8888/毕业设计管理子系统/ViewTeacherFormServlet

（封装在view层里面，每一种用户登录后会判断是哪一个类型，不同种类型进入不同的view层）

 

 

![img](file:///C:\Users\Jerry\AppData\Local\Temp\ksohtml7860\wps10.jpg) 

![img](file:///C:\Users\Jerry\AppData\Local\Temp\ksohtml7860\wps11.jpg) 

![img](file:///C:\Users\Jerry\AppData\Local\Temp\ksohtml7860\wps12.jpg) 

***\*老师模块：给学生毕设成绩打分\****

***\*查询出的学生数据都是跟老师绑定的，其他老师的学生数据是不会显示出来的，选题都是老师发布的，绑定了老师的工号，学生选择了选题也就确定了老师的工号，老师给学生打分就只会出现选择该老师的学生列表。\****

***\*打分直接修改成绩一栏的数据即可更新成功，学生端会同步更新成绩\****

网址：http://localhost:8888/毕业设计管理子系统/ViewTeacherFormServlet

（封装在view层里面，每一种用户登录后会判断是哪一个类型，不同种类型进入不同的view层）

 

![img](file:///C:\Users\Jerry\AppData\Local\Temp\ksohtml7860\wps13.jpg) 

***\*老师模块：下载/查看学生的作品\****

***\*查询出的学生数据都是跟老师绑定的，其他老师的学生数据是不会显示出来的，选题都是老师发布的，绑定了老师的工号，学生选择了选题也就确定了老师的工号，老师给学生打分就只会出现选择该老师的学生列表。\****

***\*若学生毕设提交上传了的话，\*******\*作品一栏会有上传文档的详细信息，\*******\*老师可以直接点击\*******\*右侧的\*******\*下载\*******\*按钮下载\*******\*打开\*******\*查看学生上传的文档\****

网址：http://localhost:8888/毕业设计管理子系统/ViewTeacherFormServlet

（封装在view层里面，每一种用户登录后会判断是哪一个类型，不同种类型进入不同的view层）

 

![img](file:///C:\Users\Jerry\AppData\Local\Temp\ksohtml7860\wps14.jpg) 

 

***\*学生模块：选择老师发布的毕设选题，默认是所有的选题\****

***\*也可以搜索查询选题，确定选题后选择选题按钮即可选题\****

***\*也可以退选，若要选择其他的选题，要先把当前选题退选才能选择其他的选题\****

网址：[http://localhost:8888/毕业设计管理子系统/ViewStudentFormServlet](http://localhost:8888/毕业设计管理子系统/ViewTeacherFormServlet)

（封装在view层里面，每一种用户登录后会判断是哪一个类型，不同种类型进入不同的view层）

 

![img](file:///C:\Users\Jerry\AppData\Local\Temp\ksohtml7860\wps15.jpg) 

![img](file:///C:\Users\Jerry\AppData\Local\Temp\ksohtml7860\wps16.jpg) 

![img](file:///C:\Users\Jerry\AppData\Local\Temp\ksohtml7860\wps17.jpg) 

![img](file:///C:\Users\Jerry\AppData\Local\Temp\ksohtml7860\wps18.jpg) 

![img](file:///C:\Users\Jerry\AppData\Local\Temp\ksohtml7860\wps19.jpg) 

***\*学生模块：提交作品\****

***\*若学生选题已经确定的话，选题就会显示出来。\****

***\*学生要上传作品，选择文件进行上传，上传成功会提示，上传失败也会提示用户。\****

***\*展示自己的选题跟提交作品功能\****

***\*选题是从数据库中获取的数据，而名字是登录成功后通过session值获取的，然后显示出来，若长时间没有反应的话，，session值会过期，需要重新登陆。\****

网址：[http://localhost:8888/毕业设计管理子系统/ViewStudentFormServlet](http://localhost:8888/毕业设计管理子系统/ViewTeacherFormServlet)

（封装在view层里面，每一种用户登录后会判断是哪一个类型，不同种类型进入不同的view层）

 

![img](file:///C:\Users\Jerry\AppData\Local\Temp\ksohtml7860\wps20.jpg) 

 

***\*学生模块：查看老师给的成绩\****

***\*学生上传后，老师可以下载学生的作品，老师可以给出该学生的成绩，老师给完成绩后，学生端就会出现老师给的成绩。\****

网址：[http://localhost:8888/毕业设计管理子系统/ViewStudentFormServlet](http://localhost:8888/毕业设计管理子系统/ViewTeacherFormServlet)

（封装在view层里面，每一种用户登录后会判断是哪一个类型，不同种类型进入不同的view层）

 

![img](file:///C:\Users\Jerry\AppData\Local\Temp\ksohtml7860\wps21.jpg) 

