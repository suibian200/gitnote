-- ============================================================
-- ???? ? ?????? (seed.sql)
-- ????: 2025-06-25 18:45:00
-- ??: ?? BCrypt ????? '123456'
-- ============================================================

START TRANSACTION;

SET FOREIGN_KEY_CHECKS = 0;

-- ============================================================
-- 1. ????
-- ============================================================

DELETE FROM `user`;
INSERT INTO `user` (`id`, `username`, `password`, `email`, `avatar`, `bio`, `note_count`, `created_at`)
VALUES (1001, 'user1001', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'user1001@example.com', 'avatars/1001_106799.jpg', '', 0, NOW());
INSERT INTO `user` (`id`, `username`, `password`, `email`, `avatar`, `bio`, `note_count`, `created_at`)
VALUES (1002, 'user1002', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'user1002@example.com', 'avatars/1002_960094.jpg', '', 0, NOW());
INSERT INTO `user` (`id`, `username`, `password`, `email`, `avatar`, `bio`, `note_count`, `created_at`)
VALUES (1003, 'user1003', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'user1003@example.com', 'avatars/1003_273803.jpeg', '', 0, NOW());
INSERT INTO `user` (`id`, `username`, `password`, `email`, `avatar`, `bio`, `note_count`, `created_at`)
VALUES (1004, 'user1004', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'user1004@example.com', 'avatars/1004_415551.jpeg', '', 0, NOW());
INSERT INTO `user` (`id`, `username`, `password`, `email`, `avatar`, `bio`, `note_count`, `created_at`)
VALUES (1005, 'user1005', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'user1005@example.com', 'avatars/1005_692517.jpg', '', 0, NOW());

-- ============================================================
-- 2. ????
-- ============================================================

DELETE FROM `note`;
INSERT INTO `note` (`id`, `author_id`, `title`, `content`, `like_count`, `created_at`)
VALUES (1, 1001, 'CSS', '# CSS简介
## 发展史
css1.0

css2.0 DIV（快）+ CSS，HTML与CSS结构分离的思想，网页变得简单，SEO

css3.0 圆角，阴影，动画。。。

## 快速入门
### 基本语法
```plain
规范，style 可以编写css的的代码，设一个声明，最好使用分号结尾
语法
  选择器{
    声明1;
    声明2;
    声明3;
  }
  引用方法
  <link rel="stylesheet" href="../css/style2.css">
```

## 优势
+ 内容表现分离
+ 网页结构表现统一，可以实现复用
+ 样式十分丰富
+ 建议使用独立于HTML的CSS文件
+ 利于SEO，容易被搜索引擎收录

# CSS导入方式
## 行内样式
```html
<!--行内样式：在标签元素中，编写一个style属性，编写样式即可-->
<h1 style="color: red"></h1>
```





















































































## style标签
```html
  <style>
    h1{
      color: #cccccc;
    }
  </style>
```

## 外部样式
连接式

```html
h1{
  color: green;
}
<link rel="stylesheet" href="../css/style2.css">
```

导入式

```html
  <style>
    @import "css/style2.css";
  </style>
```

# 选择器
## 基本选择器
### 标签选择器
```html
格式：
标签名{
  属性1;
  属性2;
}
```

### 类选择器
```html
格式 .class的名称{
  属性;
  属性;
}
好处，可以多个标签归类，是同一个class，可以复用

```

### id选择器
```html
格式
#id名称{
  属性;
}
id 必须保证全局唯一
```

### 优先级
id>class>标签

## 高级选择器
### 层次选择器
+ 后代选择器：在某个元素的后面

```html
body p{
      background: bisque;
}
```

+ 子选择器  只作用于一层结构

```plain
body>p{
  background: aqua;
}
```

+ 相邻选择器 只有一个 相邻（向下）

```plain
.hidden + p{
  background: coral;
}
```

+ 通用选择器 当前选中元素的向下的所有兄弟元素

```plain
.hidden~p{
  background: greenyellow;
}
```

### 结构伪类选择器
```plain
/*ul的第一个子元素*/
ul li:first-child{
  background: greenyellow;
}

/*ul的最后子元素*/
ul li:last-child{
  background: #b3d4fc;
}
```

```plain
/*选择p2 定位到父元素，选择当前的第一个元素*/
/*选择当前p元素的父级标签，选中父级标签的第几个, 并且是当前元素才能生效*/
p:nth-child(2){
  background: cornsilk;
}
/*选中父元素下的p元素的第二个*/
p:nth-of-type(2){
  background: cadetblue;
}
```

### 属性选择器（常用）
+ 标签[属性名]
+ 标签[属性名=属性值]
+ 标签[属性值=正则表达式]
    - = 是绝对等于
    - *= 是包含
    - ^= 以这个结尾
    - $= 以这个结尾

# 字体美化
span标签：重点要突出的文字，使用span标签套起来

字体设置

```plain
font-family 字体
font-size: 大小
font-weight: 字体粗细
color: 字体颜色
font：字体样式
```

# 文本样式
+ 颜色color
    - 英文单词
    - rgb 0~F
    - rgba(r, g, b, a) 透明度a 0-1
+ 文本对齐方式 text-align
    - center居中
    - left：左边
    - right：右边
+ 段落首行缩进text-indent   单位em（字长）
+ 行高 和 块的高度一致可实现居中
    - height 块高
    - line-height  行高
+ text-decoration修饰文本
    - <font style="color:rgba(0, 0, 0, 0.9);"></font>`<font style="color:rgba(0, 0, 0, 0.9);">underline</font>`<font style="color:rgba(0, 0, 0, 0.9);">：添加下划线。</font>
    - `<font style="color:rgba(0, 0, 0, 0.9);">overline</font>`<font style="color:rgba(0, 0, 0, 0.9);">：添加上划线。</font>
    - `<font style="color:rgba(0, 0, 0, 0.9);">line-through</font>`<font style="color:rgba(0, 0, 0, 0.9);">：添加删除线。</font>
    - `<font style="color:rgba(0, 0, 0, 0.9);">none</font>`<font style="color:rgba(0, 0, 0, 0.9);">：不设置</font>
+ 文本图片水平对齐：vertica-align：middle
+ 文本阴影 text-shadow

```plain
#price{
  /*阴影颜色 x y z 偏移值*/
  text-shadow: #15abe3 10px 10px 10px;
}
```

# 超链接伪类
```plain
/*鼠标悬停状态*/
a:hover{
  color: aqua;

}
/*长按状态*/
a:active{
  color: green;
}
/*点击后的颜色*/
a:visited{
  color: red;
}
```

# 列表
+ list-style:
    - none: 去掉圆点或数字
    - circle：空心圆
    - decimol 数字
    - square 正方形

# 背景图片
+ 添加背景图片：background-image ： url("图片地址")
+ 图片位置 background-position：水平位置，竖直位置；
+ 图片渐变 background-image：linear-gradient；
    - https://www.gradient.com/
    - 径向渐变
    - 圆形渐变
+ 选择平铺：background-repeat
    - 默认为全部平铺
    - repeat-x：水平平铺
    - repeat-y：竖直平铺
    - no-repeat：不平铺
+ background：color url("图片")  水平位置 竖直位置 平铺方式repeat
+

# 盒子模型
## 什么是盒子模型
margin：外边距

border：边框

padding：内边距

<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1745496964933-7d0db80f-241f-4bac-8bf3-6e4abf6d4efb.png" width="369.6000061035156" title="" crop="0,0,1,1" id="udbbacf9d" class="ne-image">

## 边框 border
border ：大小   样式   颜色;

样式：

solid：实线

dashed：虚线



## 外边距 margin
margin：0；上下 左右都为0

margin：0  auto  上下为0  左右相等

margin：0  0  0  0；上 左 下 右 顺时针旋转

## 内边距 padding
## 圆角边框 border-radius
顺时针方向

+ border-radius：10px 20px 30px 40px、

圆角的半径

可实现半圆，扇形等图片

## 盒子阴影 box-shadow
# display属性
## 块元素 block
+ 在网页中独占一行
+ 常见的右h1~h6 p div 列表

## 块元素 inline
+ 行内元素不会独占一行，一行可以显示多个行内元素，不能设置宽度和高度属性
+ 常见的有span  a  img  strong em

## 行内块元素 inline-block
+ 行内块元素不会自动换行，多个行内块元素可以排在同一行
+ 常见的有input(部分)  buttom

## none 隐藏元素
# 浮动 float
float：left 向左

float：right 向右



# 父级边框塌陷问题
## 增加父级元素的高度
##  clear
clear：right；右侧不允许有浮动元素

clear：left；左侧不允许有浮动元素

clear：both；两侧不允许有浮动元素

clear：none；

## overflow
hidden ：隐藏超出的部分

scroll：如果有超出部分添加一个滚动条

## 父级元素添加一个伪类
```css
#father:after{
  content: '''';
  display:block;
  clear: both;
}
```

# 定位：position
## 相对定位 ralative
+ position：relative
+ 相对于原来的位置，进行指定的偏移，它任然在标准文档流中，原来的位置会被保留
    - top -20px；
    - left 20px；
    - bottom -10px；
    - right 20px

## 绝对定位 absolute
+ 没有父级元素定位的前提下，相对于浏览器定位
+ 假设父级元素存在定位，我们通常会相对于父级元素进行偏移
+ 在父级元素范围内移动
+ 原来位置不会被保留

## 固定定位 fixed
## z-index 层级设置
z-index: 10；

实现块级层级

0~∞  层级越大，表示越在上面

## opacity 背景透明度
0~1

# 动画：', 0, NOW());

INSERT INTO `note` (`id`, `author_id`, `title`, `content`, `like_count`, `created_at`)
VALUES (2, 1001, 'MyBatis-Plus', '# <font style="color:rgb(23, 24, 28);">简介</font>
[<font style="color:rgb(70, 142, 247);">MyBatis-Plus</font>](https://github.com/baomidou/mybatis-plus)<font style="color:rgb(53, 56, 65);"> </font><font style="color:rgb(53, 56, 65);">是一个</font><font style="color:rgb(53, 56, 65);"> </font>[<font style="color:rgb(70, 142, 247);">MyBatis</font>](https://www.mybatis.org/mybatis-3/)<font style="color:rgb(53, 56, 65);"> </font><font style="color:rgb(53, 56, 65);">的增强工具，在 MyBatis 的基础上只做增强不做改变，为简化开发、提高效率而生。</font>

<font style="background-color:rgb(11, 87, 208) !important;">MyBatis-Plus 教程</font>

**<font style="color:rgb(102, 8, 145);background-color:rgb(237, 209, 250);">愿景</font>**

<font style="color:rgb(23, 24, 28);background-color:rgb(237, 209, 250);">我们的愿景是成为 MyBatis 最好的搭档，就像 </font>**<font style="color:rgb(23, 24, 28);background-color:rgb(237, 209, 250);">魂斗罗</font>**<font style="color:rgb(23, 24, 28);background-color:rgb(237, 209, 250);"> 中的 1P、2P，基友搭配，效率翻倍。</font>

## <font style="color:rgb(23, 24, 28);">特性</font>
+ **<font style="color:rgb(53, 56, 65);">无侵入</font>**<font style="color:rgb(53, 56, 65);">：只做增强不做改变，引入它不会对现有工程产生影响，如丝般顺滑</font>
+ **<font style="color:rgb(53, 56, 65);">损耗小</font>**<font style="color:rgb(53, 56, 65);">：启动即会自动注入基本 CURD，性能基本无损耗，直接面向对象操作</font>
+ **<font style="color:rgb(53, 56, 65);">强大的 CRUD 操作</font>**<font style="color:rgb(53, 56, 65);">：内置通用 Mapper、通用 Service，仅仅通过少量配置即可实现单表大部分 CRUD 操作，更有强大的条件构造器，满足各类使用需求</font>
+ **<font style="color:rgb(53, 56, 65);">支持 Lambda 形式调用</font>**<font style="color:rgb(53, 56, 65);">：通过 Lambda 表达式，方便的编写各类查询条件，无需再担心字段写错</font>
+ **<font style="color:rgb(53, 56, 65);">支持主键自动生成</font>**<font style="color:rgb(53, 56, 65);">：支持多达 4 种主键策略（内含分布式唯一 ID 生成器 - Sequence），可自由配置，完美解决主键问题</font>
+ **<font style="color:rgb(53, 56, 65);">支持 ActiveRecord 模式</font>**<font style="color:rgb(53, 56, 65);">：支持 ActiveRecord 形式调用，实体类只需继承 Model 类即可进行强大的 CRUD 操作</font>
+ **<font style="color:rgb(53, 56, 65);">支持自定义全局通用操作</font>**<font style="color:rgb(53, 56, 65);">：支持全局通用方法注入（ Write once, use anywhere ）</font>
+ **<font style="color:rgb(53, 56, 65);">内置代码生成器</font>**<font style="color:rgb(53, 56, 65);">：采用代码或者 Maven 插件可快速生成 Mapper 、 Model 、 Service 、 Controller 层代码，支持模板引擎，更有超多自定义配置等您来使用</font>
+ **<font style="color:rgb(53, 56, 65);">内置分页插件</font>**<font style="color:rgb(53, 56, 65);">：基于 MyBatis 物理分页，开发者无需关心具体操作，配置好插件之后，写分页等同于普通 List 查询</font>
+ **<font style="color:rgb(53, 56, 65);">分页插件支持多种数据库</font>**<font style="color:rgb(53, 56, 65);">：支持 MySQL、MariaDB、Oracle、DB2、H2、HSQL、SQLite、Postgre、SQLServer 等多种数据库</font>
+ **<font style="color:rgb(53, 56, 65);">内置性能分析插件</font>**<font style="color:rgb(53, 56, 65);">：可输出 SQL 语句以及其执行时间，建议开发测试时启用该功能，能快速揪出慢查询</font>
+ **<font style="color:rgb(53, 56, 65);">内置全局拦截插件</font>**<font style="color:rgb(53, 56, 65);">：提供全表 delete 、 update 操作智能分析阻断，也可自定义拦截规则，预防误操作</font>

<font style="color:rgb(53, 56, 65);"></font>

# <font style="color:rgb(23, 24, 28);">快速开始</font>
<font style="color:rgb(53, 56, 65);">我们将通过一个简单的 Demo 来阐述 MyBatis-Plus 的强大功能，在此之前，我们假设您已经：</font>

<font style="background-color:rgb(11, 87, 208) !important;">MyBatis-Plus生态</font>

+ <font style="color:rgb(53, 56, 65);">拥有 Java 开发环境以及相应 IDE</font>
+ <font style="color:rgb(53, 56, 65);">熟悉 Spring Boot</font>
+ <font style="color:rgb(53, 56, 65);">熟悉 Maven 或 Gradle</font>

---

<font style="color:rgb(53, 56, 65);">现有一张 User 表，其表结构如下：</font>

| <font style="color:rgb(53, 56, 65);">id</font> | <font style="color:rgb(53, 56, 65);">name</font> | <font style="color:rgb(53, 56, 65);">age</font> | <font style="color:rgb(53, 56, 65);">email</font> |
| --- | --- | --- | --- |
| <font style="color:rgb(53, 56, 65);">1</font> | <font style="color:rgb(53, 56, 65);">Jone</font> | <font style="color:rgb(53, 56, 65);">18</font> | [<font style="color:rgb(70, 142, 247);">test1@baomidou.com</font>](mailto:test1@baomidou.com) |
| <font style="color:rgb(53, 56, 65);">2</font> | <font style="color:rgb(53, 56, 65);">Jack</font> | <font style="color:rgb(53, 56, 65);">20</font> | [<font style="color:rgb(70, 142, 247);">test2@baomidou.com</font>](mailto:test2@baomidou.com) |
| <font style="color:rgb(53, 56, 65);">3</font> | <font style="color:rgb(53, 56, 65);">Tom</font> | <font style="color:rgb(53, 56, 65);">28</font> | [<font style="color:rgb(70, 142, 247);">test3@baomidou.com</font>](mailto:test3@baomidou.com) |
| <font style="color:rgb(53, 56, 65);">4</font> | <font style="color:rgb(53, 56, 65);">Sandy</font> | <font style="color:rgb(53, 56, 65);">21</font> | [<font style="color:rgb(70, 142, 247);">test4@baomidou.com</font>](mailto:test4@baomidou.com) |
| <font style="color:rgb(53, 56, 65);">5</font> | <font style="color:rgb(53, 56, 65);">Billie</font> | <font style="color:rgb(53, 56, 65);">24</font> | [<font style="color:rgb(70, 142, 247);">test5@baomidou.com</font>](mailto:test5@baomidou.com) |


<font style="color:rgb(53, 56, 65);">其对应的数据库 Schema 脚本如下：</font>

<font style="color:rgb(53, 56, 65);">schema-h2.sql</font>

<font style="background-color:rgb(11, 87, 208) !important;">Java实体类</font>

```plain
DROP TABLE IF EXISTS `user`;




CREATE TABLE `user`

(

    id BIGINT NOT NULL COMMENT ''主键ID'',

    name VARCHAR(30) NULL DEFAULT NULL COMMENT ''姓名'',

    age INT NULL DEFAULT NULL COMMENT ''年龄'',

    email VARCHAR(50) NULL DEFAULT NULL COMMENT ''邮箱'',

    PRIMARY KEY (id)

);
```

<font style="color:rgb(53, 56, 65);">其对应的数据库 Data 脚本如下：</font>

<font style="color:rgb(53, 56, 65);">data-h2.sql</font>

```plain
DELETE FROM `user`;




INSERT INTO `user` (id, name, age, email) VALUES

(1, ''Jone'', 18, ''test1@baomidou.com''),

(2, ''Jack'', 20, ''test2@baomidou.com''),

(3, ''Tom'', 28, ''test3@baomidou.com''),

(4, ''Sandy'', 21, ''test4@baomidou.com''),

(5, ''Billie'', 24, ''test5@baomidou.com'');
```

---

<font style="color:rgb(53, 56, 65);">创建一个空的 Spring Boot 工程，加入 H2 数据库进行集成测试。</font>

## <font style="color:rgb(23, 24, 28);">添加依赖</font>
<font style="color:rgb(53, 56, 65);">引入 MyBatis-Plus Starter 依赖</font>

```xml
<dependencies>
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter</artifactId>
        </dependency>
        <!--lombok-->
        <dependency>
            <groupId>org.projectlombok</groupId>
            <artifactId>lombok</artifactId>
            <optional>true</optional>
        </dependency>
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-test</artifactId>
            <scope>test</scope>
        </dependency>
        <!--数据库驱动-->
        <dependency>
            <groupId>com.mysql</groupId>
            <artifactId>mysql-connector-j</artifactId>
            <scope>runtime</scope>
        </dependency>
        <!--mybatis-plus-->
        <dependency>
            <groupId>com.baomidou</groupId>
            <artifactId>mybatis-plus-spring-boot4-starter</artifactId>
            <version>3.5.15</version>
        </dependency>
  <dependency>
    <groupId>com.baomidou</groupId>
    <artifactId>mybatis-plus-boot-starter-test</artifactId>
    <version>3.5.15</version>
</dependency>
    </dependencies>
```

使用mybatis-Plus可以节省大量的代码，尽量不要同时导入mybatis和mybatis-plus

## <font style="color:rgb(23, 24, 28);">链接数据库</font>
```xml
spring.application.name=mybatis_plus
spring.datasource.username=root
spring.datasource.password=@Root1234
spring.datasource.url=jdbc:mysql://192.168.2.129:3306/mybatis_plus?useSSL=false&useUnicode=true&characterEncoding=utf-8&serverTimezone=GMT%2B8
spring.datasource.driver-class-name=com.mysql.jdbc.Driver

```

## <font style="color:rgb(23, 24, 28);">如何使用</font>
1. pojo

```java
package com.jie.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {

    private Long id;
    private String name;
    private Integer age;
    private String email;
}
```

2. mapper

```java
package com.jie.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.jie.pojo.User;
import org.springframework.stereotype.Repository;

// 在对应的Mapper上面继承基本的类 BaseMapper
@Repository  // 代表持久层
public interface UserMapper extends BaseMapper<User> {
    // 所有的crud已经配置完成
    // 不需要配置其他文件了
}
```

3. 测试

```java
package com.jie;

import com.jie.mapper.UserMapper;
import com.jie.pojo.User;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class MybatisPlusApplicationTests {

    @Autowired  // 继承了BaseMapper所有的方法，也可以自己编写方法
    private UserMapper userMapper;

    @Test
    void contextLoads() {
        // 参数是一个wrapper，条件构造器，这里使用null
        // 查询全部用户
        List<User> users = userMapper.selectList(null);
        users.forEach(System.out::println);
    }
}
```

## <font style="color:rgb(23, 24, 28);"></font>
# 配置日志
在配置文件中设置

```plain
# 日志配置
mybatis-plus.configuration.log-impl=org.apache.ibatis.logging.stdout.StdOutImpl

```

查看自动生成的sql

# CRUD
## 插入测试
```java
@Test // 插入测试
public void testInsert(){
    User user = new User();
    user.setName("zhangsan");
    user.setAge(18);
    user.setEmail("2746325152@qq.com");

    int result = userMapper.insert(user);
    System.out.println(result);
    System.out.println(user);
}
```

<img src="https://cdn.nlark.com/yuque/0/2026/png/54050922/1776402148635-5677c0d5-fa5b-4e38-bb18-ef785dac911c.png" width="586.4" title="" crop="0,0,1,1" id="u94b2206c" class="ne-image">

<font style="color:rgb(53, 56, 65);">MyBatis-Plus 提供了灵活的自定义ID生成器功能，允许开发者根据业务需求定制ID生成策略。从3.3.0版本开始，默认使用雪花算法结合不含中划线的UUID作为ID生成方式</font>

## <font style="color:rgb(53, 56, 65);">自增策略</font>
```java
@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {

    @TableId(type = IdType.AUTO)
    private Long id;
    private String name;
    private Integer age;
    private String email;
}
```

```java
public enum IdType {
    AUTO(0),  //主键自增，要求数据库字段必须自增
    NONE(1),  //未设置主键
    INPUT(2), // 手动输入
    ASSIGN_ID(3),  // 默认全局id
    ASSIGN_UUID(4); // 全局id

    private final int key;

    private IdType(int key) {
        this.key = key;
    }

    public int getKey() {
        return this.key;
    }
}
```

## 测试更新
```java
@Test // 更新测试
public void testUpdate(){
    User user = new User();
    user.setId(6L);
    user.setName("lisi");
    user.setAge(10);

    int result = userMapper.updateById(user);
    System.out.println(result);
}
```

## 自动填充
创建时间，修改时间！这些操作一般都是自动化完成的，我们不希望手动更新

阿里巴巴开发手册：所有的数据库表都应该有：gmt_create， gmt_modified几乎所有的表都要配置上，而且需要自动化！

### 数据库级别
在表中新增字段 create_time,update_time，将默认表达是设置为CURRENT_TIMESTAMP，将update_tiem更新设置为CURRENT_TIMESTAMP

在创建数据和修改数据后会自动更改

### 代码级别
在实体类字段上增加注解

```java
// 字段增加填充内容
@TableField(fill = FieldFill.INSERT)
private Date createTime;
@TableField(fill = FieldFill.UPDATE)
private Date updateTime;
```

在处理器中处理注解

```java
package com.jie.handler;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.util.Date;

@Slf4j
@Component  // 一定不要忘记把处理器加到ioc容器中
public class MyMetaObjetHandler implements MetaObjectHandler {
    // 插入时的填充策略
    @Override
    public void insertFill(MetaObject metaObject) {
        log.info("start insert fill ....");
        // setFieldValByName(String fieldName, Object fieldVal, MetaObject metaObject)
        this.setFieldValByName("createTime", new Date(), metaObject);
        this.setFieldValByName("updateTime", new Date(), metaObject);
    }
    // 跟新时的填充策略
    @Override
    public void updateFill(MetaObject metaObject) {
        log.info("start update fill ....");
        // setFieldValByName(String fieldName, Object fieldVal, MetaObject metaObject)
        this.setFieldValByName("updateTime", new Date(), metaObject);
    }
}
```

## 乐观锁
<font style="color:rgb(53, 56, 65);">乐观锁是一种并发控制机制，用于确保在更新记录时，该记录未被其他事务修改。MyBatis-Plus 提供了</font><font style="color:rgb(53, 56, 65);"> </font>`<font style="color:rgb(53, 56, 65);background-color:rgb(236, 238, 242);">OptimisticLockerInnerInterceptor</font>`<font style="color:rgb(53, 56, 65);"> </font><font style="color:rgb(53, 56, 65);">插件，使得在应用中实现乐观锁变得简单。</font>

<font style="background-color:rgb(11, 87, 208) !important;">软件</font>

### <font style="color:rgb(23, 24, 28);">乐观锁的实现原理</font>
<font style="color:rgb(53, 56, 65);">乐观锁的实现通常包括以下步骤：</font>

1. <font style="color:rgb(53, 56, 65);">读取记录时，获取当前的版本号（version）。</font>
2. <font style="color:rgb(53, 56, 65);">在更新记录时，将这个版本号一同传递。</font>
3. <font style="color:rgb(53, 56, 65);">执行更新操作时，设置</font><font style="color:rgb(53, 56, 65);"> </font>`<font style="color:rgb(53, 56, 65);background-color:rgb(236, 238, 242);">version = newVersion</font>`<font style="color:rgb(53, 56, 65);"> </font><font style="color:rgb(53, 56, 65);">的条件为</font><font style="color:rgb(53, 56, 65);"> </font>`<font style="color:rgb(53, 56, 65);background-color:rgb(236, 238, 242);">version = oldVersion</font>`<font style="color:rgb(53, 56, 65);">。</font>
4. <font style="color:rgb(53, 56, 65);">如果版本号不匹配，则更新失败。</font>

### 如何实现
1. 给数据表中加上version字段，默认为1
2. 修改实体类，加上version

```java
@Version
private Integer version;
```

3. 注册组件

```java
// 扫描mapper文件夹
@MapperScan("com.jie.mapper")
@EnableTransactionManagement
@Configuration //配置类
public class MyBatisPlusConfig {

    // 注册乐观锁插件
    @Bean
    public OptimisticLockerInnerInterceptor optimisticLockerInnerInterceptor() {
        return new OptimisticLockerInnerInterceptor();
    }
}
```

4. 乐观锁测试

```java
@Test // 测试乐观锁
public void testOptimisticLockerInner(){

    // 线程1
    User user = userMapper.selectById(1L);
    user.setAge(18);
    user.setEmail("123456789@qq.com");

    // 模拟另一个线程执行插队操作
    User user2 = userMapper.selectById(1L);
    user2.setAge(30);
    user2.setEmail("213456789@qq.com");
    userMapper.updateById(user2);

    userMapper.updateById(user);
}

}
```

## 查询操作
```java
@Test // 查询测试
public void testSelectById(){  // 单个ID
    User user = userMapper.selectById(1L);
    System.out.println(user);
}

@Test  // 测试批量查询
public void testSelectByBatchId(){
    List<User> users = userMapper.selectByIds(Arrays.asList(1L, 2L, 3L));
    users.forEach(System.out::println);
}

@Test // 条件查询 map
public void testDeleteByIds(){
    HashMap<String, Object> map = new HashMap<>();
    map.put("name", "zhangsan");
    List<User> users = userMapper.selectByMap(map);
    users.forEach(System.out::println);

}

}
```

## 分页查询
1. 配置分页插件

```java
@Bean
public MybatisPlusInterceptor mybatisPlusInterceptor() {
    MybatisPlusInterceptor interceptor = new MybatisPlusInterceptor();
    interceptor.addInnerInterceptor(new PaginationInnerInterceptor(DbType.MYSQL)); // 如果配置多个插件, 切记分页最后添加
    // 如果有多数据源可以不配具体类型, 否则都建议配上具体的 DbType
    return interceptor;
}
```

2. 测试分页查询



```java
@Test // 测试分页插叙
public void testPage(){
    // 参数一: 当前页
    // 参数二: 页面大小
    Page<User> page = new Page<>(1,5);
    userMapper.selectPage(page,null);
    page.getRecords().forEach(System.out::println);
    //        System.out.println(page.getTotal());
}
```





## 删除操作
### 基本删除操作
```java
@Test // 根据id删除
public void testDeleteById(){
    User user = userMapper.selectById(1L);
    userMapper.deleteById(2045004534566916098L);
}

@Test // 批量删除
public void testDeleteBatchByIds(){
    List<Long> ids = Arrays.asList(7L,6L);
    userMapper.deleteBatchIds(ids);
}

@Test // 根据条件删除
public void testDeleteMap(){
    HashMap<String, Object> map = new HashMap<>();
    map.put("name", "lis");
    userMapper.deleteByMap(map);
}
```

### 逻辑删除
1. 物理删除：从数据库中删除
2. 逻辑删除：在数据库中没有被移除，而是通过一个变量来让他失效！ deleted=0--> deleted =1 ，管理员可以查看删除记录，防止数据丢失

测试

1. 现在数据库中添加一个deleted字段
2. 在实体类中添加deleted属性

```java
@TableLogic // 逻辑删除
private Integer deleted;
```

3. 配置

```java
@Bean
public ISqlInjector sqlInjector() {
    return new LogicSqlInjector();
}
```

```xml
# 配置逻辑删除
mybatis-plus.global-config.db-config.logic-delete-value=1
mybatis-plus.global-config.db-config.logic-not-delete-value=0
```

+ 测试删除，本质走的是更新操作，将deleted改为0
+ 查询时自动过滤被逻辑删除的数据

## 
# 性能分析插件
在日常开发中，会遇到一些慢sql

作用：性能分析拦截器，用于输出每条SQL语句及其执行时间

MP中也提供性能分析插件，如果超过这个时间就会停止运行

1. 导入插件

```java
@Bean
@Profile({"dev","test"}) // 设置 dev test 环境开启 保证开发效率
public PerformanceInterceptor performanceInterceptor() {
    PerformanceInterceptor performanceInterceptor = new PerformanceInterceptor();
    performanceInterceptor.setMaxTime(1); // ms 设置说起来执行的最大时间
    performanceInterceptor.setFormat(true); //是否开启格式化支持
    return performanceInterceptor;
}
```

要在SpringBoot中配置环境为dev或者test环境！

```plain
# 设置开发环境
spring.profiles.active=dev
```

2. 测试使用，超过测试时间就会停止运行

# 条件构造器
<font style="color:rgb(53, 56, 65);">MyBatis-Plus 提供了一套强大的条件构造器（Wrapper），用于构建复杂的数据库查询条件。Wrapper 类允许开发者以链式调用的方式构造查询条件，无需编写繁琐的 SQL 语句，从而提高开发效率并减少 SQL 注入的风险。</font>

<font style="background-color:rgb(11, 87, 208) !important;">链式调用</font>

<font style="color:rgb(53, 56, 65);">在 MyBatis-Plus 中，Wrapper 类是构建查询和更新条件的核心工具。以下是主要的 Wrapper 类及其功能：</font>

+ **<font style="color:rgb(53, 56, 65);">AbstractWrapper</font>**<font style="color:rgb(53, 56, 65);">：这是一个抽象基类，提供了所有 Wrapper 类共有的方法和属性。它定义了条件构造的基本逻辑，包括字段（column）、值（value）、操作符（condition）等。所有的 QueryWrapper、UpdateWrapper、LambdaQueryWrapper 和 LambdaUpdateWrapper 都继承自 AbstractWrapper。</font>
+ **<font style="color:rgb(53, 56, 65);">QueryWrapper</font>**<font style="color:rgb(53, 56, 65);">：专门用于构造查询条件，支持基本的等于、不等于、大于、小于等各种常见操作。它允许你以链式调用的方式添加多个查询条件，并且可以组合使用</font><font style="color:rgb(53, 56, 65);"> </font>`<font style="color:rgb(53, 56, 65);background-color:rgb(236, 238, 242);">and</font>`<font style="color:rgb(53, 56, 65);"> </font><font style="color:rgb(53, 56, 65);">和</font><font style="color:rgb(53, 56, 65);"> </font>`<font style="color:rgb(53, 56, 65);background-color:rgb(236, 238, 242);">or</font>`<font style="color:rgb(53, 56, 65);"> </font><font style="color:rgb(53, 56, 65);">逻辑。</font>
+ **<font style="color:rgb(53, 56, 65);">UpdateWrapper</font>**<font style="color:rgb(53, 56, 65);">：用于构造更新条件，可以在更新数据时指定条件。与 QueryWrapper 类似，它也支持链式调用和逻辑组合。使用 UpdateWrapper 可以在不创建实体对象的情况下，直接设置更新字段和条件。</font>
+ **<font style="color:rgb(53, 56, 65);">LambdaQueryWrapper</font>**<font style="color:rgb(53, 56, 65);">：这是一个基于 Lambda 表达式的查询条件构造器，它通过 Lambda 表达式来引用实体类的属性，从而避免了硬编码字段名。这种方式提高了代码的可读性和可维护性，尤其是在字段名可能发生变化的情况下。</font>
+ **<font style="color:rgb(53, 56, 65);">LambdaUpdateWrapper</font>**<font style="color:rgb(53, 56, 65);">：类似于 LambdaQueryWrapper，LambdaUpdateWrapper 是基于 Lambda 表达式的更新条件构造器。它允许你使用 Lambda 表达式来指定更新字段和条件，同样避免了硬编码字段名的问题</font>

<font style="color:rgb(53, 56, 65);">MyBatis-Plus 的 Wrapper 类是构建复杂查询和更新条件的关键工具。它允许开发者以链式调用的方式构造 SQL 的 WHERE 子句，提供了极大的灵活性和便利性。</font>

```java
package com.jie;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jie.mapper.UserMapper;
import com.jie.pojo.User;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;
import java.util.Map;

@SpringBootTest
public class WrapperTest {
    @Autowired  // 继承了BaseMapper所有的方法，也可以自己编写方法
    private UserMapper userMapper;

    @Test
    void test1() {
        // 查询name不为空，且邮箱不为空，年龄大于等于12的用户
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.isNotNull("name")
        .isNotNull("email")
        .ge("age", 18);
        userMapper.selectList(wrapper);
    }

    @Test
    void test2() {
        // 查询名字为Tom的用户
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.eq("name","Tom");
        User user = userMapper.selectOne(wrapper); // 查询一个数据（selectOne）  出现多个借用用list或者map
        System.out.println(user);
    }

    @Test
    void test3() {
        // 查询年龄在20到30之间的用户
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.between("age",20,30);
        Long l = userMapper.selectCount(wrapper);
        System.out.println(l);
    }

    @Test
    void test4() {
        // 模糊查询
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.notLike("name","o")
        .likeRight("email","t");
        List<Map<String, Object>> maps = userMapper.selectMaps(wrapper);
        maps.forEach(System.out::println);
    }

    @Test
    void test5() {
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        // id 在子查询中查出来
        wrapper.inSql("id", "select id from users where id < 3");
        List<Object> objects = userMapper.selectObjs(wrapper);
        objects.forEach(System.out::println);
    }

    @Test
    void test6() {
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        //通过id进行排序
        wrapper.orderByDesc("id");
        List<User> users = userMapper.selectObjs(wrapper);
        users.forEach(System.out::println);
    }
}
```



# 代码自动生成器', 0, NOW());

INSERT INTO `note` (`id`, `author_id`, `title`, `content`, `like_count`, `created_at`)
VALUES (3, 1001, 'Redis', '# <font style="color:rgb(15, 17, 21);">Redis 概述、</font>
## 概述
<font style="color:rgb(15, 17, 21);"> Redis 是一个开源的、基于内存的键值对存储数据库，被誉为“数据结构服务器”。它以</font>**<font style="color:rgb(15, 17, 21);">极高的性能</font>**<font style="color:rgb(15, 17, 21);">著称，读写速度可达每秒10万次以上，主要用于解决高并发场景下数据库的访问瓶颈问题。</font>

<font style="color:rgb(15, 17, 21);">与只支持简单字符串的缓存工具不同，Redis 提供了</font>**<font style="color:rgb(15, 17, 21);">丰富的数据结构</font>**<font style="color:rgb(15, 17, 21);">（如字符串、哈希、列表、集合、有序集合等），可以直接实现排行榜、社交关系、消息队列等复杂功能。同时，它还支持</font>**<font style="color:rgb(15, 17, 21);">数据持久化</font>**<font style="color:rgb(15, 17, 21);">（重启不丢失）、</font>**<font style="color:rgb(15, 17, 21);">分布式锁</font>**<font style="color:rgb(15, 17, 21);">、</font>**<font style="color:rgb(15, 17, 21);">主从复制</font>**<font style="color:rgb(15, 17, 21);">和</font>**<font style="color:rgb(15, 17, 21);">集群</font>**<font style="color:rgb(15, 17, 21);">等高可用特性。</font>

<font style="color:rgb(15, 17, 21);">简单来说，Redis 是现代高并发、低延迟系统的“</font>**<font style="color:rgb(15, 17, 21);">性能加速器</font>**<font style="color:rgb(15, 17, 21);">”，几乎所有大型互联网项目都离不开它。</font>

## Linux安装
1. 下载安装包

```properties
https://download.redis.io/releases/
```

2. 将安装包移到 /opt/  中，解压缩

```properties
mv redis-8.6.4.tar.gz /opt
tar -v-zxvf redis-8.6.4.tar.gz
```

3. 下载 gcc-c++

```properties
yum install gcc-c++
make
make install
```

4. 修改配置文件

```properties
cd /usr/local/bin
mkdir config
mv redis.conf config/
cd /config
vim redis.conf

daemonize yes

```

5. 启动Redis服务

```properties
cd /usr/local/bin
redis-server config/redis.conf
```

6. 链接redis

```properties
redis-cli -p 6379
```

<img src="https://cdn.nlark.com/yuque/0/2026/png/54050922/1780733409646-33f9dd5c-6fb2-4c9f-a43e-52ee930a4631.png" width="557.6" title="" crop="0,0,1,1" id="u580fc5dd" class="ne-image">

7. 查看进程

<img src="https://cdn.nlark.com/yuque/0/2026/png/54050922/1780733587215-d4e9d144-d5ce-46a8-bf1b-2a45e1b8b5ea.png" width="640.8" title="" crop="0,0,1,1" id="u6693e831" class="ne-image">

8. 关闭退出

<img src="https://cdn.nlark.com/yuque/0/2026/png/54050922/1780733562576-ce71d22b-facb-4026-b12a-b8b96a874af3.png" width="522.4" title="" crop="0,0,1,1" id="uef64c5c8" class="ne-image">

## redis-benchmark 性能测试工具
1. 参数说明

| <font style="color:rgb(15, 17, 21);">参数</font> | <font style="color:rgb(15, 17, 21);">说明</font> | <font style="color:rgb(15, 17, 21);">默认值</font> |
| --- | --- | --- |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-h</font>` | <font style="color:rgb(15, 17, 21);">服务器 IP 或域名</font> | <font style="color:rgb(15, 17, 21);">127.0.0.1</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-p</font>` | <font style="color:rgb(15, 17, 21);">服务器端口</font> | <font style="color:rgb(15, 17, 21);">6379</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-a</font>` | <font style="color:rgb(15, 17, 21);">连接密码</font> | <font style="color:rgb(15, 17, 21);">无</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-c</font>` | <font style="color:rgb(15, 17, 21);">并发连接数（模拟多少个客户端）</font> | <font style="color:rgb(15, 17, 21);">50</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-n</font>` | <font style="color:rgb(15, 17, 21);">总请求数量</font> | <font style="color:rgb(15, 17, 21);">100000</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-d</font>` | <font style="color:rgb(15, 17, 21);">SET/GET 的数据大小（字节）</font> | <font style="color:rgb(15, 17, 21);">3</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-t</font>` | <font style="color:rgb(15, 17, 21);">指定测试的命令集，如</font><font style="color:rgb(15, 17, 21);"> </font>`<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-t set,get,lpush</font>` | <font style="color:rgb(15, 17, 21);">测试所有命令</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-r</font>` | <font style="color:rgb(15, 17, 21);">使用随机 key（避免热点 key 影响测试结果）</font> | <font style="color:rgb(15, 17, 21);">固定 key</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-P</font>` | <font style="color:rgb(15, 17, 21);">管道（pipeline）请求数</font> | <font style="color:rgb(15, 17, 21);">1（无管道）</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-q</font>` | <font style="color:rgb(15, 17, 21);">安静模式，只显示 QPS 值</font> | <font style="color:rgb(15, 17, 21);">显示详细结果</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-l</font>` | <font style="color:rgb(15, 17, 21);">循环测试，永不停机</font> | <font style="color:rgb(15, 17, 21);">只跑一轮</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">--csv</font>` | <font style="color:rgb(15, 17, 21);">以 CSV 格式输出</font> | <font style="color:rgb(15, 17, 21);">普通文本</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">--threads</font>` | <font style="color:rgb(15, 17, 21);">多线程模式（Redis 6.0+ 编译的版本支持）</font> | <font style="color:rgb(15, 17, 21);">单线程</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">--cluster</font>` | <font style="color:rgb(15, 17, 21);">集群模式（测试 Redis Cluster 时需加此参数）</font> | <font style="color:rgb(15, 17, 21);">单机模式</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-e</font>` | <font style="color:rgb(15, 17, 21);">显示 Redis 返回的错误信息</font> | <font style="color:rgb(15, 17, 21);">不显示</font> |


2. <font style="color:rgb(15, 17, 21);">测试 SET 和 GET 的性能</font>

```properties
redis-benchmark -t set,get -n 1000000 -c 200
```

3. <font style="color:rgb(15, 17, 21);">模拟真实场景（大 Value、随机 Key）</font>

```properties
redis-benchmark -t set -n 5000000 -c 500 -d 256 -r 1000000
```

| <font style="color:rgb(15, 17, 21);">参数</font> | <font style="color:rgb(15, 17, 21);">含义</font> | <font style="color:rgb(15, 17, 21);">说明</font> |
| --- | --- | --- |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-c 500</font>` | <font style="color:rgb(15, 17, 21);">500 个并发连接</font> | <font style="color:rgb(15, 17, 21);">模拟高并发场景</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-n 5000000</font>` | <font style="color:rgb(15, 17, 21);">500 万次请求</font> | <font style="color:rgb(15, 17, 21);">测试长时间稳定性</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-d 256</font>` | <font style="color:rgb(15, 17, 21);">每个 Value 256 字节</font> | <font style="color:rgb(15, 17, 21);">模拟存储较大数据</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-r 1000000</font>` | <font style="color:rgb(15, 17, 21);">100 万个随机 key</font> | <font style="color:rgb(15, 17, 21);">key 范围 </font>`<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">mykey_000000000000</font>`<font style="color:rgb(15, 17, 21);">到 </font>`<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">mykey_000000999999</font>` |


# 数据类型
## 一、全局键命令（通用）
这些命令适用于所有数据类型：

| 命令 | 作用 | 示例 |
| :--- | :--- | :--- |
| `SET key value` | 设置键值对 | `SET name "John"` |
| `GET key` | 获取键的值 | `GET name` |
| `DEL key [key...]` | 删除一个或多个键 | `DEL name` |
| `EXISTS key` | 检查键是否存在（返回1/0） | `EXISTS name` |
| `EXPIRE key seconds` | 设置过期时间（秒） | `EXPIRE session 3600` |
| `TTL key` | 查看剩余过期时间（-1永久，-2不存在） | `TTL session` |
| `PERSIST key` | 移除过期时间，使其永久 | `PERSIST session` |
| `KEYS pattern` | 查找匹配的键（**生产环境慎用，会阻塞**） | `KEYS user:*` |
| `SCAN cursor` | 增量迭代键（替代KEYS，无阻塞） | `SCAN 0 MATCH user:*` |
| `TYPE key` | 查看键的数据类型 | `TYPE name` |
| `RENAME old new` | 重命名键 | `RENAME name username` |


**⛔**** 特别警告**：`KEYS` 命令会扫描整个数据库，在生产环境（几百万key）中执行会阻塞Redis数秒甚至更久，导致服务不可用。请使用 `SCAN` 代替。

---

## 二、五大核心数据类型
#### 1. 字符串（String）
最基础的类型，适合缓存、计数器、分布式锁。

| 命令 | 作用 | 示例 |
| :--- | :--- | :--- |
| `SET key value [EX seconds] [NX/XX]` | 设置值（支持过期时间、仅不存在时设置） | `SET user:1 "Alice" EX 60 NX` |
| `GET key` | 获取值 | `GET user:1` |
| `MSET k1 v1 k2 v2` | 批量设置 | `MSET a 1 b 2 c 3` |
| `MGET k1 k2` | 批量获取 | `MGET a b` |
| `INCR key` | 原子+1 | `INCR page_view` |
| `DECR key` | 原子-1 | `DECR stock` |
| `INCRBY key n` | 原子+n | `INCRBY score 10` |
| `APPEND key value` | 追加字符串 | `APPEND log " new line"` |
| `STRLEN key` | 获取字符串长度 | `STRLEN name` |
| GETRANGE key a b | 截取字符串 [a, b] | GETRANGE key1 0 3 |
| GETRANGE key 0 -1 | 截取全部字符串 | GETRANGE key1 0 -1 |


**应用场景**：

+ 缓存用户信息、页面HTML
+ 文章阅读量、点赞数计数器
+ 分布式锁（`SET key value NX EX 30`）

---

#### 2. 哈希（Hash）
适合存储对象（如用户信息、商品详情）。

| 命令 | 作用 | 示例 |
| :--- | :--- | :--- |
| `HSET key field value` | 设置字段值 | `HSET user:100 name "Bob" age 25` |
| `HGET key field` | 获取字段值 | `HGET user:100 name` |
| `HMSET key field val [field val...]` | 批量设置 | `HMSET user:100 name "Bob" age 25` |
| `HMGET key field [field...]` | 批量获取 | `HMGET user:100 name age` |
| `HGETALL key` | 获取所有字段和值 | `HGETALL user:100` |
| `HKEYS key` | 获取所有字段名 | `HKEYS user:100` |
| `HVALS key` | 获取所有值 | `HVALS user:100` |
| `HDEL key field [field...]` | 删除字段 | `HDEL user:100 age` |
| `HEXISTS key field` | 判断字段是否存在 | `HEXISTS user:100 name` |
| `HINCRBY key field n` | 字段值增加n | `HINCRBY user:100 score 10` |
| `HLEN key` | 获取字段数量 | `HLEN user:100` |


**应用场景**：

+ 存储用户资料、商品详情（比String节省内存，支持字段级操作）

---

#### 3. 列表（List）
有序可重复，适合消息队列、最新消息列表。

| 命令 | 作用 | 示例 |
| :--- | :--- | :--- |
| `LPUSH key value [value...]` | 左侧插入（头部） | `LPUSH queue "task1" "task2"` |
| `RPUSH key value [value...]` | 右侧插入（尾部） | `RPUSH queue "task3"` |
| `LPOP key` | 左侧弹出并移除 | `LPOP queue` |
| `RPOP key` | 右侧弹出并移除 | `RPOP queue` |
| `LRANGE key start stop` | 获取指定范围元素（0开始，-1结尾） | `LRANGE queue 0 -1` |
| `LLEN key` | 获取列表长度 | `LLEN queue` |
| `LINDEX key index` | 获取指定索引元素 | `LINDEX queue 0` |
| `LTRIM key start stop` | 截取保留指定范围 | `LTRIM queue 0 99`（保留前100条） |
| `BLPOP key timeout` | 阻塞式左侧弹出 | `BLPOP queue 10`（等待10秒） |
| `BRPOP key timeout` | 阻塞式右侧弹出 | `BRPOP queue 10` |


**应用场景**：

+ 队列/栈结构（LPUSH+RPOP=队列，LPUSH+LPOP=栈）
+ 最新消息时间线（如微博最新10条）
+ 阻塞队列（BLPOP实现生产者-消费者模式）

---

#### 4. 集合（Set）
无序且元素唯一，适合标签系统、共同好友、抽奖。

| 命令 | 作用 | 示例 |
| :--- | :--- | :--- |
| `SADD key member [member...]` | 添加元素 | `SADD tags "redis" "db"` |
| `SREM key member [member...]` | 删除元素 | `SREM tags "db"` |
| `SMEMBERS key` | 获取所有元素（大集合慎用） | `SMEMBERS tags` |
| `SISMEMBER key member` | 判断是否存在 | `SISMEMBER tags "redis"` |
| `SCARD key` | 获取元素个数 | `SCARD tags` |
| `SPOP key [count]` | 随机弹出并移除 | `SPOP lottery 1`（抽奖） |
| `SRANDMEMBER key [count]` | 随机获取（不移除） | `SRANDMEMBER lottery 1` |
| `SINTER key1 key2` | 交集 | `SINTER setA setB`（共同好友） |
| `SUNION key1 key2` | 并集 | `SUNION setA setB` |
| `SDIFF key1 key2` | 差集（key1有而key2没有的） | `SDIFF setA setB` |


**应用场景**：

+ 用户标签系统
+ 共同好友/可能认识的人（交集）
+ 抽奖/随机推荐（SPOP）

---

#### 5. 有序集合（ZSet）
带分数的有序集合，适合排行榜、优先队列。

| 命令 | 作用 | 示例 |
| :--- | :--- | :--- |
| `ZADD key score member [score member...]` | 添加元素及分数 | `ZADD rank 100 "Alice" 90 "Bob"` |
| `ZREM key member [member...]` | 删除元素 | `ZREM rank "Bob"` |
| `ZRANGE key start stop [WITHSCORES]` | 按分数升序获取 | `ZRANGE rank 0 -1 WITHSCORES` |
| `ZREVRANGE key start stop [WITHSCORES]` | 按分数降序获取 | `ZREVRANGE rank 0 9`（前10名） |
| `ZRANGEBYSCORE key min max` | 按分数范围获取 | `ZRANGEBYSCORE rank 80 100` |
| `ZRANK key member` | 获取升序排名（0开始） | `ZRANK rank "Alice"` |
| `ZREVRANK key member` | 获取降序排名 | `ZREVRANK rank "Alice"` |
| `ZSCORE key member` | 获取元素分数 | `ZSCORE rank "Alice"` |
| `ZINCRBY key n member` | 增加元素分数 | `ZINCRBY rank 10 "Alice"` |
| `ZCARD key` | 获取元素个数 | `ZCARD rank` |
| `ZCOUNT key min max` | 统计分数范围内个数 | `ZCOUNT rank 60 100` |


**应用场景**：

+ 游戏排行榜（ZREVRANGE取前N名）
+ 优先级任务队列
+ 带权重的推荐系统

---

## 三、实用管理命令
| 命令 | 作用 | 示例 |
| :--- | :--- | :--- |
| `PING` | 测试连接，返回PONG | `PING` |
| `SELECT db` | 切换数据库（0-15） | `SELECT 1` |
| `DBSIZE` | 查看当前库key数量 | `DBSIZE` |
| `FLUSHDB` | 清空当前库（**慎用**） | `FLUSHDB` |
| `FLUSHALL` | 清空所有库（**极度慎用**） | `FLUSHALL` |
| `INFO [section]` | 查看服务器信息 | `INFO memory` |
| `CONFIG GET param` | 获取配置参数 | `CONFIG GET maxmemory` |
| `CONFIG SET param value` | 动态修改配置 | `CONFIG SET maxmemory 2gb` |
| `SLOWLOG GET n` | 查看慢查询日志 | `SLOWLOG GET 10` |
| `MONITOR` | 实时监控所有命令（调试用，影响性能） | `MONITOR` |


## 四、快速记忆卡
| 想要什么 | 用什么命令 |
| :--- | :--- |
| 存一个值 | `SET key value` |
| 取一个值 | `GET key` |
| 存对象 | `HSET user:1 name "John"` |
| 列表头插 | `LPUSH queue item` |
| 列表尾弹 | `RPOP queue` |
| 存不重复值 | `SADD tags "redis"` |
| 交集（共同好友） | `SINTER set1 set2` |
| 排行榜前10 | `ZREVRANGE rank 0 9` |
| 计数器+1 | `INCR page_view` |
| 设置30秒过期 | `SET key value EX 30` |
| 测试连接 | `PING` |


# 特殊数据类型
## 一、GEO（地理位置）
存储地理位置（经纬度），实现**附近的人**、**距离计算**、**门店搜索**等 LBS（基于位置的服务）功能。

### 底层实现
基于 ZSet（有序集合），将经纬度编码为 GeoHash 字符串作为 score。

### 核心命令
| 命令 | 语法 | 作用 | 示例 |
| :--- | :--- | :--- | :--- |
| `GEOADD` | `GEOADD key longitude latitude member [longitude latitude member ...]` | 添加一个或多个地理位置 | `GEOADD cities 116.397128 39.916527 beijing` |
| `GEOPOS` | `GEOPOS key member [member ...]` | 获取指定位置的经纬度 | `GEOPOS cities beijing` |
| `GEODIST` | `GEODIST key member1 member2 [单位]` | 计算两点之间的距离 | `GEODIST cities beijing shanghai km` |
| `GEORADIUS` | `GEORADIUS key longitude latitude radius 单位 [WITHDIST] [WITHCOORD] [COUNT n]` | 根据给定经纬度半径查询 | `GEORADIUS cities 116.40 39.90 100 km WITHDIST` |
| `GEORADIUSBYMEMBER` | `GEORADIUSBYMEMBER key member radius 单位 [WITHDIST] [WITHCOORD] [COUNT n]` | 以指定成员为中心半径查询 | `GEORADIUSBYMEMBER cities beijing 200 km` |
| `GEOHASH` | `GEOHASH key member [member ...]` | 返回 GeoHash 字符串（可用于 URL 分享） | `GEOHASH cities beijing` |


**单位**：`m`（米）、`km`（千米）、`mi`（英里）、`ft`（英尺）

### 使用示例
```bash
# 1. 添加多个城市坐标
GEOADD cities 116.397128 39.916527 beijing 121.473701 31.230416 shanghai

# 2. 计算北京到上海的距离（公里）
GEODIST cities beijing shanghai km
# 输出: "1067.1234"

# 3. 查询北京周围200公里内的城市（带距离）
GEORADIUSBYMEMBER cities beijing 200 km WITHDIST
# 输出: 1) beijing (0.0000 km)

# 4. 根据经纬度查询附近100km的位置
GEORADIUS cities 116.40 39.90 100 km WITHCOORD
```

### 实际应用场景
+ 滴滴打车：查找附近3公里的司机
+ 美团/大众点评：查找附近500米的餐厅
+ 微信/陌陌：查找附近的人
+ 高德地图：计算两地驾车距离

---

## 二、Bitmap（位图）
以**位（bit）**为单位存储二值状态（0/1），适合**海量数据的布尔型统计**，如用户签到、在线状态、布隆过滤器。

### 底层实现
本质是 String 类型，但按位操作。1字节=8位，1亿位仅需约 **12MB** 内存。

### 核心命令
| 命令 | 语法 | 作用 | 示例 |
| :--- | :--- | :--- | :--- |
| `SETBIT` | `SETBIT key offset value` | 设置指定偏移量上的位值（0或1） | `SETBIT sign:202501 1000 1` |
| `GETBIT` | `GETBIT key offset` | 获取指定偏移量上的位值 | `GETBIT sign:202501 1000` |
| `BITCOUNT` | `BITCOUNT key [start end]` | 统计值为1的位数（统计数量） | `BITCOUNT sign:202501` |
| `BITOP` | `BITOP operation destkey key [key ...]` | 对多个位图执行位运算（AND/OR/XOR/NOT） | `BITOP AND dest key1 key2` |
| `BITPOS` | `BITPOS key bit [start end]` | 查找第一个指定位值的位置 | `BITPOS sign:202501 1` |
| `BITFIELD` | `BITFIELD key [GET type offset] [SET type offset value]` | 原子操作多个位域 | `BITFIELD stats:user GET u32 0` |


### 使用示例
```bash
# 场景1：用户签到系统（用户ID=1000，第30天签到）
SETBIT sign:2025-01 30 1

# 查询用户ID=1000 第30天是否签到
GETBIT sign:2025-01 30
# 输出: 1

# 统计2025年1月所有用户签到总次数
BITCOUNT sign:2025-01

# 场景2：用户在线状态（用户ID=1000 在线）
SETBIT online:20250101 1000 1

# 统计在线人数
BITCOUNT online:20250101
```

### 实际应用场景
+ **连续签到统计**：记录用户每日签到状态
+ **活跃用户统计**：日活（DAU）、月活（MAU）
+ **用户在线状态**：实时显示在线/离线
+ **布隆过滤器**：解决缓存穿透问题
+ **游戏成就系统**：记录用户解锁哪些成就

### 内存估算
| 数据量 | 占用的内存 |
| :--- | :--- |
| 100万用户 | 约 0.12 MB |
| 1亿用户 | 约 12 MB |
| 10亿用户 | 约 120 MB |


---

## 三、HyperLogLog（基数统计）
计算**不重复元素的大概数量**（基数），典型场景是统计**UV（独立访客）**。最大优势：计算约 2^64 个元素的基数只需 **12KB 内存**。

### 特点
+ ✅ **极省内存**：12KB 固定内存
+ ✅ **自动去重**：自动统计不重复元素
+ ⚠️ **有误差**：标准误差约 **0.81%**（用精度换空间）
+ ❌ **不能取回元素**：只能统计数量，不能获取具体元素

### 核心命令
| 命令 | 语法 | 作用 | 示例 |
| :--- | :--- | :--- | :--- |
| `PFADD` | `PFADD key element [element ...]` | 添加一个或多个元素 | `PFADD uv:20250101 user_123` |
| `PFCOUNT` | `PFCOUNT key [key ...]` | 获取去重后的基数估算值 | `PFCOUNT uv:20250101` |
| `PFMERGE` | `PFMERGE destkey sourcekey [sourcekey ...]` | 合并多个 HyperLogLog | `PFMERGE uv:week uv:day1 uv:day2` |


### 使用示例
```bash
# 场景1：统计网页UV（独立访客）
# 用户 user_1001 访问首页
PFADD page:home:20250101 user_1001

# 用户 user_1002 访问首页
PFADD page:home:20250101 user_1002

# 用户 user_1001 再次访问（重复访问不计）
PFADD page:home:20250101 user_1001

# 统计今日 UV
PFCOUNT page:home:20250101
# 输出: 2

# 场景2：统计周活（合并7天数据）
PFADD week1_uv user1 user2 user3
PFADD week2_uv user2 user3 user4
PFMERGE total_uv week1_uv week2_uv
PFCOUNT total_uv
# 输出: 4（去重后的数量：user1,user2,user3,user4）
```

### 实际应用场景
+ **网站 UV 统计**（替代 Set，节省内存）
+ **搜索关键词去重统计**
+ **IP 独立访客数**
+ **注册设备数统计**
+ **帖子独立浏览人数**

### 对比 Set
| 对比项 | Set | HyperLogLog |
| :--- | :--- | :--- |
| 内存占用 | 随元素数量线性增长 | 固定 12KB |
| 精确度 | 100% 精确 | 约 99.19%（0.81% 误差） |
| 能否取回元素 | 能 | 不能 |
| 适用数据量 | 百万级以下 | 亿级以上 |


---

## 四、Stream（消息队列）
### 📌 用途
实现**持久化、可靠的消息队列**（Redis 5.0 引入），解决了 List 和 Pub/Sub 的缺陷：

+ **List 作为队列**：不支持 ACK（消息确认），消费者崩溃会导致消息丢失
+ **Pub/Sub**：消息不持久化，消费者离线后消息直接丢弃

### 核心特性
+ ✅ **消息持久化**：消息存储在内存（可选 RDB/AOF 持久化）
+ ✅ **消费组**：支持多个消费者分工消费
+ ✅ **ACK 机制**：保证消息至少被消费一次
+ ✅ **消息回溯**：支持重新消费历史消息

### 核心命令
| 命令 | 语法 | 作用 | 示例 |
| :--- | :--- | :--- | :--- |
| `XADD` | `XADD key [MAXLEN ~ count] ID field value [field value ...]` | 添加消息到队列（自动生成ID） | `XADD mystream * user "John" age 30` |
| `XREAD` | `XREAD [COUNT n] [BLOCK ms] STREAMS key [key ...] id [id ...]` | 读取消息（可阻塞） | `XREAD COUNT 1 STREAMS mystream 0` |
| `XGROUP` | `XGROUP CREATE key groupname id [MKSTREAM]` | 创建消费组 | `XGROUP CREATE mystream mygroup 0` |
| `XREADGROUP` | `XREADGROUP GROUP group consumer [COUNT n] [BLOCK ms] STREAMS key [key ...] id [id ...]` | 消费组读取消息 | `XREADGROUP GROUP mygroup consumer1 STREAMS mystream >` |
| `XACK` | `XACK key group id [id ...]` | 确认消息已被处理 | `XACK mystream mygroup 123456-0` |
| `XPENDING` | `XPENDING key group [start end count] [consumer]` | 查看待确认的消息 | `XPENDING mystream mygroup` |
| `XCLAIM` | `XCLAIM key group consumer min-idle-time id [id ...]` | 转移未ACK的消息给其他消费者 | `XCLAIM mystream mygroup consumer2 3600000 123456-0` |
| `XDEL` | `XDEL key id [id ...]` | 删除消息 | `XDEL mystream 123456-0` |
| `XLEN` | `XLEN key` | 获取消息队列长度 | `XLEN mystream` |
| `XRANGE` | `XRANGE key start end [COUNT n]` | 按ID范围获取消息 | `XRANGE mystream - + COUNT 10` |


### 使用示例（消息队列完整流程）
```bash
# 1. 生产者：添加消息（* 表示自动生成ID）
XADD orders * user_id 1001 product "iPhone" price 5999
# 返回: "1736234567890-0"

# 2. 消费者1：创建消费组（从消息头开始消费）
XGROUP CREATE orders mygroup 0 MKSTREAM

# 3. 消费者1：消费消息（> 表示读取未消费的消息）
XREADGROUP GROUP mygroup consumer1 COUNT 1 STREAMS orders >
# 返回消息内容

# 4. 消费者1：处理完消息后确认
XACK orders mygroup 1736234567890-0

# 5. 查看待确认的消息（故障恢复）
XPENDING orders mygroup
```

### 实际应用场景
+ **订单处理系统**：可靠地处理订单消息
+ **日志收集系统**：持久化存储日志
+ **实时通知推送**：消息可靠投递
+ **异步任务队列**：耗时的后台任务
+ **事件溯源**：存储事件流

---

## 五、Bitfield（位域）
### 📌 用途
在 Redis 字符串中**原子操作多个位字段**，适合存储大量小整数（如用户的多项二进制属性、游戏存档数据）。

### 核心命令
| 命令 | 语法 | 作用 | 示例 |
| :--- | :--- | :--- | :--- |
| `BITFIELD` | `BITFIELD key [GET type offset] [SET type offset value] [INCRBY type offset increment] [OVERFLOW WRAP/SAT/FAIL]` | 原子操作多个位域 | `BITFIELD stats:user GET u32 0 SET u32 0 100` |


**类型格式**：`i8`（有符号8位）、`u16`（无符号16位）、`i32`等

### 使用示例
```bash
# 场景：用1个key存储用户的多项属性
# offset 0-7: 等级 (u8, 范围0-255)
# offset 8-15: 经验值 (u8)
# offset 16-23: 装备ID (u8)

# 设置等级=10
BITFIELD user:1001 SET u8 0 10

# 设置经验值=50
BITFIELD user:1001 SET u8 8 50

# 一次性获取多个属性
BITFIELD user:1001 GET u8 0 GET u8 8
# 输出: 10, 50

# 原子增加等级（溢出后环绕）
BITFIELD user:1001 OVERFLOW WRAP INCRBY u8 0 1
```

### 实际应用场景
+ **游戏存档**：存储等级、经验值、装备ID等小整数
+ **用户属性位图**：存储多项开关状态
+ **紧凑存储**：节省内存（比 Hash 更省内存）

---

## 📊 快速选择指南
| 需求场景 | 选择的数据类型 | 理由 |
| :--- | :--- | :--- |
| **附近的人/门店** | **GEO** | 原生支持地理坐标和距离计算 |
| **用户签到/在线状态** | **Bitmap** | 极省内存，适合海量二值状态 |
| **统计 UV（独立访客）** | **HyperLogLog** | 固定12KB内存，允许0.81%误差 |
| **精准 UV 统计** | **Set** | 100% 精确，但内存随数据量增长 |
| **可靠消息队列** | **Stream** | 支持持久化、ACK、消费组 |
| **存储多项小整数** | **Bitfield** | 原子操作，节省内存 |


---

## 💡 实用技巧
1. **GEO 底层是 ZSet**：可以用 ZSet 的命令操作 GEO 数据（如 `ZREM` 删除位置）
2. **Bitmap 按月分 key**：`sign:2025-01`、`sign:2025-02` 方便清理过期数据
3. **HyperLogLog 合并**：用 `PFMERGE` 合并多天数据统计周活/月活
4. **Stream 消息ID**：用 `*` 让 Redis 自动生成时间戳ID（毫秒级），支持按时间范围查询
5. **Stream 消费组**：多个消费者用同一个 group 名，自动负载均衡

---

**你想深入了解哪个特殊数据类型的具体实现，或者有特定的业务场景需要设计吗？** 我可以提供更详细的代码示例和优化建议。

# Redis 事务
## 一、事务概述
### 什么是 Redis 事务？
Redis 事务允许**一次性、按顺序执行多个命令**，并且具有以下特点：

+ ✅ **一次性执行**：事务中的所有命令会按顺序执行
+ ✅ **隔离性**：事务执行过程中，不会被其他客户端的命令打断
+ ✅ **原子性（部分支持）**：Redis 的事务原子性与传统数据库不同

### 与 MySQL 事务的区别
| 特性 | MySQL 事务 | Redis 事务 |
| :--- | :--- | :--- |
| **原子性** | 要么全成功，要么全回滚 | **不支持回滚**，一个命令失败，其他继续执行 |
| **隔离性** | 多级隔离级别 | 单线程执行，天然隔离 |
| **持久性** | 支持 | 取决于持久化配置 |
| **回滚** | 支持 | **不支持** |


> ⚠️ **重要**：Redis 事务的"原子性"是指事务中的命令**不会被其他客户端的命令打断**，而不是传统意义上的"要么全做，要么全不做"。
>

## 二、事务三大命令
| 命令 | 作用 | 说明 |
| :--- | :--- | :--- |
| **MULTI** | 开启事务 | 标记事务块的开始，后续命令会入队而不立即执行 |
| **EXEC** | 执行事务 | 执行事务块中的所有命令 |
| **DISCARD** | 取消事务 | 放弃事务，清空命令队列 |


### 辅助命令
| 命令 | 作用 | 说明 |
| :--- | :--- | :--- |
| **WATCH** | 监视一个或多个 key | 乐观锁，如果被监视的 key 被修改，事务将被打断 |
| **UNWATCH** | 取消监视 | 清除所有监视的 key |


## 三、事务工作流程
```plain
┌─────────┐     ┌─────────┐     ┌─────────┐     ┌─────────┐
│  MULTI  │ ──▶ │  命令1  │ ──▶ │  命令2  │ ──▶ │  EXEC   │
└─────────┘     └─────────┘     └─────────┘     └─────────┘
    │               │               │               │
    │          命令入队          命令入队        批量执行
    │         (QUEUED)          (QUEUED)        (一次性)
```

## 四、基本使用示例
### 1. 成功的事务
```bash
# 开启事务
127.0.0.1:6379> MULTI
OK

# 命令入队
127.0.0.1:6379(TX)> SET user:1001 name "张三"
QUEUED

127.0.0.1:6379(TX)> SET user:1001 age 25
QUEUED

127.0.0.1:6379(TX)> INCR user:1001 age
QUEUED

# 执行事务
127.0.0.1:6379(TX)> EXEC
1) OK
2) OK
3) (integer) 26

# 验证结果
127.0.0.1:6379> GET user:1001:age
"26"
```

### 2. 取消事务
```bash
127.0.0.1:6379> MULTI
OK

127.0.0.1:6379(TX)> SET order:001 status "pending"
QUEUED

127.0.0.1:6379(TX)> SET order:001 amount 100
QUEUED

# 取消事务（放弃所有排队命令）
127.0.0.1:6379(TX)> DISCARD
OK

# 验证：key 没有被创建
127.0.0.1:6379> EXISTS order:001
(integer) 0
```

### 3. 语法错误（命令错误）
```bash
127.0.0.1:6379> MULTI
OK

127.0.0.1:6379(TX)> SET name "Alice"
QUEUED

# 错误的命令名
127.0.0.1:6379(TX)> SETT name "Bob"
(error) ERR unknown command ''SETT''

127.0.0.1:6379(TX)> GET name
QUEUED

# 执行 EXEC 会报错，事务被拒绝执行
127.0.0.1:6379(TX)> EXEC
(error) EXECABORT Transaction discarded because of previous errors.
```

> 📌 **结论**：如果事务中有**语法错误**，整个事务会被拒绝执行。
>

### 4. 运行时错误（逻辑错误）
```bash
127.0.0.1:6379> MULTI
OK

127.0.0.1:6379(TX)> SET score 100
QUEUED

# 对字符串类型进行 INCR（运行时错误）
127.0.0.1:6379(TX)> INCR score
QUEUED

127.0.0.1:6379(TX)> GET score
QUEUED

# 执行事务
127.0.0.1:6379(TX)> EXEC
1) OK
2) (error) ERR value is not an integer or out of range
3) "100"                    # 👈 注意：错误不影响后续命令执行！

# 验证结果
127.0.0.1:6379> GET score
"100"                       # SET 成功，INCR 失败
```

> ⚠️ **关键点**：运行时错误**不会导致事务回滚**，其他命令仍然正常执行！
>

### 5. 事务中的读操作
```bash
127.0.0.1:6379> SET count 10
OK

127.0.0.1:6379> MULTI
OK

127.0.0.1:6379(TX)> GET count
QUEUED

127.0.0.1:6379(TX)> INCR count
QUEUED

127.0.0.1:6379(TX)> GET count
QUEUED

127.0.0.1:6379(TX)> EXEC
1) "10"      # 执行前的值
2) (integer) 11
3) "11"      # 执行后的值
```

## 五、WATCH 乐观锁
### 原理
`WATCH` 命令用于实现**乐观锁**，监视一个或多个 key：

+ 如果在 `WATCH` 之后、`EXEC` 之前，被监视的 key 被**其他客户端修改**，那么 `EXEC` 会返回 `(nil)`，事务**失败**
+ 适用于解决**竞态条件**

### 使用模式
```plain
WATCH key
    ↓
读取 key 的值
    ↓
根据值做业务判断
    ↓
MULTI
    ↓
执行相关命令
    ↓
EXEC
    ↓
检查 EXEC 返回值
```

### 示例1：防止超卖（库存扣减）
```bash
# 场景：商品库存为 10，防止并发超卖

# 客户端 A
127.0.0.1:6379> WATCH stock:iphone      # 监视库存 key
OK
127.0.0.1:6379> GET stock:iphone         # 读取当前库存
"10"
127.0.0.1:6379> MULTI
OK
127.0.0.1:6379(TX)> DECR stock:iphone    # 扣减库存
QUEUED
127.0.0.1:6379(TX)> EXEC
1) (integer) 9                           # 成功，库存变为 9

# 如果在 WATCH 和 EXEC 之间，其他客户端修改了 stock:iphone
# 则 EXEC 会返回 (nil)，事务失败
```

### 示例2：WATCH 失效场景
```bash
# 客户端 1
127.0.0.1:6379> SET balance 100
OK

127.0.0.1:6379> WATCH balance
OK

# 此时，客户端 2 修改了 balance
# 客户端 2
127.0.0.1:6379> SET balance 50
OK

# 客户端 1 继续执行事务
127.0.0.1:6379> MULTI
OK

127.0.0.1:6379(TX)> SET balance 200
QUEUED

127.0.0.1:6379(TX)> EXEC
(nil)                                    # 事务失败！

# 验证：balance 没有被修改成 200
127.0.0.1:6379> GET balance
"50"                                     # 还是客户端2设置的值
```

### 示例3：重试机制（Python 伪代码）
```python
def transfer_money(source, target, amount):
    while True:
        # 监视源账户
        redis.watch(source)
        
        # 读取当前余额
        balance = int(redis.get(source))
        
        if balance < amount:
            redis.unwatch()
            return False, "余额不足"
        
        # 开启事务
        redis.multi()
        redis.decrby(source, amount)
        redis.incrby(target, amount)
        
        # 执行事务
        result = redis.exec()
        
        if result is not None:
            # 事务成功
            return True, "转账成功"
        # 事务失败，重试
```

---

## 六、事务与 Pipeline 的区别
| 对比项 | 事务 (MULTI/EXEC) | Pipeline |
| :--- | :--- | :--- |
| **目的** | 保证命令序列的原子性执行 | 减少网络往返延迟 |
| **原子性** | 命令之间不会被其他客户端打断 | 不保证，可能被其他命令插入 |
| **回滚** | 不支持 | 不支持 |
| **返回结果** | 一次性返回所有结果 | 流式返回结果 |
| **使用场景** | 需要保证命令连续执行的场景 | 批量操作，关注性能的场景 |


### 示例：事务 vs Pipeline
```python
# 事务：命令不会被其他客户端打断
redis_client.multi()
redis_client.set("key1", "value1")
redis_client.set("key2", "value2")
redis_client.exec()

# Pipeline：只关注性能，不保证原子性
pipe = redis_client.pipeline()
pipe.set("key1", "value1")
pipe.set("key2", "value2")
pipe.execute()
```

> 💡 **提示**：事务和 Pipeline 可以结合使用（通过 Pipeline 发送 MULTI/EXEC），既能保证原子性，又能减少网络延迟。
>

---

## 七、事务失败与回滚说明
### Redis 为什么不支持回滚？
Redis 官方文档说明：

> Redis 命令只会因为**错误的语法**（在队列时检测不到）或**错误的数据类型**而失败，这些错误是编程错误，应该在开发阶段被发现。因此 Redis 内部更简单、更快速，不需要回滚功能。
>

### 事务失败场景总结
| 失败类型 | 发生时机 | 事务行为 |
| :--- | :--- | :--- |
| **语法错误** | 命令入队时检测到 | 整个事务被拒绝，EXEC 报错 |
| **运行时错误** | 命令执行时发生 | 该命令失败，其他命令继续执行 |
| **WATCH 冲突** | EXEC 执行前检测到 | 整个事务被放弃，EXEC 返回 nil |


---

## 八、最佳实践
### ✅ 推荐做法
1. **使用 WATCH 实现乐观锁**：解决并发冲突问题
2. **事务中避免依赖其他命令的结果**：因为所有命令在 EXEC 前只排队不执行
3. **合理设置事务大小**：避免过大事务导致长时间阻塞
4. **配合 Lua 脚本替代复杂事务**：Lua 脚本可以保证原子性，且支持逻辑判断

### ❌ 避免的做法
1. **不要期望回滚**：Redis 事务不支持回滚
2. **不要在事务中执行过多数量的命令**：会长时间阻塞 Redis
3. **不要依赖事务中的读操作做业务判断**：因为读操作的结果是排队时的快照，不是执行时的实际值

### 事务 vs Lua 脚本选择
| 场景 | 推荐方案 |
| :--- | :--- |
| 简单的命令序列执行 | **事务** |
| 需要条件判断（if/else） | **Lua 脚本** |
| 需要回滚逻辑 | **Lua 脚本** |
| 复杂业务逻辑 | **Lua 脚本** |
| 多个客户端的并发控制 | **WATCH + 事务** |


---

## 九、命令速查表
| 命令 | 作用 | 时间复杂度 |
| :--- | :--- | :--- |
| `MULTI` | 开启事务 | O(1) |
| `EXEC` | 执行事务中的所有命令 | 取决于命令数量 |
| `DISCARD` | 取消事务，清空队列 | O(1) |
| `WATCH key [key...]` | 监视一个或多个 key | O(N) |
| `UNWATCH` | 取消所有监视 | O(1) |


---

## 十、常见面试题
### Q1：Redis 事务支持回滚吗？
**A**：不支持。Redis 的设计哲学是"保持简单、快速"，认为命令失败通常是编程错误，应该在开发阶段解决，而不是在运行时回滚。

### Q2：WATCH 是如何实现的？
**A**：WATCH 会在 Redis 服务器端标记被监视的 key，当执行 EXEC 时，检查这些 key 是否被其他客户端修改过，如果被修改则拒绝执行事务。

### Q3：事务和 Lua 脚本有什么区别？
**A**：

+ 事务保证命令顺序执行不被打断，但不支持条件逻辑和回滚
+ Lua 脚本在 Redis 内部原子执行，支持复杂逻辑，功能更强大

### Q4：事务中可以使用 WATCH 监视多个 key 吗？
**A**：可以。`WATCH key1 key2 key3...` 可以监视多个 key，任何一个被修改都会导致事务失败。

---



> **MULTI 开，命令排，EXEC 执行一起来**  
**出错不分前后排，语法错误全失败**  
**运行错误单个栽，其他命令照样来**  
**WATCH 监视做保险，并发冲突就重来**
>

---

希望这份笔记对你有帮助！如果需要 Lua 脚本的详细笔记，或者有其他具体问题，随时问我～

# jedis
## 快速开始
+ 导入依赖

```xml
<!--jedis-->
<dependency>
  <groupId>redis.clients</groupId>
  <artifactId>jedis</artifactId>
  <version>5.2.0</version>
</dependency>
<!--fastjson-->
<dependency>
  <groupId>com.alibaba</groupId>
  <artifactId>fastjson</artifactId>
  <version>1.2.83_noneautotype</version>
</dependency>
```

+ 链接redis

```java
public class TestPing {
    public static void main(String[] args) {
        // 1. new Jedis 对象
        Jedis jedis = new Jedis("192.168.2.129", 6379);
        // Jedis 中所有的命令都在这里面
        System.out.println(jedis.ping());
    }
}
```

# 自定义RedisTemplate  springboot 3.0
## 导入依赖
```xml
<parent>
  <groupId>org.springframework.boot</groupId>
  <artifactId>spring-boot-starter-parent</artifactId>
  <version>3.2.0</version>
</parent>

<dependencies>
  <dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-data-redis</artifactId>
  </dependency>
  <dependency>
    <groupId>org.apache.commons</groupId>
    <artifactId>commons-pool2</artifactId>
  </dependency>
  <dependency>
    <groupId>com.fasterxml.jackson.core</groupId>
    <artifactId>jackson-databind</artifactId>
  </dependency>
</dependencies>
```

## 自动义RedisTemplate配置类
```java
package com.jie.config;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.jsontype.impl.LaissezFaireSubTypeValidator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.serializer.Jackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;

/**
 * Redis 配置类
 * 自定义 RedisTemplate，统一序列化方式
 */
@Configuration
public class RedisConfig {

    /**
     * 自定义 RedisTemplate
     * 用于存储对象，使用 JSON 序列化
     */
    @Bean
    public RedisTemplate<String, Object> redisTemplate(RedisConnectionFactory connectionFactory) {
        RedisTemplate<String, Object> template = new RedisTemplate<>();
        template.setConnectionFactory(connectionFactory);
        
        // 设置 JSON 序列化器
        Jackson2JsonRedisSerializer<Object> jackson2JsonRedisSerializer = 
                new Jackson2JsonRedisSerializer<>(Object.class);
        
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.setVisibility(PropertyAccessor.ALL, JsonAutoDetect.Visibility.ANY);
        // 激活默认类型，解决类型转换问题
        objectMapper.activateDefaultTyping(
                LaissezFaireSubTypeValidator.instance,
                ObjectMapper.DefaultTyping.NON_FINAL
        );
        jackson2JsonRedisSerializer.setObjectMapper(objectMapper);
        
        // 设置 String 序列化器（用于 key）
        StringRedisSerializer stringRedisSerializer = new StringRedisSerializer();
        
        // key 使用 String 序列化
        template.setKeySerializer(stringRedisSerializer);
        template.setHashKeySerializer(stringRedisSerializer);
        
        // value 使用 JSON 序列化
        template.setValueSerializer(jackson2JsonRedisSerializer);
        template.setHashValueSerializer(jackson2JsonRedisSerializer);
        
        template.afterPropertiesSet();
        return template;
    }
    
    /**
     * StringRedisTemplate
     * 用于存储字符串，key 和 value 都使用 String 序列化
     */
    @Bean
    public StringRedisTemplate stringRedisTemplate(RedisConnectionFactory connectionFactory) {
        return new StringRedisTemplate(connectionFactory);
    }
}
```

## 封装RedisService工具类
```java
package com.jie.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Component;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/**
 * Redis 操作服务类
 * 封装常用操作，提供便捷的 API
 */
@Component
public class RedisService {

    @Autowired
    private RedisTemplate<String, Object> redisTemplate;

    @Autowired
    private StringRedisTemplate stringRedisTemplate;

    // ==================== String 操作（对象） ====================

    /**
     * 设置值
     */
    public void set(String key, Object value) {
        redisTemplate.opsForValue().set(key, value);
    }

    /**
     * 设置值并指定过期时间
     */
    public void set(String key, Object value, long timeout, TimeUnit unit) {
        redisTemplate.opsForValue().set(key, value, timeout, unit);
    }

    /**
     * 获取值
     */
    public Object get(String key) {
        return redisTemplate.opsForValue().get(key);
    }

    /**
     * 删除 key
     */
    public Boolean delete(String key) {
        return redisTemplate.delete(key);
    }

    /**
     * 批量删除
     */
    public Long delete(Collection<String> keys) {
        return redisTemplate.delete(keys);
    }

    /**
     * 判断 key 是否存在
     */
    public Boolean hasKey(String key) {
        return redisTemplate.hasKey(key);
    }

    /**
     * 设置过期时间
     */
    public Boolean expire(String key, long timeout, TimeUnit unit) {
        return redisTemplate.expire(key, timeout, unit);
    }

    /**
     * 获取过期时间
     */
    public Long getExpire(String key) {
        return redisTemplate.getExpire(key);
    }

    // ==================== String 操作（字符串） ====================

    /**
     * 设置字符串值
     */
    public void setString(String key, String value) {
        stringRedisTemplate.opsForValue().set(key, value);
    }

    /**
     * 设置字符串值并指定过期时间
     */
    public void setString(String key, String value, long timeout, TimeUnit unit) {
        stringRedisTemplate.opsForValue().set(key, value, timeout, unit);
    }

    /**
     * 获取字符串值
     */
    public String getString(String key) {
        return stringRedisTemplate.opsForValue().get(key);
    }

    /**
     * 自增（计数器）
     */
    public Long increment(String key) {
        return stringRedisTemplate.opsForValue().increment(key);
    }

    /**
     * 自增指定步长
     */
    public Long increment(String key, long delta) {
        return stringRedisTemplate.opsForValue().increment(key, delta);
    }

    // ==================== Hash 操作 ====================

    /**
     * 设置 Hash 字段值
     */
    public void hset(String key, String field, Object value) {
        redisTemplate.opsForHash().put(key, field, value);
    }

    /**
     * 批量设置 Hash 字段值
     */
    public void hsetAll(String key, Map<String, Object> map) {
        redisTemplate.opsForHash().putAll(key, map);
    }
    
    /**
     * 获取 Hash 字段值
     */
    public Object hget(String key, String field) {
        return redisTemplate.opsForHash().get(key, field);
    }
    
    /**
     * 获取所有 Hash 字段值
     */
    public Map<Object, Object> hgetAll(String key) {
        return redisTemplate.opsForHash().entries(key);
    }
    
    /**
     * 删除 Hash 字段
     */
    public Long hdel(String key, Object... fields) {
        return redisTemplate.opsForHash().delete(key, fields);
    }
    
    // ==================== List 操作 ====================
    
    /**
     * 左侧插入
     */
    public Long lpush(String key, Object value) {
        return redisTemplate.opsForList().leftPush(key, value);
    }
    
    /**
     * 右侧插入
     */
    public Long rpush(String key, Object value) {
        return redisTemplate.opsForList().rightPush(key, value);
    }
    
    /**
     * 左侧弹出
     */
    public Object lpop(String key) {
        return redisTemplate.opsForList().leftPop(key);
    }
    
    /**
     * 右侧弹出
     */
    public Object rpop(String key) {
        return redisTemplate.opsForList().rightPop(key);
    }
    
    /**
     * 获取列表范围
     */
    public List<Object> lrange(String key, long start, long end) {
        return redisTemplate.opsForList().range(key, start, end);
    }
    
    // ==================== Set 操作 ====================
    
    /**
     * 添加 Set 元素
     */
    public Long sadd(String key, Object... values) {
        return redisTemplate.opsForSet().add(key, values);
    }
    
    /**
     * 获取所有 Set 元素
     */
    public Set<Object> smembers(String key) {
        return redisTemplate.opsForSet().members(key);
    }
    
    /**
     * 判断是否是 Set 成员
     */
    public Boolean sismember(String key, Object value) {
        return redisTemplate.opsForSet().isMember(key, value);
    }
    
    /**
     * 删除 Set 元素
     */
    public Long srem(String key, Object... values) {
        return redisTemplate.opsForSet().remove(key, values);
    }
    
    // ==================== ZSet 操作 ====================
    
    /**
     * 添加 ZSet 元素（带分数）
     */
    public Boolean zadd(String key, Object value, double score) {
        return redisTemplate.opsForZSet().add(key, value, score);
    }
    
    /**
     * 按分数降序获取指定范围（排行榜）
     */
    public Set<Object> zrevrange(String key, long start, long end) {
        return redisTemplate.opsForZSet().reverseRange(key, start, end);
    }
    
    /**
     * 获取元素分数
     */
    public Double zscore(String key, Object value) {
        return redisTemplate.opsForZSet().score(key, value);
    }
    
    /**
     * 增加元素分数
     */
    public Double zincrby(String key, Object value, double delta) {
        return redisTemplate.opsForZSet().incrementScore(key, value, delta);
    }
}
```

## controller测试
```java
package com.jie.controller;

import com.jie.service.RedisService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.concurrent.TimeUnit;

@RestController
@RequestMapping("/redis")
public class RedisController {
    
    @Autowired
    private RedisService redisService;
    
    @GetMapping("/test")
    public String test() {
        // 存储字符串
        redisService.setString("name", "张三", 60, TimeUnit.SECONDS);
        String name = redisService.getString("name");
        
        // 存储对象
        User user = new User(1L, "李四", 25);
        redisService.set("user:1", user, 60, TimeUnit.SECONDS);
        User cachedUser = (User) redisService.get("user:1");
        
        return "name: " + name + ", user: " + cachedUser;
    }
    
    @GetMapping("/incr")
    public Long incr() {
        // 计数器
        return redisService.increment("page:view:2025-01-01");
    }
}
```

## 实体类
```java
package com.jie.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User implements Serializable {
    private static final long serialVersionUID = 1L;
    
    private Long id;
    private String name;
    private Integer age;
}
```

# redis.conf文件配置信息
## 一、网络与安全配置
### 1.1 bind - 绑定监听地址
```nginx
# 生产环境：绑定内网IP，不对外暴露
bind 192.168.1.100   # 改为你的内网IP

# 开发环境：允许所有接口（需配合密码和防火墙）
# bind 0.0.0.0

# 错误示例：默认只允许本地访问
# bind 127.0.0.1
```

**生产建议**：绑定内网 IP，不要在公网暴露 Redis 端口。云服务器需配合安全组规则。

### 1.2 protected-mode - 保护模式
```nginx
protected-mode yes
```

**说明**：保持开启。当 `bind` 未设置或设置为 `0.0.0.0` 且未设置密码时，该模式会阻止外部访问。

### 1.3 requirepass - 设置密码
```nginx
requirepass YourStrongPassword123!
```

**重要**：生产环境**必须设置强密码**。格式建议：大小写字母 + 数字 + 特殊符号，至少 16 位。

### 1.4 rename-command - 禁用危险命令
```nginx
# 重命名或禁用危险命令
rename-command FLUSHALL ""      # 禁用
rename-command FLUSHDB ""       # 禁用
rename-command CONFIG "new_config_name"  # 重命名
rename-command KEYS "new_keys_name"     # 重命名
```

**生产建议**：禁用 `FLUSHALL`、`FLUSHDB`，防止误操作导致数据丢失。

### 1.5 port - 修改默认端口
```nginx
# 不推荐使用默认6379
port 6380
```

**说明**：避免使用默认端口可降低被扫描攻击的风险。



## 二、内存管理配置
### 2.1 maxmemory - 最大内存限制（**必配**）
```nginx
# 物理内存的70%-80%，预留空间给系统和AOF重写
maxmemory 24gb   # 假设服务器32GB内存
```

**重要**：必须设置，否则 Redis 会持续分配内存直至 OOM。

### 2.2 maxmemory-policy - 内存淘汰策略
```nginx
# 推荐配置（根据业务场景选择）
maxmemory-policy allkeys-lru     # 热点数据缓存场景

# 其他可选策略
# volatile-lru     - 仅淘汰设置了过期时间的key（适用于缓存+持久化混合）
# allkeys-random   - 随机淘汰（不推荐）
# volatile-ttl     - 淘汰即将过期的key
# noeviction       - 禁止淘汰，内存满时写入报错（不推荐）
```

**策略选择指南**：

+ **纯缓存场景**：`allkeys-lru` 或 `allkeys-lfu`（推荐）
+ **缓存+持久化**：`volatile-lru`（只淘汰设置了 TTL 的 key）
+ **访问频率敏感**：`allkeys-lfu`（Redis 4.0+，淘汰最少使用的）

### 2.3 maxmemory-samples - LRU 采样精度
```nginx
maxmemory-samples 10
```

**说明**：默认 5，值越大淘汰算法越精确，但消耗 CPU 更多。生产环境建议 10。



## 三、持久化配置
### 3.1 RDB 快照配置
```nginx
# 触发条件：时间 + 变化次数
save 900 1       # 15分钟内至少1个key变化
save 300 10      # 5分钟内至少10个key变化
save 60 10000    # 1分钟内至少10000个key变化

# 配置项说明
stop-writes-on-bgsave-error yes   # 备份失败时停止写入（生产建议开启）
rdbcompression yes                 # 开启压缩（节省磁盘）
rdbchecksum yes                    # 校验和（数据安全）
dbfilename dump.rdb                # 文件名
dir /var/lib/redis/                # 存储目录
```

**生产建议**：RDB 适合做定期备份，恢复速度快。

### 3.2 AOF 持久化配置
```nginx
# 开启AOF
appendonly yes

# AOF文件名
appendfilename "appendonly.aof"

# 同步策略：推荐 everysec（平衡性能与安全）
appendfsync everysec

# AOF重写配置
auto-aof-rewrite-percentage 100   # 文件增长100%时触发重写
auto-aof-rewrite-min-size 64mb    # 重写最小文件大小

# AOF重写时是否停止fsync（建议开启）
no-appendfsync-on-rewrite yes

# 混合持久化（Redis 4.0+，强烈推荐）
aof-use-rdb-preamble yes
```

**同步策略对比**：

| 策略 | 性能 | 数据安全 | 适用场景 |
| --- | --- | --- | --- |
| `always` | 最差 | 最高（每条命令同步） | 金融支付类 |
| `everysec` | 好 | 丢失1秒数据 | **推荐生产环境** |
| `no` | 最好 | 不确定 | 可容忍数据丢失 |


**混合持久化**：AOF 重写时先生成 RDB 格式，再追加增量日志，兼顾恢复速度和数据安全。



## 四、主从复制配置
### 4.1 从节点配置
```nginx
# 指定主节点
replicaof 192.168.1.100 6379

# 主节点密码（如果设置了）
masterauth your_password

# 从节点只读
replica-read-only yes

# 无盘复制（Redis 2.8.18+）
repl-diskless-sync yes

# 复制积压缓冲区大小
repl-backlog-size 100mb
```

### 4.2 复制优化参数
```nginx
# 复制超时时间
repl-timeout 60

# 从节点向主节点发送ping的间隔
repl-ping-slave-period 10

# 是否禁用TCP_NODELAY
repl-disable-tcp-nodelay no   # 低延迟场景保持no
```

**说明**：`repl-disable-tcp-nodelay no` 可减少延迟，适合对实时性要求高的场景。



## 五、性能优化配置
### 5.1 连接与网络
```nginx
# 最大客户端连接数
maxclients 10000

# TCP连接队列长度
tcp-backlog 511

# 客户端空闲超时（0表示永不超时）
timeout 0

# TCP保活间隔
tcp-keepalive 300
```

**调整建议**：高并发场景可调大 `maxclients` 和 `tcp-backlog`，同时需同步调整内核参数 `net.core.somaxconn`。

### 5.2 数据结构内存优化
```nginx
# Redis 7.0+ 使用 listpack 编码
hash-max-listpack-entries 512
hash-max-listpack-value 64
zset-max-listpack-entries 128
zset-max-listpack-value 64
set-max-intset-entries 512

# Redis 7.2+ 新增
set-max-listpack-entries 128
set-max-listpack-value 64
```

**说明**：小哈希、小集合使用压缩编码可节省 **5-10 倍内存**。

### 5.3 慢查询配置
```nginx
# 慢查询阈值（微秒，10000 = 10ms）
slowlog-log-slower-than 10000

# 慢查询日志最大条数
slowlog-max-len 128
```

### 5.4 内存碎片整理
```nginx
# 开启主动碎片整理
activedefrag yes

# 触发碎片整理的阈值
active-defrag-ignore-bytes 100mb
active-defrag-threshold-lower 10
active-defrag-cycle-min 5
active-defrag-cycle-max 75
```

**说明**：当 `mem_fragmentation_ratio > 1.5` 时建议开启。



## 六、集群模式配置（Redis Cluster）
### 6.1 集群核心配置
```nginx
# 开启集群模式
cluster-enabled yes

# 集群配置文件（自动生成）
cluster-config-file nodes-6379.conf

# 节点超时时间（毫秒）
cluster-node-timeout 15000

# 是否允许部分节点故障时提供服务
cluster-require-full-coverage no

# 副本数（每个主节点的从节点数量）
cluster-replicas 1
```

**生产建议**：`cluster-require-full-coverage no` 避免单节点故障导致整个集群不可用。



## 七、日志与监控配置
### 7.1 日志配置
```nginx
# 日志级别
loglevel notice

# 日志文件路径
logfile /var/log/redis/redis-server.log

# 是否记录系统日志
syslog-enabled no
```

### 7.2 实例运行模式
```nginx
# 守护进程模式（生产必须为yes）
daemonize yes

# PID文件路径
pidfile /var/run/redis_6379.pid

# 进程管理方式（systemd/upstart）
supervised systemd
```

**说明**：`daemonize yes` 使 Redis 后台运行。



## 八、生产环境完整配置示例
```nginx
# ===== 网络配置 =====
bind 192.168.1.100
port 6380
tcp-backlog 2048
timeout 0
tcp-keepalive 300

# ===== 安全配置 =====
protected-mode yes
requirepass YourStrongPassword123!
rename-command FLUSHALL ""
rename-command FLUSHDB ""
rename-command CONFIG ""

# ===== 通用配置 =====
daemonize yes
supervised systemd
pidfile /var/run/redis_6380.pid
loglevel notice
logfile /var/log/redis/redis-server.log
databases 16

# ===== 内存管理 =====
maxmemory 24gb
maxmemory-policy allkeys-lru
maxmemory-samples 10

# ===== 持久化配置 =====
save 900 1
save 300 10
save 60 10000
stop-writes-on-bgsave-error yes
rdbcompression yes
rdbchecksum yes
dbfilename dump.rdb
dir /var/lib/redis/

appendonly yes
appendfilename "appendonly.aof"
appendfsync everysec
no-appendfsync-on-rewrite yes
auto-aof-rewrite-percentage 100
auto-aof-rewrite-min-size 64mb
aof-use-rdb-preamble yes

# ===== 主从复制 =====
# replicaof 192.168.1.100 6379
# masterauth your_password
replica-read-only yes
repl-diskless-sync yes
repl-backlog-size 100mb

# ===== 性能优化 =====
maxclients 10000
hash-max-listpack-entries 512
hash-max-listpack-value 64
set-max-intset-entries 512
slowlog-log-slower-than 10000
slowlog-max-len 128
activedefrag yes

# ===== 集群模式 =====
# cluster-enabled yes
# cluster-node-timeout 15000
# cluster-require-full-coverage no
```



## 九、配置生效与验证
### 9.1 使配置生效
```bash
# 重启Redis
sudo systemctl restart redis

# 验证配置
redis-cli -h 127.0.0.1 -p 6380 -a your_password CONFIG GET maxmemory
redis-cli INFO memory
```

### 9.2 监控命令
```bash
# 查看内存使用情况
redis-cli INFO memory

# 查看连接数
redis-cli INFO clients

# 查看持久化状态
redis-cli INFO persistence

# 查看主从复制状态
redis-cli INFO replication

# 查看慢查询日志
redis-cli SLOWLOG GET 10
```



## 十、配置检查清单
| 检查项 | 状态 | 说明 |
| --- | --- | --- |
| ✅ 设置强密码 | 必须 | requirepass |
| ✅ 禁用危险命令 | 必须 | rename-command FLUSHALL/FLUSHDB |
| ✅ 设置最大内存 | 必须 | maxmemory |
| ✅ 配置淘汰策略 | 必须 | maxmemory-policy |
| ✅ 绑定内网IP | 推荐 | bind |
| ✅ 修改默认端口 | 推荐 | port |
| ✅ 开启持久化 | 推荐 | AOF + RDB |
| ✅ 配置日志 | 推荐 | logfile |
| ✅ 开启守护进程 | 必须 | daemonize yes |
| ✅ 配置慢查询 | 推荐 | slowlog |
| ✅ 开启碎片整理 | 可选 | activedefrag |


这份配置涵盖了生产环境 Redis 所需的关键参数。建议先在测试环境验证，确认无问题后再应用到生产环境。如需根据具体业务场景（如纯缓存、消息队列、排行榜等）做精细化配置，可以进一步讨论！

# Redis 持久化
## 一、持久化概述
### 什么是持久化？
Redis 是**内存数据库**，数据默认存储在内存中。持久化就是将内存中的数据保存到磁盘，防止进程退出后数据丢失。

### 为什么需要持久化？
| 场景 | 说明 |
| --- | --- |
| **缓存场景** | 允许数据丢失，可不开启或只开RDB |
| **数据存储场景** | 不允许丢数据，必须开启AOF或混合模式 |


### Redis 持久化的三种方式
| 方式 | 说明 | Redis版本 |
| --- | --- | --- |
| **RDB** | 定时生成内存快照 | 所有版本 |
| **AOF** | 记录所有写命令日志 | 1.1+ |
| **混合持久化** | RDB + AOF 结合 | 4.0+ |


## 二、RDB（Redis DataBase）
### 2.1 核心原理
在指定时间间隔内，将内存中的数据集快照写入磁盘。恢复时直接读取快照文件到内存。

**文件特点**：二进制压缩格式，体积小，恢复快。

### 2.2 触发方式
#### 自动触发（配置文件）
```nginx
# redis.conf
save 900 1      # 900秒内至少1个key变化
save 300 10     # 300秒内至少10个key变化
save 60 10000   # 60秒内至少10000个key变化
```

#### 手动触发
```bash
# 同步生成（阻塞主线程，慎用）
SAVE

# 异步生成（fork子进程，推荐）
BGSAVE

# 查看状态
LASTSAVE
```

### 2.3 核心配置
```nginx
# 文件名
dbfilename dump.rdb

# 存储路径
dir /var/lib/redis/

# bgsave出错时是否停止写入
stop-writes-on-bgsave-error yes

# 是否压缩（消耗CPU）
rdbcompression yes

# 是否开启校验和
rdbchecksum yes
```

### 2.4 工作流程
```plain
1. 父进程判断是否有bgsave子进程运行
2. 父进程fork()创建子进程（短暂阻塞）
3. 父进程继续处理请求，子进程写临时RDB文件
4. 子进程完成后替换旧文件
5. 子进程退出，父进程更新统计信息
```

### 2.5 优缺点
| 优点 | 缺点 |
| --- | --- |
| 文件紧凑，体积小 | 可能丢失最后一次快照后的数据 |
| 恢复大数据集速度快 | fork时内存翻倍，大数据集会卡顿 |
| 适合备份和容灾 | 频繁执行影响性能 |
| 格式兼容性好 | 数据量大时fork耗时增加 |


## 三、AOF（Append Only File）
### 3.1 核心原理
记录每次写操作到日志文件（追加模式），重启时通过重放命令恢复数据。

### 3.2 核心配置
```nginx
# 开启AOF（默认关闭）
appendonly yes

# 文件名
appendfilename "appendonly.aof"

# 同步策略（重要）
appendfsync everysec

# 重写时是否停止fsync
no-appendfsync-on-rewrite yes

# 重写触发条件
auto-aof-rewrite-percentage 100   # 文件增长100%时触发
auto-aof-rewrite-min-size 64mb    # 最小64MB才触发

# 加载时是否忽略最后一条不完整命令
aof-load-truncated yes

# 混合持久化（Redis 4.0+）
aof-use-rdb-preamble yes
```

### 3.3 appendfsync 三种策略
| 策略 | 说明 | 性能 | 数据安全 |
| --- | --- | --- | --- |
| `always` | 每次写后立即同步 | 最差 | 最高（丢一个命令） |
| `everysec` | 每秒同步一次 | 好 | 丢失1秒数据 |
| `no` | 操作系统决定 | 最好 | 不确定 |


**生产推荐**：`appendfsync everysec`

### 3.4 AOF 重写机制
**为什么需要重写？** AOF文件会不断增长，重写可优化文件大小。

**重写原理**：将多条命令合并成最终状态。

```plain
原始AOF：
SET count 1
INCR count
INCR count
INCR count

重写后：
SET count 4
```

**触发方式**：

+ 自动：满足配置条件
+ 手动：`BGREWRITEAOF`

### 3.5 优缺点
| 优点 | 缺点 |
| --- | --- |
| 数据安全性更高（最多丢1秒） | 文件体积大 |
| 日志可读性强 | 恢复速度慢 |
| 支持重写优化 | 写操作频繁影响性能 |
| 可手动修复损坏文件 | 极端情况下可能损坏 |


## 四、RDB vs AOF 对比
| 对比项 | RDB | AOF |
| --- | --- | --- |
| 默认开启 | 是 | 否 |
| 文件格式 | 二进制压缩 | 文本协议 |
| 文件大小 | 小 | 大（5-10倍） |
| 恢复速度 | 快 | 慢 |
| 数据安全性 | 可能丢几分钟 | 最多丢1秒 |
| CPU消耗 | fork时高 | 持续写入高 |
| 内存消耗 | fork时翻倍 | 持续占用 |
| 适用场景 | 备份、快速恢复 | 数据安全要求高 |


## 五、混合持久化（Redis 4.0+）
### 5.1 核心原理
AOF重写时，先生成RDB格式的快照，再追加增量命令。

**文件结构**：`[RDB快照] + [AOF增量日志]`

### 5.2 配置
```nginx
# 开启混合持久化
aof-use-rdb-preamble yes
```

### 5.3 优势
| 优势 | 说明 |
| --- | --- |
| 恢复速度快 | 先加载RDB快照，再重放少量AOF |
| 文件体积小 | RDB部分体积小 |
| 数据更安全 | 保留AOF秒级保护 |
| 兼容性好 | 旧版本可跳过RDB部分 |


**生产环境首选**：Redis 4.0+ 必须开启混合持久化。



## 六、数据恢复流程
### 6.1 启动时加载顺序
```plain
AOF开启且文件存在 → 加载AOF
       ↓ 否
RDB文件存在 → 加载RDB
       ↓ 否
启动空数据库
```

### 6.2 文件修复
```bash
# 修复AOF文件
redis-check-aof --fix appendonly.aof

# 检查RDB文件
redis-check-rdb dump.rdb
```



## 七、生产环境最佳实践
### 7.1 场景选择
| 场景 | 推荐方案 | 理由 |
| --- | --- | --- |
| 纯缓存 | 不开启或只开RDB | 数据可丢失，性能优先 |
| 重要数据存储 | AOF(everysec) + RDB | 最多丢1秒 |
| 高性能存储 | 只开RDB | 减少磁盘I/O |
| 数据安全第一 | AOF(always) + RDB | 几乎不丢数据 |
| **主流推荐** | **混合持久化** | 兼顾性能和安全 |


### 7.2 生产配置模板
```nginx
# RDB配置
save 900 1
save 300 10
save 60 10000
stop-writes-on-bgsave-error yes
rdbcompression yes
dbfilename dump.rdb
dir /data/redis/

# AOF配置
appendonly yes
appendfilename "appendonly.aof"
appendfsync everysec
no-appendfsync-on-rewrite yes
auto-aof-rewrite-percentage 100
auto-aof-rewrite-min-size 64mb

# 混合持久化（必须开启）
aof-use-rdb-preamble yes
```

### 7.3 备份策略
```bash
# 定时备份RDB（crontab）
0 2 * * * cp /var/lib/redis/dump.rdb /backup/dump_$(date +\%Y\%m\%d).rdb

# 异地备份
0 3 * * * rsync -avz /backup/ backup-server:/backup/

# 清理30天前备份
0 4 * * * find /backup/ -name "*.rdb" -mtime +30 -delete
```

### 7.4 监控指标
```bash
# 查看持久化状态
redis-cli INFO persistence

# 关键指标：
# rdb_last_bgsave_status      # 应为ok
# rdb_last_bgsave_time_sec    # 耗时
# aof_enabled                  # 是否开启
# aof_last_bgrewrite_status   # 应为ok
# aof_current_size             # 当前大小
```

### 7.5 内核优化
```bash
# /etc/sysctl.conf
vm.overcommit_memory = 1

# 禁用透明大页
echo never > /sys/kernel/mm/transparent_hugepage/enabled

# 生效
sysctl -p
```

### 7.6 常见问题
| 问题 | 原因 | 解决方案 |
| --- | --- | --- |
| 持久化失败 | 磁盘空间不足 | 清理磁盘 |
| bgsave一直失败 | fork失败 | 检查内存，设置vm.overcommit_memory=1 |
| Redis变慢 | AOF重写占CPU | 调整重写时间窗口 |
| 数据丢失 | 快照间隔太长 | 调整save参数或改用AOF |
| AOF文件过大 | 未配置自动重写 | 开启auto-aof-rewrite-* |


## 八、快速记忆
| 对比维度 | RDB | AOF |
| --- | --- | --- |
| **别名** | 快照 | 日志 |
| **格式** | 二进制 | 文本 |
| **大小** | 小 | 大 |
| **速度** | 快 | 慢 |
| **安全** | 低 | 高 |
| **场景** | 备份 | 存储 |


**生产命令**：

```bash
# RDB手动备份
BGSAVE

# AOF手动重写
BGREWRITEAOF

# 查看持久化信息
INFO persistence

# 检查文件
redis-check-aof --fix appendonly.aof
redis-check-rdb dump.rdb
```

---

**一句话总结**：Redis 4.0+ 生产环境**必须开启混合持久化**（`aof-use-rdb-preamble yes` + `appendfsync everysec`），并配合定期RDB备份和异地容灾。

# Redis 发布订阅
## 一、概述
### 1.1 什么是发布订阅？
Redis 发布订阅（Pub/Sub）是一种**消息通信模式**：

+ **发布者（Publisher）**：发送消息
+ **订阅者（Subscriber）**：接收消息
+ **频道（Channel）**：消息的载体

### 1.2 核心特点
| 特点 | 说明 |
| --- | --- |
| **消息多播** | 一条消息可被多个订阅者接收 |
| **消息即发即弃** | 消息不持久化，没有订阅者时消息丢失 |
| **实时性高** | 消息实时推送给订阅者 |
| **轻量级** | 无需额外组件（对比 Kafka、RabbitMQ） |


### 1.3 与消息队列的区别
| 对比项 | Pub/Sub | 消息队列（List/Stream） |
| --- | --- | --- |
| 消息持久化 | ❌ 不支持 | ✅ 支持 |
| 消息确认(ACK) | ❌ 不支持 | ✅ 支持 |
| 消息回溯 | ❌ 不支持 | ✅ 支持 |
| 单播/多播 | 多播 | 单播（消费者竞争） |
| 适用场景 | 实时通知、广播 | 可靠消息、任务队列 |


> **注意**：Pub/Sub 适合实时广播，不适合需要可靠投递的场景。
>

## 二、核心命令
### 2.1 发布命令
#### PUBLISH - 发布消息
```bash
# 语法：PUBLISH channel message
PUBLISH news "Hello Redis"
# 返回：订阅者数量
(integer) 2
```

#### PUBSUB - 查看订阅信息
```bash
# 查看活跃频道
PUBSUB CHANNELS [pattern]
PUBSUB CHANNELS          # 所有频道
PUBSUB CHANNELS news*    # 匹配news开头的频道

# 查看频道的订阅者数量
PUBSUB NUMSUB channel1 channel2
PUBSUB NUMSUB news sports

# 查看模式订阅数量
PUBSUB NUMPAT
```

### 2.2 订阅命令
#### SUBSCRIBE - 订阅一个或多个频道
```bash
# 语法：SUBSCRIBE channel [channel ...]
SUBSCRIBE news sports
# 返回：
1) "subscribe"    # 订阅确认
2) "news"         # 频道名
3) (integer) 1    # 当前订阅数

# 此时会阻塞等待消息
```

#### UNSUBSCRIBE - 退订频道
```bash
# 语法：UNSUBSCRIBE [channel ...]
UNSUBSCRIBE news        # 退订指定频道
UNSUBSCRIBE             # 退订所有频道
```

### 2.3 模式订阅命令
#### PSUBSCRIBE - 模式订阅（支持通配符）
```bash
# 语法：PSUBSCRIBE pattern [pattern ...]
PSUBSCRIBE news.*        # 订阅所有news.开头的频道
PSUBSCRIBE *.sports      # 订阅所有.sports结尾的频道

# 通配符说明：
# * - 匹配任意字符
# ? - 匹配单个字符
# [] - 匹配括号内的字符
```

#### PUNSUBSCRIBE - 退订模式
```bash
# 语法：PUNSUBSCRIBE [pattern ...]
PUNSUBSCRIBE news.*      # 退订指定模式
PUNSUBSCRIBE             # 退订所有模式
```

### 2.4 命令速查表
| 命令 | 作用 | 示例 |
| --- | --- | --- |
| `PUBLISH channel msg` | 发布消息 | `PUBLISH news "hello"` |
| `SUBSCRIBE channel` | 订阅频道 | `SUBSCRIBE news sports` |
| `UNSUBSCRIBE channel` | 退订频道 | `UNSUBSCRIBE news` |
| `PSUBSCRIBE pattern` | 模式订阅 | `PSUBSCRIBE news.*` |
| `PUNSUBSCRIBE pattern` | 退订模式 | `PUNSUBSCRIBE news.*` |
| `PUBSUB CHANNELS` | 查看活跃频道 | `PUBSUB CHANNELS` |
| `PUBSUB NUMSUB ch` | 查看订阅者数 | `PUBSUB NUMSUB news` |
| `PUBSUB NUMPAT` | 查看模式订阅数 | `PUBSUB NUMPAT` |


## 三、消息格式
### 3.1 订阅确认消息
```plain
*3              # 数组长度3
$9              # 第一个字符串长度9
subscribe       # 命令名
$4              # 第二个字符串长度4
news            # 频道名
:1              # 整数1，当前订阅数
```

### 3.2 普通消息
```plain
*3              # 数组长度3
$5              # 第一个字符串长度5
message         # 消息类型
$4              # 第二个字符串长度4
news            # 频道名
$5              # 第三个字符串长度5
hello           # 消息内容
```



## 四、完整使用示例
### 4.1 基础示例
**终端1 - 订阅者**

```bash
# 订阅新闻频道
127.0.0.1:6379> SUBSCRIBE news
Reading messages... (press Ctrl-C to quit)
1) "subscribe"
2) "news"
3) (integer) 1

# 等待消息...
```

**终端2 - 订阅者**

```bash
# 同时订阅新闻和体育频道
127.0.0.1:6379> SUBSCRIBE news sports
Reading messages... (press Ctrl-C to quit)
1) "subscribe"
2) "news"
3) (integer) 1
1) "subscribe"
2) "sports"
3) (integer) 2
```

**终端3 - 发布者**

```bash
# 发布消息到news频道
127.0.0.1:6379> PUBLISH news "Redis 7.0 released!"
(integer) 2   # 2个订阅者收到

# 发布消息到sports频道
127.0.0.1:6379> PUBLISH sports "China wins gold medal!"
(integer) 1   # 1个订阅者收到
```

**终端1 输出**

```plain
1) "message"
2) "news"
3) "Redis 7.0 released!"
```

**终端2 输出**

```plain
1) "message"
2) "news"
3) "Redis 7.0 released!"
1) "message"
2) "sports"
3) "China wins gold medal!"
```

### 4.2 模式订阅示例
**订阅者**

```bash
# 订阅所有以.news结尾的频道
127.0.0.1:6379> PSUBSCRIBE *.news
Reading messages... (press Ctrl-C to quit)
1) "psubscribe"
2) "*.news"
3) (integer) 1
```

**发布者**

```bash
# 发布到不同频道
127.0.0.1:6379> PUBLISH tech.news "New CPU released"
(integer) 1
127.0.0.1:6379> PUBLISH sports.news "Football match today"
(integer) 1
127.0.0.1:6379> PUBLISH game.news "New game announced"
(integer) 1
```

**订阅者输出**

```plain
1) "pmessage"
2) "*.news"           # 匹配的模式
3) "tech.news"        # 实际频道
4) "New CPU released"

1) "pmessage"
2) "*.news"
3) "sports.news"
4) "Football match today"

1) "pmessage"
2) "*.news"
3) "game.news"
4) "New game announced"
```



## 五、Java 代码实现（Jedis）
### 5.1 Maven依赖
```xml
<dependency>
    <groupId>redis.clients</groupId>
    <artifactId>jedis</artifactId>
    <version>5.2.0</version>
</dependency>

```

### 5.2 发布者实现
```java
import redis.clients.jedis.Jedis;

public class Publisher {
    public static void main(String[] args) {
        try (Jedis jedis = new Jedis("localhost", 6379)) {
            
            // 发布消息
            for (int i = 1; i <= 10; i++) {
                String message = "Message " + i;
                Long count = jedis.publish("news", message);
                System.out.println("Published: " + message + ", receivers: " + count);
                
                Thread.sleep(1000);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
```

### 5.3 订阅者实现
```java
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPubSub;

public class Subscriber {
    public static void main(String[] args) {
        try (Jedis jedis = new Jedis("localhost", 6379)) {
            
            // 创建订阅监听器
            JedisPubSub jedisPubSub = new JedisPubSub() {
                @Override
                public void onMessage(String channel, String message) {
                    System.out.println("收到消息 - 频道: " + channel + ", 内容: " + message);
                }
                
                @Override
                public void onSubscribe(String channel, int subscribedChannels) {
                    System.out.println("订阅频道: " + channel + ", 当前订阅数: " + subscribedChannels);
                }
                
                @Override
                public void onUnsubscribe(String channel, int subscribedChannels) {
                    System.out.println("取消订阅: " + channel);
                }
                
                @Override
                public void onPMessage(String pattern, String channel, String message) {
                    System.out.println("模式匹配 - 模式: " + pattern + 
                                       ", 频道: " + channel + ", 内容: " + message);
                }
                
                @Override
                public void onPSubscribe(String pattern, int subscribedChannels) {
                    System.out.println("模式订阅: " + pattern);
                }
            };
            
            // 订阅频道（阻塞方法）
            System.out.println("开始订阅 news 频道...");
            jedis.subscribe(jedisPubSub, "news");
            
            // 模式订阅（会阻塞）
            // jedis.psubscribe(jedisPubSub, "news.*");
        }
    }
}
```

### 5.4 使用线程池管理订阅
```java
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPubSub;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class PubSubService {
    
    private final JedisPool jedisPool;
    private final ExecutorService executorService;
    
    public PubSubService(String host, int port) {
        this.jedisPool = new JedisPool(host, port);
        this.executorService = Executors.newCachedThreadPool();
    }
    
    /**
     * 订阅频道
     */
    public void subscribe(JedisPubSub listener, String... channels) {
        executorService.submit(() -> {
            try (Jedis jedis = jedisPool.getResource()) {
                jedis.subscribe(listener, channels);
            } catch (Exception e) {
                System.err.println("订阅失败: " + e.getMessage());
            }
        });
    }
    
    /**
     * 模式订阅
     */
    public void psubscribe(JedisPubSub listener, String... patterns) {
        executorService.submit(() -> {
            try (Jedis jedis = jedisPool.getResource()) {
                jedis.psubscribe(listener, patterns);
            } catch (Exception e) {
                System.err.println("模式订阅失败: " + e.getMessage());
            }
        });
    }
    
    /**
     * 发布消息
     */
    public Long publish(String channel, String message) {
        try (Jedis jedis = jedisPool.getResource()) {
            return jedis.publish(channel, message);
        }
    }
    
    /**
     * 关闭服务
     */
    public void shutdown() {
        executorService.shutdown();
        jedisPool.close();
    }
}
```

### 5.5 使用示例
```java
import redis.clients.jedis.JedisPubSub;

public class PubSubDemo {
    public static void main(String[] args) {
        PubSubService service = new PubSubService("localhost", 6379);
        
        // 创建订阅监听器
        JedisPubSub listener = new JedisPubSub() {
            @Override
            public void onMessage(String channel, String message) {
                System.out.println("[" + channel + "] " + message);
            }
            
            @Override
            public void onSubscribe(String channel, int subscribedChannels) {
                System.out.println("订阅成功: " + channel);
            }
        };
        
        // 订阅频道
        service.subscribe(listener, "news", "sports");
        
        // 发布消息
        service.publish("news", "Hello Redis");
        service.publish("sports", "Game started");
        
        // 等待一段时间
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        
        // 关闭服务
        service.shutdown();
    }
}
```



## 六、Spring Boot 整合 Pub/Sub
### 6.1 配置类
```java
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.listener.ChannelTopic;
import org.springframework.data.redis.listener.RedisMessageListenerContainer;
import org.springframework.data.redis.listener.adapter.MessageListenerAdapter;
import org.springframework.data.redis.serializer.StringRedisSerializer;

@Configuration
public class RedisPubSubConfig {
    
    @Bean
    public RedisMessageListenerContainer redisContainer(
            RedisConnectionFactory connectionFactory,
            MessageListenerAdapter listenerAdapter) {
        
        RedisMessageListenerContainer container = new RedisMessageListenerContainer();
        container.setConnectionFactory(connectionFactory);
        container.addMessageListener(listenerAdapter, new ChannelTopic("news"));
        return container;
    }
    
    @Bean
    public MessageListenerAdapter listenerAdapter(RedisMessageReceiver receiver) {
        MessageListenerAdapter adapter = new MessageListenerAdapter(receiver, "receiveMessage");
        adapter.setSerializer(new StringRedisSerializer());
        return adapter;
    }
    
    @Bean
    public RedisTemplate<String, String> redisTemplate(RedisConnectionFactory factory) {
        RedisTemplate<String, String> template = new RedisTemplate<>();
        template.setConnectionFactory(factory);
        template.setKeySerializer(new StringRedisSerializer());
        template.setValueSerializer(new StringRedisSerializer());
        return template;
    }
}
```

### 6.2 消息接收器
```java
import org.springframework.stereotype.Component;

@Component
public class RedisMessageReceiver {
    
    public void receiveMessage(String message) {
        System.out.println("收到消息: " + message);
        // 处理业务逻辑
    }
}
```

### 6.3 消息发送服务
```java
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

@Service
public class MessagePublisher {
    
    @Autowired
    private RedisTemplate<String, String> redisTemplate;
    
    public void publish(String channel, String message) {
        redisTemplate.convertAndSend(channel, message);
        System.out.println("消息已发送: " + message);
    }
}
```

### 6.4 控制器
```java
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/pubsub")
public class PubSubController {
    
    @Autowired
    private MessagePublisher publisher;
    
    @PostMapping("/publish")
    public String publish(@RequestParam String channel, @RequestParam String message) {
        publisher.publish(channel, message);
        return "消息已发送: " + message;
    }
}
```



## 七、使用场景
### 7.1 实时聊天系统
```java
// 频道设计：chat:room:{roomId}
public class ChatService {
    
    public void sendMessage(Long roomId, String userId, String message) {
        String channel = "chat:room:" + roomId;
        String msg = userId + ": " + message;
        jedis.publish(channel, msg);
    }
}
```

### 7.2 实时通知系统
```java
// 频道设计：notify:user:{userId}
public class NotificationService {
    
    public void sendNotification(Long userId, String content) {
        String channel = "notify:user:" + userId;
        jedis.publish(channel, content);
    }
}
```

### 7.3 实时数据推送
```java
// 频道设计：stock:{code}
public class StockService {
    
    public void pushStockPrice(String stockCode, double price) {
        String channel = "stock:" + stockCode;
        String message = String.format("{\"code\":\"%s\",\"price\":%.2f}", stockCode, price);
        jedis.publish(channel, message);
    }
}
```

### 7.4 配置中心
```java
// 频道设计：config:update
public class ConfigService {
    
    public void updateConfig(String key, String value) {
        // 更新本地配置
        updateLocalConfig(key, value);
        // 广播配置变更
        jedis.publish("config:update", key + "=" + value);
    }
}
```



## 八、注意事项与限制
### 8.1 限制
| 限制项 | 说明 | 解决方案 |
| --- | --- | --- |
| **消息不持久化** | 订阅者离线时消息丢失 | 使用 Stream 替代 |
| **无消息确认** | 无法保证消息被处理 | 使用 Stream + Consumer Group |
| **无消息回溯** | 无法重放历史消息 | 使用 Stream 或 List |
| **缓冲区满会断开** | 订阅者处理慢会断开连接 | 使用专业的消息队列 |
| **网络断开丢消息** | 网络恢复后不会重发 | 业务层做幂等处理 |


### 8.2 最佳实践
1. **订阅者要快速处理消息**：避免阻塞，可异步处理
2. **处理连接断开**：实现重连机制
3. **监控订阅者状态**：及时发现问题
4. **合理设计频道**：避免过多频道
5. **使用连接池**：提高性能

### 8.3 重连示例
```java
public class ReliableSubscriber {
    
    private boolean running = true;
    
    public void subscribeWithRetry(String... channels) {
        while (running) {
            try (Jedis jedis = new Jedis("localhost", 6379)) {
                jedis.subscribe(new JedisPubSub() {
                    @Override
                    public void onMessage(String channel, String message) {
                        handleMessage(channel, message);
                    }
                }, channels);
            } catch (Exception e) {
                System.err.println("连接断开，5秒后重试...");
                try {
                    Thread.sleep(5000);
                } catch (InterruptedException ie) {
                    Thread.currentThread().interrupt();
                    break;
                }
            }
        }
    }
    
    private void handleMessage(String channel, String message) {
        // 异步处理消息，避免阻塞
        executor.submit(() -> {
            // 业务处理
        });
    }
}
```



## 九、总结
### 9.1 核心要点
| 要点 | 说明 |
| --- | --- |
| **即时性** | 消息实时推送，延迟极低 |
| **简单性** | 无复杂配置，开箱即用 |
| **广播性** | 天然支持消息多播 |
| **易失性** | 消息不持久化，离线即丢失 |
| **无确认** | 无法保证消息一定被处理 |


### 9.2 何时使用 Pub/Sub
| 场景 | 是否推荐 | 原因 |
| --- | --- | --- |
| 实时聊天 | ✅ 推荐 | 实时性高，丢消息影响小 |
| 实时通知 | ✅ 推荐 | 通知不要求100%到达 |
| 实时数据推送 | ✅ 推荐 | 推送最新数据即可 |
| 配置变更广播 | ✅ 推荐 | 配置变更次数少 |
| 可靠消息处理 | ❌ 不推荐 | 需要 ACK 和持久化 |
| 任务队列 | ❌ 不推荐 | 需要竞争消费 |
| 消息回溯 | ❌ 不推荐 | 无法回溯历史消息 |


### 9.3 一句话总结
> **Redis Pub/Sub 适合实时广播场景，但消息不持久化、无确认机制。需要可靠消息时，请使用 Stream 或专业消息队列（Kafka、RocketMQ）。**
>

# Redis主从复制哨兵模式
## 环境配置
```bash
127.0.0.1:6379> info replication   # 查看当前库的信息
# Replication
role:master    # 角色  master 主机
connected_slaves:0   # 从机 为0
master_failover_state:no-failover
master_replid:8172b06528011b399d97189a7b3ed05ed74968f2
master_replid2:0000000000000000000000000000000000000000
master_repl_offset:0
second_repl_offset:-1
repl_backlog_active:0
repl_backlog_size:1048576
repl_backlog_first_byte_offset:0
repl_backlog_histlen:0
```

复制3个配置文件，然后修改对应的信息

+ 端口
+ pid名字
+ log文件名字
+ dump.rdb 名字

启动服务

<img src="https://cdn.nlark.com/yuque/0/2026/png/54050922/1780838106195-1e09f663-e947-4044-a39a-bb88a5ab2bbb.png" width="628" title="" crop="0,0,1,1" id="uccebdadb" class="ne-image">



## 一主二从
默认情况下，每台Redis服务器都是主节点：一般情况下只需要配置从机就可以了

slaveof host 6379

<img src="https://cdn.nlark.com/yuque/0/2026/png/54050922/1780838428764-dc3f7754-9da9-48fc-8866-2f64fdc62a98.png" width="564" title="" crop="0,0,1,1" id="u49766d5f" class="ne-image">

主机查看从机信息

<img src="https://cdn.nlark.com/yuque/0/2026/png/54050922/1780839186798-c16843e9-05d8-4850-a1ca-0e60d98d5372.png" width="581.6" title="" crop="0,0,1,1" id="u8cb20f22" class="ne-image">

也可在配置文件中配置

```bash
# ===== 基础配置 =====
# 端口（从节点使用不同端口）
port 6380

# 守护进程模式
daemonize yes

# PID 文件
pidfile /var/run/redis_6380.pid

# 日志文件
logfile /var/log/redis/redis-6380.log

# ===== 安全配置 =====
# 从节点自己的密码（用于客户端连接）
requirepass 123456

# ===== 主从复制配置（关键！）=====
# 指定主节点
replicaof 127.0.0.1 6379

# 主节点的密码（必须配置！）
masterauth 123456

# 从节点只读模式
replica-read-only yes

# ===== 持久化配置 =====
# RDB 配置
dbfilename dump-6380.rdb
dir /var/lib/redis/

# 从节点建议关闭 AOF（可选）
appendonly no

# ===== 性能配置 =====
# 最大内存（根据实际情况调整）
maxmemory 2gb

# 内存淘汰策略
maxmemory-policy allkeys-lru

# 最大客户端连接数
maxclients 10000

# ===== 复制优化 =====
# 复制积压缓冲区大小
repl-backlog-size 10mb

# 复制超时时间（秒）
repl-timeout 60

# 从节点是否断开连接时清除缓冲区
repl-diskless-sync yes
```

主机可以读写

从机只能读

**<font style="color:rgb(15, 17, 21);">主从复制是 Redis 高可用的基石，通过 </font>**`**<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">replicaof</font>**`**<font style="color:rgb(15, 17, 21);"> 和 </font>**`**<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">masterauth</font>**`**<font style="color:rgb(15, 17, 21);"> 两个配置即可搭建，从节点只读且数据异步同步。</font>**

+ <font style="color:rgb(15, 17, 21);">全量复制：从节点第一次链接主节点时会将主节点的全部数据复制到从节点中</font>
+ <font style="color:rgb(15, 17, 21);">增量复制：主节点将后续所有的命令依次传给从节点</font>

## 层层链路
上一个主节点链接下一个从节点

<img src="https://cdn.nlark.com/yuque/0/2026/png/54050922/1780840591689-192fe5c6-0992-4196-81ce-37327a4b0fe1.png" width="478.4" title="" crop="0,0,1,1" id="uc3a762e4" class="ne-image">

当主机断开了链接，可以使用slaveof no one 让自己变成主机，其他的节点手动链接到这个节点

## 哨兵模式
### 一、概述
1.1 什么是哨兵模式？

哨兵（Sentinel）是 Redis 官方提供的**高可用解决方案**，用于监控主从集群中的 Master 和 Slave，并在 Master 故障时自动进行**故障转移**，将某个 Slave 提升为新的 Master。

1.2 为什么需要哨兵模式？

| 问题 | 哨兵解决方案 |
| --- | --- |
| 主节点宕机，服务不可用 | 自动故障转移，选举新 Master |
| 需要人工干预切换 | 自动完成，无需人工 |
| 客户端不知道新 Master 地址 | 哨兵通知客户端新地址 |
| 从节点需要重新指向新 Master | 哨兵自动配置从节点 |


1.3 哨兵模式的核心功能

| 功能 | 说明 |
| --- | --- |
| **监控** | 监控 Master 和 Slave 是否正常运行 |
| **通知** | 当节点故障时，通过 API 通知系统管理员或应用程序 |
| **自动故障转移** | Master 故障时，将 Slave 提升为 Master |
| **配置提供** | 客户端连接哨兵获取当前 Master 地址 |


1.4 哨兵模式的架构图

```plain
                    ┌─────────────────────────────────┐
                    │          哨兵集群                │
                    │  ┌──────┐ ┌──────┐ ┌──────┐    │
                    │  │哨兵S1│ │哨兵S2│ │哨兵S3│    │
                    │  └──┬───┘ └──┬───┘ └──┬───┘    │
                    └─────┼────────┼────────┼────────┘
                          │        │        │
                          │   监控  │   监控  │
                          ↓        ↓        ↓
                    ┌─────────────────────────────────┐
                    │          Redis 主从集群           │
                    │                                  │
                    │     ┌─────────────┐              │
                    │     │  Master M1  │ ← 主节点     │
                    │     │  (主机A)    │              │
                    │     └──────┬──────┘              │
                    │            │ 复制                 │
                    │     ┌──────┴──────┐              │
                    │     │             │              │
                    │     ↓             ↓              │
                    │ ┌─────────┐  ┌─────────┐        │
                    │ │ Slave S1│  │ Slave S2│        │
                    │ │ (主机B) │  │ (主机C) │        │
                    │ └─────────┘  └─────────┘        │
                    └─────────────────────────────────┘
```



### 二、哨兵工作原理
2.1 三个定时监控任务

| 任务 | 说明 | 执行频率 |
| --- | --- | --- |
| **每秒任务** | 每个哨兵向所有节点（Master、Slave、其他哨兵）发送 PING 命令 | 每秒1次 |
| **每10秒任务** | 向 Master 和 Slave 发送 INFO 命令，获取拓扑信息 | 每10秒1次 |
| **每2秒任务** | 哨兵通过 Master 的 `__sentinel__:hello` 频道发布自己的信息 | 每2秒1次 |


2.2 主观下线 vs 客观下线

```plain
┌─────────────────────────────────────────────────────────────────┐
│                     下线判断流程                                 │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  哨兵 S1 ──PING──→ Master                                       │
│       │                        │                                │
│       │                    ┌───┴───┐                            │
│       │                    │超时？  │                            │
│       │                    └───┬───┘                            │
│       │                        │                                │
│       ↓                        ↓                                │
│  ┌──────────────────────────────────────┐                       │
│  │         主观下线 (SDOWN)              │                       │
│  │  单个哨兵认为 Master 不可用           │                       │
│  └──────────────────────────────────────┘                       │
│       │                                                        │
│       ↓                                                        │
│  询问其他哨兵：Master 是否可用？                                 │
│       │                                                        │
│       ↓                                                        │
│  ┌──────────────────────────────────────┐                       │
│  │         客观下线 (ODOWN)              │                       │
│  │  当多数哨兵（quorum）都认为不可用时   │                       │
│  └──────────────────────────────────────┘                       │
│       │                                                        │
│       ↓                                                        │
│  开始故障转移                                                   │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

| 状态 | 说明 | 触发条件 |
| --- | --- | --- |
| **主观下线 (SDOWN)** | 单个哨兵认为 Master 不可用 | 连续 `down-after-milliseconds` 毫秒未响应 |
| **客观下线 (ODOWN)** | 多个哨兵都认为 Master 不可用 | 达到 `quorum` 数量的哨兵同意主观下线 |


2.3 故障转移流程

```plain
┌─────────────────────────────────────────────────────────────────┐
│                     故障转移流程                                 │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  Step 1: 哨兵集群达成客观下线                                    │
│       │                                                        │
│       ↓                                                        │
│  Step 2: 选举领导者哨兵                                         │
│       │                                                        │
│       ↓                                                        │
│  Step 3: 从 Slave 中选举新 Master                               │
│       │                                                        │
│       ↓                                                        │
│  Step 4: 将新 Slave 提升为 Master                               │
│       │                                                        │
│       ↓                                                        │
│  Step 5: 修改其他 Slave 的复制目标（指向新 Master）              │
│       │                                                        │
│       ↓                                                        │
│  Step 6: 旧 Master 恢复后，降级为 Slave 指向新 Master           │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

2.4 领导者哨兵选举（Raft 算法）

1. 发现 Master 客观下线后，哨兵向其他哨兵发送请求，要求将自己设为领导者
2. 收到请求的哨兵如果没有同意过其他哨兵，则同意该请求
3. 当哨兵获得**半数以上**的选票时，成为领导者
4. 如果没有选出领导者，等待后重试

2.5 新 Master 选举规则

| 优先级 | 规则 | 说明 |
| --- | --- | --- |
| 1 | **优先级最高** | `slave-priority`（replica-priority）值越小优先级越高 |
| 2 | **复制偏移量最大** | 数据最新的从节点 |
| 3 | **runid 最小** | 多个从节点优先级相同时，runid 最小的当选 |


**配置从节点优先级：**

```nginx
# redis.conf
replica-priority 100
```

### 三、哨兵模式搭建
3.1 环境规划

| 节点角色 | IP | 端口 | 哨兵端口 |
| --- | --- | --- | --- |
| Master | 127.0.0.1 | 6379 | - |
| Slave-1 | 127.0.0.1 | 6380 | - |
| Slave-2 | 127.0.0.1 | 6381 | - |
| Sentinel-1 | 127.0.0.1 | - | 26379 |
| Sentinel-2 | 127.0.0.1 | - | 26380 |
| Sentinel-3 | 127.0.0.1 | - | 26381 |


3.2 主从节点配置

**主节点配置 (redis-6379.conf)**

```nginx
port 6379
daemonize yes
pidfile /var/run/redis_6379.pid
logfile /var/log/redis/redis-6379.log
requirepass 123456
masterauth 123456
bind 0.0.0.0
dbfilename dump-6379.rdb
dir /var/lib/redis/
```

**从节点-1 配置 (redis-6380.conf)**

```nginx
port 6380
daemonize yes
pidfile /var/run/redis_6380.pid
logfile /var/log/redis/redis-6380.log
requirepass 123456
masterauth 123456
replicaof 127.0.0.1 6379
replica-read-only yes
dbfilename dump-6380.rdb
dir /var/lib/redis/
```

**从节点-2 配置 (redis-6381.conf)**

```nginx
port 6381
daemonize yes
pidfile /var/run/redis_6381.pid
logfile /var/log/redis/redis-6381.log
requirepass 123456
masterauth 123456
replicaof 127.0.0.1 6379
replica-read-only yes
dbfilename dump-6381.rdb
dir /var/lib/redis/
```

3.3 哨兵配置文件详解

**哨兵-1 配置 (sentinel-26379.conf)**

```nginx
# 端口
port 26379

# 守护进程模式
daemonize yes

# PID文件
pidfile /var/run/sentinel_26379.pid

# 日志文件
logfile /var/log/redis/sentinel-26379.log

# 监控配置
# sentinel monitor <master-name> <ip> <port> <quorum>
sentinel monitor mymaster 127.0.0.1 6379 2

# Master 节点密码
sentinel auth-pass mymaster 123456

# 判断主观下线的时间（毫秒）
sentinel down-after-milliseconds mymaster 30000

# 故障转移超时时间（毫秒）
sentinel failover-timeout mymaster 180000

# 同时进行故障转移的从节点数量
sentinel parallel-syncs mymaster 1

# 通知脚本（可选）
# sentinel notification-script mymaster /path/to/notify.sh

# 重新配置脚本（可选）
# sentinel client-reconfig-script mymaster /path/to/reconfig.sh
```

**参数说明：**

| 参数 | 说明 | 默认值 | 建议值 |
| --- | --- | --- | --- |
| `port` | 哨兵端口 | 26379 | 26379+ |
| `sentinel monitor` | 监控的 Master | 无 | 必填 |
| `sentinel auth-pass` | Master 密码 | 无 | 有密码时必填 |
| `down-after-milliseconds` | 主观下线判断时间 | 30000ms | 30000 |
| `failover-timeout` | 故障转移超时 | 180000ms | 180000 |
| `parallel-syncs` | 同时同步的从节点数 | 1 | 1 |


**哨兵-2 配置 (sentinel-26380.conf)**

```nginx
port 26380
daemonize yes
pidfile /var/run/sentinel_26380.pid
logfile /var/log/redis/sentinel-26380.log
sentinel monitor mymaster 127.0.0.1 6379 2
sentinel auth-pass mymaster 123456
sentinel down-after-milliseconds mymaster 30000
sentinel failover-timeout mymaster 180000
sentinel parallel-syncs mymaster 1
```

**哨兵-3 配置 (sentinel-26381.conf)**

```nginx
port 26381
daemonize yes
pidfile /var/run/sentinel_26381.pid
logfile /var/log/redis/sentinel-26381.log
sentinel monitor mymaster 127.0.0.1 6379 2
sentinel auth-pass mymaster 123456
sentinel down-after-milliseconds mymaster 30000
sentinel failover-timeout mymaster 180000
sentinel parallel-syncs mymaster 1
```

3.4 启动所有节点

```bash
# 启动 Redis 主从节点
redis-server /etc/redis/redis-6379.conf
redis-server /etc/redis/redis-6380.conf
redis-server /etc/redis/redis-6381.conf

# 启动哨兵
redis-sentinel /etc/redis/sentinel-26379.conf
redis-sentinel /etc/redis/sentinel-26380.conf
redis-sentinel /etc/redis/sentinel-26381.conf

# 或者使用 redis-server 启动哨兵模式
redis-server /etc/redis/sentinel-26379.conf --sentinel
```

3.5 验证哨兵状态

```bash
# 查看哨兵信息
redis-cli -p 26379 INFO sentinel

# 查看监控的 Master
redis-cli -p 26379 SENTINEL masters

# 查看指定 Master 的从节点
redis-cli -p 26379 SENTINEL slaves mymaster

# 查看指定 Master 的哨兵列表
redis-cli -p 26379 SENTINEL sentinels mymaster

# 获取当前 Master 地址
redis-cli -p 26379 SENTINEL get-master-addr-by-name mymaster
```

### 四、哨兵常用命令
4.1 哨兵命令汇总

| 命令 | 说明 | 示例 |
| --- | --- | --- |
| `SENTINEL masters` | 查看所有 Master | `SENTINEL masters` |
| `SENTINEL master <name>` | 查看指定 Master 信息 | `SENTINEL master mymaster` |
| `SENTINEL slaves <name>` | 查看指定 Master 的从节点 | `SENTINEL slaves mymaster` |
| `SENTINEL sentinels <name>` | 查看哨兵列表 | `SENTINEL sentinels mymaster` |
| `SENTINEL get-master-addr-by-name <name>` | 获取 Master 地址 | `SENTINEL get-master-addr-by-name mymaster` |
| `SENTINEL reset <pattern>` | 重置监控 | `SENTINEL reset mymaster` |
| `SENTINEL failover <name>` | 手动故障转移 | `SENTINEL failover mymaster` |
| `SENTINEL ckquorum <name>` | 检查哨兵仲裁 | `SENTINEL ckquorum mymaster` |
| `SENTINEL flushconfig` | 强制写入配置文件 | `SENTINEL flushconfig` |


4.2 手动故障转移

```bash
# 手动触发故障转移（即使 Master 正常运行）
redis-cli -p 26379 SENTINEL failover mymaster
```

4.3 查看哨兵信息

```bash
# 连接任意哨兵
redis-cli -p 26379

# 查看哨兵信息
127.0.0.1:26379> INFO sentinel

# 查看所有 Master
127.0.0.1:26379> SENTINEL masters

# 查看从节点
127.0.0.1:26379> SENTINEL slaves mymaster

# 查看哨兵列表
127.0.0.1:26379> SENTINEL sentinels mymaster
```

### 五、Java 操作哨兵模式
5.1 Jedis 连接哨兵

```java
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisSentinelPool;

import java.util.HashSet;
import java.util.Set;

public class JedisSentinelDemo {
    public static void main(String[] args) {
        // 哨兵地址集合
        Set<String> sentinels = new HashSet<>();
        sentinels.add("127.0.0.1:26379");
        sentinels.add("127.0.0.1:26380");
        sentinels.add("127.0.0.1:26381");
        
        // 创建哨兵连接池
        JedisSentinelPool pool = new JedisSentinelPool(
            "mymaster",           // Master 名称（与哨兵配置一致）
            sentinels,            // 哨兵地址集合
            "123456"              // Redis 密码
        );
        
        // 获取连接
        try (Jedis jedis = pool.getResource()) {
            // 写入数据
            jedis.set("key", "value");
            System.out.println("写入成功");
            
            // 读取数据
            String value = jedis.get("key");
            System.out.println("读取数据: " + value);
            
            // 查看当前 Master 地址
            System.out.println("当前 Master: " + pool.getCurrentHostMaster());
        }
        
        // 关闭连接池
        pool.close();
    }
}
```

5.2 Spring Boot 集成哨兵

**application.yml**

```yaml
spring:
  redis:
    password: 123456
    sentinel:
      master: mymaster
      nodes:
        - 127.0.0.1:26379
        - 127.0.0.1:26380
        - 127.0.0.1:26381
    lettuce:
      pool:
        max-active: 8
        max-idle: 8
        min-idle: 0
```

**Java 配置类**

```java
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.connection.RedisSentinelConfiguration;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import redis.clients.jedis.JedisPoolConfig;

@Configuration
public class RedisSentinelConfig {
    
    @Bean
    public RedisConnectionFactory redisConnectionFactory() {
        // 哨兵配置
        RedisSentinelConfiguration sentinelConfig = new RedisSentinelConfiguration()
            .master("mymaster")
            .sentinel("127.0.0.1", 26379)
            .sentinel("127.0.0.1", 26380)
            .sentinel("127.0.0.1", 26381);
        
        // 设置密码
        sentinelConfig.setPassword("123456");
        
        // 连接池配置
        JedisPoolConfig poolConfig = new JedisPoolConfig();
        poolConfig.setMaxTotal(8);
        poolConfig.setMaxIdle(8);
        poolConfig.setMinIdle(0);
        
        return new JedisConnectionFactory(sentinelConfig, poolConfig);
    }
    
    @Bean
    public RedisTemplate<String, Object> redisTemplate(RedisConnectionFactory connectionFactory) {
        RedisTemplate<String, Object> template = new RedisTemplate<>();
        template.setConnectionFactory(connectionFactory);
        template.setKeySerializer(new StringRedisSerializer());
        template.setValueSerializer(new StringRedisSerializer());
        return template;
    }
}
```

### 六、哨兵模式最佳实践
6.1 哨兵部署建议

| 建议 | 说明 |
| --- | --- |
| **哨兵数量 ≥ 3** | 避免脑裂，确保选举能达成多数 |
| **哨兵数量为奇数** | 3、5、7... 便于选举 |
| **哨兵与 Redis 节点分离** | 避免同时故障 |
| **quorum 配置** | 建议为 `ceil(哨兵数量/2)` |
| **不同物理机** | 提高容灾能力 |


6.2 quorum 配置建议

| 哨兵总数 | 建议 quorum | 说明 |
| --- | --- | --- |
| 1 | 1 | 单点风险，不推荐 |
| 2 | 2 | 需要两个都同意，不推荐 |
| **3** | **2** | 推荐配置 |
| 5 | 3 | 高可用要求 |
| 7 | 4 | 极高可用性 |


6.3 故障转移超时配置

```nginx
# 故障转移超时时间（毫秒）
sentinel failover-timeout mymaster 180000
```

**failover-timeout 的含义：**

1. 超过该时间未完成故障转移，视为失败
2. 故障转移完成后，旧 Master 需要在该时间内恢复并成为 Slave
3. 若超时，下次故障转移的等待时间是原来的 2 倍

6.4 哨兵配置文件自动重写

哨兵运行时，会**自动修改配置文件**，记录运行状态。配置文件会被重写，因此：

+ 不要手动编辑配置文件，除非停止哨兵
+ 修改配置建议通过 `SENTINEL SET` 命令动态修改

```bash
# 动态修改配置
redis-cli -p 26379 SENTINEL SET mymaster down-after-milliseconds 20000

# 查看当前配置
redis-cli -p 26379 SENTINEL GET mymaster down-after-milliseconds
```

### 七、故障转移演示
7.1 模拟 Master 宕机

```bash
# 1. 查看当前 Master
redis-cli -p 26379 SENTINEL get-master-addr-by-name mymaster
# 输出: 1) "127.0.0.1" 2) "6379"

# 2. 停止 Master 节点
redis-cli -p 6379 -a 123456 SHUTDOWN

# 3. 查看哨兵日志
tail -f /var/log/redis/sentinel-26379.log

# 4. 等待故障转移完成（约30秒）

# 5. 查看新 Master
redis-cli -p 26379 SENTINEL get-master-addr-by-name mymaster
# 新 Master 可能是 6380 或 6381
```

7.2 哨兵日志关键信息

```plain
# 主观下线
+sdown master mymaster 127.0.0.1 6379

# 客观下线
+odown master mymaster 127.0.0.1 6379 #quorum 2/2

# 开始选举
+vote-for-leader <id> 1

# 选举成功
+config-update-from sentinel <id>

# 切换配置
+switch-master mymaster 127.0.0.1 6379 127.0.0.1 6380
```

7.3 恢复旧 Master

```bash
# 重新启动旧 Master（6379）
redis-server /etc/redis/redis-6379.conf

# 查看哨兵状态
redis-cli -p 26379 SENTINEL slaves mymaster
# 6379 会以从节点身份加入
```

### 八、常见问题与解决方案
| 问题 | 原因 | 解决方案 |
| --- | --- | --- |
| 哨兵无法连接 Master | 网络问题或密码错误 | 检查 `sentinel auth-pass` |
| 故障转移失败 | 哨兵数量不足 | 确保哨兵数量 ≥ 3，quorum 配置合理 |
| 选举脑裂 | 网络分区 | 增加哨兵数量，配置合理超时 |
| 客户端长时间无法连接 | 未更新 Master 地址 | 使用哨兵自动发现机制 |


### 九、总结
核心要点

| 要点 | 说明 |
| --- | --- |
| **作用** | 实现 Redis 高可用，自动故障转移 |
| **部署要求** | 至少 3 个哨兵，奇数个 |
| **关键配置** | `monitor`、`quorum`、`auth-pass` |
| **故障转移** | 主观下线 → 客观下线 → 领导者选举 → 新 Master 选举 |
| **客户端连接** | 通过哨兵获取 Master 地址 |


**一句话总结：哨兵模式是 Redis 生产环境高可用的标准方案，至少部署 3 个哨兵实例，监控主从集群，实现自动故障转移。**
', 0, NOW());

INSERT INTO `note` (`id`, `author_id`, `title`, `content`, `like_count`, `created_at`)
VALUES (4, 1001, 'javaSE', '## 常用快捷键
Ctrl + D  ： 复制当前行到下一行

ALT + INSERT ：自动生成构造器

Ctrl + H：打开树结构

Ctrl + Alt + T ：选择代码被包裹的类型

## 搭建环境
### 卸载JDK
+ 删除java的安装目录
+ 删除环境变量JAVA_HOME
+ 删除path项关于Java的目录
+ java -version

### 安装JDK
+ 百度搜索JDK8，找到下载地址
+ 同意协议
+ 下载电脑对应的版本
+ 双击安装
+ 记住安装的路径
+ 配置环境变量
    - 我的电脑-->右键-->属性
    - 环境变量-->新建系统变量-->JAVA_HOME，安装路径
    - 配置path变量
        * %JAVA_HOME%\bin
        * %JAVA_HOME%\jre\bin
+ java -version

### HelloWorld
+ 创建一个放代码的文件夹
+ 创建一个以.java为后缀的文件
+ 编写代码

```java
public class Hello{
    public static void main(String[], args){
        System.out.print("Hello World！");
    }
}
```

+ 编译：javac java文件，会生成一个class文件
+ 运行class文件S

<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1743765924281-0b39cd7e-0524-45e8-9f83-0f56a11ba992.png" width="397.4285888671875" title="" crop="0,0,1,1" id="ua426976d" class="ne-image">

### 可能出现的问题
+ 每个单词的大小写不能出现问题，Java是大小写敏感的
+ 尽量使用英文
+ 文件名 和 类名必须保持一致，并且首字母大写
+ 符号必须使用英文



## Java基础语法
### 注释、标识符、关键字
#### 注释
注释并不会被执行，是给写代码给别人看的

java中的注释有三种

+ 单行注释

```java
// 这是一个单行注释
```

+ 多行注释

```java
/*
    这是一个多行注释
*/
```

+ 文档注释

```java
//JavaDoc: 文档注释
/**
 *@bes
 */
```

#### 标识符
所有的标识符都是以字母（A-Z或a-z），美元符（$），或者下划线（_）开始

首字母之后可以是字母（A-Z或a-z），美元符（$），下划线（_）或数字的任何字符组合

标识符是大小写敏感的

不能使用关键字作为变量名或方法名

不建议使用中文名或拼音，很low

#### 关键字
<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1743768836077-a6bb4d11-f8dd-4a6e-8d5a-92e9df83ec46.png" width="443.2857360839844" title="" crop="0,0,1,1" id="ufe692728" class="ne-image">

java所有的组成部分都需要名字。类名，变量名以及方法名都被称为标识符

### 数据类型
强类型语言：要求变量的使用要严格符合规定，所有变量都必须先定义后才能使用

#### 基本数据类型
![画板](https://cdn.nlark.com/yuque/0/2025/jpeg/54050922/1743770818061-53510fd8-15e9-4553-877b-d26792d71910.jpeg)

```java
public class Demo2{
    public static void main(String[] args){
        //整数
        int num1 = 10;
        byte num2 = 20;
        short num3 = 30;
        long num4 = 30L; //Long类型要在数字后面加上L

        //小数， 浮点数
        float num5 = 5.1F; //float类型要在数字后面加上F
        double num6 = 3.123436534;

        //字符
        char name = ''中'';
        //字符串， String不是关键字， 类
        String name2 = "好难过";

        //布尔值
        boolean flag = true;
        boolean flag2 = false;
    }
}
```

#### 引用数据类型
类

接口

数组

#### 什么是字节
位（bit）：是计算机内部数据存储的最小单位，11001100是一个8位二进制数

字节（byte）：是计算机中数据处理的基本单位，习惯上用大写B来表示

1B（byte，字节）= 8bit（位）

字符：是指计算机中使用的字母，数字，字和符号

#### 扩展
1. 进制表示

```java
public class Demo2{
    public static void main(String[] args){
        //整数 扩展
        int i3 = 0b100;   //二进制
        int i = 10;       //十进制
        int i1 = 010;     //八进制
        int i2 = 0x10;    //十六进制

    }
}
```

2. 转义字符
+ \t：水平制表符
+ \n：换行符
+ \r：回车符
+ \b：规格符
+ \f：换页符
+ \\：反斜杠字符
+ \''：单引号字符
+ \"：双引号字符
+ \u：表示一个Unicode字符
+ \ddd：表示一个八进制字符

### 类型转换
不同类型的数据先转换为同一类型，然后进行运算

低------------------------------------------------->高

byte, short, char-->int-->long-->float-->double

#### 强制类型转换
数据类型 变量名1 =（变量名2）变量；  高-->低

```java
public class Demo{
    public static void main(String[] args){
        int i = 128;
        byte b = (byte)i;
        System.out.println(i);   //内存溢出
        System.out.println(b);
    }
}
```

#### 自动类型转换
数据类型 变量名 = 变量；   低-->高

#### 注意
1. 不能对布尔值进行类型转换
2. 不能把对象类型转换为不相干的类型
3. 在把高容量转换到低容量的时候，强制转换
4. 转换的时候肯存在内存溢出，或者精度问题
5. 操作数比较大的时候，注意溢出问题
6. 数字之间可利用用下滑线分割   `int money = 10_0000_0000;`
7.



### 变量，常量，作用域
#### 变量
可以变化的量

每个变量都必须事先声其类型

变量是程序中最基本的存储单元，其要素包括变量名，变量类型和作用域

`数据类型 变量名 = 值;`

#####  注意事项
+ 每个变量都有类型，类型可以是基本类型，也可以是引用类型
+ 变量名必须是合法的标识符
+ 变量声明是一条完整的语句，因此每一个声明都必须以分号结束

#### 作用域
类变量

实例变量

局部变量

```java
public class Damo {
    //属性 方法

    // 类变量
    static double salary = 2500;
    
    
    //实例变量，从属于对象 
    //如果不进行初始化，这个类型的默认值0  0.0 
    //布尔值：默认值为false
    //除了基本类型，其余的默认值都是null
    String name;
    int age;

    
    //main方法
    public static void main(String[] args) {
        //局部变量 必须声明和初始化值
        int i = 10;
        System.out.println(i);

        Damo damo = new Damo();
        damo.age;
    }

    //其他方法
    
}

```

#### 常量
常量可以理解为一种特殊的变量，他的值被设定后，在程序执行过程中不允许被改变

```java
final 变量名 = 值;
final double PI = 3.14;
```

常量名一般用大写字符

修饰符，不存在先后顺序



#### 变量名的命名规范
+ 所有变量，方法，类名：见名知意
+ 类成员变量：首字母小写和驼峰原则：monthSalary
+ 局部变量：首字母小写和驼峰原则
+ 常量：大写字母和下划线：MAX_VALUE
+ 类名：首字母大写和驼峰原则：Man，GoodMan
+ 方法名：首字母小写和驼峰原则：ran(); ranRan();

### 运算符
#### 基本运算符
+ 算数运算符：+, -, *, /, %, ++, --
+ 赋值运算符：=
+ 关系运算符：>, <, >=, <=, ==, !=, instanceof
+ 逻辑运算符：&&, ||， ！
+ 位运算符： &(与), |(或), ^(异或), ~(非),>>, <<, >>>(了解！！！)

在计算机运算时效率最高

`2<<1`=2*2

`2<<2`=2*2*2

`2>>1`=2/2

`2>>2`=2/2/2

+ 条件运算符：？ ：
+ 扩展赋值运算符：+=， -=，*=， /=

a+=b   //a = a+b

a-=b   //a = a-b

#### 一元运算符
++   --

++a：先赋值，再自增

a++：先自增，再赋值



#### Math工具类
数据类型 变量名 = Math.数学函数();





#### 字符串连接符
```java
System.out.println(""+a+b)
>> ab 字符串
System.out.println(a+b+"")
>> a+b 运算后的值
```

#### 三元运算符   ？ ：
x ? y : z

如果x=true 返回 y

如果x=false 返回 z

`score < 60 ? "不及格" : "及格"`



#### 优先级
最高优先级(括号)

后缀运算符 ++ --

一元运算符 +(正号) -(负号) !(逻辑非) ~(位取反) ++(前缀递增) --(前缀递减)

乘除运算符 * / %

加减运算符 + -

关系运算符 > >= < <= instanceof

相等运算符 == !=

位运算符 & | ^

逻辑运算符 && ||

三元运算符 ？ ：

赋值运算符 = += -= .......

最低级运算符 逗号运算符，

#### 
### 包机制  文件夹  package
一般利用公司域名倒置作为包名  com.baidu.www

package pkg1[.pkg2[.pkg3...]]

为了能够使用某一个包的成员，需要再Java程序中明确导入该包，使用"import"语句了完成此功能

import pkg1[.pkg2[.pkg3...].classname|*]

通配符  导入所有文件.*

### JavaDoc
```java
/**
 *参数信息
 *类注释
 *@author 作者名 
 *@version 版本号
 *@since 指明需要最早使用的jdk版本号
 *
 *方法注释
 *@param 参数名
 *@return 返回值情况
 *@thrwos 异常抛出情况
 */
```

####  cmd命令
javadoc -encoding UTF-8 -charser UTF-8 文件名.java

## 流程控制
凡是属于IO(输入输出)流的类如果不关闭会一直占用资源   **对象名.close();**

### 用户交互Scanner
`**java.util.Scanner**`**获取用户输入**

**基本语法**`**Scanner s = new Scanner(System.in)**`** **

**通过Scanner类的next()与next()方法获取输入的字符串，在读取前一般要使用hasNext()与hasNextLine()判断是否还有输入的数据**

+ next()以空格或回车作为结束符 即不能得到带有空格的字符串
+ nextLine()以回车符作为结束符 即获得回车符以前的所有字符

```java
public class damo {
    public static void main(String[] args) {
        Scanner scnner = new Scnner(System.in);
        if(scnner.hasNext()) {
            String str = scnner.next();
            System.out.println("输出的内容为："+str);
        }
        if(scnner.hasNextLint()) {
            String str = scnner.nextLine();
            System.out.println("输出的内容为："+str);
        }
        scnner.close();
    }
}
```

+ `scanner.nextInt()` 接收整数数据
+ `scanner.hasNextInt()` 是否是Int类型的数据
+ `scanner.nextFloat()` 接收小数数据
+ `equals()`判断字符串是否相等

### 顺序结构
Java程序是从上往下依次执行，是任意一个算法程序第基本结构

### 选择结构
#### if单选择结构
```java
if(布尔表达式) {
    //如果布尔表达式为true将执行的语句
}
```

#### if双选择结构
```java
if(布尔表达式) {
    //如果布尔表达式的值true将执行的语句
}else{
    //如果布尔表达式的值为false将执行的代码
}
```

#### if多选择结构
```java
if(布尔表达式1) {
    //如果布尔表达式1的值true将执行的语句
}else if(布尔表达式2){
    //如果布尔表达式2的值为true将执行的代码
}else if(布尔表达式3) {
    //如果布尔表达式2的值为true将执行的代码
}else {
    //如果以上布尔表达式的值都为false将执行的代码
}
```

#### 嵌套if结构
```java
if(布尔表达式1) {
    //如果布尔表达式1的值true将执行的语句
    if(布尔表达式2) {
        //如果布尔表达式2的值true将执行的语句
    }
}
```

#### switch多选择结构
switch 语句中的变量（value）类型可以是

+ byte  short Int char 或是 string
+ case 标签必须是字符串常量或字面量
+ 如果case后面不写break; 将会会输出匹配case和后面的全部内容

```java
switch(expression) {
    case value:
        //语句
        break;  //可选
    case vlue:
        //语句
        break; //可选
    // 可以有任意数量的case语句
    default :  //可选
        //语句
}
```



### 循环结构
#### while循环
```java
while (布尔表达式){
    // 循环内容
}
```

+ 只要表达式为true，循环就会一直执行下去
+ 大多数都要对循环结构进行停止操作的
+ 避免死循环   `while(true){}`

#### do……while
```java
do {
    //代码语句
}while(布尔表达式);
```

+ 先执行后判断
+ 总能保证循环体被执行一次

#### for循环
```java
for(初始化; 布尔表达式; 更新){
    //代码语句
}
```

+ for循环语句是支持迭代的一种通用结构，是最高效，最灵活的循环结构

```java
for(int i = 1; i <= 9; i++){
    for(int j = 1; j <= i; j++){
        System.out.print(i+"*"+j+"="+(i*j)+"\t");
    }
    System.out.println();
}
```

#### 增强for循环
```java
for(声明语句: 表达式){
    //代码句子
}
```

+ 声明语句：声明心得局部变量，该变量的类型必须和数组元素的类型匹配，其作用域限定在循环语句块，其值与此时数组元素的值相等
+ 表达式：表达式是要访问的数组名，或是返回值为数组的方法

#### break continue
+ break：在任何循环语句的主体部分，均可用break控制循环的流程，break用于强行退出循环，不执行循环中剩余的语句（break语句也可在switch语句中使用）
+ continue：语句在循环语句体中，用于终止某次循环过程，即跳出循环体中尚未执行的语句，接着进行下一次是否执行循环的判定
+ goto关键字：

## Java方法
### 什么是方法
方法是一个语句的集合

+ 方法是解决一类问题的步骤的有序组合
+ 方法包含于类 或对象中
+ 方法在程序中被创建，在其他地方被引用
+ 原子性：一个方法只完成1个功能，这样利于后期的扩展

### 方法的定义及调用
#### 方法的定义
```java
修饰符 返回值类型 方法名(参数类型 参数名){
    方法体
    return 返回值;
}
```

#### 方法的调用
`对象名.方法名(实例参数);`

当方法返回一个值的时候，方法调用通常被当做一个值，

`int larger = max(30, 40)`

如果方法返回值是void，方法调用一定是一条语句

`System.out.println("");`

### 方法的重载
+ 在一个类中，有相同的函数名称，但形参不同的函数
+ 方法重载的规则
    - 方法名称必须相同
    - 参数列表必须不同（个数，参数类型，排列顺序 ）
    - 方法的返回值类型可以相同也可不同
    - 仅仅返回类型不同不注意称为方法的重载

```java
public  class Damo {
    public static void main(String[] args){
        int max = max(10, 20);
    }

    public static int max(int a, int b){......}

    public static double max(double a, double b){......}
}
```

+ 方法名称相同时，编译器会根据调用方法的参数个数，参数类型等去逐个匹配，以选择对应的方法，如果匹配失败，则编译过程会报错

### 命令行传参
<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1743924109005-9e929619-b460-460e-b745-2520502de860.png" width="887.2" title="" crop="0,0,1,1" id="u753ee053" class="ne-image">

### 可变参数
+ 在方法声明中，在指定参数类型后加一个省略号(...)
+ 一个方法中只能指定一个可变参数，它必须是方法的最后一个参数，任何普通的参数必须在它之前声明

```java
public class Demo(){
    public static void main(String[] args){
        Demo demo = new Demo();
        demo.test(1)
    }

    public void test(int... i){
        System.out.println(i);
    }
}
```

### 递归
+ 递归头：什么时候不调用自身方法，如果没有递归头，将陷入死循环
+ 递归体：什么时候徐涛调用自身方法

```java
public static int f(ing n){
    if(n == 1){
        return 1;
    }else{
        return n*f(n-1);
    }
}
```

## 数组
### 数组概述
+ 数组是相同类型数据的有序集合
+ 数组描述是相同类型的若干个数据，按照一定的的先后次序排列组合而成的
+ 其中，每一个数据操作一个数组元素，每个数组元素可以通过一个下标来访问它们
+ 数组的四个基本特点
    - 其长度是固定的
    - 元素类型必须是相同类型
    - 数组的元素类型可以是任何数据类型，包括基本类型黑引用类型
    - 数组对象本身是在堆中的

### 数组的声明和创建
+ 首先必须声明数组变量，才能在程序中使用数组

```java
dataType[] arrayRefVar;   //首选方法

dataType arrayRefVar[];  //效果相同，但不是首选方法

```

+ **Java语言使用new操作符来创建数组**

```java
dataType[] arrayRefVar = new dataType[arraySize]
```

+ 数组的元素是通过索引访问的，数组索引从0开始
+ 获取数组长度 `arrays.length`

### 内存分析
+ 声明数组：获取一个栈
+ 创建数组：在堆中创建一个跟数组名一样的容量一样的区域
+ 给数组赋值：在每个小的区域给定一个值
+ 下标越界：获取数组值时，下标不能超过数组的容量大小
+ ArrayIndexOutOfBoundsExceptioin：数组下标越界异常

### 数组的三种初始化
静态初始化：

```java
int[] a = {1, 2, 3}
Man[] man = {new Man(1, 1), new Man(2, 2)}
```

动态初始化

```java
int[] a = new int[2];
a[0] = 1;
a[1] = 2;
```

数组的默认初始化

数组是引用类型，它的元素相当于类的实例变量，因此数组一经分配空间，每个元素也被按照实例辩相同的方式被隐式初始化

### 数组的使用
#### for-each循环
```java
public class ArrayDamo {
    public static void main(String[] args) {
        int[] arrays = {1, 2, 3, 4};

        for (int array : arrays){
            System.out.println(array);
        }
    }   
}
```

#### 数组作方法入参
```java
public class ArrayDamo {
    public static void main(String[] args) {
        int[] arrays = {1, 2, 3, 4};
        printArray(arrays);
    }  

    public static void printArray(int[] arrays){
        for(int array : arrays){
            System.out.println(array);
        }
    }
}
```

#### 数组作为返回值
```java
public class ArrayDamo {
    public static void main(String[] args) {
        int[] arrays = {1, 2, 3, 4};
        int[] reverses = reverse(arrays);
        printArray(reveres);
    }  
    public static int[] revers(int[] arrays){
        int[] reslts = new arrays[arrays.length]
        // 反转数组
        for (int i = 0, int j = arrays.length - 1; i < arrays.length; i++, j--){
            reslts[j] = arrays[i];
        }
        return revers;
    }
}
```

### 多维数组
多维数组可以看作是数组的数组

二维数组

`int a[][] = new arr[2][4];`

以上数组可以看作是两行四列的数组

二维数组可以根据索引遍历

### Array 类
API：`java.util.Array;`

使用 Array.方法名();



### 冒泡排序
两层循环，外层冒泡轮数，里层依次比较

```java
int[] array = {5,4,3,2,1};
int tmp = 0;
for (int i = 0; i < array.length-1; i++){
    for (j = 0; j < array.length-i; j++ ){
        if{array[j+1]>arraj[j]}
            tmp = array[j];
            array[j] = array[j + 1];
            array[j + 1] = tmp;
    }
}
```

### 稀疏数组
#### 介绍
当一个数组中大部分元素0，或者为同一值的数值时，可以使用稀疏数组来保存该数组

稀疏数组的处理方式是 ：

+ 记录数组一共几行几列，有多少个不同值
+ 把具有不同指的元素和行列及记录在一个小规模的数组中，从而缩小程序的规模

| 行 | 列 | 值 |
| --- | --- | --- |
| 行数 | 列数 | 数据个数 |
| 数据1行坐标 | 数据1列坐标 | 数据1 |
| 数据2行坐标 | 数据2列坐标 | 数据2 |


## 面向对象编程（Object-Orientend Programming, OOP）
### 初识面向对象
+ 面向对象编程的本质是：以类的方式组织代码，以对象的组织（封装）数据
+ 抽象
+ 三大特性 封装 继承 多态
+ 从认识论角度考虑是先有对象后有类，对象，具体的事物，类，是抽象的，是对对象的抽象
+ 从代码运行角度考虑是先有类后有对象，类是对象的模版



### 类与对象的创建
#### 类与对象的关系
+ 类是一种抽象的数据类型，它是对某一对事物整体描述/定义，但并不是代表某一个具体的事物
+ 对象是抽象概念的具体实例

创建与初始化对象

+ 使用new关键字创建对象
+ 使用new关键字创建对象的时候，除了 分配内存空间之外，还会给创建好的对象进行默认的初始化，及对类中构造器的调用
+ 类中的构造器也称为构造方法，是在进行创建对象的时候必须调用的，并且构造器有以下两个特点：
    - 必须和类的名字相同
    - 必须没有返回类型，也不能写void
+ 构造器必须要掌握
    - 使用new关键字，本质是调用构造器
    - 用来初始化值
    - 有参构造：一旦定义了有参构造，无参构造必须显示定义

#### 构造器
+ 和类名相同
+ 没有返回值

作用

+ new 本质在调用构造方法
+ 初识化对象的值

注意点

+ 定义有参构造执之前，如果想使用无参构造，显示地定义一个无参构造

ALT + INSTRL: 自动生成构造器

### 封装
+ 高内聚，低耦合
    - 高内聚：就是类的内部数据操作细节自己完成，不允许外部干涉
    - 低耦合：仅暴露少量的方法给外部使用
+ 数据的隐藏：通常，应禁止直接访问一个对象中数据的实际表示，而应通过操作接口来访问
+ **属性私有， get/set**
    - get：获得这个数据
    - set：给这个数据设置值

```java
// 属性私有
private String name;
private int id;
private char sex;
```

+ 意义
    - 提高程序的安全性，保护数据
    - 隐藏代码的实现细节
    - 统一接口
    - 增加了系统的可维护性

### 继承
#### 继承基础
+ extends的意思是"扩展"，子类是父类的扩展
+ Java中类只有单继承，没有多继承
+ 继承是类和类的一种关系，类和类的关系还有依赖，组合，聚合等
+ 继承关系的两个类，一个为子类（派生类），一个为父类（基类），子类继承父类，使用关键字extends表示
+ 子类和父类之间，从意义上讲应该具有"is a" 的关系
+ 子类继承了父类，就会拥有父类的所有public方法
+ 在java中，所有的类都直接或间接继承Object类

#### super：调用父类方法
+ super调用父类的构造方法，必须在构造方法的第一个
+ super 必须只能出现在子类的方法或者构造方法中
+ super和this不能同时调用
+ VS this
    - 代表的对象不同
        * this：本身调用者这个对象
        * super：代表父类对象的应用
    - 前提
        * this：没有继承也可以使用
        * super：只能在继承条件下才可以使用
    - 构造方法
        * this();   本类的构造
        * super(); 父类的构造



#### 方法重写：需要有继承关系，子类重写父类的方法
+ 方法名必须相同
+ 参数列表必须相同
+ 修饰符：范围可以扩大：  public-->Protected-->private
+ 抛出异常：范围，可以被缩小，但不能被扩大
+ 子类的方法和父类必须一致：方法体不同
+ 快捷键：Alt + Insert ：override；

#### 不能重写的方法
+ static 方法，属于类，他不属于实例
+ final 常量
+ private 方法：私有方法

### 多态
+ 多态是方法的多态，属性没有多态
+ 父类和子类 ，有联系 类型转换异常：ClassCastException!
+ 存在条件，继承关系，方法需要重写，父类引用只想子类对象！   Father f1 = new Son()
+ instanceof    (X instanceof Y)   判断X和Y是否存在父子关系
+ 类型转换
    - 父类引用指向子类的对象
    - 把子类转换为父类，向上转向
    - 把父类转换为子类，向下转向，强制转换
    - 方便方法的调用，减少重复的代码

### static ：静态
+ 定义静态变量： private static int age；
+ 定义静态方法：public static viod go(){}
+ 匿名代码块：{ //代码块 }
+ 静态代码块： static  { // 代码块 }  //只执行一次

### 抽象类 abstract
```java
// 定义抽象类
public abstract class Action {
    // 定义抽象方法
    public abstract void toSomethng();
}

public class a extend Action{
    @Override
    public void toSomething{
        
    }
}
```

+ abstract 修饰符可以用来修饰方法也可以用来修饰类，抽象方法和抽象类
+ 抽象类中可以没有抽象方法，但抽象方法必须是在抽象类中
+ 抽象类，不能用new关键字来创造对象，他是用来让子类继承的
+ 抽象方法只有方法的声明，没有方法的实现
+ 子类继承抽象了，必须实现抽象类中的抽象方法，否则该子类也要声明为抽象类



### 接口 interface
+ 作用：
    - 约束
    - 定义一些方法，让不同的人实现
    - public abstract
    - public static final
    - 接口不能被实例化，接口没有构造方法
    - implements可以实现多个接口
    - 必须要重写接口中的方法

### 内部类
```java
import Outher；
//测试类
public class Applicant{
    public static void main(String[] args){
        Outher outer = new Outer();
        // 通过这个外部类来实例化内部类
        Outer.Inner inner = outer.new Inner();
        inner.in();
        inner.getId();
    }
}

// 创建外部类
public class Outer{
    private int id=10;
    public void out(){
        System.out.println("这是外部类的方法");
    }

    public class Inner {
        public void in(){
            System.out.println("这是一个内部类的方法");
        }
        
        // 获得外部类的私有属性
        public void getId(){
            System.out.println(id);
        }
    }

    
}


```

## 异常机制 exception
### 什么是异常
+ 异常是指程序运行中出现的不期而至的各种状况，如：文件找不到，网络连接失败，非法参数等
+ 异常发生在程序运行期间，它影响了正常的程序执行流程
+ 异常的简单分类
    - 检查性异常：如用户错误或问题引起的异常，这是程序无法预见的
    - 运行时异常：可能被程序员避免的异常
    - 错误：脱离程序员控制的问题，如栈溢出

### Error Exception
![画板](https://cdn.nlark.com/yuque/0/2025/jpeg/54050922/1744009511106-ad39608f-dc1f-4e05-a67f-909ea0f62765.jpeg)

#### Error
+ 由Java虚拟机生成并抛出，大多数错误与代码编写者所执行的操作无关
+ Java虚拟机运行错误（Virtual MachineError），当jvm不在由继续执行操作所需的内存资源时，将出现OutOfMemoryError。
+ 还有发生在虚拟机试图执行应用时，如类定义错误（NoClassDefFoundError），连接错误（LinkageError）。这些错误是不可查的，因为他们在应用程序的控制和处理能力之外，而且绝大多数程序运行时不允许出现的状况





#### Exception
+ 在Exception分支中有一个重要的子类RuntimeException（运行异常）
    - ArrayIndexOutOfBoundsException（数组下标越界）
    - NullPointerException（空指针异常）
    - ArithmeticException（算数异常）
    - MissingResourceException（丢失资源）
    - ClassNotFoundException（找不到类）等异常这些异常时不检查异常，程序中可以选择捕获处理，也可以不处理
+ 这些异常一般是由程序逻辑错误引起的，程序应该从逻辑角度尽可能避免这类异常的发生
+ Error和Exception的区别：Error通常是灾难性的致命的错误，是程序无法控制和处理的，当出现这些异常时，Java虚拟机（JVM）一般会选择终止线程；Exception通常情况下是可以被程序处理的，并且在程序中应该尽可能得去处理这些异常

### 异常处理机制
抛出异常

捕获异常

异常处理五个关键字

+ try-catch：用于捕获异常
+ finally：用于处理异常的善后工作
+ throw：在方法中抛出异常
+ throws：在方法上抛出异常

### 自定义异常
自定义异常类的步骤

+ 创建自定义异常类
+ 在方法中通过throw关键字抛出异常对象
+ 如果在当前抛出异常的方法中处理异常，可以使用try-catch语句捕获并处理；否则在方法的声明处通过throws关键字指明要抛出给方法调用者的异常，继续镜像下一步操作
+ 在出现异常方法的调用者中捕获并处理异常
', 0, NOW());

INSERT INTO `note` (`id`, `author_id`, `title`, `content`, `like_count`, `created_at`)
VALUES (5, 1001, '集合框架', '# 集合
+ 概念：对象的容器，实现了对对象常用的操作，类似数组功能
+ 集合和数组的区别
    - 数组长度固定，集合长度不固定
    - 数组可以存储基本类型和引用类型，集合只能存储引用类型
+ 位置：java.util.*;
+ <img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1744806274150-7aba2622-05b5-45e1-86b0-16f8a3b98bdc.png" width="381.6" title="" crop="0,0,1,1" id="udf93c25d" class="ne-image">

# Collection体系集合
## Collection父接口
### 基本信息和方法
+ 特点：代表一组任意类型的对象，无序，无下标，不能重复。
+ 方法
    - boolean add(Object obj) // 添加一个对象
    - boolean addAll(Collection c) // 将一个集合中的所有对象添加到此集合中
    - void clear() // 清空此集合中的所有对象
    - boolean contains(Object o) // 检查此集合中是否包含o对象
    - bollean equals(Object o) // 比较是否与指定对象相等
    - boolean remove(Object o) //在此集合中移除o对象
    - int size(）//返回集合中的元素个数
    - Object[] toArray() // 将此集合转换成数组。
    - Iterator<E> iterator()  //返回在此collection的元素上进行迭代的迭代器

### 实现1
```java
package com.jie.collection;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

// Collection 使用
public class MyCollection {
    public static void main(String[] args) {
        // 创建集合
        Collection collection = new ArrayList();

        // 添加元素
        collection.add("苹果");
        collection.add("西瓜");
        collection.add("榴莲");
        System.out.println(collection.size());
        System.out.println(collection);

        // 删除数据
//        collection.remove("榴莲");
////        collection.clear();
//        System.out.println("删除之后"+collection.size());

        // 遍历元素
        // 使用增强for
        for (Object o : collection) {
            System.out.println(o);
        }
        // 使用迭代器（专门用来遍历集合的方式）
        Iterator iterator = collection.iterator();
        while (iterator.hasNext()) {
            String s = (String) iterator.next();
            System.out.println(s);
            // collection.remove(s);
            iterator.remove();
        }

        // 判断
        // 判断是否存在某个对象
        System.out.println(collection.contains("西瓜"));
        // 判断是否为空
        System.out.println(collection.isEmpty());
    }
}

```

### 实现2
```java
package com.jie.collection;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public class MyCollection02 {
    public static void main(String[] args) {
        // 新建Collection对象
        Collection collection = new ArrayList();
        Student s1 = new Student("张三", 18);
        Student s2 = new Student("李四",20);
        Student s3 = new Student("王五",22);
        // 添加元素
        collection.add(s1);
        collection.add(s2);
        collection.add(s3);
        System.out.println("元素个数: " + collection.size());
        System.out.println(collection.toString());
        //删除
//        collection.remove(s1);
//        collection.clear(); // 只是删除集合中的数据，不会删除对象
//        System.out.println("删除之后长度"+ collection.size());
        // 遍历
        Iterator iterator = collection.iterator();
        while (iterator.hasNext()) {
            System.out.println(iterator.next());
        }
        for (Object o : collection) {
            Student s = (Student) o;
            System.out.println(s);
        }

        //判断
        System.out.println(collection.contains(s1));
        System.out.println(collection.isEmpty());
    }
}

```

## 迭代器 Iterator
+ 专门用来遍历集合的一种方式
    - 有一个指针指向next
    - hasNext()：有下一个元素吗？如果有则返回true，否则返回false
    - hasPrevious()：从集合尾部开始判断是否存在
    - next() ：获取下一个元素
    - remove()：删除元素，在迭代过程中不能使用collection删除方法

```java
// 使用迭代器（专门用来遍历集合的方式）
Iterator iterator = collection.iterator();
while (iterator.hasNext()) {
// while (listIterator.hasPrevious()) {
    String s = (String) iterator.next();
    System.out.println(iterator.next());
    // collection.remove(s);  //在迭代过程中不能使用collection删除方法
    it.remove();
}
```

## 枚举器 <font style="color:rgb(0, 0, 0);background-color:rgb(238, 238, 238);">IEnumerator</font>
### 什么是枚举器
实现IEnumerator接口的类就是枚举器。

### 枚举器作用
1、枚举器就像是序列中的“游标”或“书签”。可以有多个“书签”，移动其中任何一个都可以枚举集合，与其他枚举器互不影响。用来遍历数据结构（表链、数组、集合类成员等）。

2、以下案例数组作为内部数据结构，后期也可以换成数组，链表，树，图等等，而使用者却不用关心这些内部数据表示，这就是迭代器的妙处所在。

```java
// 遍历 使用枚举器
Enumeration e = v.elements();
while (e.hasMoreElements()) {
    String s = (String) e.nextElement();
    System.out.println(e.nextElement());
}
```

## 比较器 comparator
+ 实现定制比较

## LIst子接口
### 基本信息
+ 特点：有序，有下标，元素可以重复
+ 方法
    - void add(int index, Object o)  // 在index位置插入对象o
    - boolean addAll(int index，Object o)  //将一个集合中的一个元素添加到此集合中的index位置
    - Object get(int index) //返回集合中指定位置的元素
    - List subList(int formIndex, int toIndex)  //发那会formIndex和toIndex之间集合的元素

### 接口实现
```java
package com.jie.collection;

import java.util.ArrayList;
import java.util.List;

public class MyList {
    public static void main(String[] args) {
        // 创建集合
        List list = new ArrayList();
        // 添加数据
        list.add(10);
        list.add(20);
        list.add(30);
        list.add(40);
        list.add(50);
        System.out.println("元素数据"+list.size());
        System.out.println(list.toString());
        
        // 删除操作 根据index（下标/索引）删除
        list.remove(0);
        // 转换为Object类型删除
        list.remove((Object) 20);
        System.out.println(list.size());
        System.out.println(list.toString());
        
        // subList 方法 返回子集合  含头不含尾
        list.subList(0, 2);
    }
}

```

## ArrayList
### 数组集合
+ 数组结构实现，查询快，删减慢
+ 运行效率快，线程不安全
+ 存储结构：数组

### ArrayList使用
## Vector
### 数组结构
+ 数组结构实现，查询快，删减慢
+ 运行效率慢，线程安全

### 实现方法
```java
package com.jie.collection;

import java.util.Enumeration;
import java.util.Vector;

public class MyVector {
    public static void main(String[] args) {
        Vector v = new Vector();
        v.add("hello");
        v.add("world");
        v.add("java");
        System.out.println(v.size());
        
        // 遍历 使用枚举器
        Enumeration e = v.elements();
        while (e.hasMoreElements()) {
            String s = (String) e.nextElement();
            System.out.println(e.nextElement());
        }
        
        // 获取第一元素
        v.firstElement();
        // 获取最后一个元素
        v.lastElement();
        System.out.println(v.firstElement());
        System.out.println(v.lastElement());
    }
}

```

## LinkedList
### 链表结构实现
+ 增删快，查询慢
+

### 基本实现
```java
package com.jie.collection;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.ListIterator;

public class MyLinkedList {
    public static void main(String[] args) {
        // 创建集合
        LinkedList list = new LinkedList();
        Student s1 = new Student("郭富城", 20);
        Student s2 = new Student("刘德华", 20);
        Student s3 = new Student("黎明", 20);
        // 添加数据
        list.add(s1);
        list.add(s2);
        list.add(s3);
        System.out.println(list.size());

//        // 删除
//        list.remove(s2);
//        list.clear();
//        System.out.println(list.size());

        // 遍历
        // for遍历
        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i));
        }
        // 增强for
        for ( Object o : list ) {
            Student s = (Student) o;
            System.out.println(o);
        }
        // 迭代器 Iterator
        Iterator iterator = list.iterator();
        while (iterator.hasNext()) {
            Student s = (Student) iterator.next();
            System.out.println(s);
        }
        // List迭代器 ListIterator
        ListIterator listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            Student s = (Student) listIterator.next();
            System.out.println(s);
        }

        // 判断是否存在，是否为空
        System.out.println(list.contains(s1));
        System.out.println(list.isEmpty());

        // 获取索引
        System.out.println(list.indexOf(s2));
    }
}

```

# 泛型
## 简介
+ 本质是参数化类型，把类型作为参数传递
+ 常见的形式有泛型类 ，泛型接口，泛型方法
+ 语法
    - <T,.....> T称为类型占位符，表示引用型数据类型
+ 好处
    - 提高代码的重用性
    - 防止类型转换异常，提高代码的安全性

## 泛型类
+ 语法：类名<T>
+ T ：类型占位符，表示一种引用类型，如果编写多个用逗号隔开
+ 不同泛型类型对象之间不能相互赋值

```java
package com.jie.generic;
// 泛型类
public class Damo01<T> {
    // 使用泛型T 创建变量
    T t;

    // 使用泛型作为方法的参数
    public void show(T t){
        System.out.println(t);
    }

    // 使用泛型作为方法的返回值
    public T getT(){
        return t;
    }
}
class Test {
    public static void main(String[] args) {
        Damo01<String> d = new Damo01<String>();
        d.t = "hello";
        d.show("hello");
        System.out.println(d.getT());
        
        Damo01<Integer> d1 = new Damo01<Integer>();
        d1.t = 20;
        d.show("20");
        System.out.println(d1.getT());
    }
}
```

## 泛型接口
+ 语法 ：接口名<T>
+ 不能创建泛型静态常量
+ 在实现接口时可以先给定参数类型，也可以在实例化的时候给定参数类型

```java
package com.jie.generic;

public interface Damo02<T>{
    String name = "张三";
    T server(T t);
}

class Test1 implements Damo02<String>{

    @Override
    public String server(String s) {
        System.out.println(s);
        return s;
    }

    public static void main(String[] args) {
        Test1 t1 = new Test1();
        t1.server("sssss");
    }
}

class Test2<T> implements Damo02<T>{
    @Override
    public T server(T t) {
        System.out.println(t);
        return t;
    }
    
    public static void main(String[] args) {
        Test2<Integer> t2 = new Test2<Integer>();
        t2.server(1);
    }
}
```

## 泛型方法
+ 语法 ：方法 , <T> 返回值类型
+ 参数类型根据传入参数的类型决定

```java
package com.jie.generic;

public class Damo03 {
    public <T> T show(T t){
        System.out.println("泛型方法"+t);
        return t;
    }
}

class Test3{
    public static void main(String[] args) {
        Damo03 d = new Damo03();
        d.show("String");
        d.show(1);
        d.show(3.14);
    }
}
```

## 
# 泛型集合
## 基本概念
+ 概念 ：参数化类型，类型安全的集合，强制集合元素的类型必须一致
+ 特点 ：
    - 编译时即可检查，而非运行时抛出异常
    - 访问时，不必类型转换
    - 不同泛型之间引用不能相互赋值，泛型不存在多态

```java
package com.jie.generic;

import com.jie.collection.Student;

import java.util.ArrayList;

public class Demo04 {
    public static void main(String[] args) {
        ArrayList<String> list = new ArrayList<>();
        list.add("xxx");
        list.add("yyy");
        list.add("20");
        list.add("30");
        for (Object o : list) {
            System.out.println(o);
        }

        ArrayList<Student> students = new ArrayList<>();
        students.add(new Student("刘德华", 20));
        students.add(new Student("黎明", 20));
        students.add(new Student("郭富城", 20));

        for (Student s : students) {
            System.out.println(s);
        }
    }
}

```

# set子接口
## 基本概念
+ 特点 ：无序，无下标，元素不可重复
+ 方法：全部继承自Collection中的方法

## 基本实现
```java
package com.jie.set;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// 测试set接口的使用
public class Damo01 {
    public static void main(String[] args) {
        // 创建集合
        Set<String> set = new HashSet<>();

        // 添加数据
        set.add("华为");
        set.add("1");
        set.add("2");
        System.out.println(set.size());
        System.out.println(set.toString());

        // 删除数据
        set.remove("1");
        System.out.println(set.toString());
        
        // 遍历
        // 增强for
        for (String s : set) {
            System.out.println(s);
        }
        // 迭代器
        Iterator<String> iterator = set.iterator();
        while (iterator.hasNext()) {
            System.out.println(iterator.next());
        }
        
        // 判断
        System.out.println(set.contains("2"));
        System.out.println(set.isEmpty());
        
    }
}

```

# HashSet类
## 基本概念
+ 基于HashCode计算元素存放位置
+ 当存入数据的哈希码相同时，会调用equals进行确认，如果为true，则拒绝后者存入
+ 存储结构：哈希表（数组+链表+红黑树）

## 简单实现
```java
package com.jie.set;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// 测试set接口的使用
public class Damo01 {
    public static void main(String[] args) {
        // 创建集合
        Set<String> set = new HashSet<>();

        // 添加数据
        set.add("华为");
        set.add("1");
        set.add("2");
        System.out.println(set.size());
        System.out.println(set.toString());

        // 删除数据
        set.remove("1");
        System.out.println(set.toString());
        
        // 遍历
        // 增强for
        for (String s : set) {
            System.out.println(s);
        }
        // 迭代器
        Iterator<String> iterator = set.iterator();
        while (iterator.hasNext()) {
            System.out.println(iterator.next());
        }
        
        // 判断
        System.out.println(set.contains("2"));
        System.out.println(set.isEmpty());
        
    }
}

```

## 存储过程
+ 根据hashcode计算保存的位置，如果位置为空，则直接保存，如果 不为空执行的第二步
+ 再执行equals方法，如果equals方法为true，则认为是重复，否则则形成链表

```java
package com.jie.set;

import java.util.HashSet;
import java.util.Iterator;

public class Demo03 {
    public static void main(String[] args) {
        // 创建集合
        HashSet<Person> set = new HashSet<>();
        // 添加数据
        Person p1 = new Person("zhangsan", 18);
        Person p2 = new Person("lisi", 18);
        Person p3 = new Person("wangwu", 18);
        Person p4 = new Person("zhaoliu", 18);
        set.add(p1);
        set.add(p2);
        set.add(p3);
        set.add(p4);
        System.out.println(set.size());
        System.out.println(set.toString());

        // 删除
        set.remove(new Person("lisi", 18););
        System.out.println(set.size());

        // 遍历
        for (Person p : set) {
            System.out.println(p);
        }

        Iterator<Person> iterator = set.iterator();
        while (iterator.hasNext()) {
            Person p = iterator.next();
        }
    }
}
```

# TreeSet类
+ 基于排列顺序实现元素不重复
+ 实现了SortedSet接口，对集合元素自动排序
+ 元素对象的类型必须实现Comparable接口，指定排序规则

```java
package com.jie.set;

import java.util.Iterator;
import java.util.TreeSet;

//
public class Damo05 {
    public static void main(String[] args) {
        // 创建集合
        TreeSet<Person> treeSet = new TreeSet<>();
        Person person = new Person("zhangsan", 18);
        Person person1 = new Person("lisi", 18);
        Person person2 = new Person("wangwu", 18);
        // 添加数据
        treeSet.add(person);
        treeSet.add(person1);
        treeSet.add(person2);
        System.out.println("元素个数" + treeSet.size());
        System.out.println(treeSet.toString());

        //删除数据
        treeSet.remove(person);

        // 遍历
        for (Person p : treeSet) {
            System.out.println(p);
        }

        Iterator<Person> iterator = treeSet.iterator();
        while (iterator.hasNext()) {
            System.out.println(iterator.next());
        }

        // ,
    }
}

```

# Map集合
## 特点
+ 用于存储任意键值对（key-value）
+ 键：无序，无下标，不能重复
+ 值：无序，无下标，允许重复

## 常用方法
+ V put(K key, V value)  //将对象存入到集合中，关联键值，key重复，则覆盖原值
+ Object get(Object key)  //根据键获取对应的值
+ entrySet<K> //返回所有的额key
+ Collection<V> values()  //返回所有的值的Collection集合
+ Set<Map.Entry<K, V>>  //键值匹配的Set集合

## 基础实现
```java
package com.jie.map;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class MyMap {
    public static void main(String[] args) {
        Map<String, String> map = new HashMap<String, String>();
        map.put("cn", "中国");
        map.put("uk", "英国 ");
        map.put("usa", "美国");

        System.out.println(map.size());
//        map.remove("cn");
        // 遍历方法
        // 先拿到所有的key的集合，再使用迭代器遍历
        Set<String> set = map.keySet();
        Iterator<String> iterator = set.iterator();
        while (iterator.hasNext()) {
            String key = iterator.next();
            String value = map.get(key);
            System.out.println(key + "=" + value);
        }
        //使用entrySet() 方法
        Set<Map.Entry<String, String>> entrySet = map.entrySet();
        for (Map.Entry<String, String> entry : entrySet) {
            String key = entry.getKey();
            String value = entry.getValue();
            System.out.println(key + "=" + value);
        }

        // 判断是否存在key 或 value
        System.out.println(map.containsKey("cn"));
        System.out.println(map.containsValue("中国"));
    }
}

```

# HashMap使用
## 特点
+ 线程不安全，运行效率快，
+ 允许用null作为key或是value
+ 存储结构：哈希表（数组+链表+红黑树）

## 基本实现
```java
package com.jie.map;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class MyMap {
    public static void main(String[] args) {
        Map<String, String> map = new HashMap<String, String>();
        map.put("cn", "中国");
        map.put("uk", "英国 ");
        map.put("usa", "美国");

        System.out.println(map.size());
//        map.remove("cn");
        // 遍历方法
        // 先拿到所有的key的集合，再使用迭代器遍历
        Set<String> set = map.keySet();
        Iterator<String> iterator = set.iterator();
        while (iterator.hasNext()) {
            String key = iterator.next();
            String value = map.get(key);
            System.out.println(key + "=" + value);
        }
        //使用entrySet() 方法
        Set<Map.Entry<String, String>> entrySet = map.entrySet();
        for (Map.Entry<String, String> entry : entrySet) {
            String key = entry.getKey();
            String value = entry.getValue();
            System.out.println(key + "=" + value);
        }

        // 判断是否存在key 或 value
        System.out.println(map.containsKey("cn"));
        System.out.println(map.containsValue("中国"));
    }
}

```

# Hashtale
线程安全，运行效率快，不允许key和value出现null

# TreeMap
基本和treeSet的方法相同

# Collections工具类
collections.sort(list)：对集合进行排序

binarySearch(list, i)：二分查找

copy(bast, list)：将list复制到把bast中，两者的大小需要一致

reverse(list): 反转list的位置

shuffle(list) ：打乱list的数据

list.toArray(): 将list转为数组

Array.asList(array)：将数组转为list  //转完后的数组是受限数组，不能进行添加和删除
', 0, NOW());

INSERT INTO `note` (`id`, `author_id`, `title`, `content`, `like_count`, `created_at`)
VALUES (6, 1002, 'Django', '### URL组成
`scheme://host:port/path/?query-strint=xxx#anchor`

+ scheme:代表的是访问协议，一般为http或者https以及ftp等
+ host：主机名，域名，比如`www.baidu.com`
+ port: 端口号，http协议是80端口，https是443端口
+ path：查询路径，`www.jianhu.com/trending/new`中的`/trending/new`是查询路径
+ query-string：查询字符串，传参，`www.baidu.com/s?wd=python`中`wd=python`是查询字符串,wd是参数名，python是参数值
+ anchor：锚点，后台一般不用管，前段用来做页面定位的

注意：url中的所有字符都是ASCII字符集

### 第一个Django项目
#### 1.创建Django项目
##### 用命令行创建
创建项目：打开终端，进入Django项目的文件夹中使用命令`django-admin startproject [项目名称]`即可创建

##### 在PyCharm中创建
<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1741868609582-50072c03-99ca-47cf-8483-a9e12c9b7eed.png" width="398.5" title="" crop="0,0,1,1" id="ub9be461b" class="ne-image">

#### 2.运行Django项目
用过命令运行：python manage.py runserver

通过pycharm运行：直接点击右上角的绿色三角

#### 项目结构介绍
`manage.py`和项目交互的基本上都是基于这个文件的

`settigs.py`本项目的设置项

`urls.py`配置URL路由

`wsgl.py`项目评语WSGI协议兼容的web服务器入口，部署的时候用

#### project（项目）和app（模块）的关系
app是django项目的组成部分，一个APP代表项目中的一个模块，所有url请求的响应都是有app来处理

通过命令创建app

`python manage.py startapp [app名]`

#### 安装app
在项目的settings.py文件中的INSTALLEO_APPS中加入[app名]

```python
INSTALLEO_APPS = [
    ……，
    ''app名''
]
```

#### url与视图函数的映射
```python
from django.shortcuts import HttpResponse
#创建一个视图函数视图函数接收一个HttpRequest对象
#作为参数，并返回一个HttpResponse对象
def index(request):
    return HttpRespons("hello world!")

urlpatterns = [
    #http://lochost:8000/s
    path("s", index)
]
```

#### url中携带参数
1. 通过查询字符串（query string）:https://www.baidu.com/s?wd=python&a=1

```python
#在book的app中的views.py文件
from django.shortcuts import render, HttpResponse

def book_detail_query_string(request):
    book_id = request.GET.get(''id'')
    name = request.GET.get(''name'')
    return HttpResponse(f"图书id是：{book_id},名称是：{name}")

#在创建的项目中的urls.py中
from book views   #导入[book]app的视图文件views.py
#http://127.0.0.1:8000/book?id=x&name=xx
urlpatterns = [
    path(''book'', views.book_detil_query_string)
]
```

2. 在path中携带：http://127.0.0.1:8000/book/2

```python
#在book的app中的views.py文件
from django.shortcuts import render, HttpResponse

def book_detail_query_string(request, book_id):
    return HttpResponse(f"图书id是：{book_id}")
    
#在创建的项目中的urls.py中
from book views   #导入[book]app的视图文件views.py
#http://127.0.0.1:8000/book/1
urlpatterns = [
    #在book_id前指定参数类型用两点好处，int、slug、uuid、path等
    #1、以后再浏览器中，如果book_id是一个非整形，会出先404错误
    #2、在视图函数中的到的book_id是整形，否则默认为str
    path(''book/<int:book_id>'', views.book_detall_path)
]
```

#### path函数
path函数定义为：`path(route,view,name=None,kwargs=None)`

1. `route`参数：url的匹配规则，这个参数中可以指定url中需要传递的参数。传递参数是用<>来进行指定的，并且在传递参数时可以指定参数类型，其中常用的类型有以下几种：
    - `str`非空字符串，默认的转换器，但不能包含斜杠`/`
    - `int`任意的零或正数的整形，到视图函数中就是一个int类型
    - `slug`由英文中的横杠`-`或下划线`_`连接的英文字符或者数字而成的字符串，例如`abc-def-11-233`
    - `uuid`匹配`uuid`字符串
    - `path`匹配分控的英文字符串，可以包含斜杠`/`
2. `view`参数：可以为一个视图函数或者是`类视图.as_view()`或者是`dango.urls.include()`函数的返回值
3. `name`参数：这个参数是给这个url取个名字的，在项目比较大，url比较多的时候用处很大

#### URL中包含另外一个urls模块：
在项目中不可能只有一个app，如果把每个app的views中的视图都放在urls.py中进行映射，肯定会让代码显得非常乱，因此django给我们提供了一个方法，可以在app内部包含自己的url匹配规则，而在项目的urls.py中再统一包含这个app的urls，使用这个技术需要借助`include`函数

```python
#在（movle）app中创建的urls.py中的代码
from diango.urls improt path
from . import views

#指定应用名称（应用命名空间）
app_name = "movle"

urlpatterns = [
    path(''list'', views.movle_lsit, name=''movle_list'')
    path(''detail/<int:movle_id>'', views.movle_detail, name=''movle_detail'')
]

#在（movle）app中views.py的代码
from django.shortcuts import render,HttpResponse

def movle_list(request):
    return HttpResponse("电影列表")

def movle_detail(request, movle_id):
    return HttpResponse(f"您获取的电影id是：{movle_id}")

#在项目中的urls.py中的代码
from django.urls import path,include


urlpatterns = [
    path(''move/'', include(''movle.urls''))
]

```

#### url反转
```python
from django.urls import reverse,path
from django.shortcuts import HttpResponse

def index(request):
    reverse("book")              ")
    return HttpResponse("hello world")

```

可以通过reverse来实现想反转的url

```python
reverse("list")
> /book/list/
```

如果有应用命名空间或者有实例命名空间，那么应该在反转的时候加上命名空间

```python
reverse(''book:list'')
> /book/list/
```

如果这个url中需要传递参数，那么可以使用kwargs来传递参数

```python
reverse("book:detail", kwargs={"book_id":1})
>/book/detail/1
```

如果想要添加查询字符串的参数只能手动添加

```python
login_url = reverse(''login'') + "?next=/"
```

### 模版
#### 模版介绍
##### DTL与普通的HTML文件的区别
DTL模版是一种带有特殊语法的HTML文件，这个HTML文件可以被Django编译，可以传递参数进去，实现数据动态化，在编译完成后，生成一个普通的HTML文件，然后发送给客户端

##### 渲染模版
`render_to_string`:找到模版，然后姜末班编译后渲染成python的字符串格式，最后通过HttpResponse类包装成一个HttpResponse对象返回回去、

```python
from django.template.loader import render_to_string
from django.http.import HtpResponse
def book_detail(request, book_id):
    html = render_to_string("detail.html")
    return HttpResponse(html)
```

直接将模版渲染成字符串和包装成HttpResponse对象一步到位完成

```python
from django.startcuts import render
def book_list(request):
    return render(request,''list.html'')
```

##### 模版查找路径配置
在项目的settings.py文件中。有一个TEMPLATES配置，这个配置包含了模板引擎的配置，模板查找路径的配置，模板上下文的配置等

+ `DIRS`:这是一个列表，在这个列表中可以存放所有的模板路径，以后在视图中使用render或者render_to_string渲染模板的时候，会在这个列表的路径中查找模板。
+ `APP_DIRS`:默认为True，这个设置为True后，会在INSTALLED_APPS的安装了的APP下的templates文件夹中查找模板。
+ 查找顺序：比如代码render(''1ist.htm1'')。先会在DIRS这个列表中依次查找路径下有没有这个模板，如果有，就返回。如果DIRS列表中所有的路径都没有找到，那么会先检查当前这个视图所处的app是否已经安装，如果已经安装了，那么就先在当前这个app下的templates文件夹中查找模板，如果没有找到，那么会在其他已经安装了的app中查找。如果所有路径下都没有找到，那么会抛出一个TemplateDoesNotExist的异常。

#### DTL模板语法
##### 变量
变量的命名规范和python类似，只能是英文字母，阿拉伯数字和下划线的组合，不能出现标点符号和特殊字符。变量需要通过视图函数的渲染，视图函数在使用render或render_to_string的时候可以传递一个context的参数，这个参数是一个字典类型，以后再模版中的变量就从这个字典中读取值的

```python
#profile.html模板代码
<p>{{ username }}</p>
<p>图书名称：{{ book.name }}</p>
<p>下标为1图书的名称{{ books.1.name }}</p>
<p>姓名为：{{ person.realname }}</p>

#views.py代码
def profile(request):
    #1、普通参数
    username = ''知了课堂''
    #2、字典类型
    book = {''name'': "水浒传",''auther'': "施耐庵"}
    #3、列表
    books = [
        {''name'': "水浒传",''auther'': "施耐庵"},
        {''name'': "三国演义",''auther'': "罗贯中"}
    ]
    #4、对象
    class Person：
        def __int__(self, realname):
            self.realname = realname
    context = {
        ''username'': username，
        ''book'': book,
        ''books'': books,
        ''person''；Person("知了课堂")
    }
    return render(request,''profile.html'', context=context)
```

#### 常用的模版标签
1. if标签，相当与python中的if语句，有elif和else相对应，但所有的标签都需要用标签符号{{%%}}进行包裹，if中可以使用==，!=，<，<=，>，>=，in，not，in，is，is not等判断运算符

```python
#views.py代码
def if_view(request):
    age = 17 
    return render(request, ''if.html'', context={''age'':age})

#if.html模板代码
{% if age < 18 %}
    <p>年龄未满18岁</p>
{% elif age == 18 %}
    <p>年龄刚满18岁</p>
{% else %}
    <p>年龄已满18岁</p>
{% endif %}    
```

2. for...in...标签：for...in...类似于python中的for...in...。可以遍历列表，元组，字典，字符串，字典等一切可以遍历的对象

```python
#views.py代码
def for_view(request):
    #1、列表
    books = [
        {''name'': "水浒传",''auther'': "施耐庵"},
        {''name'': "三国演义",''auther'': "罗贯中"}
    ]
    #2、字典
    person = {
        "realname":"知了课堂",
        "age":18,
        "height": 180
    }
    context = {
        ''books''；books,
        ''person'': person
    }
    return render(request, ''for.html'',context=context)

#for.html模板代码  
<table>
    <thead>
        <tr>
            <th>序号</th>
            <th>名称</th>
            <th>作者</th>
        </tr>
    </thead>
    <tbody>
        {% for book in books %}
            <tr>
                <td>{{ forloop.counter }}</td>
                <td>{{ book.name }}</td>
                <td>{{ book.auther }}</td>
            </tr>
        {% endfor %}
    </tbody>
</table>
<div>
    {% for key,value in person.items %}
        <p>{{key}}:{{value}}</p>   
    {% endfor %}
</div>


         
```

在for循环中DTL提供了一些变量可供使用

    - forloop.counter:当变量循环的下标，以1做为起始值
    - forloop.counter0:当变量循环的下标，以0做为起始值
    - forloop.revcounter:当前循环的反向下标值，比如列表有5个元素，那么第一次遍历这个属性是等于5，第二次是4，依次类推，以1作为结尾
    - forloop.revcounter0:与forloop.revcounter类似，不同的是最后一个下标时从0开始
    - forloop.first:是否是第一次遍历
    - forlloop.last:是否是最后一次遍历
3. with标签：在模版中定义变量，有时候一个变量访问的时候比较复杂，那么可以先把这个复杂的变量缓存到一个变量上，以后就可以直接使用这个变量

```python
#views.py代码
def with_view(request): 
    context = {
        "books"；[
            {''name'': "水浒传",''auther'': "施耐庵"},
            {''name'': "三国演义",''auther'': "罗贯中"}
        ]
    }
    return render(request, ''with.html'', context=context)

{% with book1=bools.1 %}
    <p>{{ book1.name }}/{{ book1.author }}</p>
{% endwith %}
```

4. url标签：在标签中，我们经常要写一些url，比如某个a标签中需要定义href属性。当然如果通过硬编码的方式直接将这个url写死在里面也是可以的。但是这样对于以后项目维护可能不是一件好事。因此建议使用这种反转的方式来实现，类似于django中的reverse一样

```python
#views.py代码
def url_view(request):
    return render(request, ''url.html'', context=context)

<a href="{% url ''baidu'' %}">百度</a>
```

	如果url反转的时候需要传递参数，那么可以再后面传递，但是参数分位置参数和关键字参数，两者不能同时使用

```python
#path部分
path(''detail/book_id/'', views.book_detail, name=''datail'')

#url反转，使用位置参数
</a href="{% url ''book:datail'' 1 %}"></a>

#url反转，使用关键字参数
</a href="{% url ''book:datail'' book_id=1 %}"></a>

#如果要传递查询字符串参数，只能手动输入
</a href="{% url ''book:datail'' 1 %}?page=1"></a>

#如果需要传递多个参数，参数间用空格进行分隔
</a href="{% url ''book:datail'' book_id=1 page=2 %}"></a>
```

#### 模版常用过滤器
1. add

将传进来的参数添加到原来的值上面。这个过滤器会尝试将值和参数转换成整形然后进行相加。如果转换成整形过程中失败了，那么会将值和参数进行拼接。如果是字符串，那么会拼接成字符串，如果是列表，那么会拼接成一个列表

```python
{{ value|add:"2" }}
#如果value是4，结果将是6，如果value是abc，则结果是abc2
```

2. cut

移除值中所有指定的字符串

```python
{{ value|cat:" "}}
#切除value中所有的空格
```

3. data

将一个日期按照指定的格式，格式化成字符串

```python
context = {
    "birthday": datetime.new()
}

{{ birthday|data:"Y/m/d" }}

#Y:四位数年份，m:两位数月份，n:月份（1-9前面没有0）
#d:两位数的天，j:天（1-9前面没有0），
#h（H）:12（24）小时格式，g（G）:12(24)小时（1-9前面没有0）
#i:分钟（1-9前面没有0），s：秒（1-9前面没有0）
```

4. default

如果值被评估为False，比如[], "", None, ()等这些在if判断中为False的值，都会使用default过滤器提供的默认值

```python
{{ value|default:"nothing" }}
#如果value是一个空字符串，代码就会输出nothing
```

5. default_if_none

如果值是None，那么将会使用default_if_none提供的默认值

```python
{{ value|default_if_none:"notshing" }}
#如果value是一个空字符串"",那么会输出空字符串
#只有value的值是None时，以上代码才会输出nothing
```

6. first

返回列表/元组/字符串中的第一个元素

```python
{{ value|first }}
#如果value等于[''a'', ''b'', ''c''],那么输出的值是a
```

7. last

返回列表/元组/字符串中的最后一个元素

```python
{{ value|last }}
#如果value等于[''a'', ''b'', ''c''],那么输出的值是c
```

8. floatformat

使用四舍五入的方式格式化一个浮点类型

```python
{{ value|floatformat }}  #保留1位小数
{{ value|floatformat:3 }}  #保留3位小数

```

9. join

类似于python中的join，将列表/元组/字符串用指定的字符进行拼接

```python
{{ value|join;"/"}}
#如果value等于[''a'', ''b'', ''c''],那么输出的值是a/b/c
```

10. length

获取一个列表/元组/字符串/字典的长度

```python
{{ value|length }}
#如果value等于[''a'', ''b'', ''c''],那么输出的是3，如果value位None，那么返回0
```

11. lower

将值中所有的字符全部转换成小写

```python
{{ value|lower }}
```

12. upper

将值中所有的字符全部转换成大写

13. random

在被被的列表/字符串/元组中随机选择一个值

```python
{{ value|random }}
#如果value等于[''a'', ''b'', ''c''],那么输出结果是列表中的随机一个
```

14. safe

标记一个字符串是安全的，也即会关掉这个字符串的自动转义

```python
{{ value|safe }}
#如果value是"<h2>Hello World</h2>"
#在过滤前直接将"<h2>Hello World</h2>"以字符串的方式输出
#在过滤后会以二级标题的方式输出
```

15. slice

类似于python中的切片操作

```python
{{ some_list|slice:"2:"}}
#将列表从2开始做切片操作
```

16. striptags

删除字符串中所有的HTML标签

```python
{{ value|striptags }}
#如果value是"<h2>Hello World</h2>"
#那么将直接输出Hello World
```

17. truncatechars

如果给定的字符串的长度超过了过滤器指定的长度，那么就会进行切割，并且会用三个点来拼接做为省略号

```python
{{ value|truncatechars：5 }}
#如果value是北京欢迎您，输出结果是北京...
#因为...会占用3个字符
```

18. truncatechars_html

类似于truncatechars，只不过不会切割html标签

```python
{{ value|truncatechars：5 }}
#如果value是:<p>北京欢迎您</p>
#输出结果是:</p>北京...</p>
```

#### 模版结构
##### include模版
有时候一些代码是在许多模版中都用到的，如果我们每次都重复的去拷贝代码那肯定是不符合项目的规范，一般我们可以把这些重复的代码提取出来，就和python中的函数一样，以后想要使用这些代码的时候，就通过include包含进来这股标签是include

```python
#header.html
<p>我是header</p>

#footer.html
<p>我是foorter</p>

#main.html
{% include ''header.html'' %}
<p>我是main内容</p>
{% include ''footer.html'' %}
```

includ标签寻找路径的方式，也跟render渲染模版的函数是一样的

默认include标签包含模版，会自动使用主模版下的正文，也可以自动使用主模版中的变量

```python
#views.py
context = {"articles":[
    ''小米U7'',
    ''ChatGPT 5 发布''
]}
return render(request, ''main.html'', context=context)

#header.html
{% for article in artincles %}
    <li>{{ article }}</li>
{% endfor %}

#main.html
{% include ''header.html'' %}
```

##### 模版继承
在前端页面开发中。有些代码是需要重复使用的。这种情况可以使用include标签来实现。也可以使用另外一个比较强大的方式来实现,那就是模版继承，模版继承类似于python中的类，在父类中可以先定义好一些变量和方法，然后在子类中实现。模版继承也可以在父模版中先定义好一些子模版需要用到的代码，然后子横版直接继承就可以了，并且因为子模版肯定有自己的不同代码，因此可以在父横版中定义一个block接口，然后子模版再去实现，以下是父模版的代码:

```html
<!DOCTYPE html>
<html>
<hand>
  <link rel="stylesheet" href="{% static ''style.css'' %}" />
  <title>{% block title %}我是站点{% endblock %}</title>
</hand>
<body>
  <div id="sidebar">
    {% block sidbar %}
      <ul>
        <li><a href="/">首页</a></li>
        <li><a bref="/blog/">博客</a></li>
      </ul>
    {% endblock %}
  </div>
  <div id="content">
    {% block content %}{% endblock %}
  </div>
</body>
  
</html>
```

在父模版中定义了两个接口，子模版通过extends标签来实现

```html
{% extends "baase.html" %}

{% block title %}博客列表{% endblock %}

{% block content %}
  {% for entry in blog_entries %}
    <h2>{{ entry.title }}</h2>
    <p>{{ entry.body }}</p>
  {% endfor %}
{% endblock %}
```

需要注意的是：extends标签必须放在模版的第一行，子模版中的代码必须放在block中，否则不会被渲染

如果在某个block中需要使用父模版的内容，那么可以使用{{block.super}}来继承，比如上例，{%b1ock title%)，如果想要使用父模版的title，那么可以在子模版的tit1e block中使用{{b1ock.super }} 来实现。

在定义block的时候，除了在block开始的地方定义这个block的名字，还可以在b1ock结束的时候定义名字。比如{% block title %}{% endblock title %}这在大型模版中显得尤其有用，能让你快速的看到b1ock包含在哪里

#### 加载静态文件
在一个网页中，不仅仅只有一个html骨架，还需要css样式文件，js执行文件以及一些图片等。因此在DTL中加载静态文件是一个必须要解决的问题。在DTL中，使用static标签来加载静态文件。要使用static标签，首先需要(%1oad static %)。加载静态文件的步骤如下:

1. 首先确保django.contrib.staticfiles已经添加到settings.INSTALLEO_APPS中
2. 确保在 settings.py 中设置了 STATIC_URL 。

```python
STATIC_URL = ''static/''  
```

3. 在已经安装了的 app 下创建一个文件夹叫做 static ，然后再在这个 static 文件夹下创建一个当前 app 的名字的文件夹，再把静态文件放到这个文件夹下。例如你的 件叫做 app 叫做 book ，有一个静态文 zhiliao.jpg ，那么路径为 book/static/book/zhiliao.jpg 。（为什么在 app 下创建一 个static文件夹，还需要在这个 static 下创建一个同 app 名字的文件夹呢？原因是如果直接把静 态文件放在 static 文件夹下，那么在模版加载静态文件的时候就是使用 个app之间有同名的静态文件，这时候可能就会产生混淆。而在 app 文件夹，在模版中加载的时候就是使用 zhiliao.jpg ，如果在多 static 文件夹下加了一个同名 app/zhiliao.jpg ，这样就可以避免产生混淆。）
4. 如果有一些静态文件是不和任何 app 挂钩的。那么可以在 settings.py 中添加 STATICFILES_DIRS ，以后 DTL 就会在这个列表的路径中查找静态文件

```python
STATICFILES_DIRS = [
    #os.path.join(BASE_DIR,"static")
    BASE_IRS / ''static''
]
```

5.  在模版中使用 load 标签加载`static`标签。比如要加载在项目的 文件。那么示例代码如下

```html
{% load static %}
<link rel="stylesheet" href="{% static ''style.css'' %}">
<script src="{% static ''js/index.js'' %}"></script>
```

6.  如果不想每次在模版中加载静态文件都使用`load`加载`static`标签，那么可以在`style.css`的`TEMPLATES/OPTIONS`添加`settings.py`中`''builtins'':[''django.templatetags.static'']`，这样以后在模版 中就可以直接使用`static`标签，而不用手动的`load`了。

```python
TEMPLATES = [
    {
        ''BACKEND'': ''django.template.backends.django.DjangoTemplates'',
        ''DIRS'': [BASE_DIR / ''templates'']
        ,
        ''APP_DIRS'': True,
        ''OPTIONS'': {
        ''context_processors'': [
            ''django.template.context_processors.debug'',
            ''django.template.context_processors.request'',
            ''django.contrib.auth.context_processors.auth'',
            ''django.contrib.messages.context_processors.messages'',
        ],
        # 这里加载
        ''builtins'':[''django.templatetags.static'']
        },
    },
]
```

7.  如果没有在`settings.INSTALLED_APPS`中添加`django.contrib.staticfiles`。那么我们就需要 手动的将请求静态文件的`url`与静态文件的路径进行映射了，这个操作通常用来加载媒体文件（上 传的文件）。示例代码如下：

```python
from django.conf import settings
from django.conf.urls.static import static
urlpatterns = [
path(''admin/'', admin.site.urls),
    ...
] + static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
```

在`settings.py`中的`MEDIA_URL`和`MEDIA_ROOT`的配置如下

```python
MEDIA_ROOT = BASE_DIR / ''media''
MEDIA_URL= ''/media/''
```

** 注意：静态文件和媒体文件，最好都是通过Nginx等专业的web服务器来部署，以上方式仅在开发阶段 使用。**

### 数据库操作
#### Django配置连接数据库：
在操作数据库之前，首先先要连接数据库。Django 连接数据库，不 需要单独的创建一个连接对象。只需要在`settings.py`文件中做好数据库相关的配置就可以了。示例代 码如下：

```python
DATABASES = {
    ''default'': {
        # 数据库引擎 MySQL
        ''ENGINE'': ''django.db.backends.mysql'',
        # 数据库名称
        ''NAME'': BASE_DIR / ''book'',
        # 连接数据库的用户名
        ''USER'': ''root'',
        # 连接MySQL的密码
        ''PASSWORD'': ''@Root1234'',
        # MySQL主机地址
        ''HOST'': ''192.168.3.33'',
        # MySQL数据库的端口号
        ''PORT'': ''3306'',
    }
}
```

其中engine的选择还有以下：

`''django.db.backends.postgresql''`

`''django.db.backends.mysql''`

`''django.db.backends.sqlite3''`

`''django.db.backends.oracle''`

#### 在django中操作数据库
1.使用原生的SQL语句

在Django中使用原生`sql`语句操作、`python db api`的接口来操作。如果你的`mysql`驱动 使用的是`pymysql`，那么你就是使用`pymysql`来操作的，只不过django将数据库连接的这一部分封装好了，我们只要在 `Django`好了,我们只要在`settings.py`中配置好了数据库连接信息后直接使用`Django`封装好的接口就可以操作了。示例代码如下

```python
# 使用django封装好的connection对象，会自动读取settings.py中数据库的配置信息
from django.db import connection
# 获取游标对象
cursor = connection.cursor()
# 拿到游标对象后执行sql语句
cursor.execute("select * from book")
# 获取所有的数据
rows = cursor.fetchall()
# 遍历查询到的数据
for row in rows:
 print(row)
```

以上的`execute`以及`fetchall`方法都是`Python DB API`规范中定义好的。任何使用Python来操作MySQL的驱动程序都应该遵循这个规范。所以不管是使用`pymysql `或者是`mysqlclient`或者是`mysqldb`，他们的接口都是一样的。更多规范请参考:https://www.python.org/dev/peps/pep-024 9/ 。

#### python DB API下规范下cursor对象常用接口：
1.`description`：如果 cursor 执行了查询的 sql 代码。那么读取 cursor.description 属性的时 候，将返回一个列表，这个列表中装的是元组，元组中装的分别是`(name,type_code,display_size,internal_size,precision,scale,null_ok)`，其中 表的是查找出来的数据的字段名称，其他参数暂时用处不大。

2.`rowcount`：代表的是在执行了 sql 语句后受影响的行数。

3.`close`：关闭游标。关闭游标以后就再也不能使用了，否则会抛出异常。

4.`execute(sql[,parameters])`：执行某个 sql 语句。如果在执行 name 代 sql 语句的时候还需要传递参 数，那么可以传给 parameters 参数。示例代码如下：

```python
cursor.execute("select * from article where id=%s",(1,))
```

5.` fetchone`：在执行了查询操作以后，获取第一条数据。

6.`fetchmany(size)`：在执行查询操作以后，获取多条数据。具体是多少条要看传的 果不传size参数，那么默认是获取第一条数据。

7. `fetchall`：获取所有满足 sql 语句的数据。

#### ORM模型介绍
##### ORM模型介绍
ORM全称Object Relational Mapping，中文叫做对象关系映射，通过 ORM 我们可以通过类的方式去操作数据库，通过把表映射成类，把行作实例，把字段作为属性。

##### 创建ORM模型：
ORM模型一般都是放在想要映射到数据库中，那么这个app的 `models.py`文件中。每个app都可以拥有自己的模型。并且如果这个模型app必须要放在`settings.py`的`INSTALLED_APP`中进行安装。以下是 写一个简单的书籍ORM模型

```python
from django.db import models
class Book(models.Model):
    name = models.CharField(max_length=20,null=False)
    author = models.CharField(max_length=20,null=False)
    # 自动获取得到参数的时间
    pub_time = models.DateTimeField(auto_now_add=True)
    price = models.FloatField(default=0)
```

##### 映射模型到数据库中
1. 在`settings.py`中，配置好`DATABASES`，做好数据库相关的配置。

2. 在app中的`models.py`中定义好模型，这个模型必须继承自`django.db.models `

3. 将这个 app 添加到`settings.py`的`INSTALLED_APP`中。

4. 在命令行终端，进入到项目所在的路径，然后执行命令 python `manage.py makemigrations`来生成迁移脚本文件。

5. 同样在命令行中，执行命令`python manage.py migrate`来将迁移脚本文件映射到数据库中。

#### CRUD操作
##### 添加数据
```python
from django.http import HttpResponse
from .models import Book

def add_book(request):
    book = Book(name="三国演义", author="罗贯中",price=100)
    book.save()
    return HttpResponse("创建成功")
```

##### 查找数据
查找数据都是通过objects对象来实现的

1. 查找所有数据

```python
books = Book.objects.all()
    for book in books:
        print(book.id, book.name, book.author,book.pub_time, book.price)
    return HttpResponse("查找成功")
```

2. 数据过滤

在查找数据的时候，有时候需要对一些数据进行过滤，使用`objects`的`filter`方法

```python
books = Book.objects.filter(name="三国演义")
    for book in books:
        print(book.id, book.name, book.author,book.pub_time, book.price)
    return HttpResponse("查找成功")
```

3. 获取单个对象

使用`filter`返回的是所有满足条件的结果集。有时候如果只需要返回第一个满足条件的对象。那么可以 使用get方法

```python
    try:
        book = Book.objects.get(name="三国演义")
        print(book.name)
    except Book.DoesNotExist:
        print("图书不存在")
```

4. 数据排序

根据某个字段来进行排序使用`order_by`方法来实现，默认从小到大排序，可在字段前加上负号`-`来实现倒序

```python
def order_view(request):
    books = Book.objects.order_by("-pub_time")
    for book in books:
        print(book.id, book.name, book.author,book.pub_time, book.price)
    return HttpResponse("排序成功")
```

##### 修改数据
在查找到数据后，便可以进行修改了。修改的方式非常简单，只需要将查找出来的对象的某个属性进行 修改，然后再调用这个对象的 save 方法便可以进行修改

```python
def updata_view(request):
    book = Book.objects.first()
    book.name = "西游记"
    book.save()
    return HttpResponse("修改成功")
```

##### 删除数据
在查找到数据后，便可以进行删除了，使用的是`delete`方法

```python
ef delete_view(request):
    book = Book.objects.filter(name="西游记")
    book.delete()
    return HttpResponse("删除成功")
```

#### 模型常用的Field和参数
##### 常用字段
1. AutoField：

映射到数据库中是`int`类型，可以有自动增长的特性。一般不需要使用这个类型，如果不指定主键，那么模型会自动的生成一个叫做`id`的自动增长的主键。如果你想指定一个其他名字的并且具有自动增长的主键，使用`AutoField`也是可以的。

2. BigAutoField:

64位的整形，类似于AutoField，范围是`1- 9223372036854775807`

3. BooleanField:

在模型层面接收的是`True/False`  。在数据库层面是`tinyint`类型，如果没有指定默认值，则默认值是None

4. CharField；

在数据库层面是 varchar 类型。默认值是 Python 层面就是普通的字符串。这个类型在使用的时候必须要指定最大的长度，也即必须要传递` `max_length`这个关键字参数进去。

5. DataField:

日期类型。在Python中是`datetime.date`类型，可以记录年月日。在映射到数据库中也是使用这个Field`可以传递以下几个参数：

1. date 类型。`auto_now`：在每次这个数据保存的时候，都使用当前的时间。比如作为一个记录修改日期的字段，可以将这个属性设置为`True`。

2.`auto_now_add`：在每次数据第一次被添加进去的时候，都使用当前的时间。比如作为一个记录第一次入库的字段，可以将这个属性设置为`True` 。

6. DataTimeField:

日期时间类型，类似于DateField。不仅仅可以存储日期，还可以存储时间。映射到数据库中是datetime类型。这个 Field 也可以使用`auto_now`和`auto_now_add`两个属性。

7. TiemField:

时间类型。在数据库中是`time`类型。Python中是`datetime.time`类型

8. EmailField:

类似于 CharField 。在数据库底层也是一个 `varchar`,最大长度为254个字符

9. FileField：

用来存储文件的。这个请参考后面的文件上传章节部分。

10. ImageField:

用来存储图片文件的。这个请参考后面的图片上传章节部分。

11. FloatField:

浮点类型。映射到数据库中是 float 类型。

12. IntegerField:

整形。值的区间是-2147483648——2147483647 。

13. BigIntegerField:

大整形。值的区间是`-9223372036854775808——9223372036854775807`。

14. PositiveIntegerField:

正整形。值的区间是`0-2147483647`

15. SamllIntegerField：

小整形。值的区间是`-32768——32767`。

16. PositiveSmallIntegerField:

正小整形。值的区间是`0-32767`。

17. TextField:

大量的文本类型。映射到数据库中是`longtext`类型。

18. UUIDField:

只能存储 uuid 格式的字符串.uuid 是一个32位的全球唯一的字符串，一般用来作为主键。

19. URLFIeld：

类似于 CharField ，只不过只能用来存储url格式的字符串。并且默认的 `max_length`是200



##### field的常用参数
1. null

如果设置为`True`，Django将会在映射表的时候指定是否为空。默认是为`False`。在使用字符串相关的`Field``（CharField/TextField）`的时候，官方推荐尽量不要使用这个参数，也就是保持默认值`False`因为Django在处理字符串相关的`Field`的时候，即使这个`Field`的 `null=True`，如果你没有给这个`Field`传递任何值，Django也会使用一个空的字符串`""`来作为默认值存储进去。因此如果再使用`null=True`,Django会产生两种空值的情形（NULL或者空字符串）。如果想要在表单验证的时候允许这个字符串为空，那么建议使用`blank=True`。ModelForm如果你的`Field`是`BooleanField`，那么对应的可空的字段则为 `NullBooleanField`。

2. blank

标识这个字段在表单验证的时候是否可以为空。默认是`False`这个和`null`是有区别的 , `null`是一个纯数据库级别的。而`blank`是表单验证级别的。

3. db_column

这个字段在数据库中的名字。如果没有设置这个参数，那么将会使用模型中属性的名字。

4. default

默认值。可以为一个值，或者是一个函数，但是不支持`lambda`表达式。并且不支持列表/字典/集合等可变的数据结构。

5. primary_key

是否为主键，默认为`Fales`

6. unique:

在表中这个字段的值是否唯一，一般是设置手机号码/邮箱等

更多Field参数请参考官方文档：[ https://docs.djangoproject.com/zh-hans/5.0/ref/models/fields/  ](https://docs.djangoproject.com/zh-hans/5.0/ref/models/fields/%20)

##### 模型中Meta配置
对于一些模型级别的配置。我们可以在模型中定义一个类，叫做 Meta 。然后在这个类中添加一些类属性 来控制模型的作用。比如我们想要在数据库映射的时候使用自己指定的表名，而不是使用模型的名称。 那么我们可以在 Meta 类中添加一个 db_table 的属性。

1. db_table

这个模型映射到数据库中的表名。如果没有指定这个参数，那么在映射的时候将会使用模型名来作为默认的表名。

2. ordering

设置在提取数据的排序方式。后面章节会讲到如何查找数据。比如我想在查找数据的时候根据添加的时间排序

```python
class Book(models.Model):
    name = models.CharField(max_length=100)
    author = models.CharField(max_length=100)
    # 获取时间
    pub_time = models.DateTimeField(auto_now_add=True)
    price = models.FloatField(default=0)

    class Meta:
        db_table = ''book_table''
        ordering = [''-pub_time'',''name'']
```



#### 外键和表关系
##### 外键
在MySQL中，表有两种引擎，一种是`InnoDB`，另外一种是`myisam`。如果使用的是`InnoDB`引擎，是支持外键约束的。外键的存在使得`ORM` 框架在处理表关系的时候异常的强大。因此这里我们首先来介绍下外键在`Django`中的使用。

类定义为`class ForeignKey(to,on_delete,**options)`。第一个参数是引用的是哪个模型，第二个参数是在使用外键引用的模型数据被删除了，这个字段该如何处理，比如有`CASCADE`、`SET_NULL`等。这里以一个实际案例来说明。比如有一个`User`和一个`Article`两个模型。一个`User`可以发表多篇文章，一个`Article`只能有一个`Author`，并且通过外键进行引用

```python
class User(models.Model):
    username = models.CharField(max_length=20)
    password = models.CharField(max_length=100)

class Article(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField()
    
    author = models.ForeignKey("User",on_delete=models.CASCADE)
```

以上使用`ForeignKey`来定义模型之间的关系。即在`Article`的实例中可以通过`author`数学来操作对应的`User`模型。这样使用起来非常的方便

```python
article = Article(title=''abc'',content=''123'')
author = User(username=''张三'',password=''111111'')
article.author = author
article.save()

# 修改article.author上的值
article.author.username = ''李四''
article.save()
```

在底层，`Django`为`Article`表添加了一个`属性名_id`的字段（比如`author`的字段名称是`author_id`），这个字段是一个外键，记录着对应的作者的主键。以后通过`article.author`访问的时候，实际上是先通过`author_id`找到对应的数据，然后再提取`User`表中的这条数据，形成一个模型。

如果想要引用另外一个`app`的模型，那么应该在传递`to`参数的时候，使用`app.model_name`进行指定。以上例为例，如果`User`和`Article`不是在同一个app中，那么在引用的时候的示例代码如下：

```python
# User模型在user这个app中
class User(models.Model):
    username = models.CharField(max_length=20)
    password = models.CharField(max_length=100)
# Article模型在article这个app中
class Article(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField()

    author = models.ForeignKey("user.User",on_delete=models.CASCADE
```

如果模型的外键引用的是本身自己这个模型，那么to参数可以为`''self''`，或者是这个模型的名字。在论坛开发中，一般评论都可以进行二级评论，即可以针对另外一个评论进行评论，那么在定义模型的时候就需要使用外键来引用自身

```python
class Comment(models.Model):
    content = models.TextField()
    origin_comment = models.ForeignKey(''self'',on_delete=models.CASCADE,null=True)
    # 或者
    # origin_comment = 

models.ForeignKey(''Comment'',on_delete=models.CASCADE,null=True)
```

##### 外键删除操作
如果一个模型使用了外键。那么在对方那个模型被删掉后，该进行什么样的操作。可以通过`on_delete`来指定，可指定的类型如下

1. CASCADE： 级联操作。如果外键对应的那条数据被删除了，那么这条数据也会被删除。
2. PROTECT： ：受保护。即只要这条数据引用了外键的那条数据，那么就不能删除外键的那条数据。
3. SET_NULL： 设置为空。如果外键的那条数据被删除了，那么在本条数据上就将这个字段设置为空。如果设置这个选项，前提是要指定这个字段可以为空。
4. SET_DEFAULL： 设置默认值。如果外键的那条数据被删除了，那么本条数据上就将这个字段设置为 默认值。如果设置这个选项，前提是要指定这个字段一个默认值。
5. SET()： 如果外键的那条数据被删除了。那么将会获取 SET 函数中的值来作为这个外键的值。 SET 函数可以接收一个可以调用的对象（比如函数或者方法），如果是可以调用的对象，那么会将这个 对象调用后的结果作为值返回回去。
6. DO_NOTHING： 不采取任何行为。一切全看数据库级别的约束。

** 以上这些选项只是Django级别的，数据级别依旧是RESTRICT！ **



##### 表关系
表之间的关系都是通过外键来进行关联的。而表之间的关系，无非就是三种关系：一对一、一对多（多 对一）、多对多

1. 一对多

应用场景：比如文章和作者之间的关系。一个文章只能由一个作者编写，但是一个作者可以写多篇 文章。文章和作者之间的关系就是典型的多对一的关系。

实现方式： 一对多或者多对一，都是通过`ForeignKey`来实现的。还是以文章和作者的案例进行讲解

```python
class User(models.Model):
    username = models.CharField(max_length=20)
    password = models.CharField(max_length=100)
 
class Article(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField()
    author = models.ForeignKey("User",on_delete=models.CASCADE)
```

那么以后再给Article对象指定author，就可以使用下面代码来实现， 并且以后如果想要获取某个用户下所有的文章，可以通过`article_set`来实现

```python
def one_to_many(request):
    user = User.objects.first()
    articles = user.article_set.filter(title__contains=''Chat'').all()
    for article in articles:
        print(article.title)
    return HttpResponse("成功！！")
```

2. 一对一

应用场景：比如一个用户表和一个用户信息表。在实际网站中，可能需要保存用户的许多信息，但是有些信息是不经常用的。如果把所有信息都存放到一张表中可能会影响查询效率，因此可以把用户的一些不常用的信息存放到另外一张表中我们叫做`UserExtension`。但是用户表`User`和用户息表`UserExtension`就是典型的一对一了。

实现方式：`Django`为一对一提供了一个专门的`Field`叫做`OneToOneField`来实现一对一操作。

```python
class User(models.Model):
    username = models.CharField(max_length=20)
    password = models.CharField(max_length=100)

class UserExtension(models.Model):  
    birthday = models.DateTimeField(null=True)  
    school = models.CharField(blank=True,max_length=50)  
    user = models.OneToOneField("User", on_delete=models.CASCADE)
```

在`UserExtension`模型上增加了一个一对一的关系映射。其实底层是在 `UserExtension`增加了一个`user_id`，来和`user`表进行关联，并且这个外键数据在表中必须是唯一的，来保证一对一。

3. 多对多

应用场景：比如文章和标签的关系。一篇文章可以有多个标签，一个标签可以被多个文章所引用。 因此标签和文章的关系是典型的多对多的关系。

实现方式：`Django`为这种多对多的实现提供了专门的`Field`叫做 `ManyToManyField`还是拿文章和标签为例行讲解。示例代码如下：

```python
class Article(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField()
    tags = models.ManyToManyField("Tag",related_name="articles")

class Tag(models.Model):
    name = models.CharField(max_length=50)
```

在数据库层面，实际上`Django`是为这种多对多的关系建立了一个中间表。这个中间表分别定义了两个外键，引用到`article`和`tag`两张表的主键。

#### 查询操作
查找是数据库操作中一个非常重要的技术。查询一般就是使用`filter`、`exclude`以及`get`三个方法实现。我们可以在调用这些方法的时候传递不同的参数来实现查询需求。在来`ORM`层面，这些查询条件都是使用`field`+`__`+`condition`的方式来使用的。以下将那些常用的查询条件来一一解释。

##### 查询条件
1. exact

使用精确的`=`进行查找。如果提供的是一个`None`，那么在`SQL`层面就是被解释为`NULL`

```python
article = Article.objects.get(id__exact=14)
article = Article.objects.get(id__exact=None)
```

以上的两个查找在翻译为`SQL`语句为如下：

```sql
select ... from article where id=14;
select ... from article where id IS NULL;
```

2. iexact

使用`like`进行查找，与`exact`相比忽略大小写

```python
article = Article.objicts.filter(title__iexact=''hello world'')
```

`SQL`层面代码如下

```sql
select * from article where title like ''hello wordl''
```

注意上面这个`sql`语句，因为在`MySQL`中，没有一个叫做`ilike`的。所以上就是`LIKE`和`=`的区别，在大部分`exact`和`iexact`的区别实际`collation=utf8_general_ci`情况下都是一样的（`collation`是用来对字符串比较的）。

3.  contains

大小写敏感，判断某个字段是否包含了某个数据。

```python
articles = Article.objects.filter(title__contains=''hello'')
```

在翻译成SQL语句为如下：

```sql
select ... where title like binary ''%hello%'';
```

要注意的是，在使用`contains`的时候，翻译成的`sql`语句左右两边是有百分号的，意味着使用的是模糊查询。而`exact`翻译成`sql`语句左右两边是没有百分号的，意味着使用的是精确的查询。

4. icontains

大小写不敏感的匹配查询。示例代码如下

```python
articles = Article.objects.filter(title__icontains=''hello'')
```

在翻译成`SQL`语句为如下

```sql
select ... where title like ''%hello%'';
```

5. in

提取那些给定的`field`的值是否在给定的容器中。容器可以为`list`、`tuple`或者任何一个可以迭代的对象，包 `QuerySet`对象。示例代码如下：

```python
articles = Article.objects.filter(id__in=[1,2,3])
```

翻译成`sql`语句如下

```sql
select ... where id in (1,3,4)
```

当然也可以传递一个`QuerySet`对象进去。

```python
inner_qs = Article.objects.filter(title__contains=''hello'')
categories = Category.objects.filter(article__in=inner_qs)
```

以上代码的意思是获取那些文章标题包含`hello`的所有分类。

将翻译成以下`SQL`语句

```sql
select ...from category where article.id in (select id from article where title 
like ''%hello%'');
```

6. gt(大于)，gte(大于等于)，lt(小于)，lte(小于等于)

```python
articles = Article.objects.filter(id__gt=4)
```

以上代码的意思是将所有`id`大于4的文章全部找出来

将翻译成以下的`sql`语句

```sql
select ... where id > 4;
```

7. startswith，istartswith

判断某个字段的值是否事宜某个值开始的，

`startswith`:大小写敏感

`istartswith`:大小写不敏感

```python
articles = Article.objects.filter(title__startswith=''hello'')
```

以上代码的意思是提取所有标题以`hello`字符串开头的文章。将翻译成以下`SQL`语句：

```sql
select ... where title like ''hello%''
```

8. endswith,iendswith

判断某个字段的值是否以某个值结束

`endswith`大小写敏感

`iendswith`大小写不敏感

```python
articles = Article.objects.filter(title__endswith=''world'')
```

以上代码的意思是提取所有标题以`world`结尾的文章。 将翻译成以下`SQL`语句

```sql
select ... where title like ''%world'';
```

9. range

判断某个 field 的值是否在给定的区间中

```python
from django.utils.timezone import make_aware
from datetime import datetime

start_date = make_aware(datetime(year=2018,month=1,day=1))
end_date = make_aware(datetime(year=2018,month=3,day=29,hour=16))
articles = Article.objects.filter(pub_date__range=(start_date,end_date))
```

以上代码的意思是提取所有发布时间在`2018/1/1`到`2018/12/12`之间的文章。将翻译成以下的`SQL`语句

```sql
 select ... from article where pub_time between ''2018-01-01'' and ''2018-12-12''。
```

10.  data

针对某些`date`或者`datetime`类型的字段。可以指定`date`的范围。并且这个时间过滤，还可以使用链式调用。示例代码如下

```python
articles = Article.objects.filter(pub_date__date=date(2018,3,29))
```

以上代码的意思是查找时间为`2018/3/29`这一天发表的所有文章。将翻译成以下的`sql`语句：

```sql
select ... WHERE DATE(CONVERT_TZ(`front_article`.`pub_date`, ''UTC'', 
''Asia/Shanghai'')) = 2018-03-29
```

11. year,month,day,week_day

根据年，月，日，星期(1：周天，2：周一，……)查找

```python
articles = Article.objects.filter(pub_date__year=2018)
articles = Article.objects.filter(pub_date__year__gte=2017)
```

以上的代码在翻译成`SQL`语句为如下

```sql
select ... where pub_date between ''2018-01-01'' and ''2018-12-31'';
select ... where pub_date >= ''2017-01-01'';
```

12. time

根据时间进行查找

```python
articles = Article.objects.filter(pub_date__time=datetime.time(12,12,12));
```

以上代码是获取每一天中12点12分12秒发布的所有文章

13. isnull

根据值是否为空进行查找

```python
articles = Article.objects.filter(pub_date__isnull=False)
```

以上的代码的意思是获取所有发布日期不为空的文章。 将翻译成SQL语句如下：

```sql
select ... where pub_date is not null
```

14. regex和iregex

大小写敏感和大小写不敏感的正则表达式

```python
articles = Article.objects.filter(title__regex=r''^hello'')
```

以上代码的意思是提取所有标题以`hello`字符串开头的文章。 将翻译成以下的`SQL`语句：

```sql
select ... where title regexp binary ''^hello'';
```

15. 根据关联的表进行查询

假如现在有两个`ORM`模型，一个是`Article`，一个是`Category`。代码如下：

```python
class Category(models.Model):
    """文章分类表"""
    name = models.CharField(max_length=100)

class Article(models.Model):
    """文章表"""
    title = models.CharField(max_length=100,null=True)
    category = models.ForeignKey("Category",on_delete=models.CASCADE)
```

比如想要获取文章标题中包含"hello"的所有的分类。那么可以通过以下代码来实现：

```python
categories = Category.object.filter(article__title__contains("hello"))
```

##### 聚合函数
如果你用原生`SQL`，则可以使用聚合函数来提取数据。比如提取某个商品销售的数量，那么可以使用`Count`，如果想要知道商品销售的平均价格，那么可以使用`Avg`。

聚合函数是通过`aggregate`方法来实现的。在讲解这些聚合函数的用法的时候，都是基于以下的模型对 象来实现的

```python
from django.db import models
class Author(models.Model):
    """作者模型"""
    name = models.CharField(max_length=100)
    age = models.IntegerField()
    email = models.EmailField()

    class Meta:
        db_table = ''author''

class Publisher(models.Model):
    """出版社模型"""
    name = models.CharField(max_length=300)

    class Meta:
        db_table = ''publisher''
 
class Book(models.Model):	
    """图书模型"""
    name = models.CharField(max_length=300)
    pages = models.IntegerField()
    price = models.FloatField()
    rating = models.FloatField()
    author = models.ForeignKey(Author,on_delete=models.CASCADE)
    publisher = models.ForeignKey(Publisher, on_delete=models.CASCADE)

     class Meta:
         db_table = ''book''

class BookOrder(models.Model):
    """图书订单模型"""
    book = models.ForeignKey("Book",on_delete=models.CASCADE)
    price = models.FloatField()
    
    class Meta:
        db_table = ''book_order''
```

1. Avg：求平均值

比如想要获取所有图书的价格平均值。那么可以使用以下代码实现。

```python
from django.db.models import Avg
result = Book.objects.aggregate(Avg(''price''))
print(result)
```

其中`price__avg`的结构是根据`field__avg`规则构成的。如果想要修改默认的名字，那么可以将`Avg`赋值给一个关键字参数

```python
from django.db.models import Avg
result = Book.objects.aggregate(my_avg=Avg(''price''))
print(result)
```

2. Count：获取指定对象的个数

```python
from django.db.models import Count
result = Book.objects.aggregate(book_num=Count(''id''))
```

以上的`result`将返回`Book`表中总共有多少本图书

`Count`类中，还有另外一个参数叫做`distinct`，默认是等于`False`，如果是等于`True`，那么将去掉那些重复的值。比如要获取作者表中所有的不重复的邮箱总共有多少个，那么可以通过以下代码来实现：

```python
from djang.db.models import Count
result = Author.objects.aggregate(count=Count(''email'',distinct=True))
```

3. Max和Min：获取指定对象的最大值和最小值

比如想要获取`Author`表中，最大的年龄和最小的年龄分别是多少。那么可以通过以下代码来实现：

```python
from django.db.models import Max,Min
result = Author.objects.aggregate(Max(''age''),Min(''age''))
```

4. Sum：求指定对象的总和

比如要求图书的销售总额

```python
from djang.db.models import Sum
result = Book.objects.annotate(total=Sum("bookstore__price")).values("name","total")
```

以上的代码`annotate`的意思是给`Book`表在查询的时候添加一个字段叫做`total`，这个字段的数据来源是从`BookStore`模型的`price`的总和而来。`values`方法是只提取`name`和`total`两个字段的值。

更多的聚合函数请参考官方文档

##### aggregate和annotate的区别
+ `aggregate`

返回使用聚合函数后的字段和值。

+ `annotate`

在原来模型字段的基础之上添加一个使用了聚合函数的字段，并且在使用聚合函数的 时候，会使用当前这个模型的主键进行分组（group by）

##### F表达式和Q表达式
1. F表达式

F表达式是用来优化 ORM 操作数据库的

```python
from djang.db.models import F
# 比如将Book模型中的''price''字段的值都+10，
# 可使用F表达是来优化代码
Book.object.update(price=F("price")+10)
```

F表达式并不会马上从数据库中获取数据，而是在生成`SQL`语句的时候，动态的获取传给F表达式的值。

```python
from django.db.models import F
# 获取Author模型中name和email相同的数据
authors = Author.objects.filter(name=F("email"))
```

2. Q表达式

Q表达式可以进行或（`|`）、且（`&`）、非（`~`）运算

```python
from django.db.models import Q
# 获取id等于3的图书
books = Book.objects.filter(Q(id=3))
# 获取id等于3，或者名字中包含文字"记"的图书
books = Book.objects.filter(Q(id=3)|Q(name__contains("记")))
# 获取价格大于100，并且书名中包含"记"的图书
books = Book.objects.filter(Q(price__gte=100)&Q(name__contains("记")))
# 获取书名包含“记”，但是id不等于3的图书
books = Book.objects.filter(Q(name__contains=''记'') & ~Q(id=3))
```

#### 表单
##### HTML中的表单
单纯从前端的`html`来说，表单是用来提交数据给服务器的,不管后台的服务器用的是`Django`还是`PHP`语言还是其他语言。只要把`input`标签放在`form`标签中，然后再添加一个提交按钮，那么以后点击提交按钮，就可以将`input`标签中对应的值提交给服务器了

##### Django中的表单
`Django`中的表单丰富了传统的`HTML`语言中的表单。在`Django`中的表单主要做以下两件事

1. 渲染表单模板。

2. 表单验证数据是否合法。

##### Django中表单使用流程
在讲解`Django`表单的具体每部分的细节之前。我们首先先来看下整体的使用流程。这里以一个做一个留言板为例。首先我们在后台服务器定义一个表单类，继承自 `django.forms.Form`。

```python
# forms.py
class MessageBoardForm(forms.Form):
    title = forms.CharField(max_length=3,label=''标题'',min_length=2,error_messages={"min_length":''标题字符段不符合要求！''})
    content = forms.CharField(widget=forms.Textarea,label=''内容'')
    email = forms.EmailField(label=''邮箱'')
    reply = forms.BooleanField(required=False,label=''回复'')
```

然后在视图中，根据是`GET`还是`POST`请求来做相应的操作。如果是`GET`请求，那么返回一个空的表单， 如果是`POST`请求，那么将提交上来的数据进行校验。示例代码如下

```python
# views.py
class IndexView(View):
    def get(self,request):
        form = MessageBoardForm()
        return render(request,''index.html'',{''form'':form})
    def post(self,request):
        form = MessageBoardForm(request.POST)
        if form.is_valid():
            title = form.cleaned_data.get(''title'')
            content = form.cleaned_data.get(''content'')
            email = form.cleaned_data.get(''email'')
            reply = form.cleaned_data.get(''reply'')
            return HttpResponse(''success'')
        else:
            print(form.errors)
            return HttpResponse(''fail'')
```

在使用`GET`请求的时候，我们传了一个`form`给模板，那么以后模板就可以使用`form`来生成一个表单的`html`代码。在使用`POST`请求的时候，我们根据前端上传上来的数据，构建一个新的表单，这个表单是用来验证数据是否合法的，如果数据都验证通过了，那么我们可以通过`cleaned_data`来获取相应的数据 在模板中渲染表单的`HTML`代码如下

```html
<form action="" method="post">
  <table>
    <tr>
      <td></td>
      <td><input type="submit" value="提交"></td>
    </tr>
  </table>
</form>
```

我们在最外面给了一个`form`标签，然后在里面使用了`table`标签来进行美化，在使用`form`对象渲染的时候，使用的是`table`的方式，当然还可以使用`ul`的方式（`as_ul`)，也可以使用p标签的方式（`as_p`），并且在后面我们还加上了一个提交按钮。这样就可以生成一个表单了。

#### 表单验证
##### 常用的Field
使用`Field`可以是对数据验证的第一步。你期望这个提交上来的数据是什么类型，那么就使用什么类型的`Field`。

1. CharField

用来接受文本

参数：

`max_length`：这个字段值的最大长度。

`min_length`：这个字段值的最小长度。

`required`：这个字段是否是必须的。默认是必须的。

`error_messages`：在某个条件验证失败的时候，给出错误信息。

2. EmailField

用来接收邮件，会自动验证邮件是否合法。

错误信息的`key`：`required`、`invalid`

3. FloatField

用来接收浮点类型，并且如果验证通过后，会将这个字段的值转换为浮点类型。 参数：

`max_value`:最大的值

`min_value`:最小的值

错误信息的`key`：`required`、`invalid` 、`max_value`、`min-value`

4. IntegerField

用来接收整形，并且验证通过后，会将这个字段的值转换为整形。 参数：

`max_value`:最大的值

`min_value`:最小的值

错误信息的`key`：`required`、`invalid` 、`max_value`、`min-value`

5. URLField

用来接收`url`格式的字符串。

错误信息的`key`：`required`、`invalid`。

##### 常用的验证器
在验证某个字段的时候，可以传递一个`validators`参数用来指定验证器，进一步对数据进行过滤。验证器有很多，但是很多验证器我们其实已经通过这个`Field`或者一些参数就可以指定了。比如`EmailValidator`，我们可以通过`EmailField`来指定，比如`MaxValueValidator`，我们可以通过`max_value`参数来指定，以下是一些常用的验证器

1.`EmailField`：验证最大值。

2.`MinValueValidator`：验证最小值。

3.`MinLengthValidator`：验证最小长度。

4.`MaxLengthValidator`：验证最大长度。

5.`EmailValidator`：验证是否是邮箱格式。

6.`URLValidator`：验证是否是 URL 格式。

7. `RegexValidotro`：如果还需要更加复杂的验证，那么我们可以通过正则表达式的验证器`RegexValidator`。比如现在要验证手机号码是否合格，那么我们可以通过以下代码实现

```python
class MyForm(forms.Form):
    telephone = forms.CharField(
        validators=[validators.RegexValidator("1[345678]\d{9}",
        message=''请输入正确格式的手机号码！'')])
```

##### 自定义验证
有时候对一个字段验证，不是一个长度，一个正则表达式能够写清楚的，还需要一些其他复杂的逻辑，那么我们可以对某个字段，进行自定义的验证。比如在注册的表单验证中，我们想要验证手机号码是否已经被注册过了，那么这时候就需要在数据库中进行判断才知道。对某个字段进行自定义的验证方式是，定义一个方法，这个方法的名字定义规则是： `clean_fieldname`。如果验证失败，那么就抛出一个 验证错误。比如要验证用户表中手机号码之前是否在数据库中存在，那么可以通过以下代码实现：

```python
class MyForm(forms.Form):
    telephone = forms.CharField(validators=
    [validators.RegexValidator("1[345678]\d{9}",message=''请输入正确格式的手机号码！'')])
    def clean_telephone(self):
        telephone = self.cleaned_data.get(''telephone'')
        exists = User.objects.filter(telephone=telephone).exists()
        if exists:
            raise forms.ValidationError("手机号码已经存在！")
        return telephone
```

以上是对某个字段进行验证，如果验证数据的时候，需要针对多个字段进行验证，那么可以重写方法`clean`。比如要在注册的时候，要判断提交的两个密码是否相等。那么可以使用以下代码来完成：

```python
class MyForm(forms.Form):
    telephone = forms.CharField(validators=
    [validators.RegexValidator("1[345678]\d{9}",message=''请输入正确格式的手机号码！'')])
    pwd1 = forms.CharField(max_length=12)
    pwd2 = forms.CharField(max_length=12)
    
    def clean(self):
        cleaned_data = super().clean()
        pwd1 = cleaned_data.get(''pwd1'')
        pwd2 = cleaned_data.get(''pwd2'')
        if pwd1 != pwd2:
        raise forms.ValidationError(''两个密码不一致！'')
```

##### 提取错误信息
如果验证失败了，那么有一些错误信息是我们需要传给前端的。这时候我们可以通过以下属性来获取

1. `form.errors` 这个属性获取的错误信息是一个包含了`html`标签的错误信息。
2. `form.errors.get_json_data()`这个方法获取到的是一个字典类型的错误信息，将某个字段的名字作为`key`错误信息作为值的一个字典
3. `form.errorsd.as_json()`  这个方法是将`form.get_json_data()`返回的字典`dump`成`json`格式的字符串，方便进行传输。
4.  上述方法获取的字段的错误值，都是一个比较复杂的数据。比如以下：

```python
{''username'': [{''message'': ''Enter a valid URL.'', ''code'': ''invalid''}, {''message'': 
''Ensure this value has at most 4 characters (it has 22).'', ''code'': 
''max_length''}]}
```

那么如果我只想把错误信息放在一个列表中，而不要再放在一个字典中。这时候我们可以定义一个方 法，把这个数据重新整理一份。实例代码如下：

```python
class MyForm(forms.Form):
    username = forms.URLField(max_length=4)
    
    def get_errors(self):
        errors = self.errors.get_json_data()
        new_errors = {}
        for key,message_dicts in errors.items():
            messages = []
            for message in message_dicts:
                messages.append(message[''message''])
                new_errors[key] = messages
        return new_errors
```

这样就可以把某个字段所有的错误信息直接放在这个列表中。

#### ModelForm
##### 基本使用
大家在写表单的时候，会发现表单中的`Field`和模型中的`Field`基本上是一模一样的，而且表单中需要验证的数据，也就是我们模型中需要保存的。那么这时候我们就可以将模型中的字段和表单中的字段进行绑定。

比如现在有个`Article`的模型

```python
from django.db import models
from django.core import validators
class Article(models.Model):
    title = models.CharField(max_length=10,validators=
                             [validators.MinLengthValidator(limit_value=3)])
    content = models.TextField()
    author = models.CharField(max_length=100)
    category = models.CharField(max_length=100)
    create_time = models.DateTimeField(auto_now_add=True)
```

那么在写表单的时候，就不需要把`Article`模型中所有的字段都一个个重复写一遍了

```python
from django import forms
class MyForm(forms.ModelForm):
    class Meta:
        model = Article
        fields = "__all__"
```

`MyForm`是继承自`forms.ModelForm`，然后在表单中定义了一个`Meta`类，在`Meta`类中指定了`model=Article`，以及`fields="__all__"`，这样就可以将`Article`模型中所有的字段都复制过来，进行验证。如果只想针对其中几个字段进行验证，那么可以给`fields`指定一个列表，将需要的字段写进去。比如只想验证`title`和`content`，那么可以使用以下代码实现：

```python
from django import forms
class MyForm(forms.ModelForm):
    class Meta:
        model = Article
        fields = [''title'',''content'']
```

如果要验证的字段比较多，只是除了少数几个字段不需要验证，那么可以使用`exclued`来代替`fields`。比如我不想验证`category`，那么示例代码如下：

```python
class MyForm(forms.ModelForm):
    class Meta:
        model = Article
        exclude = [''category'']
```

##### 自定义错误消息
使用`ModelForm`，因为字段都不是在表单中定义的，而是在模型中定义的，因此一些错误消息无法在字段中定义。那么这时候可以在`Meta`类中，定义`error_messages`，然后把相应的错误消息写到里面去。 示例代码如下：

```python
class MyForm(forms.ModelForm):
    class Meta:
        model = Article
        exclude = [''category'']
        error_messages  ={
            ''title'':{
            ''max_length'': ''最多不能超过10个字符！'',
            ''min_length'': ''最少不能少于3个字符！''
            },
            ''content'': {
            ''required'': ''必须输入content！'',
            }
        }
```

##### save方法
`ModelForm`还有`save`方法，可以在验证完成之后直接调用`save`方法，就可以将这个数据保存到数据库中了，示例代码如下

```python
form = MyForm(request.POST)
    if form.is_valid():
        form.save()
        return HttpResponse(''succes'')
    else:
        print(form.get_errors())
        return HttpResponse(''fail'')
```

这个方法必须要在`clean`没有问题后才能使用，如果在`clean`之前使用，会抛出异常。另外，我们在调用`save`方法的时候，如果传入一个`commit=False`，那么只会生成这个模型的对象，而不会把这个对象真正的插入到数据库中。比如表单上验证的字段没有包含模型中所有的字段，这时候就可以先创建对象，再根据填充其他字段，把所有字段的值都补充完成后，再保存到数据库中。示例代码如下：

```python
form = MyForm(request.POST)
if form.is_valid():
    article = form.save(commit=False)
    article.category = ''Python''
    article.save()
    return HttpResponse(''succes'')
else:
    print(form.get_errors())
    return HttpResponse(''fail'')
```

##### 
#### cookie和session、
##### Cookie介绍
1. cookie：在网站中，`http`请求是无状态的。也就是说即使第一次和服务器连接后并且登录成功后， 第二次请求服务器依然不能知道当前请求是哪个用户。`cookie`的出现就是为了解决这个问题，第 一次登录后服务器返回一些数据（cookie）给浏览器，然后浏览器保存在本地，当该用户发送第二次请求的时候，就会自动的把上次请求存储的`cookie`数据自动的携带给服务器，服务器通过浏览器携带的数据就能判断当前用户是哪个了。`cookie`存储的数据量有限，不同的浏览器有不同的存储大小，但一般不超过4KB。因此使用cookie只能存储一些小量的数据。
2. session： `session`和`cookie`的作用有点类似，都是为了存储用户相关的信息。不同的是，`cookie`是存储在本地浏览器，session是一个思路、一个概念、一个服务器存储授权信息的解决方案，不同的服务器，不同的框架，不同的语言有不同的实现。虽然实现不一样，但是他们的目的都是服务器为了方便存储数据的。`session`的出现，是为了解决`cookie`存储数据不安全的问题的。
3. `cookie`和`session`使用：web开发发展至今，`cookie`和`session`的使用已经出现了一些非常成熟的方案。在如今的市场或者企业里，一般有两种存储方式：
    -  存储在服务端：通过`cookie`存储一个`sessionid`，然后具体的数据则是保存在`session`中。如果用户已经登录，则服务器会在`cookie`中保存一个`sessionid`，下次再次请求的时候，会把该`sessionid`携带上来，服务器根据`sessionid`在`session`库中获取用户的`session`数据。就能知道该用户到底是谁，以及之前保存的一些状态信息。这种专业术语叫做`server side session` 。`Django`把`session`信息默认存储到数据库中，当然也可以存储到其他地方，比如缓存中，文件系统中等。存储在服务器的数据会更加的安全，不容易被窃取。 但存储在服务器也有一定的弊端，就是会占用服务器的资源，但现在服务器已经发展至今，一些`session`信息还是绰绰有余的。
    -   将`session`数据加密，然后存储在`cookie`中。这种专业术语叫做`client side session`。`flask`框架默认采用的就是这种方式，但是也可以替换成其他形式。

##### 在Django中操作cookie
1. **设置cookie**

设置`cookie`是设置值给浏览器的。因此我们需要通过`respose`的对象来设置，设置`cookie`可以通过`response.set_cookie`来设置，这个方法的相关参数如下

    1. `key`：这个`cookie`的`key`
    2. `ualue`:这个`cookie`的`value`
    3. `max_age`：最长的生命周期
    4. `expires`： 过期时间。跟`max_age`是类似的，只不过这个参数需要传递一个具体的日期，比如`datetime`或者是符合日期格式的字符串。如果同时设置了`expires`和`max_age`，那么将会使用`expires`的值作为过期时间。  
    5. `path`：对域名下哪个路径有效。默认是对域名下所有路径都有效
    6. `domain`：针对哪个域名有效。默认是真多主域名下都有效，如果值有针对某个子域名才有效，那么可以设置这个属性
    7. `secure`：是否是安全的，如果设置为`True`那么只能在`https`协议下才可用
    8. `httponly`：默认值为`False`如果为`True`，那么在客户端不能通过`JavaScript`进行操作
2. **删除cookie**

通过`delete_cookie`即可删除`cookie`。实际上删除`cookie`就是将指定的`cookie`的值设置为空的字符串，然后使用将他的过期时间设置为0，也就是浏览器关闭后就过期。

3. **获取cookie**

获取浏览器发送过来的`cookie`信息。可以通过`request.COOKIES`来或者。这个对象是一个字典类型。 比如获取所有的`cookie`，那么示例代码如下：



```python
cookies = request.COOKIES
for cookie_key,cookie_value in cookies.items():
    print(cookie_key,cookie_value)
```

##### 在Django中操作session
`django`中的`session`默认情况下是存储在服务器的数据库中的，在表中会根据`sessionid`来提取指定的`session`数据，然后再把这个`sessionid`放到`cookie`中发送给浏览器存储，浏览器下次在向服务器 发送请求的时候会自动的把所有`cookie`信息都发送给服务器，服务器再从`cookie`中获取`sessionid`， 然后再从数据库中获取`session`数据。但是我们在操作`session`的时候，这些细节压根就不用管。我们只需要通过`request.session`即可操作。示例代码如下：

```python
def index(resquest):
    request.session.get(''username'')
    return HttpResponse(''index'')
```

`session`常用的方法如下

1. `get`：用来从`session`中获取指定值。
2. `pop`：从`session`中删除一个值。
3. `keys`：从`session`中获取所有的键。
4. `items`：从`session`中获取所有的值。
5. `clear`：清除当前这个用户的`session`数据。
6. `flush`：删除`session`并且删除在浏览器中存储的`session_id`，一般在注销的时候用得比较多。
7. `set_expiry(value)`：设置过期时间。
    - 整形：代表秒数，表示多少秒后过期。
    - 0：代表只要浏览器关闭，`session`就会过期。
    - None：会使用全局的`session`配置。在`settings.py`中可以设置`SESSION_COOKIE_AGE`来配置全局的过期时间。默认是1209600秒，也就是2周的时间。
8. `clear_expired`：清除过期的`session`。`Django`并不会清除过期的`session`，需要定期手动的清理，或者是在终端，使用命令行`python manage.py clearsessions`来清除过期的`session`。

##### 修改session的储存机制
默认情况下，`session`数据是存储到数据库中的。当然也可以将`session`数据存储到其他地方。可以通 过设置`SESSION_ENGINE`来更改`session`的存储位置，这个可以配置为以下几种方案：

1. `django.contrib.sessions.backends.db`：使用数据库。默认就是这种方案。
2. `django.contrib.sessions.backends.file`：使用文件来存储`session`。
3. `django.contrib.sessions.backends.cache`：使用缓存来存储`session`。想要将数据存储到缓存中，前提是你必须要在`settings.py`中配置好`CACHES`，并且是需要使用`Memcached`，而不能使用纯内存作为缓存。
4. `django.contrib.sessions.backends.cached_db `：在存储数据的时候，会将数据先存到缓存中，再存到数据库中。这样就可以保证万一缓存系统出现问题，`session`数据也不会丢失。在获取数据的时候，会先从缓存中获取，如果缓存中没有，那么就会从数据库中获取。
5. `django.contrib.sessions.backends.signed_cookies`：将`session`信息加密后存储到浏览器的`cookie`中。这种方式要注意安全，建议设置`SESSION_COOKIE_HTTPONLY=True`，那么在浏览器 中不能通过js来操作`session`数据，并且还需要对`settings.py`中的`SECRET_KEY`进行保密，因为一旦别人知道这个`SECRET_KEY`那么就可以进行解密。另外还有就是在`cookie`中，存储的数据不能超过4k。

#### 防御CSRF攻击
服务器代码

```python
MIDDLEWARE = [
    ''django.middleware.csrf.csrfviewMiddleware''
]
```

模版代码

```html
<input type="hidden" name="csrfmiddlewaretoken" value={{ csrf_token }}
```

或者是直接使用csrf_token标签，在自动生成一个带有csrf_token的input标签

/bg
', 0, NOW());

INSERT INTO `note` (`id`, `author_id`, `title`, `content`, `like_count`, `created_at`)
VALUES (7, 1002, 'MySql', '# 基本命令
```sql
show databases;  #查看所有数据库

use mysql;   # 切换数据库

show tables;   # 查看数据库中所有的表

describe student;  # 查看表的信息

create database newdb;  # 创建数据库

exit;   # 断开连接
```

# 操作数据库
+ 创建数据库
    - create database [if not exists] new_db;
+ 删除数据库
    - drop database [if exists] new_db;
+ 使用数据库
    - use new_db;
+ 查看所有数据库
    - show databases;

# 数据库表操作
## 列类型
+ 数值
    - tinyint  十分小的数据   1个字节
    - smallint  较小的数据  2个字节
    - mediumint  中等大小的数据   3个字节
    - **int   标准的整数       4个字节**
    - big  较大的数据     8个字节
    - float   浮点数    4个字节
    - double  浮点数  8个字节
    - decimal  字符串形式的浮点数  金融计算的使用，一般使用
+ 字符串
    - char 字符串固定大小   0~255
    - **varchar 可变长字符串  0~65535**
    - tinytext  微型文本  2^8 - 1
    - text  文本串      2^16 - 1    保存大文本
+ 时间日期
    - java.util.Date
    - date   YYY-MM-DD 日期格式
    - time   HH: mm: ss  时间格式
    - **datetime  YYY-MM-DD HH: mm: ss  最常用**
    - **timestamp  时间戳   比较常用！**
    - year  年份表示
+ null
    - 没有值，未知
    - 不要使用NULL进行运算，结果一定为NULL

## 字段属性
+ Unsigned：
    - 无符号的整数
    - 声明了该列不能声明为负数
+ zerofill：
    - 0填充的
    - 不足的位数，使用0来填充   int（）， 5  ....  005
+ 自增
    - 通常理解为自增，自动字一条记录的基础上+1（默认）
    - 通常用来设计唯一的主键~  index， 必须是整数类型
    - 可以自定义设计主键自增的起始值和步长
+ 非空
    - 假设设置为 not null , 如果不给他赋值，就会报错
    - NULL，如果不填写值，默认就是null！
+ 默认：
    - 设置默认的值！
    -

## 创建数据库表
auto_increment 自增

字符串使用 单引号括起来

所有的语句后面加逗号

primary key 主键

```sql
create table if not exists `student`(
  `id` int(4) not null auto_increment comment ''学号'',
  `name` varchar(30) not null default ''匿名'' comment ''姓名'',
  `pwd` varchar(20) not null default ''123456'' comment ''密码'',
  `sex` varchar(2) not null default ''女'' comment ''性别'',
  `birthday` datetime default null comment ''生日'',
  `address` varchar(100) default null comment ''家庭地址'',
  `email` varchar(50) default null comment ''邮箱'',
  primary key(`id`)
)engine=innoob default charset=utf8;
```

格式

```sql
create table [if not exists] `表名`(
  `字段名` 列类型 属性 索引 注释，
  `字段名` 列类型 属性 索引 注释，
  .......
  `字段名` 列类型 属性 索引 注释，
)[表类型][字符集设置][注释]
```

+ show create database ''数据库''
    - 查看创建数据库的命令
+ show create table ''表名''
    - 查看创建表的语句
+ desc ''表名''
    - 显示表的结构

## 修改删除表
+ 修改表名
    - ALTER TABLE  原报名 rename 新表名
+ 增加表的字段
    - ALTER TABLE 表名 add 字段 类型
+ 修改表的字段
    - ALTER TABLE 表名 modify 字段 类型
        * 修改约束
    - ALTER TABLE 表名 change 原字段 新字段 类型
        * 重命名字段
+ 删除表的字段
    - ALTER TABLE 表名 DROP 字段
+ 删除表
    - DROP TABLE [if exists] 表名



# MySQL数据库管理
## 外键
+ 方式一，在创建表的时候添加外键

```sql
key `fk_gradeid` (`gradeid`),
constranint `FK_gradeid` 
foreign key(`gradeid`)
references `grade`(`gradeid`)。
```

+ 方式二，在创建完表后添加外键

```sql
ALTER TABLE `student`
add constranint `FK_gradeid`  # 约束
foreign key(`gradeid`)        # 作为外键的列
references `grade`(`gradeid`) # 哪个表的哪个字段
```

## DML语言
+ 插入
    - insert into 表名（字段1，字段2，字段3）values (''值1'', ''值2'', ''值3'')

```sql
insert into student(`id`, `name`, `sex`, `age`)
values(''1'', ''zhangsan'', ''男'', ''18''),
(''2'', ''lisi'', ''男'', ''18'');
```

+ 修改
    - update 表名 set  字段=value  where 条件
    - 不添加条件的话会改动表的所有数据
    - value可以是值 也可以是变量
    - 多个设置的属性之间，使用英文逗号隔开

```sql
update `student` set `name`=''张三'' where `id`=''1'' and `id`=''3'';
```

+ 删除
    - delete from 表名 where 条件
    - truncate 命令 删除表中的全部数据，但表结构和索引约束不会变
        * delete 不会删除自增   truncate 会使自增归零

```sql
delete from `student` where `id`=''1'';
```

    - 

# DQL查询数据
## select完整语法
<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1747035055729-d45778a6-7a78-4c38-a123-427fc863e4d6.png" width="570.6666666666666" title="" crop="0,0,1,1" id="u729b1fbf" class="ne-image">

## 指定查询字段
语法： select 字段...  from  表名

```sql
-- 查询全部字段 
select * from student

-- 查询指定字段
select id,name from student;

-- 别名
select id as 学号, name as 姓名, from student as s;

-- 函数 concat(a, b) 连接字符串
select concat(''姓名：'', name) as 姓名 from student;
```

数据库的列（表达式）

```sql
select VERSION()  -- 查询系统版本（函数）
select 100*3-1 as 计算饥结果  -- 用来计算（表达式）
select @@auto_increment_increment -- 查询自增的步长（变量）

-- 是查询结果+1
select 	`studentNO`, `studnetResult`+1 as ''提分后'' from result
```

数据库中的表达式：文本值，列，null， 函数，计算表达式， 系统变量...

select 表达式 from 表名

## where子句
作用：检索数据中符合条件的值

搜索的条件由一个或多个表达式组成！结果 布尔值

---

逻辑运算符

| 运算符 | 语法 | 描述 |
| --- | --- | --- |
| and && | a and b      a&&b | 逻辑与，两个都为真，结果为真 |
| or || | a or b         a||b | 逻辑或，其中一个为真，结果为真 |
| not ! | not a        !a | 逻辑非，真为假，假为真 |


```sql
-- 查询考试成绩在95~100 之间的
select id, result from result
where result>=95 and result<=100;

-- 模糊查询（区间）
select id, result from result
where between 95 and 100;

-- 成绩不等于95的
select id, result from result
where not result=95;
-- where result!=95;
```

---

模糊查询: 比较运算符

| 运算符 | 语法 | 描述 |
| --- | --- | --- |
| IS NULL | a is null | 如果操作符为null，结果为真 |
| IS NOT NULL | a is not null | 如果操作符为not null，结果为真 |
| between | a between b and c | 若a在b和c之间，则结果为真 |
| LIKE | a like b | SQL匹配，如果a匹配b，则结果为真 |
| IN | a in (a1, a2,a3...) | 假设a是a1，a2... 中的一个，则结果为真 |


```sql
-- 查询姓刘的同学
-- LIKE结合 %(0个字符到任意个字符) _(一个字符)
select id, name from student
where name like ''刘%''
-- where name like ''刘_'';
-- where name like ''刘__'';

-- 查询名字中带有 佳 字的同学
select id, name from student 
where name like ''%佳%'';

-- ==========in（具体的值）=========
-- 查询
select * from student
where id in(1001, 1002, 1003);

-- =======null  not null======
-- 查询没有出生日期的同学  为空 
select * from student
where birthday is null;
-- 查询有出生日期的同学  不为空
select * from student
where birthday is not null;
```

## 联表查询 join on
语法： join 连接的表 on 条件

join 对比

```sql
-- inner join 
select s.id, name,subject,result 
from studnt s
inner join
on s.id=r.id

-- right join
select s.id, name,subject,result 
from studnt s
right join
on s.id=r.id

-- left join
select s.id, name,subject,result 
from studnt s
left join
on s.id=r.id
```

| 操作 | 描述 |
| --- | --- |
| inner join | 如果至少有一个匹配，就返回行 |
| left join | 会从左表返回所有的值，即使右表没有匹配 |
| right join | 会从右表返回所有的值，即使左表没有匹配 |


```sql
-- 查询学号（student）  姓名（student） 学科（subject）
-- 成绩（result）
select s.id, s.name, subjectName, result
from student s
right join result r
on s.id=r.id
inner join subject sub
on r.subjectId = sub.subjectId
```

思路

+ 要查询的哪些数据  select ......
+ 从哪几个表中查询 from 表  xxx join 连接的表 on 交叉条件
+ 假设存在多多表查询，先从两张表开始查询

---

**自连接**

自己的表和自己的表连接，

```sql
-- 查询父子信息： 把一张表看为两张一模一样的表

select a.categoryName, b.categoryName 
from category a, category b
where a.categoryid=b.pid
```

## 分页和排序
**order by  排序**

语法：order by 排序字段 排序方法

+ desc 降序
+ asc  升序

```sql
select s.id, s.name, sub.subName, r.result
from student s
inner join result r
on s.id=r.id
inner join subject sub
on r.name = sub.name
where sub.name=''数据库''
order by r.result asc/desc
```

---

**分页**

语法 limit 起始值，页面的大小

+ pageSize: 页面大小
+ （n-1）*pageSize ：当前页起始值
+ n 为当前页

```sql
select s.id, s.name, sub.subName, r.result
from student s
inner join result r
on s.id=r.id
inner join subject sub
on r.name = sub.name
where sub.name=''数据库''
order by r.result asc/desc
limit 0,5;
```

## 子查询
```sql
-- 查询 学生id，name  成绩大于80  科目是高等数学
select id,name from student where id in(
  select id from result where result>80 and subjectId =(
    select subjectId from subject where subjectName=''高等数学''
  )
)
```

## 分组和过滤
```sql
select 
 avg(result) as 平均分,
 max(result) as 最高分
 min(result) as 最低分
 subjectName as 课程名
From result r
inner join subject sub
on sub.subjectid = r.subjectid 
group by sub.subjectName
having 平均 >= 80
```

# MySQL函数
## 常用函数
数学运算

+ abs(-8)   绝对值
+ celing(9.4)  向上取整
+ floor(9.6)   向下取整
+ rand()   返回一个0~1之间的随机数
+ sign(-10)  返回一个数的符号   负数 返回-1  正数返回1

字符串函数

+ char_length(''abcdefghijk'')    字符串的长度
+ concat(''5'',''2'',''0'')   拼接字符串
+ insert(''1314'',1,2 ,''14'')     插入替换 从1开始的2个长度替换为14
+ lower(''KuangShen'')   全部转为小写
+ upper(''KuangShen'')    全部转为大写
+ instr(''kuangshen'', ''h'')    返回第一次出现的位置
+ replace(''1314'', ''13'', ''14'')   替换出现的指定字符串
+ substr(''截取字符串'', 2, 3)   从位置2开始截取长度为3的字符串
+ reverse(''反转字符串'')   反转字符串

时间和日期函数

+ current_date()   获取当前日期
+ curday()    获取当前日期
+ now()   获取当前时间
+ localtime()  本地时间
+ sysdate()   系统时间
+ year(now())    年
+ month(now())  月
+ day(now())  日
+ hour(now())  时
+ minute(now()) 分
+ second(now())  秒

系统

+ systeem_user()  系统用户名
+ version()   版本

## 聚合函数
count()     计数

sum()   求和

avg()    平均数

max()   最大值

min()   最小值

```sql
select count(name) from student;   -- 指定列  会忽略 null 值
select count(*) from student;  -- 不会忽略 null 值
select count(1) from student;

select sum(result) as 总合 From result
select avg(result) as 平均 From result
select max(result) as 最大值 From result
select min(result) as 最小值 from result

select 
 avg(result) as 平均分,
 max(result) as 最高分
 min(result) as 最低分
 subjectName as 课程名
From result r
inner join subject sub
on sub.subjectid = r.subjectid 
group by sub.subjectName
having 平均 >= 80
```

## 数据库级别的md5加密
# 事务
## 事务ACID原则
+ 原子性
    - 要么都成功，要么都失败
+ 一致性
    - 事务前后的数据完整性保证一致
+ 持续性
    - 事务一旦提交就不可逆，被持久化到数据库中
+ 隔离性
    - 事务的隔离性是多个用户并发访问数据库时，数据库为每个用户开启的事物，不能被其他事务的操作数据所属于的事物之间要相互隔离
+ 隔离所导致的问题
    - 脏读
    - 不可重复读
    - 虚读(幻读)

## MySQL层面的事物
```sql
-- MySQL是默认开启事务自动提交的
set autocommit = 0   -- 关闭
set autocommit = 1   -- 开启

-- 手动处理事务
set autocommit = 0  -- 关闭自动提交

-- 事务开启
start transaction -- 标记一个事务的开始，从这个之后的sql都在同一个事务内
insert xx
insert xx

-- 提交：持久化
commit
-- 回滚：回到事务之前的样子
rollback

-- 事务结束
set autocommit = 1  -- 开启自动提交

-- 了解
savepoint 保存点名  -- 设置一个事务的保存点
rollback to savepoint 保存点名   -- 回滚到保存点
release savepoint 保存点名  -- 撤销保存点
```

# 索引
## 索引的分类
MySQL官方对索引的定义为：索引（index）是帮助MySQL高效获取数据的数据结构，提取句子的主干，就可以得到索引的本质：索引是数据结构

+ 主键索引   primary key
    - 唯一的标识，不可重复，只能有一个列作为索引
+ 唯一索引  unique  key
    - 避免重复出现的列，唯一所引可以重复，多个列都可以标识位 唯一索引
+ 常规索引  key/index
    - 默认的， index， key关键字来设置
+ 全文索引  FullText
    - 在特定的数据库引擎下才有
    - 快速定位数据

```sql
-- 显示所有索引信息
show index from student

-- 增加一个索引
alter TABLE student add fulltext studentname(studentname)

-- explain 分析sql执行的状态
explain select * From student; -- 非全文索引
select * From student where match(studentname) against(''刘'')；
```

## 创建索引
```sql
-- id_表名_字段名
-- create index 索引名 on 表名(字段)
create index id_student_name on student(name);
```

数据在小数据的时候，用处不大，但在数据量大的时候，效果比较明显

## 索引规则
+ 索引不是越多越好
+ 不要对经常变动的数据加索引
+ 小数据量的表不用添加索引
+ 索引一般加在常用来查询的字段上

索引的数据结构

Hash类型的索引

btree：innoDB的默认数据结构

# 权限管理和备份
## 用户管理
```sql
-- 创建用户
-- create user 用户名 identified by ''密码''
create user kuangshen identified by ''123456''

-- 修改密码 （修改当前用户的密码）
set password = password(''1111111'')
-- 修改密码 （修改指定用户密码）
set password for kuangshen = password(''111111'')

-- 重命名 
-- rename user 原名 to 新名字
rename user kuangshen to kuangshen2

-- 用户权限 
-- grant all privileges on 全部的权限 to 库.表
-- all privileges 不能给别人授权，其他权限都有
grant all privileges on *.* to kuangshen2

-- 查看权限
show grants for kuangshen2  -- 查看指定用户的权限
show greats for root@localhost

-- 撤销权限
-- revoke 哪些权限，在哪个库撤销，给谁撤销
revoke all privileges on *.*  from kuangshen2
```

## 备份
+ 保证重要的数据不丢失
+ 数据转移

MySQL备份的方式

+ 直接拷贝物理文件
+ 在可视化工具中手动导出
+ 使用命令行导出 mysqldump
    - mysqldump -hlocalhost -uroot -p123456 school student >D:/a.sql
    - mysqldump -h主机 -u用户名 -p密码 数据库 [表名1 表名2] >物理地址
+ 命令行导入数据
    - 登录的情况下，切换到指定数据库
    - source 物理地址

# 规范数据库设计
## 设计数据库
**糟糕的数据库**

+ 数据冗余，浪费空间
+ 数据库插入和删除都会麻烦，异常【屏蔽使用物理外键】
+ 程序的性能差

**良好的数据库**

+ 节省数据空间
+ 保证数据库的完整性
+ 方便我们开发系统

软件卡法中，关于数据库设计

+ 分析需求：分析业务和需要处理的数据库的需求
+ 概要设计：设计关系图E-R图

**设计数据库的步骤（个人博客）**

+ 收集数据，需求分析
    - 用户表（用户登录信息，用户的个人信息，写博客，创建分类）
    - 分类表（文章分类，谁创建的）
    - 文章表（文章的信息）
    - 评论表
    - 友联表（友链信息）
    - 自定义表（系统信息，某个关键的字，或者一些主字段） key：value
+ 标识实体（把需求落地到每个字段）
+ 标识实体之间的关系
    - 写博客：user -> blog
    - 创建分类：user -> category
    - 关注：user -> user
    - 友链： links
    - 评论：user -> user -> blog

## 三大范式
+ 第一范式（1NF）
    - 保证原子性
    - 所有列都是不可再分的
+ 第二范式（2NF）
    - 必须满足第一范式
    - 每张表只描述一件事情
+ 第三范式（3NF）
    - 必须满足第二范式
    - 数据表中的每一列数据都和主键直接相关，而不是间接相关

规范性和性能

+ 关联查询的表不能超过3张表
    - 商业化的需求和目标，（成本，用户体验）数据库的性能更加重要
    - 在规范性能的问题的时候，需要适当的考虑一下规范性
    - 故意给某些表增加一些冗余的字段，（从多表查询中变为单表查询）
    - 故意增加一些计算列（从大数据量降低为小数据量的查询：索引）

# JDBC
## 数据库驱动
导入一个mysql的数据库驱动包

+ 创建一个普通的java项目
+ 创建lib文件夹
+ 导入一个数据库驱动包 mysql-connector-java-版本号.jar

## 第一个jdbc程序
流程

+ 加载驱动
+ 连接数据库  DriverManager
+ 获得执行sql的对象   Statement
+ 获得返回的结果集
+ 释放连接

```sql
package jie.com.damo;

import java.sql.*;

// 第一个jdbc程序
public class JdbcTest {
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        // 1. 加载驱动
        Class.forName("com.mysql.jdbc.Driver");  // 固定写法，加载驱动

        // 2. 用户信息
        // useUnicode=true  支持中文编码
        // characterEncoding=utf8  设置中文编码utf8
        // useSSL=false  使用安全连接
        String url = "jdbc:mysql://192.168.204.131:3306/jdbcStudy?useUnicode=true&characterEncoding=utf8&useSSL=false";
        String username = "root";
        String password = "@Root1234";

        //3. 连接成功,数据库对象 Connection 代表数据库
        Connection connection = DriverManager.getConnection(url, username, password);

        //4. 执行sql语句
        Statement statement = connection.createStatement();

        //5. 执行sql的对象 去执行sql，可能存在结果，查看返回结果
        String sql = "select * from usera;";
        ResultSet resultSet = statement.executeQuery(sql);  // 返回的数据集

        while (resultSet.next()) {
            System.out.println("id="+resultSet.getObject("id"));
            System.out.println("name="+resultSet.getObject("name"));
            System.out.println("password="+resultSet.getObject("password"));
            System.out.println("email="+resultSet.getObject("email"));
            System.out.println("birthday="+resultSet.getObject("birthday"));
            System.out.println("====================================================");
        }

        //6, 释放连接
        resultSet.close();
        statement.close();
        connection.close();
    }
}

```

## jdbc中的对象
+ 加载驱动  DriverManager

```java
// DriverManager.registerDriver(new com.mysql.jdbc.Driver());   // 原生方法
Class.forName("com.mysql.jdbc.Driver");     // 建议使用

```

+ URL

```java
String url = "jdbc:mysql://192.168.204.131:3306/jdbcStudy?useUnicode=true&characterEncoding=utf8&useSSL=false";
String username = "root";
String password = "@Root1234";

// mysql:3306
// oracle:1521
```

+ 连接数据库

```java
Connection connection = DriverManager.getConnection(url, username, password);
// connection 代表数据库
// 数据库设置自动提交
// 事务提交
// 事务回滚
connection.rollback();  // 设置只读
connection.commit();   // 提交
connection.setAutoCommit(false);  // 自动提交
```

+ Statement 执行SQL 的对象  PreparedStatement 执行sql的对象

```java
// 编写sql
String sql = "select * from usera";

statement.executeQuery();  // 查询操作返回 resultSet
statement.execute();  // 执行任何sql
statement.executeUpdate() // 更新，插入，删除，返回一个受影响的行数
```

+ ResultSet 查询的结果集：封装了所有的查询结果

```java
// 获取数据的数据类型
resultSet.getString();
resultSet.getInt();
resultSet.getFloat();
resultSet.getDate();
resultSet.getObject()

// 移动光标
resultSet.beforeFirst();  // 移动到最前面
resultSet.afterLast();   // 移动到最后面
resultSet.next();  // 移动到下一个
resultSet.previous();  // 移动到下一行
resultSet.absolute()  // 移动到指定行
```

+ 释放资源

```java
//6, 释放连接
resultSet.close();
statement.close();
connection.close();
```



## 使用工具类的步骤
+ 配置文件，Maven项目放在resources文件中，普通项目放在src目录下

```java
driver=com.mysql.jdbc.Driver
url=jdbc:mysql://192.168.204.131:3306/jdbcStudy
username=root
password=@Root1234
```

+ 编写工具类

```java
package jie.com.damo02.utils;

import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

public class JdbcUtils {


    private static String driver = null;
    private static String url = null;
    private static String username = null;
    private static String password = null;

    static {
        try {
            InputStream in = JdbcUtils.class.getClassLoader().getResourceAsStream("db.properties");
            Properties prop = new Properties();
            prop.load(in);

            if (in == null) {
                System.out.println("没读取到文件");
            }

            driver = prop.getProperty("driver");
            url = prop.getProperty("url");
            username = prop.getProperty("username");
            password = prop.getProperty("password");

            // 驱动只用加载一次
            Class.forName(driver);

        } catch (Exception e){
            e.printStackTrace();
        }

    }

    // 获取连接
    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url, username, password);
    }

    // 释放连接资源
    public static void release(Connection conn, Statement stmt, ResultSet rs) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (stmt != null) {
            try {
                stmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

}

```

+ 测试文件

```java
package jie.com.damo02;

import jie.com.damo02.utils.JdbcUtils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class TestInsert {
    public static void main(String[] args) {

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;


        try {
            conn = JdbcUtils.getConnection();   // 获取数据库连接
            stmt = conn.createStatement();      // 获得sql的执行对象

            //String sql = "insert into usera(id, name, password, email, birthday) values(4, ''zhaoliu'',''123456'',''al@qq.com'',''2004-11-10'')";
            String sql = "update usera set name=''kuangshen'' where id=4";
            // String sql = "delete from usera where id=4";
            // String sql = "select * from usera;";
            //rs = stmt.executeQuery(sql);
//            while (rs.next()) {
//                System.out.println("id="+rs.getObject("id"));
//                System.out.println("name="+rs.getObject("name"));
//                System.out.println("password="+rs.getObject("password"));
//                System.out.println("email="+rs.getObject("email"));
//                System.out.println("birthday="+rs.getObject("birthday"));
//                System.out.println("====================================================");
//            }
            int i = stmt.executeUpdate(sql);
            if(i > 0){
                System.out.println(i+"更改成功");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtils.release(conn, stmt, rs);
        }
    }
}

```

+

## SQL注入问题
sql存在漏洞，会被攻击导致数据泄露，

```java
package jie.com.damo02;

import jie.com.damo02.utils.JdbcUtils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Sql注入 {
    public static void main(String[] args) {

        login(" ''or'' 1=1", "''or'' 2=2");  // 注入sql代码

    }

    public static void login(String username, String password) {

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            conn = JdbcUtils.getConnection();   // 获取数据库连接
            stmt = conn.createStatement();      // 获得sql的执行对象


            String sql = "select name, password from usera where name= ''"+username+"''  and password = ''"+password+"''";
            //String sql = "select name, password from usera where name=''kuangshen'' and password=''123456''";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                System.out.println(rs.getString("name"));
                System.out.println(rs.getString("password"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtils.release(conn, stmt, rs);
        }
    }
}

```

## PreparedStatement对象防止sql注入
可以防止sql注入，切效率更高

本质：将传递进来的参数当做字符

假设其中存在转义字符会直接忽略掉

```java
package jie.com.damo03;

import jie.com.damo02.utils.JdbcUtils;
import java.util.Date;
import java.sql.*;

public class TestInsert {
    public static void main(String[] args) {
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try{
            conn = JdbcUtils.getConnection();

            // 使用？ 占位符代替参数
            String sql = "insert into usera(id, name, password, email, birthday) values(?,?,?,?,?)";

            // 预编译 
            pst = conn.prepareStatement(sql);

            // 手动给参数赋值

            pst.setInt(1, 5); // id
            pst.setString(2, "suibian");
            pst.setString(3, "123456");
            pst.setString(4, "suibian@gmail.com");
            pst.setDate(5, new java.sql.Date(new Date().getTime()));


            int i = pst.executeUpdate();
            if(i > 0){
                System.out.println("插入成功");
            }

            // rs = pst.executeQuery();

            // while(rs.next()){
            //     System.out.println(rs.getString("name") + " " + rs.getString("password"));
            // }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}

```

## 事务
ACID原则

+ 原则性：要么全部完成，要么都不完成
+ 一致性：总数不变
+ 隔离性：多个进程互不干扰
+ 持久性：一旦提交，持久化到数据库

隔离性的问题

+ 脏读：一个事务读取了另一个没有提交的事务
+ 不可重复度：在同一个事务内，重复读取表中的数据，表数据发生了改变
+ 虚度（幻读）：在一个事务内，读取到了别人插入的数据，导致前后读出来的结果不一致

代码实现

+ 开启事务  conn.setAutoCommit(false)
+ 一组业务执行完毕，提交事务
+ 可以在catch语句中显示定义回滚语句，默认失败自动回滚

```java
package jie.com.damo04;

import jie.com.damo02.utils.JdbcUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TestTransaction1 {
    public static void main(String[] args) {
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            conn = JdbcUtils.getConnection();
            // 关闭数据库的自动提交，自动开启事务
            conn.setAutoCommit(false);  // 开启事务

            String sql = "UPDATE money set money = money-100 where name = ''A''";
            pst = conn.prepareStatement(sql);
            pst.executeUpdate();

            int i = 1/0;

            String sql2 = "UPDATE money SET money = money+100 where name = ''B''";
            pst = conn.prepareStatement(sql2);
            pst.executeUpdate();

            // 业务完毕，提交事务
            conn.commit();
            System.out.println("成功！");

        } catch (SQLException e) {
            // 如果失败，自动回滚

            // 这是手动添加回滚
            try {
                conn.rollback();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            e.printStackTrace();
        } finally {
            JdbcUtils.release(conn, pst, rs);
        }

    }
}

```

## 数据库连接池
#### 池化技术
数据库连接 --执行完毕--释放资源   连接--释放   十分浪费系统资源

池化技术：准备一些预先的资源，过来就连接预先准备好的

常用连接数：100   即最小连接数100

最大连接数：业务最高承载上限

排队等待

等待超时

编写连接池：实现一个接口，DataSource

#### 开源的数据实现
开源数据实现

DBCP

C3P0

Druld：阿里巴巴

使用连接池之后，在项目开发中就不需要编写连接数据库的代码了

#### DBCP
需要的jar包

commons-dpcp-版本号.jar

commons-pool-版本号.jar

配置文件

#### C3P0
需要的jar包

c3p0-版本号.jar

mchange-commons-java-版本号.jar

配置文件
', 0, NOW());

INSERT INTO `note` (`id`, `author_id`, `title`, `content`, `like_count`, `created_at`)
VALUES (8, 1002, 'Spring', '# 简介
+ 导包

```xml
<dependency>
    <groupId>org.springframework</groupId>
    <artifactId>spring-webmvc</artifactId>
    <version>6.1.13</version>
</dependency>

<dependency>
    <groupId>org.springframework</groupId>
    <artifactId>spring-jdbc</artifactId>
    <version>6.1.13</version>
</dependency>
```

```xml
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:aop="http://www.springframework.org/schema/aop"
  xmlns:context="http://www.springframework.org/schema/context"
  xsi:schemaLocation="http://www.springframework.org/schema/beans
  http://www.springframework.org/schema/beans/spring-beans.xsd
  http://www.springframework.org/schema/context
  http://www.springframework.org/schema/context/spring-context.xsd
  http://www.springframework.org/schema/aop
  http://www.springframework.org/schema/aop/spring-aop.xsd">
  <!--
  DataSource : 使用Spring的数据源替换Mybatis的配置
  这里使用Spring提供的JDBC：org.springframework.jdbc.datasource
  -->

</beans>
```

+ 优点
+ Spring是一个开源的免费的容器
+ 轻量级非入侵式的
+ 控制反转（IOC），面向切面变成（AOP）
+ 支持事务的处理，对框架整合的支持
+ 组成

<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1749645254430-a64a9a2c-1839-4f2a-b7a6-d2458775f02f.png" width="487" title="" crop="0,0,1,1" id="uee35a4f0" class="ne-image">

+ 扩展
+ Spring Boot
    - 一个快速开发的脚手架
    - 基于SpringBoot可以快速开发单个微服务
    - 预定大于配置
+ Spring Cloud
    - Spring Cloud 是基于SpringBoot实现的
+

# beans
## ioc创建对象的方式
无参构造：property

+ 根据属性名赋值
+ name: 属性名   value：属性值

有参构造：constructor-arg

+ 根据下标索引赋值：index="0" value="随便"
+ 根据属性名赋值：name="name" value="睡变"
+ 根据属性类型赋值：type="java.lang.String" value="是的"    类型：包名+类名

```xml
<bean id="user" class="com.jie.pojo.User" name="user3 user4, user5; user6">
<!--        <property name="name" value="suibian"/>-->
<!--        <constructor-arg index="0" value="随便"/>-->
<!--        <constructor-arg name="name" value="睡变"/>-->
    <constructor-arg type="java.lang.String" value="是的"/>
</bean>
```

## Spring配置
+ 别名：alias

```xml
<!--别名，如果添加了别名，也可以使用别名获取这个对象-->
<alias name="user" alias="user2"/>
```

+ bean：的配置

```xml
<!--
    id:  bean的唯一标识符，也就是相当于对象名
    class: bean 对象说对应的全限定名 ： 包名 + 类名
    name: 也是别名，且name可以取多个别名，可用逗号，空格，分号作为分隔符
-->
<bean id="user" class="com.jie.pojo.User" name="user3 user4, user5; user6">
    <property name="name" value="suibian"/>
</bean>
```

+ import
+ 一般用于团队开发使用，他可以将多个配置文件，导入合并为一个
+ 他会自动合并相同的内容

```xml
<import resource="beans.xml"/>
<import resource="beans1.xml"/>
<import resource="beans2.xml"/>
```



# DI依赖注入
## 构造器注入
无参构造：property

有参构造：constructor-arg

## 复杂类型注入
+ name：简单类型注入

```xml
<bean id="student" class="com.jie.pojo.Student">
```

+ ref : 引用注入

```xml
<bean id="address" class="com.jie.pojo.Address">
    <property name="address" value="四川"/>
</bean>

<!--ref-->
<property name="address" ref="address"/>

```

+ array：数组注入

```xml
<!--array-->
<property name="books">
  <array>
    <value>三国</value>
    <value>西游</value>
    <value>红楼</value>
    <value>水浒</value>
  </array>
</property>
```

+ list：列表注入

```xml
<!--list-->
<property name="hobbys">
  <list>
    <value>羽毛球</value>
    <value>篮球</value>
    <value>乒乓球</value>
  </list>
</property>
```

+ map：键值对

```xml
<!--map-->
<property name="card">
  <map>
    <entry key="政治面貌" value="群众"/>
    <entry key="角色" value="学生"/>
  </map>
</property>
```

+ set：集合

```xml
<!--set-->
<property name="games">
  <set>
    <value>LOL</value>
    <value>COC</value>
    <value>TOW</value>
  </set>
</property>
```

+ null：空

```xml
<!--null-->
<!--        <property name="wife" value=""/>-->
<property name="wife">
  <null/>
</property>
```

+ properties：配置内容

```xml
<!--properties-->
<property name="info">
  <props>
    <prop key="url">www.baidu.com</prop>
    <prop key="name">百度</prop>
    <prop key="post">3306</prop>
  </props>
</property>
```



## 使用命名空间注入
```xml
<!--使用过p命名空间注入，可以直接注入属性的值：property-->
<bean id="user" class="com.jie.pojo.User" p:name="张三" p:age="12"/>
<!--使用过c命名空间注入，注入属性的值：constructor-->
<bean id="user2" class="com.jie.pojo.User" c:name="李" c:age="12"/>
```

## bean的作用域
+ 单例模式（Spring默认机制）

```xml
<bean id="user" class="com.jie.pojo.User" 
  p:name="张三" p:age="12" scope="singleton"/>
```

+ 原型模式：每次从容器中get的时候，都会产生一个姓对象

```xml
<bean id="user2" class="com.jie.pojo.User" 
  c:_0="李" c:_1="12" scope="prototype"/>
```

+ 其余的requesr, session, applicatiioin, 这些都只能在web开发中使用

# Bean的自动装配
## autowier：
+ byName:会自动在容器上下文中查找，和自己对象set方法后面的值对应的bean id
+ byType:会自动在容器上下文中查找，和自己对象属性类型相同的bean 必须保证类型全局唯一

```xml
<bean id="cat" class="com.jie.pojo.Cat"/>
<bean id="dog" class="com.jie.pojo.Dog"/>

<bean id="people" class="com.jie.pojo.People" autowire="byType">
  <property name="name" value="张三"/>
</bean>
```

```java
private Cat cat;
private Dog dog;
private String name;
```

## 使用注解自动装配
要使用注解须知：

+ 导入约束
+ 配置注解支持  <context:annotation-config/>

```xml
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:context="http://www.springframework.org/schema/context"
	xsi:schemaLocation="http://www.springframework.org/schema/beans
		https://www.springframework.org/schema/beans/spring-beans.xsd
		http://www.springframework.org/schema/context
		https://www.springframework.org/schema/context/spring-context.xsd">

	<context:annotation-config/>

</beans>
```



@Autowired

+ 直接在属性上使用即可！也可以在set方法上使用
+ 使用Autowired可以不用编写set方法了，前提是这个自动装配的属性在IOC容器中存在，且符合名字byName
+ 如果显示定义了Autowired的required属性为false，说明这个对象可以为null

```java
@Autowired(required=false)
private Cat cat;
```

+ 如果@Autowired自动装配的环境比较复杂，自动装配无法通过一个注解【@Autowired】完成的时候，可以使用@Qualifier(value="xxx")去配合@Autowired的使用，指定一个唯一的bean对象注入

```java
@Autowired
@Qualifier(value = "cat")
private Cat cat;
```

+

# 使用注解开发
+ 在Spring4之后，要使用注解开发，必须要保重aop的包导入了
+ 使用注解需要导入context的约束，增加注解的支持

```xml
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:context="http://www.springframework.org/schema/context"
  xsi:schemaLocation="http://www.springframework.org/schema/beans
  http://www.springframework.org/schema/beans/spring-beans.xsd
  http://www.springframework.org/schema/context
  http://www.springframework.org/schema/context/spring-context.xsd">
  <!--指定要扫描的包，这个包下的注解就会生效-->
  <context:component-scan base-package="com.jie"/>
  <context:annotation-config/>

</beans>
```

+ bean
+ 属性使用注解注入

```java
// 相当于 <bean id="user" class="com.jie.pojo.User"/>
@Component
public class User {
    // 相当于 <property name="name" value="张三"/>
    @Value("张三")
    public String name;
}

```

+ 衍生的注解
    - @Component有几个衍生的注解，在web开发中，会按照mvc三次架构分层！
    - dao 【@Repository】
    - service 【@Service
    - controller 【@Controller】
    - 这四个注解功能都是一样的，都是代表将某个类租的到Spring中，装配bean！
+ 自动装配的注解
    - @Autowired：
    - @Nullable
    - @Resource
+ 作用域
    - @Scope("singleton")
+ 小结
    - xml用来管理bean
    - 注解只负责完成属性的注入
    - 在使用的过程中，必须让注解生效

# 使用Java的方式配置Spring
+ comfig配置类

```java
// 这个会被Spring容器托管，注册到容器中，因为它本身就是一个@Component
// @Configuration 代表这是一个配置类，就和beans.xml一样
@Configuration
@ComponentScan("com.jie.pojo")
public class JieConfig {

    // 注册一个bean，
    // 这个方法的名字就相当于 id
    // 这个放回只就相当于 class
    @Bean
    public User user() {
        return new User();  // 返回要注入到bean的对象
    }

}
```

+ 实体类

```java
@Component
public class User {

    @Value("随便")
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
```

+ 测试类

```java
public class MyTest {

    @Test
    public void test() {
        // 如果完全使用了配置类的方式去做，只能通过 AnnotationConfigApplicationContext 来获取容器
        // 勇敢配置类的class对象加载
        ApplicationContext context = new AnnotationConfigApplicationContext(JieConfig.class);
        User user = context.getBean("user", User.class);
        System.out.println(user.getName());
    }
}
```

# 代理模式
## 静态代理模式
角色分析：

+ 抽象角色：一般会使用接口或者抽象类来解决
+ 真实角色：被代理的角色
+ 代理角色：代理真实角色，代理真实角色后，一般会做一些附属操作
+ 客户：访问代理对象的人

代码测试：

+ 抽象角色，接口

```java
// 抽象，公共的方法
public interface Rent {
    public void rent();
}
```

+ 真实角色，房东

```java
// 真实角色 ， 实现公共方法
public class Host implements Rent {
    public void rent() {
        System.out.println("房东出租房子");
    }
}
```

+ 代理角色，中介

```java
// 代理角色，可以实现一些附属操作
public class Proxy implements Rent {

    private Rent rent;
    public Proxy(Rent rent) {
        this.rent = rent;
    }
    public void rent() {
        seeHouse();
        rent.rent();
        fare();
    }

    // 看房
    public void seeHouse() {
        System.out.println("中介带你看房");
    }

    // 收中介费
    public void fare() {
        System.out.println("收中介费");
    }
}
```

+ 客户：租房的人

```java
public class Client {

    public static void main(String[] args) {
        Host host = new Host();
        // 代理
        Proxy proxy = new Proxy(host);
        proxy.rent();
    }
}
```

## 动态代理
+ 动态代理和静态代理角色一样
+ 动态代理的代理类型是动态生成的，不是我们直接写好的，
+ 动态代理分为两大类：基于接口的动态代理，基于类的动态代理
    - 基于接口 --- JDK 动态代理
    - 基于类：cglib
    - Java字节码实现：javasist

需要了解两个类：Proxy：代理，InvocationHandler：调用处理程序

测试：

+ 抽象角色：

```java
// 抽象角色
public interface UserService {
    public void add();
    public void delete();
    public void query();
    public void update();
}
```

+ 真实角色

```java
// 真实角色
public class UserServiceImpl implements UserService{
    @Override
    public void add() {
        System.out.println("添加了一个用户");
    }
    @Override
    public void delete() {
        System.out.println("删除了一个用户");
    }
    @Override
    public void query() {
        System.out.println("查询了一个用户");
    }
    @Override
    public void update() {
        System.out.println("修改了一个用户");
    }
}
```

+ 实现动态代理类InvocationHandler接口

```java
// 动态代理类 公用
public class ProxyInvocationHandler implements InvocationHandler {
    // 被代理的接口
    private Object target;
    public void setTarget(Object target) {
        this.target = target;
    }
    // 生成得到代理类
    public Object getProxy() {
        return Proxy.newProxyInstance(target.getClass().getClassLoader(), target.getClass().getInterfaces(), this);
    }
    // 处理代理实例，并返回结果
    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        log(method.getName());
        Object result = method.invoke(target, args);
        return result;
    }
    // 设置日志
    public void log(String msg) {
        System.out.println("执行了" + msg + "方法");
    }
}
```

+ 客户端

```java
// 用户
public class Client {
    public static void main(String[] args) {
        // 真实角色
        UserServiceImpl userService = new UserServiceImpl();
        // 代理角色
        ProxyInvocationHandler pih = new ProxyInvocationHandler();
        // 设置要代理的对象
        pih.setTarget(userService);
        // 动态生成代理类
        UserService proxy = (UserService) pih.getProxy();
        // 执行真实角色中的方法
        proxy.add();
    }
}
```

动态代理的好处：

+ 一个动态代理类代理的是接口，一般代理的是一类接口
+ 一个动态代理类，可以代理多个类，只要实现了同一个接口即可

# AOP
## 用Spring实现AOP
## 接口和实现类
```java
public interface UserService {
    public void add();
    public void delete();
    public void update();
    public void query();
}
```

```java
public class UserServiceImpl implements UserService {
    @Override
    public void add() {
        System.out.println("添加了一个用户");
    }

    @Override
    public void delete() {
        System.out.println("删除了一个用户");
    }

    @Override
    public void update() {
        System.out.println("修改了一个用户");
    }

    @Override
    public void query() {
        System.out.println("查询了一个用户");
    }
}
```

## 方式一
使用Spring的API接口

+ 配置applicationContext.xml

```java
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xmlns:aop="http://www.springframework.org/schema/aop"
       xsi:schemaLocation="http://www.springframework.org/schema/beans
                           http://www.springframework.org/schema/beans/spring-beans.xsd
                           http://www.springframework.org/schema/aop
                           http://www.springframework.org/schema/aop/spring-aop.xsd">

    <!--注册bean-->
    <bean id="userService" class="com.jie.service.UserServiceImpl"/>
    <bean id="log" class="com.jie.log.Log"/>
    <bean id="afterLog" class="com.jie.log.AfterLog"/>

    <!--配置aop:需要导入aop的约束-->
    <aop:config>
        <!--切入点：expression：表达式, execution(要执行的位置！ * * * * )-->
        <aop:pointcut id="pointcut" expression="execution(* com.jie.service.UserServiceImpl.*(..))"/>

        <!-- 执行环绕增加！advisor -->
        <aop:advisor advice-ref="log" pointcut-ref="pointcut"/>
        <aop:advisor advice-ref="afterLog" pointcut-ref="pointcut"/>
    </aop:config>

</beans>
```

## 方式二
自定义来实现AOP

+ 自定义Diy类

```java
public class DiyPointCat {
    public void before() {
        System.out.println("=========before==========");
    }
    public void after() {
        System.out.println("=========after==========");
    }
}
```

+ 配置applicationContext.xml

```java
<bean id="diy" class="com.jie.diy.DiyPointCat"/>

<aop:config>
    <aop:aspect ref="diy">
        <!--设置切入点 即将要运行这个函数之前-->
        <aop:pointcut id="point" expression="execution(* com.jie.service.UserServiceImpl.*(..))"/>
        <!--在之前method 函数 ， pointcut-ref ： 切入路径-->
        <aop:before method="before" pointcut-ref="point"/>
        <!--在之后method 函数 ， pointcut-ref ： 切入路径-->
        <aop:after method="after" pointcut-ref="point"/>
    </aop:aspect>
</aop:config>
```

## 测试
```java
public class MyTest {
    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        // 动态代理代理的是接口
        UserService service = (UserService) context.getBean("userService");
        service.update();
    }
}
```

## 使用注解实现
+ 注解切面类

```java
@Aspect // 使用注解标志这是一个切面类
public class AnnotationPointCut {

    @Before("execution(* com.jie.service.UserServiceImpl.*(..))")
    public void before() {
        System.out.println("=========方法执行前==========");
    }

    @After("execution(* com.jie.service.UserServiceImpl.*(..))")
    public void after() {
        System.out.println("=========after==========");
    }

    @Around("execution(* com.jie.service.UserServiceImpl.*(..))")
    public void around(ProceedingJoinPoint joinPoint) throws Throwable {
        System.out.println("环绕前");
        System.out.println(joinPoint.getSignature().getDeclaringType().getName());
        Object proceed = joinPoint.proceed();
        System.out.println("环绕后");
    }

}
```

+ applicantionContext.xml配置

```xml
<!--注册bean-->
<bean id="userService" class="com.jie.service.UserServiceImpl"/>
<bean id="log" class="com.jie.log.Log"/>
<bean id="afterLog" class="com.jie.log.AfterLog"/>
<bean id="annotationPointCut" class="com.jie.diy.AnnotationPointCut"/>

<!--使用aop实现注解代理-->
<aop:aspectj-autoproxy/>
```

# Mybatis-Spring
方法一

+ UserMapper 接口，

```java
public interface UserMapper {
    public List<User> selectUsers();
}
```

+ UserMapper.xml, 写SQL语句

```xml
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper
        PUBLIC "-//mybatis.org//DTD Config 3.0//EN"
        "https://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="com.jie.mapper.UserMapper">
    <select id="selectUsers" resultType="user">
        select * from user
    </select>
</mapper>
```

+ mybatis-config.xml 主要配置是settings，typeAliases(别名)

```xml
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE configuration
        PUBLIC "-//mybatis.org//DTD Config 3.0//EN"
        "https://mybatis.org/dtd/mybatis-3-config.dtd">
<!--configuration 核心配置文件-->
<configuration>
    <settings>
        <setting name="logImpl" value="STDOUT_LOGGING"/>
        <!--显式开启默认缓存-->
        <setting name="cacheEnabled" value="true"/>
    </settings>

    <typeAliases>
        <package name="com.jie.pojo"/>
    </typeAliases>
</configuration>
```

+ spring-mapper.xml, 数据源，SqlSessionFactory，SqlSessionTemplate

```xml
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xmlns:aop="http://www.springframework.org/schema/aop"
       xmlns:context="http://www.springframework.org/schema/context"
       xsi:schemaLocation="http://www.springframework.org/schema/beans
                           http://www.springframework.org/schema/beans/spring-beans.xsd
                           http://www.springframework.org/schema/context
                           http://www.springframework.org/schema/context/spring-context.xsd
                           http://www.springframework.org/schema/aop
                           http://www.springframework.org/schema/aop/spring-aop.xsd">
    <!--
        DataSource : 使用Spring的数据源替换Mybatis的配置
        这里使用Spring提供的JDBC：org.springframework.jdbc.datasource
    -->

    <bean id="dataSource" class="org.springframework.jdbc.datasource.DriverManagerDataSource">
        <property name="driverClassName" value="com.mysql.jdbc.Driver"/>
        <property name="url" value="jdbc:mysql://192.168.204.131:3306/mybatis"/>
        <property name="username" value="root"/>
        <property name="password" value="@Root1234"/>
    </bean>

    <!--SqlSessionFactory-->
    <bean id="sqlSessionFactory" class="org.mybatis.spring.SqlSessionFactoryBean">
        <property name="dataSource" ref="dataSource"/>
        <!--绑定Mybatis配置文件-->
        <property name="configLocation" value="classpath:mybatis-config.xml"/>
        <property name="mapperLocations" value="com/jie/mapper/UserMapper.xml"/>
     </bean>

    <!--SqlSessionTemplate: 即utils中的SqlSession-->
    <bean id="sqlSession" class="org.mybatis.spring.SqlSessionTemplate">
        <constructor-arg index="0" ref="sqlSessionFactory"/>
    </bean>

</beans>
```

+ UserMapperImpl, 给接口添加实现类

```java
public class UserMapperImpl implements UserMapper {

    //
    private SqlSessionTemplate sqlSession;

    public void setSqlSession(SqlSessionTemplate sqlSession) {
        this.sqlSession = sqlSession;
    }

    public List<User> selectUsers() {
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        return mapper.selectUsers();
    }
}
```

+ applicationContext.xml，将实现类注入到Spring中

```java
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xmlns:aop="http://www.springframework.org/schema/aop"
       xmlns:context="http://www.springframework.org/schema/context"
       xsi:schemaLocation="http://www.springframework.org/schema/beans
                           http://www.springframework.org/schema/beans/spring-beans.xsd
                           http://www.springframework.org/schema/context
                           http://www.springframework.org/schema/context/spring-context.xsd
                           http://www.springframework.org/schema/aop
                           http://www.springframework.org/schema/aop/spring-aop.xsd">
    <import resource="spring-mapper.xml"/>
    <!---->
    <bean id="userMapper" class="com.jie.mapper.UserMapperImpl">
        <property name="sqlSession" ref="sqlSession"/>
    </bean>

</beans>
```

+ 测试使用

```java
public class UserMapperTest {

    @Test
    public void test() {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserMapper mapper = context.getBean("userMapper", UserMapper.class);
        List<User> users = mapper.selectUsers();
        for (User user : users) {
            System.out.println(user);
        }
    }
}
```

方法二

+ 更改接口实现类，需要继承SqlSessionDaoSupport类

```java
public class UserMapperImpl2 extends SqlSessionDaoSupport implements UserMapper {

    @Override
    public List<User> selectUsers() {
        return getSqlSession().getMapper(UserMapper.class).selectUsers();
    }
}
```

+ 将实现类注入到Spring中

```java
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xmlns:aop="http://www.springframework.org/schema/aop"
       xmlns:context="http://www.springframework.org/schema/context"
       xsi:schemaLocation="http://www.springframework.org/schema/beans
                           http://www.springframework.org/schema/beans/spring-beans.xsd">

    <import resource="spring-mapper.xml"/>

    <bean id="userMapper2" class="com.jie.mapper.UserMapperImpl2">
        <property name="sqlSessionFactory" ref="sqlSessionFactory"/>
    </bean>

</beans>
```

+ 测试实现

```java
public class UserMapperTest {

    @Test
    public void test() {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserMapper mapper2 = context.getBean("userMapper2", UserMapper.class);
        List<User> users2 = mapper2.selectUsers();
        for (User user : users2) {
            System.out.println(user);
        }
    }
}
```

# 声明式事务
+ 声明式事务，用AOP实现

```java
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xmlns:aop="http://www.springframework.org/schema/aop"
       xmlns:tx="http://www.springframework.org/schema/tx"
       xsi:schemaLocation="http://www.springframework.org/schema/beans
                           http://www.springframework.org/schema/beans/spring-beans.xsd
                           http://www.springframework.org/schema/tx
                           http://www.springframework.org/schema/tx/spring-tx.xsd
                           http://www.springframework.org/schema/aop
                           http://www.springframework.org/schema/aop/spring-aop.xsd">

    <!--配置声明式事务-->
    <bean id="transactionManager" class="org.springframework.jdbc.datasource.DataSourceTransactionManager">
        <property name="dataSource" ref="dataSource"/>
    </bean>

    <!--结合aop实现事务的织入-->
    <!-- 配置事务通知 -->
    <tx:advice id="txAdvice" transaction-manager="transactionManager">
        <tx:attributes>
            <tx:method name="add" propagation="REQUIRED"/>
            <tx:method name="delete" propagation="REQUIRED"/>
            <tx:method name="insert" propagation="REQUIRED"/>
            <tx:method name="query" read-only="true"/>
            <tx:method name="*" propagation="REQUIRED"/>
        </tx:attributes>
    </tx:advice>

    <!--配置事务切入-->
    <aop:config>
        <aop:pointcut id="txPointCat" expression="execution(* com.jie.mapper.*.*(..))"/>
        <aop:advisor advice-ref="txAdvice" pointcut-ref="txPointCat"/>
    </aop:config>

</beans>
```
', 0, NOW());

INSERT INTO `note` (`id`, `author_id`, `title`, `content`, `like_count`, `created_at`)
VALUES (9, 1002, 'python基础', '### 数据类型
int:整数，123；float：小数，1.2，complex：复数,1+2i；str：字符串，“abc”；list：列表，[1,''ok];tuple：元祖，(1,3,''ok'');bool：布尔，True.False;dict：字典，{"tom":20,"jack":30};set：集合, {"tom".16,20}

### 输入输出
```python
#不换行输出：end=""
print(1, 2, 3, end="")
print("ok")
#输入 
x = input(y)
```

占位符：%s(字符串)；%d(整数)；%f(小数)；%.nf(保留n位的小数)

### 运算符
算数运算符： +(加),-(减), *(乘), /(除,float), %(取模), //(求商,int), **(求幂) 优先级 1）**；2）*, /, //, %；3) + -

关系运算符 ==  !=  >  <  >=  <=

逻辑运算符：and   or    not     优先级 not>and>or

bool类型： True, False

### 条件分支语句
`if` 逻辑表达式1：

       语句组1  
`else`    ：

       语句组2

### 循环语句
#### for循环语句
`for`变量 `in`可迭代对象:

          #循环体代码

`<font style="color:rgb(6, 6, 7);">可迭代对象</font>`<font style="color:rgb(6, 6, 7);">：可以是列表、元组、字符串、字典、集合等，也可以是其他支持迭代的对象（如文件对象、生成器等）</font>

`<font style="color:rgb(6, 6, 7);">range()</font>`<font style="color:rgb(6, 6, 7);"> 函数可以生成一个整数序列，常用于控制循环次数。</font>

```python
for i in range(1, 10, 2)    #从1到9 步长为2
    pirnt(i)
```

`break`<font style="color:rgb(6, 6, 7);">：退出循环。</font>

`continue`<font style="color:rgb(6, 6, 7);">：跳过当前循环，进入下一次循环。</font>

#### while 循环
`while` 条件：

       #循环体代码

`else`:

      #语句组

条件：一个布尔表达式 如果条件为True则执行循环。反之则退出循环

### 异常处理
`try` :

 	<语句组1>

`except`:

<语句组2>

### 函数
**<font style="color:rgb(6, 6, 7);">函数</font>**<font style="color:rgb(6, 6, 7);">是一种封装了一段代码的逻辑结构，用于执行特定任务，用关键字</font>`<font style="color:rgb(6, 6, 7);">def</font>`<font style="color:rgb(6, 6, 7);">自定义函数</font>

```python
def function_name(parameters):
    # 函数体
    # 执行代码
    return value  # 可选，返回值
```

+ `**def**`<font style="color:rgb(6, 6, 7);">：定义函数的关键字。</font>
+ `**function_name**`<font style="color:rgb(6, 6, 7);">：函数名称，应符合变量命名规则。</font>
+ `**parameters**`<font style="color:rgb(6, 6, 7);">：参数列表，用于传递值到函数内部（可选）。</font>
+ `**return**`<font style="color:rgb(6, 6, 7);">：返回值，函数执行完毕后返回的结果（可选）。</font>

#### 参数类型
<font style="color:rgb(6, 6, 7);">位置参数：按顺序传递参数。</font>

<font style="color:rgb(6, 6, 7);">关键字参数：通过参数名传递参数。</font>

<font style="color:rgb(6, 6, 7);">默认参数：参数有默认值，调用时可省略。</font>

**<font style="color:rgb(6, 6, 7);">可变参数</font>**<font style="color:rgb(6, 6, 7);">：</font>

`*args`<font style="color:rgb(6, 6, 7);">：接收多个位置参数，返回元组。</font>

`**kwargs`<font style="color:rgb(6, 6, 7);">：接收多个关键字参数，返回字典</font>

##### <font style="color:rgb(6, 6, 7);">作用域</font>
<font style="color:rgb(6, 6, 7);">全局变量：在函数外部定义，可在整个程序中访问。</font>

<font style="color:rgb(6, 6, 7);">局部变量：在函数内部定义，仅在函数内部有效。</font>

#### <font style="color:rgb(6, 6, 7);">内置通用函数</font>
<font style="color:rgb(6, 6, 7);">（1）</font>`<font style="color:rgb(6, 6, 7);">print()</font>`<font style="color:rgb(6, 6, 7);"> 打印输出内容到控制台</font>

<font style="color:rgb(6, 6, 7);">（2）</font>`<font style="color:rgb(6, 6, 7);">len()</font>`<font style="color:rgb(6, 6, 7);">返回对象（如字符串、列表、元组等）的长度。</font>

<font style="color:rgb(6, 6, 7);">（3）</font>`<font style="color:rgb(6, 6, 7);">type()</font>`<font style="color:rgb(6, 6, 7);">返回对象的类型。</font>

<font style="color:rgb(6, 6, 7);">（4）</font>`<font style="color:rgb(6, 6, 7);">str()</font>`<font style="color:rgb(6, 6, 7);">, </font>`<font style="color:rgb(6, 6, 7);">int()</font>`<font style="color:rgb(6, 6, 7);">, </font>`<font style="color:rgb(6, 6, 7);">float()</font>`<font style="color:rgb(6, 6, 7);">将对象转换为字符串、整数或浮点数。</font>

<font style="color:rgb(6, 6, 7);">（5）</font>`<font style="color:rgb(6, 6, 7);">range()</font>`<font style="color:rgb(6, 6, 7);">生成一个整数序列，常用于循环。</font>

<font style="color:rgb(6, 6, 7);">（6）</font>`<font style="color:rgb(6, 6, 7);">input()</font>`<font style="color:rgb(6, 6, 7);">从用户获取输入。</font>

<font style="color:rgb(6, 6, 7);">（7）</font>`<font style="color:rgb(6, 6, 7);">sum()</font>`<font style="color:rgb(6, 6, 7);">, </font>`<font style="color:rgb(6, 6, 7);">min()</font>`<font style="color:rgb(6, 6, 7);">, </font>`<font style="color:rgb(6, 6, 7);">max()</font>`<font style="color:rgb(6, 6, 7);">计算序列的总和、最小值和最大值。</font>

<font style="color:rgb(6, 6, 7);">2.</font>**<font style="color:rgb(6, 6, 7);">列表相关函数</font>**<font style="color:rgb(6, 6, 7);"></font>

<font style="color:rgb(6, 6, 7);">（1）</font>`<font style="color:rgb(6, 6, 7);">list()</font>`<font style="color:rgb(6, 6, 7);">将其他可迭代对象（如字符串、元组）转换为列表。</font>

<font style="color:rgb(6, 6, 7);">（2）</font>`<font style="color:rgb(6, 6, 7);">append()</font>`<font style="color:rgb(6, 6, 7);">向列表末尾添加一个元素。</font>

<font style="color:rgb(6, 6, 7);">（3）</font>`<font style="color:rgb(6, 6, 7);">extend()</font>`<font style="color:rgb(6, 6, 7);">将一个列表的元素添加到另一个列表。</font>

<font style="color:rgb(6, 6, 7);">（4）</font>`<font style="color:rgb(6, 6, 7);">sort()</font>`<font style="color:rgb(6, 6, 7);">对列表进行排序。</font>

<font style="color:rgb(6, 6, 7);">（5）</font>`<font style="color:rgb(6, 6, 7);">pop()</font>`<font style="color:rgb(6, 6, 7);">移除列表中的一个元素，并返回该元素。</font>

<font style="color:rgb(6, 6, 7);">3. </font>**<font style="color:rgb(6, 6, 7);">字符串相关函数</font>**<font style="color:rgb(6, 6, 7);"></font>

<font style="color:rgb(6, 6, 7);">字符串是Python中最常用的数据类型之一，以下是一些常用的字符串处理函数。</font>

<font style="color:rgb(6, 6, 7);">（1）</font>`<font style="color:rgb(6, 6, 7);">upper()</font>`<font style="color:rgb(6, 6, 7);"> 和 </font>`<font style="color:rgb(6, 6, 7);">lower()</font>`<font style="color:rgb(6, 6, 7);">将字符串转换为大写或小写。</font>

<font style="color:rgb(6, 6, 7);">（2）</font>`<font style="color:rgb(6, 6, 7);">strip()</font>`<font style="color:rgb(6, 6, 7);">去除字符串两端的空白字符。</font>

<font style="color:rgb(6, 6, 7);">（3）</font>`<font style="color:rgb(6, 6, 7);">split()</font>`<font style="color:rgb(6, 6, 7);">将字符串分割为列表。</font>

<font style="color:rgb(6, 6, 7);">（4）</font>`<font style="color:rgb(6, 6, 7);">join()</font>`<font style="color:rgb(6, 6, 7);">将列表中的字符串元素连接为一个字符串。</font>

<font style="color:rgb(6, 6, 7);">（5）</font>`<font style="color:rgb(6, 6, 7);">replace()</font>`<font style="color:rgb(6, 6, 7);">替换字符串中的某些内容。</font>

<font style="color:rgb(6, 6, 7);">- 4. </font>**<font style="color:rgb(6, 6, 7);">数学相关函数</font>**<font style="color:rgb(6, 6, 7);"></font>

<font style="color:rgb(6, 6, 7);">Python的`math`模块提供了许多数学相关的函数。</font>

<font style="color:rgb(6, 6, 7);">（1）</font>`<font style="color:rgb(6, 6, 7);">math.sqrt()</font>`<font style="color:rgb(6, 6, 7);">计算平方根。</font>

<font style="color:rgb(6, 6, 7);">（2）</font>`<font style="color:rgb(6, 6, 7);">math.ceil()</font>`<font style="color:rgb(6, 6, 7);"> 和 </font>`<font style="color:rgb(6, 6, 7);">math.floor()</font>`<font style="color:rgb(6, 6, 7);">向上取整和向下取整。</font>

<font style="color:rgb(6, 6, 7);">（3）</font>`<font style="color:rgb(6, 6, 7);">math.pow()</font>`<font style="color:rgb(6, 6, 7);">计算幂。</font>

<font style="color:rgb(6, 6, 7);"> 5. </font>**<font style="color:rgb(6, 6, 7);">其他通用函数</font>**<font style="color:rgb(6, 6, 7);"></font>

<font style="color:rgb(6, 6, 7);">以下是一些在Python中非常通用的函数，用于处理各种场景。</font>

<font style="color:rgb(6, 6, 7);">（1）</font>`<font style="color:rgb(6, 6, 7);">enumerate()</font>`<font style="color:rgb(6, 6, 7);">在循环中同时获取索引和值。</font>

<font style="color:rgb(6, 6, 7);">（2）</font>`<font style="color:rgb(6, 6, 7);">zip()</font>`<font style="color:rgb(6, 6, 7);">将多个可迭代对象打包为元组列表。</font>

<font style="color:rgb(6, 6, 7);">（3）</font>`<font style="color:rgb(6, 6, 7);">map()</font>`<font style="color:rgb(6, 6, 7);">对可迭代对象中的每个元素应用函数。</font>

<font style="color:rgb(6, 6, 7);">（4）</font>`<font style="color:rgb(6, 6, 7);">filter()</font>`<font style="color:rgb(6, 6, 7);">过滤可迭代对象中的元素。</font>

### 元组
一个元组是由多个逗号分隔的值组成，前后可加括号

元组不能修改，即不能删除，赋值，修改，排序，但元组中数组内的值可以改变

#### 元组的切片
`[1:6]`选择下标为1到5的元素

`[1:6:2]`选择下标为1到5的元素 ，步长为2

`[::-1]`将元组的顺序倒置

### <font style="color:rgb(6, 6, 7);">.列表（list）</font>
列表可以对元素进行增、删、改、查，列表元素可以是任何类型

#### <font style="color:rgb(6, 6, 7);">列表相关函数</font>
<font style="color:rgb(6, 6, 7);">（1）</font>`<font style="color:rgb(6, 6, 7);">list()</font>`<font style="color:rgb(6, 6, 7);">将其他可迭代对象（如字符串、元组）转换为列表。</font>

<font style="color:rgb(6, 6, 7);">（2）</font>`<font style="color:rgb(6, 6, 7);">append()</font>`<font style="color:rgb(6, 6, 7);">向列表末尾添加一个元素。</font>

<font style="color:rgb(6, 6, 7);">（3）</font>`<font style="color:rgb(6, 6, 7);">extend()</font>`<font style="color:rgb(6, 6, 7);">将一个列表的元素添加到另一个列表。</font>

<font style="color:rgb(6, 6, 7);">（4）</font>`<font style="color:rgb(6, 6, 7);">sort()</font>`<font style="color:rgb(6, 6, 7);">对列表进行排序。</font>

<font style="color:rgb(6, 6, 7);">（5）</font>`<font style="color:rgb(6, 6, 7);">pop()</font>`<font style="color:rgb(6, 6, 7);">移除列表中的一个元素，并返回该元素。</font>

```python
emty = []   #空表
list = [''Google'', ''Runoob'', 1992, 2222]
list[2] = 2000   #将下标为2的值更换为2000
#用in来判断列表是否包含某个元素 结果为False（不存在）或True(存在)
print(''Google'' in list)  #>>True
#若x是字符串，则x.split()的值是一个列表
#包含字符串x经空格，制表符，换行符分隔得到的所有子串
print("34\t\t45\n7".split()) #>>[''34'', ''45''. ''''7]
```

### <font style="color:rgb(6, 6, 7);">字典（dict）</font>
每个元素都是由“键：值”两部分组成

#### 字典的相关函数
`cher()`清空字典

`keys()`取字典的键的序列

`items()`取字典的元素的序列，可用于遍历字典

`values()`取字典的值的序列

`pop(x)`删除键位x的元素，如果不存在，产生异常

上述序列不是list，tuple或set

`copy()`浅拷贝

### 集合（set）
元素类型可以不同，没重复元素，可以增删元素，列表、字典、集合等不可变的数据类型不可作为集合的元素

#### 集合常用函数
`add(x)`添加元素x

`clear()`清空集合

`remove(x)`删除元素x

`updata(x)`将序列x中的元素加入到集合

#### 集合的运算
`x in a`x是否在集合

`a | b`求a和b的并

`a & b`求a和b的交

`a - b`求a和b的差，即在a中而不在b中的元素

`a ^ b`求a和b的对称差，等价于`(a | b)- (a & b)`

`a == b`a是否元素和b一样

`a !=b`a是否元素和b不一样

`a <= b`a是否是b的子集（a有的元素，b都有）

`<font style="color:rgb(6, 6, 7);">a < b</font>`<font style="color:rgb(6, 6, 7);">a是否是b的真子集（a有的元素，b都有，且b还包含a中没有的元素）</font>

### 文本文件读写
`open("文件绝对路经", "W", encoding="utf=8")`函数打开（创建）文件，将返回值放入一个变量，例如f.“w”写入，“r”读取， “a”添加写入

用`f.write`函数写入文件

用`f.readlines`函数读取文件全部内容

用`f.reandline`函数读取文件一行

用`f.xlose()`关闭文件

用`f.read()`读取文件全部内容。返回一个字符串，包含文件全部内容

### 文件夹操作函数
os库和shutil库中有一些函数可以用来操作文件和文件夹

`os.chdir(x)`将程序的当前文件夹位置设为x

`os.getcwd()`求程序的当前文件夹

`os.listdir(x)`返回一个列表，你面是文件夹x中的所有文件和子文件夹的名字

`os.mkdir(x)`创建文件夹x

`os.path.getsize(x)`获取文件z的大小

`os.path.isfile(x)`判断x是不是文件

`os.remove(x)`删除文件x

`os.rmdir(x)`删除文件夹x

`os.rename(x, y)`将文件或文件夹x改名为y。还可以移动文件或文件夹

`shutil.copyfile(x, y)`拷贝文件x到文件y，若y存在，会被副高

### Python数据库编程
数据库可以用来存放大量数据，一个数据库可以是一个文件，一个数据可以有多张表

#### 字段的数据类型
`text`字符串，`real`小数， `integer`整数，`blob`二进制数据（如图片），`date`日期（本质上是text），`datetime`时间+日期（本质上是text）

#### SQL数据库查询语句(sqlite3)
`CREATE TABLE`  创建表

`INSERT INTO`  `VALUES`  在表中插入记录

`UPDATE`             在表中更新记录

`SELECT`             在表中进行查询

`DELETE`             在表中删除记录

### 正则表达式
#### 正则表达式中的功能字符
| 字符/组合 | 匹配的模式 | 正则表达式 | 匹配的字符串 |
| --- | --- | --- | --- |
| `.` | 除‘\n’外的任意一个字符，包括汉字 | ''a.b''<br/> | ''acb''<br/>''adb'' |
| `*` | 量词，表示左边的字符可以出现0次或任意多次 | ''a*b'' | ''b''<br/>''aaaaab'' |
| `?` | 量词，表示左边的字符可以出现0次或1次 | ''ka?b'' | ''kb''<br/>''kab'' |
| `+` | 量词，表示左边的字符必须出现1次或更多次 | ''ka+b'' | ''kab''<br/>''kaaaab'' |
| `{m, n}` | 量词，m,n是整数，表示左边的字符必须出现至少m次，最多n次。n也可以不写，表示没有次数上线 | ''ka{1}b''<br/>''ka{2,4}b''<br/>''ka{2,}b'' | ''kab''<br/>''kaaaab''<br/>''kaaaaaaaaaab'' |
| `\d` | 一个数字字符，等价于[0-9] | ''a\db'' | ''a3b''<br/>''a2b'' |
| `\D` | 一个非数字字符，等价于[^\d],[0-9] | ''a\Db'' | ''acb'' |
| `\s` | 一个空白字符，如空格，\r\t\d | ''a\sb'' | ''a b''<br/>''a\nb'' |
| `\S` | 一个非空白字符 | ''a\Sb'' | ''akb'' |
| `\w` | 一个单词字符：包括汉字或大小写英文字母，数字，下划线，或其他语言的文字 | ''a\wb'' | ''a_b''<br/>''a中b'' |
| `\W` | 一个不是单词的字符 | ''a\Wb'' | ''a?b'' |
| `|` | A|B表示能匹配A或能匹配B均算匹配 | ''ab|c'' | ''ab''<br/>''c'' |
| `\` | 正则表达式中常见的特殊字符. + ? * ^ $ [] (）{} \ 在正则表达式中表示字符本身就在字符前加上`\` | ''a\\''<br/>''a\$b''<br/>''a\[\]b'' | ''a\''<br/>''a$b''<br/>''a[]b'' |


#### 正则表达式中范围符号[]和量词
[XXX]:此处必须出现某某范围内的字符 或 此处必须出现一个字符，但不可以是某某范围内的字符

`[a2c]`匹配 ''a'' ''2'' ''c'' 之一

`[a-zA-z]`匹配任一英文字母

`[\da-z\?]`匹配一个 数字 或 小写英文字母 或 ''?''

`[^abc]`匹配一个非''a'' '' b'' ''c''的字符

`[^a-f0-3]`匹配一个非a-f的英文字母，也非0-3的数字的字符

`[\ue00-\9fa5]`表示一个汉字

#### 正则表达式中的函数
`re.match(pattern, string, flag=0)`

从字符串string的起始位置匹配一个模式pattern，成功则返回一个匹配对象，否则返回None

`re.search(pattern, string, flags = 0)`

查找字符串中可以匹配成功的子串，成功则返回一个匹配对象，若无法匹配，则返回None

`re.findall(pattern, string, flags = 0)`

查找字符串中所有模式匹配的子串（不重叠）放入列表，没有则返回空表[]

`re.finditer(pattenr, stringm flags = 0)`

查找字符串中所有模式匹配的子串（不重叠）,每个子串对应于一个匹配对象，返回匹配对象的序列

`re.sub(模式串，替换串，母串)`

用于替换匹配的子串

#### 边界符号
`\A`字符串的左边界

`\Z`字符串的有边界

`^`与`\A`同，但在多行匹配模式下还可以表示一行文字的左边界

`$`与`\Z`同，但在多行匹配模式下还可以表示一行文字的右边界

`\b`表示此处应为单词的左边界或有边界，即不可是单词字符

`\B`表示此处不允许单词的左边界或有边界，即必须是单词字符

#### 分组(....)
括号中的表达式是一个分组。多个分组按左括号从左到右从1开始依次编号

在分组的右边可以通过分组的编号引用该分组所匹配的子串

分组作为一个整体，后面可以跟量词

#### `re.findall`和分组
有且只有一个分组时，re.findall返回的是一个子串的列表，每个元素是一个匹配子串对应的内容

超过一个分组时，re.findall返回的是一个元组的列表，每个元组对应于一个匹配的子串，依次是1号分组，二号分组，三号分组……匹配的内容

#### 匹配对象
匹配成功时的返回结果

属性：

`string`匹配时使用的母串

`lastindex`最后一个匹配的分组的编号。没有被匹配的分组，将为None

`group([n1, n2, ......])`获得一个或多个分组匹配的字符串；指定多个参数时将以元组形式返回。

`groups([default])`以元组形式返回全部分组匹配的字符串

`groupdict([default])`返回指定的组匹配的子串在string中的位置。

### `<font style="color:rgb(64, 64, 64);">datetime</font>`<font style="color:rgb(64, 64, 64);">模块</font>
#### <font style="color:rgb(64, 64, 64);">1. </font>`<font style="color:rgb(64, 64, 64);">datetime</font>` 类
`<font style="color:rgb(64, 64, 64);">datetime</font>`<font style="color:rgb(64, 64, 64);"> 类是 </font>`<font style="color:rgb(64, 64, 64);">datetime</font>`<font style="color:rgb(64, 64, 64);"> 模块中最核心的类，用于表示日期和时间。</font>

+ `<font style="color:rgb(64, 64, 64);">datetime.now()</font>`<font style="color:rgb(64, 64, 64);">：返回当前日期和时间。</font>
+ `<font style="color:rgb(64, 64, 64);">datetime.today()</font>`<font style="color:rgb(64, 64, 64);">：返回当前日期和时间（与 </font>`<font style="color:rgb(64, 64, 64);">now()</font>`<font style="color:rgb(64, 64, 64);"> 类似，但不包含时区信息）。</font>
+ `<font style="color:rgb(64, 64, 64);">datetime.combine(date, time)</font>`<font style="color:rgb(64, 64, 64);">：将 </font>`<font style="color:rgb(64, 64, 64);">date</font>`<font style="color:rgb(64, 64, 64);"> 和 </font>`<font style="color:rgb(64, 64, 64);">time</font>`<font style="color:rgb(64, 64, 64);"> 合并为一个 </font>`<font style="color:rgb(64, 64, 64);">datetime</font>`<font style="color:rgb(64, 64, 64);"> 对象。</font>
+ `<font style="color:rgb(64, 64, 64);">datetime.strptime(string, format)</font>`<font style="color:rgb(64, 64, 64);">：将字符串按照指定格式解析为 </font>`<font style="color:rgb(64, 64, 64);">datetime</font>`<font style="color:rgb(64, 64, 64);"> 对象。</font>
+ `<font style="color:rgb(64, 64, 64);">strftime(format)</font>`<font style="color:rgb(64, 64, 64);">：将 </font>`<font style="color:rgb(64, 64, 64);">datetime</font>`<font style="color:rgb(64, 64, 64);"> 对象格式化为字符串。</font>
+ `<font style="color:rgb(64, 64, 64);">timestamp()</font>`<font style="color:rgb(64, 64, 64);">：将 </font>`<font style="color:rgb(64, 64, 64);">datetime</font>`<font style="color:rgb(64, 64, 64);"> 对象转换为时间戳（Unix 时间）。</font>
+ `<font style="color:rgb(64, 64, 64);">fromtimestamp(timestamp)</font>`<font style="color:rgb(64, 64, 64);">：将时间戳转换为 </font>`<font style="color:rgb(64, 64, 64);">datetime</font>`<font style="color:rgb(64, 64, 64);"> 对象。</font>

#### <font style="color:rgb(64, 64, 64);">2. </font>`<font style="color:rgb(64, 64, 64);">date</font>` 类
`<font style="color:rgb(64, 64, 64);">date</font>`<font style="color:rgb(64, 64, 64);"> 类用于表示日期（年、月、日）。</font>

+ `<font style="color:rgb(64, 64, 64);">date.today()</font>`<font style="color:rgb(64, 64, 64);">：返回当前日期。</font>
+ `<font style="color:rgb(64, 64, 64);">strftime(format)</font>`<font style="color:rgb(64, 64, 64);">：将 </font>`<font style="color:rgb(64, 64, 64);">date</font>`<font style="color:rgb(64, 64, 64);"> 对象格式化为字符串。</font>
+ `<font style="color:rgb(64, 64, 64);">date.fromtimestamp(timestamp)</font>`<font style="color:rgb(64, 64, 64);">：将时间戳转换为 </font>`<font style="color:rgb(64, 64, 64);">date</font>`<font style="color:rgb(64, 64, 64);"> 对象。</font>
+ `<font style="color:rgb(64, 64, 64);">date.replace(year, month, day)</font>`<font style="color:rgb(64, 64, 64);">：替换日期中的年、月、日。</font>
+ `<font style="color:rgb(64, 64, 64);">weekday()</font>`<font style="color:rgb(64, 64, 64);">：返回星期几（0 表示周一，6 表示周日）。</font>
+ `<font style="color:rgb(64, 64, 64);">isoweekday()</font>`<font style="color:rgb(64, 64, 64);">：返回星期几（1 表示周一，7 表示周日）。</font>

#### <font style="color:rgb(64, 64, 64);">3. </font>`<font style="color:rgb(64, 64, 64);">time</font>` 类
`<font style="color:rgb(64, 64, 64);">time</font>`<font style="color:rgb(64, 64, 64);"> 类用于表示时间（时、分、秒、微秒）。</font>

+ `<font style="color:rgb(64, 64, 64);">strftime(format)</font>`<font style="color:rgb(64, 64, 64);">：将 </font>`<font style="color:rgb(64, 64, 64);">time</font>`<font style="color:rgb(64, 64, 64);"> 对象格式化为字符串。</font>
+ `<font style="color:rgb(64, 64, 64);">time.replace(hour, minute, second, microsecond)</font>`<font style="color:rgb(64, 64, 64);">：替换时间中的时、分、秒、微秒。</font>

#### <font style="color:rgb(64, 64, 64);">4. </font>`<font style="color:rgb(64, 64, 64);">timedelta</font>` 类
`<font style="color:rgb(64, 64, 64);">timedelta</font>`<font style="color:rgb(64, 64, 64);"> 类用于表示时间间隔（天、秒、微秒等），常用于日期和时间的加减运算。</font>

+ `<font style="color:rgb(64, 64, 64);">timedelta(days, seconds, microseconds, milliseconds, minutes, hours, weeks)</font>`<font style="color:rgb(64, 64, 64);">：创建时间间隔。</font>
+ `<font style="color:rgb(64, 64, 64);">total_seconds()</font>`<font style="color:rgb(64, 64, 64);">：返回时间间隔的总秒数。</font>

---

#### <font style="color:rgb(64, 64, 64);">5. </font>`<font style="color:rgb(64, 64, 64);">tzinfo</font>` 类
`<font style="color:rgb(64, 64, 64);">tzinfo</font>`<font style="color:rgb(64, 64, 64);"> 是一个抽象基类，用于表示时区信息。Python 3.9+ 推荐使用 </font>`<font style="color:rgb(64, 64, 64);">zoneinfo</font>`<font style="color:rgb(64, 64, 64);"> 模块来处理时区。</font>

##### 示例：使用 `<font style="color:rgb(64, 64, 64);">zoneinfo</font>`
```python
from zoneinfo import ZoneInfo
from datetime import datetime

# 创建带时区的 datetime 对象
now_utc = datetime.now(ZoneInfo("UTC"))
now_shanghai = datetime.now(ZoneInfo("Asia/Shanghai"))

print("UTC 时间:", now_utc)
print("上海时间:", now_shanghai)
```

### random库处理随机事务
Python 的 `random` 模块提供了多种生成伪随机数的函数，广泛用于模拟、游戏开发和需要随机性的地方。以下是 `random` 模块中常用类和函数的用法：

#### 1. 生成随机浮点数
+ `random.random()`：生成一个范围在 `[0.0, 1.0)` 的随机浮点数。
+ `random.uniform(a, b)`：生成一个范围在 `[a, b]` 的随机浮点数。

#### 2. 生成随机整数
+ `random.randint(a, b)`：生成一个范围在 `[a, b]` 的随机整数。
+ `random.randrange(start, stop[, step])`：从 `range(start, stop, step)` 中随机选择一个元素。

#### 3. 从序列中随机选择
+ `random.choice(seq)`：从非空序列 `seq` 中随机选择一个元素。
+ `random.choices(population, weights=None, k=1)`：从 `population` 中随机选择 `k` 个元素，可指定权重。

#### 4. 随机打乱序列
+ `random.shuffle(x)`：随机打乱序列 `x`。

#### 5. 生成随机样本
+ `random.sample(population, k)`：从 `population` 中随机选择 `k` 个不重复的元素。

#### 6. 设置随机种子
+ `random.seed(a=None)`：设置随机数生成器的种子。如果未指定 `a`，则使用系统时间。

#### 7. 其他随机分布
+ `random.gauss(mu, sigma)`：生成正态分布的随机数。
+ `random.expovariate(lambd)`：生成指数分布的随机数。

### jieba库进行分词
`jieba` 是一个功能强大的中文分词库，广泛用于自然语言处理、文本挖掘等领域。以下是 `jieba` 库的主要类、函数及其用法的详细介绍：

#### 1. 安装和导入
在使用 `jieba` 库之前，需要先安装：

```bash
pip install jieba
```

安装完成后，可以在 Python 中导入：

```python
import jieba
```

#### 2. 分词模式
`jieba` 提供了三种主要的分词模式：

##### （1）精确模式（默认模式）
精确模式会将文本尽可能精确地切分成单个词语，适合文本分析。

```python
text = "我喜欢Python编程"
words = jieba.cut(text, cut_all=False)  # 或直接 jieba.cut(text)
print("精确模式：", "/ ".join(words))
```

输出：

```plain
精确模式：我/ 喜欢/ Python/ 编程
```

##### （2）全模式
全模式会将文本中所有可能的词语都扫描出来，速度非常快，但可能存在冗余。

```python
words = jieba.cut(text, cut_all=True)
print("全模式：", "/ ".join(words))
```

输出：

```plain
全模式：我/ 喜欢/ Python/ 编程
```

##### （3）搜索引擎模式
搜索引擎模式在精确模式的基础上，对长词再次切分，提高召回率，适合用于搜索引擎分词。

```python
words = jieba.cut_for_search(text)
print("搜索引擎模式：", "/ ".join(words))
```

输出：

```plain
搜索引擎模式：我/ 喜欢/ Python/ 编程
```

#### 3. 自定义词典
`jieba` 支持加载自定义词典，以提高分词的准确性。自定义词典是一个文本文件，每行包含一个词和其词频（可选），格式如下：

```plain
自定义词 词频
```

例如，创建一个名为 `custom_dict.txt` 的自定义词典：

```plain
华为笔记本 10
```

加载自定义词典：

```python
jieba.load_userdict("custom_dict.txt")
text = "华为笔记本性能出色"
words = jieba.cut(text, cut_all=False)
print("自定义词典：", "/ ".join(words))
```

输出：

```plain
自定义词典：华为笔记本/ 性能/ 出色
```

#### 4. 词性标注
`jieba` 支持对分词结果进行词性标注，可以用于词性分析和信息提取。

```python
import jieba.posseg as pseg
text = "我喜欢Python编程"
words = pseg.cut(text)
for word, flag in words:
    print(f"{word} -> {flag}")
```

输出：

```plain
我 -> r
喜欢 -> v
Python -> eng
编程 -> vn
```

#### 5. 关键词提取
`jieba` 提供了关键词提取功能，主要有 TF-IDF 和 TextRank 两种算法。

##### （1）TF-IDF 关键词提取
```python
import jieba.analyse
text = "我来到北京清华大学，清华大学是中国著名的高等学府。"
keywords = jieba.analyse.extract_tags(text, topK=5, withWeight=False)
print("关键词（TF-IDF）：", keywords)
```

##### （2）TextRank 关键词提取
```python
keywords = jieba.analyse.textrank(text, topK=5, withWeight=False)
print("关键词（TextRank）：", keywords)
```

#### 6. 并行分词
对于较大的文本，可以使用并行分词来提高分词速度。

```python
jieba.enable_parallel(4)  # 开启并行分词，指定线程数
text = "Python是一种流行的编程语言，广泛用于Web开发和数据科学。" * 1000
words = jieba.cut(text, cut_all=False)
print("并行分词结果：", " ".join(words))
```

#### 7. 调整分词结果
可以通过调整词频或添加新词来优化分词结果。

##### （1）调整词频
```python
jieba.suggest_freq((''北京'', ''大学''), True)  # 调整词频
```

##### （2）添加新词
```python
jieba.add_word(''清华大学'', freq=10, tag=''n'')  # 添加新词并指定词性
```

#### 8. 应用场景
`jieba` 可以应用于多种自然语言处理任务，如文本分类、情感分析、搜索引擎优化等。

##### （1）文本分类
通过分词提取文本特征，结合机器学习算法进行分类。

##### （2）情感分析
结合分词和情感分析模型，分析文本中的情感倾向。

##### （3）搜索引擎优化
提取关键词，提高搜索引擎的召回率和精确度。











### openpyxl的用法
`openpyxl` 是一个强大的 Python 库，用于读取、写入和操作 Excel 文件（`.xlsx` 格式）。以下是 `openpyxl` 中常用类和函数的用法

#### 1. 安装 `openpyxl`
在使用 `openpyxl` 之前，需要通过以下命令安装：

```bash
pip install openpyxl
```

2. 创建和保存工作簿

##### 创建新工作簿
```python
from openpyxl import Workbook

wb = Workbook()  # 创建一个新工作簿
ws = wb.active  # 获取默认工作表
ws.title = "MySheet"  # 设置工作表标题
ws[''A1''] = "Hello"  # 写入单元格数据
ws[''B1''] = "World"
wb.save("new_file.xlsx")  # 保存工作簿
```

##### 打开现有工作簿
```python
from openpyxl import load_workbook

wb = load_workbook("existing_file.xlsx")  # 加载现有工作簿
ws = wb["Sheet1"]  # 获取指定工作表
cell_value = ws[''A1''].value  # 读取单元格数据
print(cell_value)
```

#### 3. 工作簿和工作表的操作
##### 获取工作表
```python
ws = wb.active  # 获取当前活动工作表
ws = wb["Sheet1"]  # 通过名称获取工作表
```

##### 创建新工作表
```python
new_sheet = wb.create_sheet(title="NewSheet")  # 创建新工作表
```

##### 删除工作表
```python
del wb["Sheet2"]  # 删除工作表
```

###### 复制工作表
```python
copied_sheet = wb.copy_worksheet(wb["Sheet1"])  # 复制工作表
copied_sheet.title = "Copy of Sheet1"
```

#### 4. 单元格操作
##### 写入数据
```python
ws[''A1''] = "Hello"  # 通过单元格位置写入数据
ws.cell(row=2, column=2, value="World")  # 通过行列索引写入数据
```

##### 读取数据
```python
cell_value = ws[''A1''].value  # 通过单元格位置读取数据
cell_value = ws.cell(row=2, column=2).value  # 通过行列索引读取数据
print(cell_value)
```

##### 迭代单元格
```python
for row in ws.iter_rows(min_row=1, max_row=5, min_col=1, max_col=3, values_only=True):
    print(row)  # 按行迭代

for col in ws.iter_cols(min_row=1, max_row=5, min_col=1, max_col=3, values_only=True):
    print(col)  # 按列迭代
```

#### 5.数据追加
```python
data = [(1, 2, 3), (4, 5, 6)]
for row in data:
    ws.append(row)  # 将数据追加到工作表
wb.save("appended_file.xlsx")
```

#### 6. 格式化和样式
```python
from openpyxl.styles import Font, Alignment

cell = ws[''A1'']
cell.font = Font(bold=True, size=14)  # 设置字体样式
cell.alignment = Alignment(horizontal=''center'', vertical=''center'')  # 设置对齐方式
```

#### 7. 合并和拆分单元格
```python
ws.merge_cells(''A1:B2'')  # 合并单元格
ws.unmerge_cells(''A1:B2'')  # 拆分单元格
```

#### 8. 添加图表
```python
from openpyxl.chart import BarChart, Reference

data = Reference(ws, min_row=1, max_row=5, min_col=1, max_col=3)
chart = BarChart()
chart.add_data(data, titles_from_data=True)
ws.add_chart(chart, "E2")
wb.save("chart_file.xlsx")
```

#### 9. 工作簿属性
```python
print(wb.sheetnames)  # 获取所有工作表名称
print(wb.active)  # 获取当前活动工作表
print(wb.read_only)  # 检查是否以只读模式打开
```





### numpy库的用法
多维数组库

#### numpy创建数组
```python
import numpy as np
print(np.array([1,2,3])) #>>[1 2 3]
print(np.arange(1,9,2)) #>>[1 3 5 7]
print(np.linspace(1,10,4)) #>>[  1.  4.  7.  10.]
print(np.ransdom.randint(10,20,[2,3]))
#>>[[12 15 12]
#>> [12 13 19]]
a = np.zeros(3)
print(a)  #>>[ 0.  0.  0.]
print(list(a))  #>>[0.0 0.0 0.0]
a = np.zeros((2,3),dtype=int)  #创建一个2行3列的元素都是整数0的数组
```

#### numpy数组常用的属性和函数
| 属性或函数 | 含义或功能 |
| --- | --- |
| dtype | 数组元素的类型 |
| ndim | 数组是几维的 |
| shape | 数组每一维的长度 |
| size | 数组元素个数 |
| argwhere(...) | 查找元素位置 |
| tolist() | 转换为list |
| min() | 最小元素 |
| max() | 最大元素 |
| reshape(...) | 改变数组的形状 |
| hlatten() | 转换成一维数组 |


#### numpy添加数组元素
numpy数组一旦生成，则不能增删，只能返回一个新的数组

| append(x, y） | 若y是数组，列表或元组，将y的元素添加进数组x得新的数组，否则将y本身添加进数组x得新数组 |
| --- | --- |
| concatenate(...) | 拼接多个数组或列表 |
| delete(...) | 删除数组元素的得新的数组 |


#### numpy数组的数学运算
```python
import numpy as np
a = np.array((1,2,3,4))
b = a + 1
print(b)           #>>[2 3 4 5]
print(a*b)         #>>[2 6 12 20]   a,b对应元素相乘
print(a + b)       #>>[3 5 7 9]     a,b对应元素相加
c = np.sqrt(a*10)  #>>求a*10的平方跟
```

#### numpy数组的切片
numpy数组的切片是‘视图’

是原数组的一部分，而非一部分的拷贝

`1:6]`选择下标为1到5的元素

`[1:6:2]`选择下标为1到5的元素 ，步长为2

`c = np.copy(a[3:6])`c是a的一部分拷贝

切片后的数组元素值改变时，原数组的值要改变，而拷贝的不会

### pandas
#### pandas中的类：Series
Series是一维表格，每个元素带标签且有下标，兼具列表和字典的访问形式

`pandas.Series(data,index)`

`data`数据项

`index`数据的标签

#### DataFrame的构造和访问
DataFrame是带行列标签的二维表格，每一列都是一个Series

`df = pandas.DataFrame(data,index,columns)`

`data`数据列表

`index`行标签

`columns`列标签

`df.valus`访问数据项

#### DataFrame的切片
iloc[行选择器，列选择器]      用下标做切片    iloc[1:3,2:3]

loc[行选择器，列选择器]        用标签做切片   loc[''index1'':index2, columns1:columns2]

DataFrame的切片是视图

DataFrame的分析统计

#### DataFrame的的修改和增删
可以在切片的基础上进行修改

`df[''column1''] = data`为列添加数据

`df.insert(行标签，列标签，data)`在某行添加某列数据

`df.columns = [columns1, columns2,......]`改列标签名

`df.drop(行或列，axis = 1, implace=True)`axis=0表示按行删除，axis=1表示按列删除

#### pandas读Excel文档
需要库openpyxl（对.xlsx）或xlrd或xlwt支持（老的.xls）

读取的每个工作表都是一个DataFrame
', 0, NOW());

INSERT INTO `note` (`id`, `author_id`, `title`, `content`, `like_count`, `created_at`)
VALUES (10, 1003, 'HTML', '## 网页的基本标签
+ 标题标签

```html
<h1>一级标签</h1>
<h2>二级标签</h2>
<h3>三级标签</h3>
<h4>四级标签</h4>
<h5>五级标签</h5>
<h6>六级标签</h6>
```

+ 段落标签

```html
<p>文本内容</p>
<p>文本内容2</p>
```

+ 换行标签

```html
<p>文本内容<br/></p>
```

+ 水平线标签

```html
<hr/>
```

+ 字体样式标签

```html
<strong>粗体</strong>
<em>斜体</em>
```

+ 特殊符号 &;

```html
<h3>空&nbsk;格</h3>
<p>大于号&gt;</p>
<p>小于号&lt;</p>
<p>版权符号&copy;</p>
```

+ 注释

```html
<-- 
  
  
  -->
```

## 网页结构分析
+ **header：标题头部区域的内容（用于页面或页面中的一块区域）**
+ **footer：标记脚部区域的内容（用于正特页面或页面的一块区域）**
+ section：Web已买你中的一块独立区域
+ article：独立的文章内容
+ aside：相关内容的应用（用于侧边栏）
+ **nav：导航类辅助内容**

## 图像，超链接，网页布局
### 图像标签
```html
<img src="path" alt="text" title="tesx" width="x" height="y"/>
```

属性

+ src = "path" :图像地址   必填
+ alt = "text" 图象的代替文字 必填
+ title = "text" 鼠标悬停文字
+ width = "x" ：图像的宽度
+ height = "y"：图象高度

常用的图像格式 JPG GIF PNG BMP

### 链接标签
#### 页面间链接
```html
<a href="path" target="目标窗口位置">连接文本或图像</a>
```

属性：

+ href="path"：连接路径  必填
+ target="连接在哪个窗口"
    - _bank ：在新标签中打开
    - _self：在自己的网页中打开  默认

#### 锚链接
1. 需要一个锚标记
2. 跳转到标记

```html
<a name="tep">顶部</a>
<a herf="#tep">回到顶部</a>
```

3. 可以跳到其他页面的指定位置

```html
<a herf="上一个页面.html#tep">跳转</a>
```

#### 功能性链接
+ 邮件链接：mailto

```html
<a href="mailto:邮箱地址"></a>
```

+ QQ链接：

#### 行内元素和块元素
+ 块元素：
    - 无论内容多少，该元素独占一行
    - （p， h1~h6...）
+ 行内元素
    - 内容撑开宽度，左右都是行内元素的可以在排在一行
    - （a，strong，en...）

## 列表，表格，媒体元素
### 列表
#### 什么是列表
列表是信息资源的一种表示形式，他可以是信息结构化和条理化，并以列表的样式显示出来，以便浏览者能更快捷的获得相应的信息

#### 有序列表
```html
<ol>
  <li>java</li>
  <li>python</li>
  <li>运维</li>
</ol>
```

应用范围：试卷，问卷……

#### 无序列表
```html
<ul>
  <li>java</li>
  <li>python</li>
  <li>运维</li> 
</ul>
```

应用范围：导航栏，侧边栏……

#### 自定义列表
```html
<dl>  标签
  <dt></dt>  列表名称
  <dd></dd>  列表内容
  <dd></dd>  
  <dd></dd>
</dl>
```

应用范围：公司网站底部

### 表格
+ 标签 table
+ 行  tr
+ 列  td
+ 跨行 rowspan="2"   跨两行
+ 跨列 colspan="2"    跨两列

```html
<table >
  
</table>
```

### 媒体元素
#### 视频元素 video
```html
<video src="path" controls autoplay></video>
```

+ src="path"：资源路径
+ controls ：设置播放选项
+ autoplay  打开网页自动播放

#### 媒体元素 audio
```html
<aduio src="path" controls autoplay></aduio>
```

## iframe内联标签
src：引用页面地址

name：框架标识名

```tcl
<iframe src="https://www.baidu.com" frameborder="0", height="800", width="1000"></iframe>
```

## 表单
### 简介
```tcl
action: 表单提交位置，可以是网站，也可以是一个请求处理地址
method：post，get 提交方式
  get方法：可以在url中看到提交的信息，不安全，高效
  post：比较安全，传输大文件
value="随便" 默认初始值
maxlength="8" 最长能写几个字符
size="30" 文本框的长度
```

method：规定如何发送表单数据 常用值 get|post

action：表示向何处发送表单数据

### 常用按钮
#### 下拉框：
```tcl
<select name="列表名单" id="">
  <option value="chain" aria-checked="true">中国</option>
  <option value="us">美国</option>
  <option value="eth">瑞士</option>
  <option value="yindu">印度</option>
</select>
```

#### 用户名密码：
```tcl
<p>名字：<input type="text" name="username" value="随便" maxlength="8" size="30"/></p>
<p>密码：<input type="password" name="pwd"/></p>
```

#### 文本域
```html
<!--
文本域
cols : 行
rows ： 列
-->

<p>反馈：
  <textarea name="testarea" id="" cols="30" rows="10">文本内容</textarea>
</p>
```

#### 单选框标签
```html
  <!--
  单选框标签
  input type="radio"
  value : 单选框的值
  name : 表示组
  -->
  <p>性别:
    <input type="radio" value="boy" name="sex"/>男
    <input type="radio" value="girl" name="sex"/>女
  </p>
```

#### 多选框
```html
  <!--
  多选框
  input type="checkbox"
  -->
  <p>爱好：
    <input type="checkbox" value="sleep" name="hobby">睡觉
    <input type="checkbox" value="code" name="hobby">敲代码
    <input type="checkbox" value="chat" name="hobby">聊天
    <input type="checkbox" value="game" name="hobby">游戏
    <input type="checkbox" value="girl" name="hobby">恋爱
  </p>
```

#### 文件域
```html
  <p>文件
    <input type="file" name="files">
    <input type="button" value="上传" name="upload">
  </p>
```

#### 重置，提交，图像，普通按钮
```html
  <!--
  多选框
  input type="button"  普通按钮
  input type="image"   图像按钮
  input type="submit"  提交按钮
  input type="reset"   重置
  -->
  <p>按钮
    <input type="button" name="btn1" value="点击变长">
    <input type="image" >
  </p>


  <input type="submit">
  <input type="reset" value="清空表单">
```

#### 邮箱，url，数字
```html
  <!--
  邮件
  -->
  <p>邮箱：
    <input type="email"name="email">
  </p>
  <!--url-->
  <p>url:
    <input type="url" name="url">
  </p>
  <!--数字-->
  <p>数字：
    <input type="number" name="number" max="100" min="0" step="10">
  </p>
```

#### 滑块，搜索
```html
  <!--滑块-->
  <p>音量：
    <input type="range" max="100" min="0" name=“voice" step="2">
  </p>

  <!--搜索-->
  <p>搜索
    <input type="search" name="search">
  </p>

```

## 表单应用
+ 只读：readonly
+ 禁用：disabled
+ 隐藏域：hidden
+ 默认值：value
+ 增强鼠标可用性

```html
  <!--
  增强鼠标可用性
  -->

  <q>
    <label for="mark">点我试试</label>
    <input type="text" id="mark">
  </q>
```

## 表单的初级验证
placeholder：提示信息

required：非空字段

pattern：正则表达式

[https://www.jb51.net/tools/regexsc.htm](https://www.jb51.net/tools/regexsc.htm)


', 0, NOW());

INSERT INTO `note` (`id`, `author_id`, `title`, `content`, `like_count`, `created_at`)
VALUES (11, 1003, 'Mybatis', '# 简介
## 什么是Mybatis
1. Mybatis 百度百科
+ MyBatis 是一款优秀的持久层框架，它支持自定义 SQL、存储过程以及高级映射。
+ MyBatis 避免了几乎所有的 JDBC 代码和手动设置参数以及获取结果集的工作。
+ 使用 MyBatis 可以将数据层和业务层之间的代码分离，极大地提高了开发效率，并且减少了代码的维护量。
+ 定义：MyBatis 是一个优秀的持久层框架，它支持自定义 SQL、存储过程以及高级映射。
+ 背景：MyBatis 最初由 MyBatis.org 社区开发，后来成为 Apache 的一个顶级项目。
2. 核心特性
   + SQL 映射：通过 XML 或注解方式将 Java 对象与 SQL 语句进行映射。
   + 动态 SQL：提供强大的动态 SQL 功能，支持复杂的 SQL 语句构造。
   + 高级映射：支持一对一、一对多等复杂关系的映射。
   + 类型处理：自动处理 Java 类型到数据库类型的转换。
   + 缓存支持：提供一级和二级缓存机制，提高查询效率。
3. 使用方法
   + 配置文件：通过 MyBatis 的配置文件（mybatis-config.xml）配置数据源、事务管理器等。
   + Mapper 接口：定义数据访问层接口，并通过 XML 或注解方式配置 SQL 语句。
   + 会话工厂：使用 SqlSessionFactoryBuilder 构建 SqlSessionFactory。
   + 会话操作：通过 SqlSession 进行数据库操作。
4. 优势
   + 简单易用：学习成本低，易于上手。
   + 灵活性强：支持高度自定义的 SQL 和映射规则。
   + 性能优化：通过缓存机制和动态 SQL 提高性能。
   + 社区支持：作为 Apache 项目，拥有活跃的社区支持。
5. 劣势
   + 过度配置：对于简单的应用来说，可能需要过多的配置工作。
   + 侵入性：虽然减少了代码量，但在某些情况下可能会增加代码与数据库的耦合度。
   + 版本兼容性：随着 Java 和数据库技术的更新，MyBatis 需要不断更新以保持兼容性。
## 如何获得Mybatis
+ Maven仓库
+ GitHub：https://github.com/mybatis/mybatis-3/releases
+ 中文文档：https://mybatis.org/mybatis-3/zh/index.html

## 持久化
数据持久化

+ 持久层就是将程序的数据在持久状态和瞬时状态转化的过程
+ 内存：断电即失
+ 数据库（JDBC），io文件持久化

为什么需要持久化

+ 有一些对象，不能让他丢掉
+ 内存太贵了

## 持久层
Dao层，Servlet层，controller层

+ 完成持久化工作的代码块
+ 层界限十分明显

## 为什么需要Mybatis
+ 帮助程序员将数据存入到数据库中
+ 方便
+ 传统的JDBC代码比较复杂，简化。框架。自动化
+

# 第一个Mybatis程序
## 搭建环境
+ 搭建数据库

```sql
create database mybatis;

use mybatis;

create table `user` (
  `id` int(20) not null ,
  `name` varchar(30) default null,
  `password` varchar(30) default null,
  primary key (`id`)
) engine=innodb default charset=utf8;

insert into `user` (id, name, password)
values
    (1, "张三", "123456"),
    (2, "李四", "123456"),
    (3,"王五", "123456");
```

+ 新建项目
    - 新建一个普通的maven项目
    - 删除src目录
    - 导入maven依赖

```xml
<dependencies>
  <!-- mysql驱动 -->
  <dependency>
    <groupId>mysql</groupId>
    <artifactId>mysql-connector-java</artifactId>
    <version>8.0.33</version>
  </dependency>
  <!-- mybatis -->
  <dependency>
    <groupId>org.mybatis</groupId>
    <artifactId>mybatis</artifactId>
    <version>3.5.16</version>
  </dependency>
  <!-- junit -->
  <dependency>
    <groupId>junit</groupId>
    <artifactId>junit</artifactId>
    <version>4.13.2</version>
    <scope>test</scope>
  </dependency>
</dependencies>

<build>
    <resources>
        <resource>
            <directory>src/main/resources</directory>
            <includes>
                <include>**/*.properties</include>
                <include>**/*.xml</include>
            </includes>
            <filtering>true</filtering>
        </resource>
        <resource>
            <directory>src/main/java</directory>
            <includes>
                <include>**/*.properties</include>
                <include>**/*.xml</include>
            </includes>
            <filtering>true</filtering>
        </resource>
    </resources>
</build>

```

    - 

## 创建一个模块
+ 编写Mybatis的核心文件

```xml
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE configuration
        PUBLIC "-//mybatis.org//DTD Config 3.0//EN"
        "https://mybatis.org/dtd/mybatis-3-config.dtd">
<!--configuration 核心配置文件-->
<configuration>
    <environments default="development">
        <environment id="development">
            <transactionManager type="JDBC"/>
            <dataSource type="POOLED">
                <property name="driver" value="com.mysql.jdbc.Driver"/>
                <property name="url" value="jdbc:mysql://192.168.204.131:3306/mybatis?useSSL=true&amp;useUnicode=true&amp;characterrEncoding=UTF-8"/>
                <property name="username" value="root"/>
                <property name="password" value="@Root1234"/>
            </dataSource>
        </environment>
    </environments>
    <!--每一个Mapper.xml都需要在mybatis核心配置文件中注册-->
    <mappers>
        <mapper resource="com/jie/dao/UserMapper.xml"/>
    </mappers>
</configuration>
```

+ 编写Mybatis的工具类

```java
// sqlSessionFactory
public class MybatisUtils {

    private static SqlSessionFactory sqlSessionFactory;

    static {
        try {
            // 使用mybatis必须获取sqlSessionFactory对象
            String resource = "mybatis-config.xml";
            InputStream inputStream = Resources.getResourceAsStream(resource);
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    // 既然有了 SqlSessionFactory，顾名思义，我们可以从中获得 SqlSession 的实例。
    // SqlSession 提供了在数据库执行 SQL 命令所需的所有方法。

    public static SqlSession getSqlSession() {
        return sqlSessionFactory.openSession();
    }
}
```

+



## 编写代码
+ 实体类

```java
public class User {
    private int id;
    private String name;
    private String password;

    public User() {}

    public User(int id, String name, String password) {
        this.id = id;
        this.name = name;
        this.password = password;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" +
        "id=" + id +
        ", name=''" + name + ''\'''' +
        ", password=''" + password + ''\'''' +
        ''}'';
    }
}
```

+ Dao接口

```java
public interface UserDao {
    List<User> getUserList();
}
```

+ 接口实现类，由原来的UserDaoImpl转换为一个Mapper配置文件

```xml
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper
        PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
        "https://mybatis.org/dtd/mybatis-3-mapper.dtd">

<!--namespace: 绑定一个对应的Dao/Mapper接口-->
<mapper namespace="com.jie.dao.UserDao">
    <!-- select：查询语句  id：方法名 resultType：实体类/返回值类型-->
    <select id="getUserList()" resultType="com.jie.pojo.User">
        select * from mybatis.user;
    </select>
</mapper>
```

+

## 测试
注意点：

+ 每一个Mapper.xml都需要在mybatis核心配置文件中配置
+ <font style="color:rgba(0, 0, 0, 0.9);background-color:rgb(245, 245, 245);">org.apache.ibatis.binding.BindingException: Invalid bound statement (not found)</font>

```xml
<!--每一个Mapper.xml都需要在mybatis核心配置文件中配置-->
<mappers>
  <mapper resource="com/jie/dao/UserMapper.xml"/>
</mappers>
```

+ org.apache.ibatis.exceptions.PersistenceException:

```xml
<build>
    <resources>
        <resource>
            <directory>src/main/resources</directory>
            <includes>
                <include>**/*.properties</include>
                <include>**/*.xml</include>
            </includes>
            <filtering>true</filtering>
        </resource>
        <resource>
            <directory>src/main/java</directory>
            <includes>
                <include>**/*.properties</include>
                <include>**/*.xml</include>
            </includes>
            <filtering>true</filtering>
        </resource>
    </resources>
</build>
```

junit测试

```xml
public class UserDaoTest {

    @Test
    public void test() {
        SqlSession sqlSession = null;

        try{
            // 获得sqlSession对象
            sqlSession = MybatisUtils.getSqlSession();
            // 执行sql
            // 方式1.  getMapper
            UserDao userDao = sqlSession.getMapper(UserDao.class);
            List<User> userList = userDao.getUserList();

            // 方式2
            // sqlSession.selectList(("com.jie.dao.UserDao.getUserList"));

            for (User user : userList) {
                System.out.println(user);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 关闭sqlSession
            sqlSession.close();
        }

    }
}
```

## namespace
namespace中的包名要和Mapper接口中的包名一致！

## select
选择，查询语句；

+ id：就是对应namespace中的方法名
+ resultType：Sql语句执行的返回值类型
+ parameterType：参数类型
1. 编写Mapper的接口

```java
// 插叙全部用户
List<User> getUserList();

// 根据id查询用户
User getUserById(int id);
```

2. 编写sql语句

```xml
<!--    select：查询语句  id：方法名   resultType：查询结果映射的对象类型-->
<select id="getUserList" resultType="com.jie.pojo.User">
    select * from user
</select>

<!--    根据id查询信息-->
<select id="getUserById" resultType="com.jie.pojo.User" parameterType="int">
    select *  from user where id = #{id}
</select>
```

3. 测试

```java
    @Test
    public void test() {
        SqlSession sqlSession = null;

        try{
            // 获得sqlSession对象
            sqlSession = MybatisUtils.getSqlSession();
            // 执行sql
            // 方式1.  getMapper
            UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
            List<User> userList = userMapper.getUserList();

            // 方式2
            // sqlSession.selectList(("com.jie.dao.UserDao.getUserList"));

            for (User user : userList) {
                System.out.println(user);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 关闭sqlSession
            sqlSession.close();
        }

    }

    @Test
    public void test2() {
        SqlSession sqlSession = null;

        try{
            // 获得sqlSession对象
            sqlSession = MybatisUtils.getSqlSession();
            // 执行sql
            // 方式1.  getMapper
            UserMapper mapper = sqlSession.getMapper(UserMapper.class);
            User user = mapper.getUserById(1);

            // 方式2
            // sqlSession.selectList(("com.jie.dao.UserDao.getUserList"));

            System.out.println(user);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 关闭sqlSession
            sqlSession.close();
        }
    }
```

## 在进行增删改的时候必须提交事务
```java
sqlSession.commit();
sqlSession.close();
```

### insert
### update
### delete
## 错误分析
+ 标签不要匹配错
+ resources 绑定 Mapper，需要使用路径
+ 程序配置文件必须符合规范
+ 没有注册到资源
+ 输出的xml文件存在乱码问题
+ maven资源没有导出问题

## 万能Map
假设实体类的字段或参数比较多，可以考虑使用Map

```java
// 万能的Map
int getUserById2(Map<String, Object> map);
```

```xml
<!-- 占位符参数的名字要和Map中的对应 -->
<insert id="getUserById2" parameterType="map">
    insert into user(id, name, password) values(#{id}, #{name}, #{password})
</insert>
```

```java
@Test
public void addUserTest() {
    SqlSession sqlSession = null;
    sqlSession = MybatisUtils.getSqlSession();
    UserMapper mapper = sqlSession.getMapper(UserMapper.class);
    HashMap<String, Object> map = new HashMap<>();
    map.put("id", 5);
    map.put("name", "苏七");
    map.put("password", "123456");
    mapper.getUserById2(map);
    sqlSession.commit();
    sqlSession.close();
}
```

Map传递参数，直接在sql中取出key即可    parameterType="map"

对象传递参数，直接在sql中取出对象的属性即可      parameterType="com.jie.pojo.User"

只有一个基本类型的情况下，可以直接在sql中取到

多个参数用Map，或者注解

## 模糊查询
+ java代码执行的时候，传递通配符% %

```java
List<User> userList = userMapper.getUserLike("%李%");
```

+ 在sql拼接中使用通配符

```sql
select * from user where name like "%"#{value}"%"
```

# 配置解析
## 核心配置文件
+ mybatis-config.xml
+ Mybatis 的配置文件包含了会深深影响Mybatis行为的设置和属性信息
+ 必须按照如下顺序放置配置信息

```sql
configuration（配置）
properties（属性）
settings（设置）
typeAliases（类型别名）
typeHandlers（类型处理器）
objectFactory（对象工厂）
plugins（插件）
environments（环境配置）
  environment（环境变量）
  transactionManager（事务管理器）
  dataSource（数据源）
databaseIdProvider（数据库厂商标识）
mappers（映射器）
```

+

## <font style="color:rgb(51, 51, 51);">环境配置（environments）</font>
+ <font style="color:rgb(51, 51, 51);">MyBatis 可以配置成适应多种环境</font>
+ <font style="color:rgb(51, 51, 51);">不过要记住：尽管可以配置多个环境，但每个 SqlSessionFactory 实例只能选择一种环境</font>
+ <font style="color:rgb(51, 51, 51);">学会使用配置多套配置环境</font>
+ <font style="color:rgb(51, 51, 51);">Mybatis默认的事物管理器是JDBC，连接池：POOLED</font>

## <font style="color:rgb(51, 51, 51);">属性（properties）</font>
<font style="color:rgb(51, 51, 51);">我们可以通过properties属性来实现引用配置文件</font>

<font style="color:rgb(51, 51, 51);">这些属性可以在外部进行配置，并可以进行动态替换。你既可以在典型的 Java 属性文件中配置这些属性，也可以在 properties 元素的子元素中设置 【db.properties】</font>

<font style="color:rgb(51, 51, 51);">编写一个db.properties </font>

```sql
driver=com.mysql.jdbc.Driver
url=jdbc:mysql://192.168.204.131:3306/mybatis?useSSL=true&useUnicode=true&characterEncoding=UTF-8
username=root
password=@Root1234
```

引入外部配置文件

```sql
<properties resource="db.properties" />

<environments default="development">
    <environment id="development">
        <transactionManager type="JDBC"/>
        <dataSource type="POOLED">
            <property name="driver" value="${driver}"/>
            <property name="url" value="${url}"/>
            <property name="username" value="${username}"/>
            <property name="password" value="${password}"/>
        </dataSource>
    </environment>
</environments>
```

+ 可以直接引入外部文件
+ 可以在其中增加一些属性配置
+ 如果两个文件有同一个字段，有限使用外部配置文件

## 类型别名（typeAliases）
+ 类型别名是为java类型设置的一个短的名字
+ 存在的意义仅在用于来减少类完全限定名的冗余

```xml
<!-- 可以给实体类取别名-->
<typeAliases>
    <typeAlias type="com.jie.pojo.User" alias="User"/>
    <package name="com.jie.pojo"/>  <!-- user -->
</typeAliases>
```

+ 也可以指定一个包名，Mybatis会在包名下面搜索需要的Java Bean，
+ 扫描实体类的包，它的默认别名就为这个了的类名，首字母小写
+ 在实体类比较少的时候，使用第一种方式
+ 如果实体类较多的时候，建议使用第二种
+ 也可以在实体类上增加注解来取别名，并且优先使用注解名

```xml
@Alias("user")
```



## 设置（Settings）
logImpl：<font style="color:rgb(51, 51, 51);">指定 MyBatis 所用日志的具体实现，未指定时将自动查找。</font>

+ <font style="color:rgb(51, 51, 51);">SLF4J | LOG4J（3.5.9 起废弃） |</font>
+ <font style="color:rgb(51, 51, 51);">LOG4J2 |</font>
+ <font style="color:rgb(51, 51, 51);">JDK_LOGGING |</font>
+ <font style="color:rgb(51, 51, 51);">COMMONS_LOGGING </font>
+ <font style="color:rgb(51, 51, 51);"> STDOUT_LOGGING |</font>
+ <font style="color:rgb(51, 51, 51);">NO_LOGGING</font>

<font style="color:rgb(51, 51, 51);background-color:rgb(249, 249, 249);">cacheEnabled：全局性地开启或关闭所有映射器配置文件中已配置的任何缓存。</font>

<font style="color:rgb(51, 51, 51);">lazyLoadingEnabled：延迟加载的全局开关。当开启时，所有关联对象都会延迟加载。 特定关联关系中可通过设置 </font>`<font style="color:rgb(221, 17, 68);background-color:rgb(247, 247, 249);">fetchType</font>`<font style="color:rgb(51, 51, 51);"> 属性来覆盖该项的开关状态。</font>

```xml
<settings>
  <setting name=""  value="" />
</settings>
```

## 影视器（mappers）
+ 方式1：使用相对于类路径的资源引用

```xml
<mappers>
  <mapper resource="org/mybatis/builder/AuthorMapper.xml"/>
  <mapper resource="org/mybatis/builder/BlogMapper.xml"/>
  <mapper resource="org/mybatis/builder/PostMapper.xml"/>
</mappers>
```

+ 方式2：使用映射器接口实现类的完全限定类名

```xml
<mappers>
  <mapper class="org.mybatis.builder.AuthorMapper"/>
  <mapper class="org.mybatis.builder.BlogMapper"/>
  <mapper class="org.mybatis.builder.PostMapper"/>
</mappers>
```

    - 注意：
        * 接口和他的Mapper配置文件必须同名
        * 接口和它的Mapper配置文件必须在同一个包下
+ 方式3

```xml
<mappers>
    <package name="com.jie.mapper"/>
</mappers>
```

    - 注意点和方式2一样

## 作用域和生命周期
# 解决属性名和字段名不一致问题
1. 给属性名换别名

```xml
select id,name,password as pwd from user
```

2. 使用结果集映射

```xml
<!--结果集映射-->
<resultMap id="UserMap" type="User">
  <!--column：数据库中的字段，property：实体类中的属性-->
  <result column="id" property="id"/>
  <result column="name" property="name"/>
  <result column="password" property="pwd"/>
</resultMap>
<!--    select：查询语句  id：方法名   resultType：查询结果映射的对象类型-->
<select id="getUserList" resultMap="UserMap">
  select id,name,password as pwd from user
</select>
```

+ resultMap元素是Mybatis中最重要最强大的元素
+ ResultMap的设计思想是，对于简单的语句根本不需要显式的结果映射，而是对于复杂一点的语句只需要描述它们的关系就好了
+ 只需要设置字段和属性不一致的即可



# 日志
## 标准日志工厂
如果一个数据库操作，出现了异常，我们需要排错，日志就是最好的助手-->日志工厂

logImpl：<font style="color:rgb(51, 51, 51);">指定 MyBatis 所用日志的具体实现，未指定时将自动查找。</font>

+ <font style="color:rgb(51, 51, 51);">SLF4J </font>
+ <font style="color:rgb(51, 51, 51);"> LOG4J（3.5.9 起废弃） </font>
+ <font style="color:rgb(51, 51, 51);">LOG4J2</font>
+ <font style="color:rgb(51, 51, 51);">JDK_LOGGING </font>
+ <font style="color:rgb(51, 51, 51);">COMMONS_LOGGING </font>
+ <font style="color:rgb(51, 51, 51);"> STDOUT_LOGGING    【】</font>
+ <font style="color:rgb(51, 51, 51);">NO_LOGGING</font>

在Mybatis中具体使用哪个日志实现，在设置中设定

<font style="color:rgb(51, 51, 51);">STDOUT_LOGGING ：标准日志输出</font>

```xml
<settings>
    <!-- 标准日志输出 -->
    <setting name="logImpl" value="STDOUT_LOGGING"/>
</settings>
```

<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1749185466196-49861eed-f54c-425c-a672-49cb70fbb79e.png" width="550.4" title="" crop="0,0,1,1" id="u956aaeae" class="ne-image">

## Log4j
什么是Log4j：

+ Log4jApache的一个开源项目，可以控制日志信息输送的目的地是控制台，文件，GUI组件，
+ 也可以控制每一条日志的输出格式
+ 通过定义每一条日志信息的级别，能够更加细致的控制日志的生成过程
+ 通过一个配置文件来灵活的进行配置，而不是要修改应用的代码

如何使用

1. 先导入log4j的包

```xml
<!-- 导入log4j配置文件 -->
<dependency>
    <groupId>log4j</groupId>
    <artifactId>log4j</artifactId>
    <version>1.2.12</version>
</dependency>
```

2. log4j.properties

```xml
#根Logger配置
log4j.rootLogger=debug, console, file

# 控制台输出
log4j.appender.console=org.apache.log4j.ConsoleAppender
log4j.appender.console.Target=System.out
log4j.appender.console.Threshold=DEBUG
log4j.appender.console.layout=org.apache.log4j.PatternLayout
log4j.appender.console.layout.ConversionPattern=%d{ISO8601} [%t] %-5p %c{2}:%L - %m%n

# 滚动文件输出
log4j.appender.file=org.apache.log4j.RollingFileAppender
log4j.appender.file.File=./log/jie.log
log4j.appender.file.MaxFileSize=10MB
log4j.appender.file.Threshold=debug
log4j.appender.file.layout=org.apache.log4j.PatternLayout
log4j.appender.file.layout.ConversionPattern=%d{yyyy-MM-dd HH:mm:ss} %p %t %c - %m%n

# 特定包日志级别控制
log4j.logger.org.mybatis=debug
log4j.logger.java.sql=debug
log4j.logger.java.sql.Statement=debug
log4j.logger.java.sql.ResultSet=debug
log4j.logger.java.sql.PreparedStatement=debug

```

3. 配置log4j日志的实现

```xml
<settings>
    <!-- 标准日志输出 -->
    <setting name="logImpl" value="LOG4J"/>
</settings>
```

4. 测试运行

简单使用

1. 在使用Log4j的类中，导入包 import org.apache.log4j.Logger;
2. 日志对象，参数为当前类的class

```java
static Logger logger = Logger.getLogger(UserMapperTest.class);
```

3. 日志级别

```java
logger.info();
logger.debug();
logger.error();
```

4.

# 分页
## Mybatis分页用sql查询
1. 接口

```java
// 分页查询
List<User> getUserLimitList(Map<String, Integer> map);
```

2. sql语句

```xml
<!-- 分页查询 -->
<select id="getUserLimitList" resultType="com.jie.pojo.User">
    select * from user limit #{startIndex},#{pageSize}
</select>
```

3. 测试

```java
@Test
public void test3(){
    SqlSession sqlSession = MybatisUtils.getSqlSession();
    UserMapper mapper = sqlSession.getMapper(UserMapper.class);
    HashMap<String, Integer> map = new HashMap<>();
    map.put("startIndex", 0);
    map.put("pageSize", 2);
    List<User> users = mapper.getUserLimitList(map);
    for (User user : users) {
        System.out.println(user);
    }
    sqlSession.close();

}
```

## RowBounds类
1. 接口

```java
// 分页查询
List<User> getUserRowBounds();
```

2. sql语句

```xml
<!-- 分页查询 -->
<select id="getUserRowBounds" resultType="com.jie.pojo.User">
    select * from user
</select>
```

3. 测试

```java
@Test
public void test4(){
    SqlSession sqlSession = MybatisUtils.getSqlSession();
    RowBounds rowBounds = new RowBounds(0, 2);
    List<Object> users = sqlSession.selectList("com.jie.mapper.UserMapper.getUserRowBounds", null, rowBounds);
    for (Object user : users) {
        System.out.println(user);
    }
    sqlSession.close();
}
```

## 分页插件
Mybatis PageHelper

# 使用注解开发
## 使用注解开发的过程
1. 注解在接口上实现

```java
// 插叙全部用户
@Select("select * from user")
List<User> getUserList();
```

2. 在核心配置文件中绑定接口

```xml
<!--绑定接口-->
<mappers>
  <mapper class="com.jie.mapper.UserMapper"/>
</mappers>
```

3. 测试

```java
@Test
public void test() {
    SqlSession sqlSession = MybatisUtils.getSqlSession();
    // 顶层主要应用反射
    UserMapper mapper = sqlSession.getMapper(UserMapper.class);
    List<User> users = mapper.getUserList();
    for (User user : users) {
        System.out.println(user);
    }
    sqlSession.close();
}
```

+ 本质：反射机制实现
+ 底层：动态代理！

## Mybatis执行过程
## CRUD
设置自动提交事务

```java
// 在编写的工具类中 设置参数为true
public static SqlSession getSqlSession() {
    return sqlSessionFactory.openSession(true);
}
```

在设置基本类型的参数时加上注解@param()

+ 接口

```java
// 根据id查用户
@Select("select * from user where id=#{id}")
List<User> getUserById(@Param("id") int id);
```

+ 测试

```java
@Test
public void test2() {
    SqlSession sqlSession = MybatisUtils.getSqlSession();
    UserMapper mapper = sqlSession.getMapper(UserMapper.class);
    List<User> users = mapper.getUserById(3);
    System.out.println(users);
    sqlSession.close();
}
```

关**于@Param()**

+ 基本类型的阐述或者String类型，需要加上
+ 引用类型不需要加
+ 如歌只有一个基本类型的话，可以忽略，但建议加上
+ 我们在SQL中引用的就是@Param()中的属性名

#{}   和   ${} 的区别

+ #{} 可以防止SQL注入

# Lombok
使用步骤

+ 在IDEA中安装Lombok插件
+ 在项目中导入lombok的jar包

```xml
<dependency>
  <groupId>org.projiectlombok</groupId>
  <artifactId>lombok</artifactId>
  <version>1.18.10</version>
</dependency>
```

+ 在实体类上加注解

```xml
@Getter 
@Setter
@FieldNameComstants
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Data
```

# 多对一和一对多处理
## 多对一处理
+ 按照查询嵌套处理

```xml
<select id="getStudents" resultMap="StudentMap">
    select * from student
</select>

<resultMap id="StudentMap" type="com.jie.pojo.Student">
    <result column="id" property="id"/>
    <result column="name" property="name"/>
    <association column="tid" property="teacher" javaType="com.jie.pojo.Teacher" select="getTeacher"/>
</resultMap>

<select id="getTeacher" resultType="com.jie.pojo.Teacher">
    select * from teacher where id=#{id}
</select>
```

+ 按照结果嵌套处理

```xml
<select id="getStudents2" resultMap="StudentTeacher">
    select s.id sid, s.name sname, t.name tname
    from student s, teacher t
    where s.tid = t.id
</select>

<resultMap id="StudentTeacher" type="com.jie.pojo.Student">
    <result column="sid" property="id"/>
    <result column="sname" property="name"/>
    <association property="teacher" javaType="com.jie.pojo.Teacher">
        <result property="name" column="tname"/>
    </association>
</resultMap>
```

## 一对多处理
+ 根据结果嵌套查询

```xml
<!-- 按照结果嵌套查询-->
<select id="getTeacher" resultMap="TeacherMap">
    select t.id tid, t.name tname, s.name sname, s.id sid
    from teacher t, student s
    where t.id=s.tid and t.id=#{id};
</select>

<resultMap id="TeacherMap" type="com.jie.pojo.Teacher">
    <result property="id" column="tid"/>
    <result property="name" column="tname"/>
    <!-- collection: 一对多处理（集合） association: 多对一处理（对象） -->
    <!-- javaType: 指定属性的类型
         集合中的泛型信息，用ofType获取
    -->
    <collection property="students" ofType="com.jie.pojo.Student">
        <result property="id" column="sit"/>
        <result property="name" column="sname"/>
    </collection>
</resultMap>
```

+ 根据子查询嵌套处理

```xml
<!--根据子查询嵌套处理-->
<select id="getTeacher2" resultMap="TeacherStudent">
    select * from teacher where id = #{id}
</select>

<resultMap id="TeacherStudent" type="com.jie.pojo.Teacher">
    <result column="id" property="id"/>
    <result column="name" property="name"/>
    <collection property="students" javaType="ArrayList" ofType="com.jie.pojo.Student" select="getStudentByTeacherId" column="id"/>
</resultMap>

<select id="getStudentByTeacherId" resultType="com.jie.pojo.Student">
    select * from student where tid = #{id}
</select>
```

## 小结
+ 关联：association  【多对一】
+ 集合：collection   【一对多】
+ javaType    &     ofType
    - javaType：用来制定实体类中属性的类型
    - ofType：用来制定映射到List或者集合中的pojo类型，泛型中的约束类型
+ 注意点：
    - 保证sql的可读性，尽量保证通俗易懂
    - 注意一对多和多对一中，属性名和字段的问题
    - 如果问题不好排查错误，可以使用日志，

# 动态SQL：拼接sql语句
## 基础
+ 根据不同的条件追加sql语句
+ <font style="color:rgb(51, 51, 51);">借助功能强大的基于 OGNL 的表达式，MyBatis 3 替换了之前的大部分元素，大大精简了元素种类，现在要学习的元素种类比原来的一半还要少。</font>
    - <font style="color:rgb(64, 64, 64);">if</font>
    - <font style="color:rgb(64, 64, 64);">choose (when, otherwise)</font>
    - <font style="color:rgb(64, 64, 64);">trim (where, set)</font>
    - <font style="color:rgb(64, 64, 64);">foreach</font>



## If
+ 接口

```java
// if查询
List<Blog> queryBlogIf(Map map);
```

+ sql语句
    - where标签：只有在满足一个或多个条件下才会出现，如果第一个if不满足条件会自动舍弃第二个if的and

```xml
<!-- 选择查询 -->
<select id="queryBlogIf" parameterType="map" resultType="com.jie.pojo.Blog">
    select * from blog where 1=1
    <where>
        <if test="title != null">
            title = #{title}
        </if>
        <if test="author != null">
            AND author = #{author}
        </if>
        </where>
</select>
```

+ 测试

```java
@Test
public void test3() {
    SqlSession sqlSession = MybatisUtils.getSqlSession();
    BlogMapper mapper = sqlSession.getMapper(BlogMapper.class);
    HashMap map = new HashMap<>();
    map.put("title", "java如此简单");
    map.put("author", "作者");
    List<Blog> blogs = mapper.queryBlogIf(map);
    for (Blog blog : blogs) {
        System.out.println(blog);
    }
    sqlSession.close();
}
```

## choose（when，otherwise） 选择一个
+ 接口

```java
List<Blog> queryBlogChoose(Map map);
```

+ sql

```xml
<select id="queryBlogChoose" parameterType="map" resultType="com.jie.pojo.Blog">
    select * from blog
    <where>
        <choose>
            <when test="title != null">
                title = #{title}
            </when>
            <when test="author != null">
                and author = #{author}
            </when>
            <otherwise>
                and views = #{views}
            </otherwise>
        </choose>
    </where>
</select>
```

+ 测试

```java
@Test
public void test4() {
    SqlSession sqlSession = MybatisUtils.getSqlSession();
    BlogMapper mapper = sqlSession.getMapper(BlogMapper.class);
    HashMap map = new HashMap<>();
    map.put("author", "作者");
    map.put("views", 9999);
    List<Blog> blogs = mapper.queryBlogChoose(map);
    for (Blog blog : blogs) {
        System.out.println(blog);
    }
    sqlSession.close();
}

```

## trim（where，set）
+ 接口

```xml
// 更新博客
int updateBlog(Map map);
```

+ sql

```xml
<update id="updateBlog" parameterType="map">
    update blog
    <set>
        <if test="title != null">
            title = #{title},
        </if>
        <if test="author != null">
            author = #{author}
        </if>
    </set>
    where id = #{id}

</update>
```

+ 测试

```java
@Test
public void test5() {
    SqlSession sqlSession = MybatisUtils.getSqlSession();
    BlogMapper mapper = sqlSession.getMapper(BlogMapper.class);
    HashMap map = new HashMap<>();
    map.put("title", "西游记2");
    map.put("author", "罗贯中");
    map.put("id", "27c41929a2334b7591dcf159b7b8a81c");

    int i = mapper.updateBlog(map);
    System.out.println(i);
    sqlSession.commit();
}
```

## SQL片段
+ 接口

```xml
// if查询
List<Blog> queryBlogIf(Map map);
```

+ SQL 实现sql复用

```xml
<sql id="if-title-author">
    <if test="title != null">
        title = #{title}
    </if>
    <if test="author != null">
        and author = #{author}
    </if>
</sql>

<select id="queryBlogIf" parameterType="map" resultType="com.jie.pojo.Blog">
    select * from blog
    <where>
        <include refid="if-title-author">

        </include>
    </where>

</select>
```

+ 测试

```xml
@Test
public void test3() {
    SqlSession sqlSession = MybatisUtils.getSqlSession();
    BlogMapper mapper = sqlSession.getMapper(BlogMapper.class);
    HashMap map = new HashMap<>();
    map.put("title", "java如此简单");
    map.put("author", "作者");
    List<Blog> blogs = mapper.queryBlogIf(map);
    for (Blog blog : blogs) {
        System.out.println(blog);
    }
    sqlSession.close();
}
```

注意事项：

+ 最好基于单表来定义SQL片段
+ 不要存在where标签

## foreach
+ 接口

```xml
// 查询第1-2-3号记录的博客
List<Blog> queryBlogForeach(Map map);
```

+ sql
    - `collection="ids"`：集合名：
    -  `item="id"`：取集合的值
    - `open="and (" ` ：起始
    - `close=")"` ：结尾
    - `separator="or"`：分隔符

```xml
<select id="queryBlogForeach" parameterType="map" resultType="com.jie.pojo.Blog">
    select * from blog
    <where>
        <foreach collection="ids" item="id" open="and (" close=")" separator="or">
             id = #{id}
        </foreach>
    </where>
</select>
```

+ 测试

```xml
@Test
public void test6() {
    SqlSession sqlSession = MybatisUtils.getSqlSession();
    BlogMapper mapper = sqlSession.getMapper(BlogMapper.class);
    HashMap map = new HashMap<>();
    List<Integer> list = new ArrayList<>();
    list.add(1);
    list.add(2);
    list.add(3);
    map.put("ids", list);
    List<Blog> blogs = mapper.queryBlogForeach(map);
    for (Blog blog : blogs) {
        System.out.println(blog);
    }
    sqlSession.close();
}
```

# 缓存[Cache]
## 简介
+ 什么是缓存
    - 放在内存中的临时数据
    - 将用户经常查询的数据放在缓存（内存）中，用户去查询数据就不用从磁盘（关系型数据库数据文件）查询，从缓存中查询，从而提高查询效率，解决了高并发系统的性能问题
+ 为什么要使用缓存
    - 减少和数据库的交互次数，减少系统开销，提高西宫效率
+ 什么样的额数据能使用缓存
    - 经常查询并且不经常改变的数据

## Mybatis缓存
+ Mybatis包含一个非常强大的查询缓存特性，它可以非常方便地定制和配置缓。缓存可以极大的提升查询效率
+ Mybatis系统中默认定义了两级缓存：**一级缓存**和**二级缓存**
    - 默认情况下，只有一级缓存开启，（SqlSession级别的缓存，也称为本地缓存）
    - 二级缓存需要手动开启和配置，它是基于namespace级别的缓存
    - 为了提高扩展性，Mybatis定义了缓存接口Cache，可以通过实现Cache接口来自定义二级缓存

## 一级缓存
+ 一级缓存也称为本地缓存（SqlSession级别的缓存）
    - 与数据库同一次会话期间查询到的数据会放在本地缓存中
    - 以后如果需要获取相同的数据，直接从缓存中拿，没必要再次查询数据库；
+ 测试流程
    - 开启日志
    - 测试在一个Session中查询两次相同的结果
    - 查看日志
+ 缓存失效的情况：
    - 查询不同的信息
    - 增删改操作，可能会修改原来的数据，所以必定会刷新缓存！
    - 查询不同的mapper.xml
    - 手动清理缓存

## 二级缓存
+ 二级缓存也叫全局缓存，一级缓存作用域太低了，所以诞生了二级缓存
+ 基于namespace级别的缓存，一个名称空间，对应一个二级缓存
+ 工作机制
    - 一个会话查询一条数据，这个数据就会被放在当前会话的一级缓存中；
    - 如果当前会话关闭了，这个会话对应的一级缓存就没了，但是我们想要的是，会话关闭了，一级缓存中的数据被保持到二级缓存中
    - 新的会话查询信息，就可以从二级缓存中获取内容
    - 不同的mapper查出的数据会放在自己对应的缓存（map）中；
+ 测试步骤
    - 开启全局缓存

```xml
<settings>
    <setting name="logImpl" value="STDOUT_LOGGING"/>
    <!--显式开启默认缓存-->
    <setting name="cacheEnabled" value="true"/>
</settings>
```

    - 在要使用二级缓存的mapper中开启：可自定义缓存

```xml
<!--在当前mapper.xml中使用二级缓存-->
<cache eviction="FIFO"
flushInterval="60000"
size="512"
readOnly="true"/>
```

    - 测试
        * 需要将实体类序列化！否则会报错

```xml
Caused by: java.io.NotSerializableException:com.jie.pojo.User
```

+ 小结
    - 只要开启了二级缓存，在同一个Mapper下就有效
    - 所有的数据都会先放在一级缓存中；
    - 只有当会话提交，或者关闭的时候，才会提交到二级缓存中

## 自定义缓存
使用自定义缓存

+ 在Maven中导包
+ 在Mapper中指定ehcache缓存
+ 写配置文件ehcache.xml
', 0, NOW());

INSERT INTO `note` (`id`, `author_id`, `title`, `content`, `like_count`, `created_at`)
VALUES (12, 1003, 'Springboot', '# 配置文件
SpringBoot使用一个全局的配置文件，配置文件名称是固定的

+ application.properties
    - 语法结构：key=value
+ application.yaml
    - 语法结构：key：空格 value

配置文件的作用：修改springBoot制定配置的默认值，因为SpringBoot再低层给我们配置好了

# ymal
+ yaml:<font style="color:rgb(15, 17, 21);">YAML（YAML Ain''t Markup Language）是一种</font>**<font style="color:rgb(15, 17, 21);">数据序列化格式</font>**<font style="color:rgb(15, 17, 21);">，比传统的 </font>`<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">properties</font>`<font style="color:rgb(15, 17, 21);"> 文件更具可读性，适合用来表达层次化配置数据</font>
+ <font style="color:rgb(15, 17, 21);">基础语法规则</font>
    - <font style="color:rgb(15, 17, 21);">大小写敏感</font>
    - <font style="color:rgb(15, 17, 21);">使用缩进表示层级</font><font style="color:rgb(15, 17, 21);">（必须用空格，不能用 Tab）</font>
    - <font style="color:rgb(15, 17, 21);">同级元素左对齐</font>
    - <font style="color:rgb(15, 17, 21);">使用 </font>`<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">#</font>`<font style="color:rgb(15, 17, 21);"> 注释</font>

```yaml
# 正确示例
server:
  port: 8080
  servlet:
    context-path: /api
```

+ 数据类型写法

```yaml
# 字符串，数值，布尔
name: zhangsan
age: 25
enabled: true
# 字符串可以不加引号，特殊字符或转义时用双引号
description: "hello \n world"   # 会转义 \n
simple: hello world              # 普通字符串


# 对象/Map
person:
  name: lisi
  age: 30

# 行内写法
person: {name: lisi, age: 30}

# 数组/list/set
hobbies:
  - reading
  - coding
  - gaming

# 行内写法
hobbies: [reading, coding, gaming]
```

+ SpringBoot读取yaml值
    - @Value读取单个值

```yaml
app:
  name: MyProject
  version: 1.0
```

```java
@Value("${app.name}")
private String appName;

@Value("${app.version}")
private String version;
```

    - `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">@ConfigurationProperties</font>`<font style="color:rgb(15, 17, 21);">（推荐，类型安全）</font>

```yaml
aliyun:
  access-key: 123456
  secret-key: abcdef
  region: cn-hangzhou
```

```java
@Component
@ConfigurationProperties(prefix = "aliyun")
public class AliyunProperties {
    private String accessKey;
    private String secretKey;
    private String region;
    
    // getter / setter （必须）
}
```

    - `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">@ConfigurationProperties</font>`<font style="color:rgb(15, 17, 21);"> 绑定复杂结构</font>

```yaml
database:
  url: jdbc:mysql://localhost:3306/test
  pools:
    - name: hikari
      size: 10
    - name: druid
      size: 20
```

```java
@Component
@ConfigurationProperties(prefix = "database")
public class DatabaseProperties {
    private String url;
    private List<Pool> pools = new ArrayList<>();

    public static class Pool {
        private String name;
        private Integer size;
        // getter/setter
    }
}
```

    - 占位符与随机值

```yaml
app:
  name: MyApp
  description: ${app.name} is a Spring Boot app
  version: 1.0.${random.int(100)}
  secret: ${random.uuid}
  port: ${random.int(8080,9090)}
```

+ 多环境配置

```yaml
# 默认配置
spring:
  profiles:
    active: dev

---
spring:
  config:
    activate:
      on-profile: dev
server:
  port: 8081

---
spring:
  config:
    activate:
      on-profile: prod
server:
  port: 80
```

+ 松散绑定

```yaml
myapp:
  access-key-id: 12345
```

```java
@ConfigurationProperties(prefix = "myapp")
public class MyProperties {
    private String accessKeyId;  // 自动匹配 access-key-id
}
```

+ 使用@Validdated校验配置值

```java
@Validated
@ConfigurationProperties(prefix = "app")
public class AppConfig {
    @NotNull  // 不为空
    private String name;
    @Min(1)   // 最小值为1
    private Integer timeout;
}
```

# 自动装配原理
1. SpringBoot启动会加载大量的自动配置类
2. 我们看我们需要的功能有没有在SpringBoot默认写好的自动配置类中
3. 再来看这个启动配置类中到底配置了哪些组件；（只要需要的组件存在其中，就不需要手动配置）
4. 给容器中自动配置类添加组件的时候，会从properties类中获取某些类，只需要在配置文件中自动这些属性的值即可：
    - xxxxAutoConfiguration：自动配置类；给容器中添加组件
    - xxxxProperties：封装配置文件中国相关属性
5. 可以通过在配置文件中设置debug=true，可以查询哪些配置类是否生效

# 模版引擎thymeleaf
## 快速入门
+ 引入依赖

```xml
<dependency>
  <groupId>org.springframework.boot</groupId>
  <artifactId>spring-boot-starter-thymeleaf</artifactId>
</dependency>
```

+ 基本配置

```yaml
# application.yml
spring:
  thymeleaf:
    prefix: classpath:/templates/   # 模板存放目录（默认）
    suffix: .html                     # 后缀（默认）
    cache: false                      # 开发时关闭缓存
    mode: HTML                        # 模板模式
    encoding: UTF-8
```

+ 第一个例子

```java
@Controller
public class HelloController {

    @GetMapping("/hello")
    public String hello(Model model) {
        model.addAttribute("message", "Hello Thymeleaf!");
        return "hello";  // 对应 templates/hello.html
    }
}
```

```html
<!-- templates/hello.html -->
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
  <head>
    <title>Thymeleaf Demo</title>
  </head>
  <body>
    <p th:text="${message}">占位符文本</p>
  </body>
</html>
```

## 核心语法
### 标准表达式
| <font style="color:rgb(15, 17, 21);">表达式</font> | <font style="color:rgb(15, 17, 21);">作用</font> | <font style="color:rgb(15, 17, 21);">示例</font> |
| --- | --- | --- |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">${...}</font>` | <font style="color:rgb(15, 17, 21);">变量表达式（从Model/Spring容器获取）</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">${user.name}</font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">*{...}</font>` | <font style="color:rgb(15, 17, 21);">选择表达式（配合</font>`<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:object</font>`<br/><font style="color:rgb(15, 17, 21);">使用）</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">*{name}</font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">#{...}</font>` | <font style="color:rgb(15, 17, 21);">消息表达式（国际化）</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">#{home.title}</font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">@{...}</font>` | <font style="color:rgb(15, 17, 21);">链接表达式（URL）</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">@{/user/profile}</font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">~{...}</font>` | <font style="color:rgb(15, 17, 21);">片段表达式（引入公共片段）</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">~{common/header :: nav}</font>` |


### 常用属性
| <font style="color:rgb(15, 17, 21);">属性</font> | <font style="color:rgb(15, 17, 21);">作用</font> | <font style="color:rgb(15, 17, 21);">示例</font> |
| --- | --- | --- |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:text</font>` | <font style="color:rgb(15, 17, 21);">设置文本内容</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);"><span th:text="${name}">默认</span></font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:utext</font>` | <font style="color:rgb(15, 17, 21);">设置HTML内容（不转义）</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);"><div th:utext="${htmlContent}"></div></font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:value</font>` | <font style="color:rgb(15, 17, 21);">设置value属性</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);"><input th:value="${user.name}"></font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:href</font>` | <font style="color:rgb(15, 17, 21);">设置链接</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);"><a th:href="@{/user/{id}(id=${user.id})}"></font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:src</font>` | <font style="color:rgb(15, 17, 21);">设置图片源</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);"><img th:src="@{/images/logo.png}"></font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:if</font>`<br/><font style="color:rgb(15, 17, 21);"> </font><font style="color:rgb(15, 17, 21);">/</font><font style="color:rgb(15, 17, 21);"> </font>`<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:unless</font>` | <font style="color:rgb(15, 17, 21);">条件判断</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);"><div th:if="${user != null}"></font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:each</font>` | <font style="color:rgb(15, 17, 21);">循环遍历</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);"><tr th:each="user : ${users}"></font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:switch</font>`<br/><font style="color:rgb(15, 17, 21);"> </font><font style="color:rgb(15, 17, 21);">/</font><font style="color:rgb(15, 17, 21);"> </font>`<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:case</font>` | <font style="color:rgb(15, 17, 21);">多分支选择</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);"><div th:switch="${role}"></font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:object</font>` | <font style="color:rgb(15, 17, 21);">指定表单绑定对象</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);"><form th:object="${user}"></font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:field</font>` | <font style="color:rgb(15, 17, 21);">表单字段绑定</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);"><input th:field="*{name}"></font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:remove</font>` | <font style="color:rgb(15, 17, 21);">移除模板属性</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);"><div th:remove="all">开发时可见，渲染后移除</div></font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:replace</font>`<br/><font style="color:rgb(15, 17, 21);"> </font><font style="color:rgb(15, 17, 21);">/</font><font style="color:rgb(15, 17, 21);"> </font>`<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:insert</font>` | <font style="color:rgb(15, 17, 21);">引入片段</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);"><div th:replace="~{fragments/header :: logo}"></div></font>` |


### <font style="color:rgb(15, 17, 21);">字面量和运算</font>
```html
<!-- 文本字面量 -->
<p th:text="''Hello, '' + ${name}"></p>

<!-- 数字运算 -->
<p th:text="${price * 0.8}"></p>

<!-- 布尔运算 -->
<p th:if="${age >= 18 and active == true}">成年人</p>

<!-- 比较运算符 -->
<!-- gt (>), lt (<), ge (>=), le (<=), eq (==), ne (!=) -->
<p th:if="${score gt 60}">及格</p>
```

### 条件判断
```html
<!-- th:if：条件为true时显示 -->
<div th:if="${user != null}">欢迎，<span th:text="${user.name}"></span></div>

<!-- th:unless：条件为false时显示（取反） -->
<div th:unless="${user != null}">请先登录</div>

<!-- 三元运算符 -->
<span th:text="${user != null ? user.name : ''游客''}"></span>

<!-- switch-case -->
<div th:switch="${user.role}">
    <p th:case="''ADMIN''">管理员</p>
    <p th:case="''USER''">普通用户</p>
    <p th:case="*">未知角色</p>
</div>
```

### 循环遍历
```html
<!-- 基本遍历 -->
<ul>
    <li th:each="user : ${users}" th:text="${user.name}"></li>
</ul>

<!-- 获取迭代状态 -->
<table>
    <tr th:each="user,stat : ${users}">
        <td th:text="${stat.index}">索引（0开始）</td>
        <td th:text="${stat.count}">计数（1开始）</td>
        <td th:text="${stat.even}">是否为偶数</td>
        <td th:text="${stat.odd}">是否为奇数</td>
        <td th:text="${stat.first}">是否第一条</td>
        <td th:text="${stat.last}">是否最后一条</td>
        <td th:text="${user.name}"></td>
    </tr>
</ul>

<!-- 遍历Map -->
<div th:each="entry : ${map}">
    <span th:text="${entry.key}"></span> : <span th:text="${entry.value}"></span>
</div>
```

### 链接表达式
```html
<!-- 基础路径 -->
<a th:href="@{/user/list}">用户列表</a>

<!-- 带路径变量 -->
<a th:href="@{/user/{id}/edit(id=${user.id})}">编辑</a>

<!-- 带查询参数 -->
<a th:href="@{/user/list(page=${currentPage}, size=10)}">分页</a>

<!-- 混合使用 -->
<a th:href="@{/user/{id}/profile(id=${user.id}, tab=''info'')}">个人资料</a>

<!-- 相对路径 -->
<img th:src="@{~/images/logo.png}">   <!-- 应用相对路径 -->
<img th:src="@{/images/logo.png}">    <!-- 上下文相对路径（默认） -->
```

### 表单处理
```html
<!-- 绑定对象 -->
<form th:action="@{/user/save}" th:object="${user}" method="post">
    
    <!-- 隐藏域 -->
    <input type="hidden" th:field="*{id}">
    
    <!-- 文本输入 -->
    <input type="text" th:field="*{name}" placeholder="请输入姓名">
    
    <!-- 密码 -->
    <input type="password" th:field="*{password}">
    
    <!-- 单选 -->
    <input type="radio" th:field="*{gender}" value="M"> 男
    <input type="radio" th:field="*{gender}" value="F"> 女
    
    <!-- 下拉框 -->
    <select th:field="*{city}">
        <option th:value="''BJ''">北京</option>
        <option th:value="''SH''">上海</option>
    </select>
    
    <!-- 复选框 -->
    <input type="checkbox" th:field="*{hobbies}" value="reading"> 阅读
    <input type="checkbox" th:field="*{hobbies}" value="coding"> 编程
    
    <!-- 提交按钮 -->
    <button type="submit">保存</button>
</form>
```

**<font style="color:rgb(15, 17, 21);">注意</font>**<font style="color:rgb(15, 17, 21);">：</font>`<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:field</font>`<font style="color:rgb(15, 17, 21);"> 会自动处理回显，包括 </font>`<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">checked</font>`<font style="color:rgb(15, 17, 21);">、</font>`<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">selected</font>`<font style="color:rgb(15, 17, 21);"> 等状态。</font>

### <font style="color:rgb(15, 17, 21);">内置对象</font>
```html
<!-- 基础对象 -->
${#strings}     <!-- 字符串工具 -->
${#lists}       <!-- 集合工具 -->
${#maps}        <!-- Map工具 -->
${#arrays}      <!-- 数组工具 -->
${#dates}       <!-- 日期工具 -->
${#calendars}   <!-- 日历工具 -->
${#numbers}     <!-- 数字格式化 -->
${#bools}       <!-- 布尔工具 -->
${#sets}        <!-- Set工具 -->
${#objects}     <!-- 对象工具 -->

<!-- Web上下文对象 -->
${#request}     <!-- HttpServletRequest -->
${#session}     <!-- HttpSession -->
${#servletContext}  <!-- ServletContext -->

<!-- 直接访问（简化写法） -->
${param.xxx}    <!-- 请求参数 -->
${session.xxx}  <!-- Session属性 -->
${application.xxx}  <!-- Application属性 -->
```

### 工具类使用实例
```html
<!-- 字符串处理 -->
<p th:text="${#strings.toUpperCase(name)}"></p>
<p th:text="${#strings.isEmpty(name)}"></p>
<p th:text="${#strings.defaultString(name, ''默认值'')}"></p>
<p th:text="${#strings.substring(name, 0, 5)}"></p>

<!-- 日期格式化 -->
<p th:text="${#dates.format(birthday, ''yyyy-MM-dd'')}"></p>

<!-- 集合操作 -->
<p th:text="${#lists.size(users)}"></p>
<p th:text="${#lists.contains(users, admin)}"></p>

<!-- 数字格式化 -->
<p th:text="${#numbers.formatDecimal(price, 1, 2)}"></p>  <!-- 1位整数，2位小数 -->
<p th:text="${#numbers.formatCurrency(price)}"></p>       <!-- 货币格式 -->
```

### 模版布局
+ 自定义片段

```html
<!-- templates/fragments/header.html -->
<html xmlns:th="http://www.thymeleaf.org">
<body>
    <div th:fragment="logo">
        <img src="/logo.png" alt="Logo">
    </div>
    
    <div th:fragment="nav (active)">
        <ul>
            <li th:class="${active == ''home''} ? ''active'' : ''''">首页</li>
            <li th:class="${active == ''about''} ? ''active'' : ''''">关于</li>
        </ul>
    </div>
    
    <div th:fragment="script">
        <script src="/js/common.js"></script>
    </div>
</body>
</html>
```

+ 引入片段

```html
<!-- 方式1：th:insert（插入到当前标签内部） -->
<div th:insert="~{fragments/header :: logo}"></div>

<!-- 方式2：th:replace（替换当前标签） -->
<div th:replace="~{fragments/header :: logo}"></div>

<!-- 方式3：th:include（已废弃，只插入内容，不包含标签） -->
<div th:include="~{fragments/header :: logo}"></div>

<!-- 传递参数 -->
<div th:replace="~{fragments/header :: nav (active=''home'')}"></div>

<!-- 简化写法（去掉~{}） -->
<div th:replace="fragments/header :: logo"></div>
```

+ 布局模版示例

```html
<!-- templates/layout/base.html -->
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title th:text="${title}">默认标题</title>
    <link th:replace="~{fragments/header :: css}">
</head>
<body>
    <div th:replace="~{fragments/header :: nav}"></div>
    
    <div class="container">
        <div th:replace="~{::content}">主体内容</div>
    </div>
    
    <div th:replace="~{fragments/footer}"></div>
    <div th:replace="~{fragments/header :: script}"></div>
</body>
</html>
```

### 国际化
+ 配置文件

```html
src/main/resources/
├── messages.properties      (默认)
├── messages_zh_CN.properties (中文)
├── messages_en_US.properties (英文)
```

```properties
# messages.properties
home.title=首页
home.welcome=欢迎

# messages_zh_CN.properties
home.title=首页
home.welcome=欢迎

# messages_en_US.properties
home.title=Home
home.welcome=Welcome
```

+ 使用国际化

```html
<!-- 使用 #{} 表达式 -->
<h1 th:text="#{home.title}">首页</h1>
<p th:text="#{home.welcome(${user.name})}">欢迎，{0}</p>
```

+ 配置

```yaml
spring:
  messages:
    basename: i18n/messages   # 文件基础名（默认）
    encoding: UTF-8
    cache-duration: 3600
```

```java
// Controller中切换语言
@GetMapping("/locale")
public String changeLocale(@RequestParam String lang, 
                           HttpServletRequest request, 
                           HttpServletResponse response) {
    request.getSession().setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, 
                                      new Locale(lang));
    return "redirect:" + request.getHeader("Referer");
}
```

# Druid
```java
package com.jie.config;


import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.support.jakarta.WebStatFilter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;
import java.util.HashMap;

@Configuration
public class DruidConfig {

    @ConfigurationProperties(prefix = "spring.datasource")
    @Bean
    public DataSource druidDataSource() {
        return new DruidDataSource();
    }

    // 后台控制 ： web.xml
    @Bean
    public ServletRegistrationBean servletRegistrationBean() {
        ServletRegistrationBean servletRegistrationBean = new ServletRegistrationBean();

        // 后台需要有人登录，账号密码配置
        HashMap<String, String> initParameters = new HashMap<>();
        initParameters.put("loginUsername", "admin");
        initParameters.put("loginPassword", "123456");

        // 允许谁可以访问
        initParameters.put("allow", "");

        // 禁止谁访问
        initParameters.put("kuagnshen", "192.168.11.123");

        // 设置初始化参数
        servletRegistrationBean.setInitParameters(initParameters);
        return servletRegistrationBean;
    }

    // filter
    public FilterRegistrationBean webStatFilter() {
        FilterRegistrationBean filterRegistrationBean = new FilterRegistrationBean();
        filterRegistrationBean.setFilter(new WebStatFilter());
        HashMap<String, String> initParameters = new HashMap<>();
        // 可以 过滤哪些请求
        initParameters.put("exclusions", "*");
        filterRegistrationBean.setInitParameters(initParameters);
        return filterRegistrationBean;
    }


}

```

# Mybatis
导入依赖

```xml
<dependency>
  <groupId>com.mysql</groupId>
  <artifactId>mysql-connector-j</artifactId>
  <scope>runtime</scope>
</dependency>

<!-- Source: https://mvnrepository.com/artifact/org.mybatis.spring.boot/mybatis-spring-boot-starter -->
<dependency>
  <groupId>org.mybatis.spring.boot</groupId>
  <artifactId>mybatis-spring-boot-starter</artifactId>
  <version>4.0.1</version>
  <scope>compile</scope>
</dependency>
```

# Spring Security & Apache Shiro
## 一、框架对比概览
| 对比维度 | Spring Security | Apache Shiro |
| --- | --- | --- |
| **出身** | Spring 官方团队 | Apache 基金会 |
| **Spring 集成** | 原生集成，无缝衔接 | 需要额外整合 |
| **功能范围** | 认证、授权、OAuth2、SSO | 认证、授权、会话管理 |
| **学习曲线** | 陡峭（复杂但强大） | 平缓（简单易懂） |
| **配置方式** | 注解 + 配置文件 | 配置文件 + API |
| **RESTful 支持** | 优秀（原生 JWT 支持） | 一般（需要扩展） |
| **社区活跃度** | 极高 | 中等 |
| **适用场景** | 大型企业级应用、微服务 | 中小型应用、快速开发 |


**选型建议：**

+ 使用 Spring Boot → **优先 Spring Security**
+ 需要 OAuth2/SSO → **Spring Security**
+ 非 Spring 项目 → **Shiro**
+ 团队经验不足、想快速上手 → **Shiro**

---

## 二、Spring Security
### 2.1 核心架构
```plain
Spring Security 基于 Servlet 过滤器链
```

#### 关键组件
| 组件 | 作用 |
| --- | --- |
| **SecurityContextHolder** | 存储当前用户安全上下文（ThreadLocal） |
| **Authentication** | 封装用户认证信息（用户名、密码、权限） |
| **AuthenticationManager** | 认证管理器，核心入口 |
| **ProviderManager** | AuthenticationManager 的实现，管理多个认证提供者 |
| **AuthenticationProvider** | 具体认证逻辑实现（如 DaoAuthenticationProvider） |
| **UserDetailsService** | 加载用户信息（需要自定义实现） |
| **PasswordEncoder** | 密码编码器（BCrypt、Argon2 等） |
| **SecurityFilterChain** | 安全过滤器链 |
| **AccessDecisionManager** | 访问决策管理器（授权） |


#### 核心流程图
```plain
用户请求 → 过滤器链 → 提取凭证 → AuthenticationManager → AuthenticationProvider → UserDetailsService → 返回 Authentication → SecurityContextHolder → 授权判断 → 业务处理
```

### 2.2 认证流程
```java
// 1. 用户输入账号密码
// 2. UsernamePasswordAuthenticationFilter 拦截 /login
// 3. 创建 UsernamePasswordAuthenticationToken（未认证）
// 4. 调用 AuthenticationManager.authenticate()
// 5. ProviderManager 找到合适的 AuthenticationProvider
// 6. DaoAuthenticationProvider 调用 UserDetailsService.loadUserByUsername()
// 7. 密码比对
// 8. 认证成功：创建完整 Authentication 对象存入 SecurityContextHolder
// 9. 认证失败：抛出 AuthenticationException
```

### 2.3 授权流程
```java
// 1. FilterSecurityInterceptor 拦截请求
// 2. 从 SecurityContextHolder 获取当前用户 Authentication
// 3. 调用 AccessDecisionManager 决策
// 4. 有权限 → 继续执行
// 5. 无权限 → 抛出 AccessDeniedException
```

### 2.4 常用配置
#### 基础配置类
```java
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)  // 启用方法级权限注解
public class SecurityConfig {
    
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
            // 关闭 CSRF（前后端分离时）
            .csrf().disable()
            
            // 授权规则
            .authorizeHttpRequests(auth -> auth
                // 公开接口
                .antMatchers("/login", "/register", "/public/**").permitAll()
                // 需要 USER 角色
                .antMatchers("/user/**").hasRole("USER")
                // 需要 ADMIN 角色
                .antMatchers("/admin/**").hasRole("ADMIN")
                // 其他所有请求都需要认证
                .anyRequest().authenticated()
            )
            
            // 表单登录
            .formLogin(form -> form
                .loginPage("/login")           // 自定义登录页
                .loginProcessingUrl("/doLogin") // 处理登录请求的URL
                .defaultSuccessUrl("/home")     // 登录成功跳转
                .failureUrl("/login?error")     // 登录失败跳转
                .permitAll()
            )
            
            // 登出
            .logout(logout -> logout
                .logoutUrl("/logout")
                .logoutSuccessUrl("/login?logout")
                .invalidateHttpSession(true)
                .deleteCookies("JSESSIONID")
                .permitAll()
            )
            
            // 记住我
            .rememberMe(remember -> remember
                .key("uniqueAndSecret")
                .tokenValiditySeconds(86400)  // 24小时
            );
        
        return http.build();
    }
    
    @Bean
    public UserDetailsService userDetailsService() {
        // 从数据库加载用户
        return new CustomUserDetailsService();
    }
    
    @Bean
    public PasswordEncoder passwordEncoder() {
        // BCrypt 加密（推荐）
        return new BCryptPasswordEncoder();
    }
}
```

### 2.5 自定义 UserDetailsService
```java
@Service
public class CustomUserDetailsService implements UserDetailsService {
    
    @Autowired
    private UserMapper userMapper;
    
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        // 1. 从数据库查询用户
        User user = userMapper.selectByUsername(username);
        if (user == null) {
            throw new UsernameNotFoundException("用户不存在");
        }
        
        // 2. 查询用户权限
        List<String> permissions = permissionMapper.selectByUserId(user.getId());
        
        // 3. 构建 Authority 列表
        List<GrantedAuthority> authorities = permissions.stream()
            .map(SimpleGrantedAuthority::new)
            .collect(Collectors.toList());
        
        // 4. 返回 UserDetails 对象
        return new org.springframework.security.core.userdetails.User(
            user.getUsername(),
            user.getPassword(),
            authorities
        );
    }
}
```

### 2.6 JWT 集成（前后端分离）
```java
@Component
public class JwtTokenUtil {
    
    @Value("${jwt.secret}")
    private String secret;
    
    @Value("${jwt.expiration}")
    private Long expiration;
    
    // 生成 Token
    public String generateToken(String username) {
        Date now = new Date();
        Date expiryDate = new Date(now.getTime() + expiration);
        
        return Jwts.builder()
            .setSubject(username)
            .setIssuedAt(now)
            .setExpiration(expiryDate)
            .signWith(SignatureAlgorithm.HS512, secret)
            .compact();
    }
    
    // 解析 Token
    public String getUsernameFromToken(String token) {
        return Jwts.parser()
            .setSigningKey(secret)
            .parseClaimsJws(token)
            .getBody()
            .getSubject();
    }
    
    // 验证 Token
    public Boolean validateToken(String token) {
        try {
            Jwts.parser().setSigningKey(secret).parseClaimsJws(token);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}

// JWT 认证过滤器
public class JwtAuthenticationFilter extends OncePerRequestFilter {
    
    @Autowired
    private JwtTokenUtil jwtTokenUtil;
    
    @Override
    protected void doFilterInternal(HttpServletRequest request, 
                                    HttpServletResponse response, 
                                    FilterChain chain) throws IOException, ServletException {
        
        String token = request.getHeader("Authorization");
        
        if (token != null && token.startsWith("Bearer ")) {
            token = token.substring(7);
            
            if (jwtTokenUtil.validateToken(token)) {
                String username = jwtTokenUtil.getUsernameFromToken(token);
                
                UsernamePasswordAuthenticationToken authentication = 
                    new UsernamePasswordAuthenticationToken(username, null, null);
                
                SecurityContextHolder.getContext().setAuthentication(authentication);
            }
        }
        
        chain.doFilter(request, response);
    }
}
```

### 2.7 常用注解
```java
// 方法级安全注解（需要在配置类添加 @EnableGlobalMethodSecurity）

// 1. @PreAuthorize：方法执行前判断权限
@PreAuthorize("hasRole(''ADMIN'')")
@GetMapping("/admin/users")
public List<User> getAllUsers() { ... }

// 2. @PostAuthorize：方法执行后判断权限（用于数据级权限）
@PostAuthorize("returnObject.username == authentication.name")
@GetMapping("/user/{id}")
public User getUser(@PathVariable Long id) { ... }

// 3. @PreFilter：过滤入参集合
@PreFilter("filterObject.age >= 18")
public void addUsers(List<User> users) { ... }

// 4. @PostFilter：过滤返回值集合
@PostFilter("filterObject.enabled == true")
public List<User> getActiveUsers() { ... }

// 5. @Secured：指定角色（旧式）
@Secured("ROLE_ADMIN")
@GetMapping("/admin/reports")
public String getReports() { ... }
```

### 2.8 权限表达式
| 表达式 | 说明 |
| --- | --- |
| `hasRole(''ADMIN'')` | 拥有 ADMIN 角色 |
| `hasAnyRole(''ADMIN'', ''USER'')` | 拥有任意角色 |
| `hasAuthority(''READ'')` | 拥有 READ 权限 |
| `permitAll()` | 永远允许 |
| `denyAll()` | 永远拒绝 |
| `isAnonymous()` | 匿名用户 |
| `isAuthenticated()` | 已认证用户 |
| `hasIpAddress(''192.168.1.0/24'')` | IP 地址匹配 |


### 2.9 常见问题与解决
**问题1：静态资源被拦截**

```java
// 配置忽略静态资源
.webSecurity.ignoring().antMatchers("/css/**", "/js/**", "/images/**");
```

**问题2：CSRF 导致 POST 请求报错**

```java
// 解决方案1：禁用 CSRF（不推荐生产环境）
.csrf().disable();

// 解决方案2：在表单中添加 CSRF Token
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
```

**问题3：密码加密方式选择**

```java
// 推荐：BCrypt（自适应难度）
PasswordEncoder encoder = new BCryptPasswordEncoder();

// 支持多种编码器并存
PasswordEncoder encoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
// 输出格式：{bcrypt}$2a$10$...
```

---

## 三、Apache Shiro
### 3.1 核心架构
```plain
Application Code
    ↓
Subject (当前用户)
    ↓
SecurityManager (安全管理器，Shiro 核心)
    ↓
┌───────────┼───────────┬─────────────┐
↓           ↓           ↓             ↓
Realm     Authc       Authz          Session
(数据源)  (认证)      (授权)         (会话管理)
```

#### 关键组件
| 组件 | 作用 |
| --- | --- |
| **Subject** | 当前用户的安全操作接口 |
| **SecurityManager** | Shiro 核心，管理所有组件 |
| **Realm** | 数据源，从数据库加载用户和权限 |
| **Authenticator** | 认证器 |
| **Authorizer** | 授权器 |
| **SessionManager** | 会话管理器 |
| **CacheManager** | 缓存管理器 |


### 3.2 快速入门
#### 添加依赖
```xml
<dependency>
    <groupId>org.apache.shiro</groupId>
    <artifactId>shiro-spring-boot-starter</artifactId>
    <version>1.10.0</version>
</dependency>

```

#### 配置文件（application.yml）
```yaml
shiro:
  loginUrl: /login
  successUrl: /index
  unauthorizedUrl: /unauthorized
```

#### 配置类
```java
@Configuration
public class ShiroConfig {
    
    // 1. 自定义 Realm
    @Bean
    public UserRealm userRealm() {
        UserRealm realm = new UserRealm();
        // 设置加密算法
        HashedCredentialsMatcher matcher = new HashedCredentialsMatcher();
        matcher.setHashAlgorithmName("md5");
        matcher.setHashIterations(2);
        realm.setCredentialsMatcher(matcher);
        return realm;
    }
    
    // 2. 安全管理器
    @Bean
    public DefaultWebSecurityManager securityManager() {
        DefaultWebSecurityManager manager = new DefaultWebSecurityManager();
        manager.setRealm(userRealm());
        return manager;
    }
    
    // 3. Shiro 过滤器
    @Bean
    public ShiroFilterFactoryBean shiroFilterFactoryBean() {
        ShiroFilterFactoryBean bean = new ShiroFilterFactoryBean();
        bean.setSecurityManager(securityManager());
        bean.setLoginUrl("/login");
        bean.setSuccessUrl("/index");
        bean.setUnauthorizedUrl("/unauthorized");
        
        // 定义过滤规则
        Map<String, String> filterChainMap = new LinkedHashMap<>();
        filterChainMap.put("/login", "anon");      // 匿名访问
        filterChainMap.put("/logout", "logout");   // 登出
        filterChainMap.put("/user/**", "authc");   // 需要认证
        filterChainMap.put("/admin/**", "roles[admin]");  // 需要 admin 角色
        filterChainMap.put("/**", "authc");
        
        bean.setFilterChainDefinitionMap(filterChainMap);
        return bean;
    }
}
```

### 3.3 自定义 Realm
```java
public class UserRealm extends AuthorizingRealm {
    
    @Autowired
    private UserMapper userMapper;
    
    // 授权
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        // 获取当前用户
        Subject subject = SecurityUtils.getSubject();
        User currentUser = (User) subject.getPrincipal();
        
        // 查询用户权限
        List<String> permissions = permissionMapper.selectByUserId(currentUser.getId());
        
        // 封装授权信息
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        info.addStringPermissions(permissions);
        
        return info;
    }
    
    // 认证
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) 
            throws AuthenticationException {
        // 获取用户名
        String username = (String) token.getPrincipal();
        
        // 查询用户
        User user = userMapper.selectByUsername(username);
        if (user == null) {
            return null;  // 用户不存在
        }
        
        // 封装认证信息
        return new SimpleAuthenticationInfo(
            user,                        // principal
            user.getPassword(),          // credentials
            ByteSource.Util.bytes(user.getSalt()), // 加盐
            this.getName()               // realm name
        );
    }
}
```

### 3.4 登录认证
```java
@RestController
public class LoginController {
    
    @PostMapping("/login")
    public Result login(@RequestParam String username, 
                        @RequestParam String password) {
        
        // 获取 Subject
        Subject subject = SecurityUtils.getSubject();
        
        // 封装 Token
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        token.setRememberMe(true);  // 记住我
        
        try {
            // 执行登录
            subject.login(token);
            return Result.success("登录成功");
        } catch (UnknownAccountException e) {
            return Result.error("用户不存在");
        } catch (IncorrectCredentialsException e) {
            return Result.error("密码错误");
        } catch (LockedAccountException e) {
            return Result.error("账号已锁定");
        } catch (AuthenticationException e) {
            return Result.error("认证失败");
        }
    }
    
    @GetMapping("/logout")
    public String logout() {
        Subject subject = SecurityUtils.getSubject();
        subject.logout();  // 登出
        return "redirect:/login";
    }
}
```

### 3.5 权限控制
```java
// 1. 编程式控制
Subject subject = SecurityUtils.getSubject();
if (subject.hasRole("admin")) {
    // 有 admin 角色
}
if (subject.isPermitted("user:delete")) {
    // 有删除权限
}

// 2. 注解式控制
@RestController
@RequestMapping("/user")
public class UserController {
    
    @RequiresRoles("admin")      // 需要 admin 角色
    @GetMapping("/list")
    public List<User> list() { ... }
    
    @RequiresPermissions("user:delete")  // 需要指定权限
    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Long id) { ... }
    
    @RequiresAuthentication      // 需要认证
    @GetMapping("/info")
    public User info() { ... }
}

// 3. JSP 标签控制
<shiro:hasRole name="admin">
    <a href="/admin">管理后台</a>
</shiro:hasRole>
<shiro:hasPermission name="user:delete">
    <button>删除</button>
</shiro:hasPermission>

```

### 3.6 JSP 标签库
| 标签 | 说明 |
| --- | --- |
| `<shiro:authenticated>` | 已认证用户 |
| `<shiro:notAuthenticated>` | 未认证用户 |
| `<shiro:guest>` | 访客（未记住我） |
| `<shiro:user>` | 用户（已认证或记住我） |
| `<shiro:hasRole name="admin">` | 拥有指定角色 |
| `<shiro:lacksRole name="admin">` | 没有指定角色 |
| `<shiro:hasPermission name="user:delete">` | 拥有指定权限 |
| `<shiro:principal>` | 显示用户信息 |


### 3.7 Session 管理
```java
// 获取 Session
Subject subject = SecurityUtils.getSubject();
Session session = subject.getSession();

// 存储数据
session.setAttribute("key", "value");

// 获取数据
Object value = session.getAttribute("key");

// 设置超时（毫秒）
session.setTimeout(1800000);  // 30分钟
```

### 3.8 加密与盐值
```java
// 密码加密
public String encryptPassword(String password, String salt) {
    Md5Hash md5Hash = new Md5Hash(password, salt, 2);  // MD5 + 盐 + 2次迭代
    return md5Hash.toString();
}

// 注册用户
public void register(User user) {
    String salt = UUID.randomUUID().toString().substring(0, 8);
    user.setSalt(salt);
    user.setPassword(new Md5Hash(user.getPassword(), salt, 2).toString());
    userMapper.insert(user);
}
```

---

## 四、对比总结
### 4.1 代码对比
| 操作 | Spring Security | Shiro |
| --- | --- | --- |
| 获取当前用户 | `SecurityContextHolder.getContext().getAuthentication()` | `SecurityUtils.getSubject()` |
| 获取用户名 | `authentication.getName()` | `subject.getPrincipal()` |
| 检查角色 | `@PreAuthorize("hasRole(''ADMIN'')")` | `@RequiresRoles("admin")` |
| 获取权限 | `authentication.getAuthorities()` | `subject.getPermissions()` |


### 4.2 选型决策树
```plain
是否使用 Spring Boot？
    ├─ 是 → 项目规模？
    │      ├─ 大型/微服务 → Spring Security + OAuth2
    │      └─ 中小型 → Shiro（简单快速）
    └─ 否 → Shiro（非 Spring 环境友好）

是否需要 OAuth2/SSO？
    ├─ 是 → Spring Security
    └─ 否 → 两者皆可

团队熟悉度？
    ├─ 熟悉 Spring → Spring Security
    └─ 不熟悉 Spring → Shiro
```

### 4.3 迁移路径
如果从 Shiro 迁移到 Spring Security：

| Shiro | Spring Security |
| --- | --- |
| `Subject` | `Authentication` |
| `SecurityUtils.getSubject()` | `SecurityContextHolder.getContext().getAuthentication()` |
| `@RequiresRoles` | `@PreAuthorize("hasRole()")` |
| `UsernamePasswordToken` | `UsernamePasswordAuthenticationToken` |
| `Realm` | `UserDetailsService` |


---

**建议：**

+ **新项目**：优先选 Spring Security（更强大、更现代、社区更活跃）
+ **维护老项目**：保持 Shiro 或按需迁移
+ **快速原型**：Shiro 更轻量
+ **企业级**：Spring Security + OAuth2

# Swagger/OpenAPI 企业级开发笔记
## 一、技术选型
**企业推荐：SpringDoc OpenAPI (Swagger3)**，废弃 Swagger2

### Maven 依赖
```xml
<!-- Spring Boot 2.x -->
<dependency>
    <groupId>org.springdoc</groupId>
    <artifactId>springdoc-openapi-ui</artifactId>
    <version>1.7.0</version>
</dependency>
<!-- Spring Boot 3.x -->
<dependency>
    <groupId>org.springdoc</groupId>
    <artifactId>springdoc-openapi-starter-webmvc-ui</artifactId>
    <version>2.3.0</version>
</dependency>

```

### 访问地址
```plain
Swagger UI: http://localhost:8080/swagger-ui/index.html
API 文档: http://localhost:8080/v3/api-docs
```

---

## 二、常用注解（5个核心）
| 注解 | 作用 | 示例 |
| --- | --- | --- |
| `@Tag` | 控制器分组 | `@Tag(name = "用户管理")` |
| `@Operation` | 接口描述 | `@Operation(summary = "查询用户")` |
| `@Parameter` | 参数描述 | `@Parameter(description = "用户ID")` |
| `@Schema` | 模型描述 | `@Schema(description = "用户名")` |
| `@ApiResponse` | 响应描述 | `@ApiResponse(responseCode = "200")` |


---

## 三、配置代码
### application.yml
```yaml
springdoc:
  swagger-ui:
    path: /swagger-ui.html
    enabled: true
  api-docs:
    path: /v3/api-docs
  packages-to-scan: com.example.controller
```

### 配置类（可选）
```java
@Configuration
public class OpenApiConfig {
    
    @Bean
    public OpenAPI customOpenAPI() {
        return new OpenAPI()
            .info(new Info()
                .title("API接口文档")
                .version("v1.0")
                .description("项目API说明"))
            .addSecurityItem(new SecurityRequirement().addList("token"))
            .components(new Components()
                .addSecuritySchemes("token", 
                    new SecurityScheme()
                        .type(SecurityScheme.Type.HTTP)
                        .scheme("bearer")));
    }
}
```

---

## 四、代码示例
### Controller 层
```java
@Tag(name = "用户管理")
@RestController
@RequestMapping("/api/users")
public class UserController {
    
    @Operation(summary = "分页查询用户")
    @GetMapping("/page")
    public Result<PageResult<UserVO>> page(@ParameterObject UserQueryDTO dto) {
        return Result.success(userService.page(dto));
    }
    
    @Operation(summary = "根据ID查询用户")
    @GetMapping("/{id}")
    public Result<UserVO> getById(
        @Parameter(description = "用户ID", required = true) @PathVariable Long id) {
        return Result.success(userService.getById(id));
    }
    
    @Operation(summary = "新增用户")
    @PostMapping
    public Result<UserVO> add(@Valid @RequestBody UserAddDTO dto) {
        return Result.success(userService.add(dto));
    }
    
    @Operation(summary = "修改用户")
    @PutMapping("/{id}")
    public Result<UserVO> update(@PathVariable Long id, @RequestBody UserUpdateDTO dto) {
        dto.setId(id);
        return Result.success(userService.update(dto));
    }
    
    @Operation(summary = "删除用户")
    @DeleteMapping("/{id}")
    @ApiResponse(responseCode = "200", description = "删除成功")
    public Result<Void> delete(@PathVariable Long id) {
        userService.delete(id);
        return Result.success(null);
    }
}
```

### DTO/VO 层
```java
@Data
@Schema(description = "用户信息")
public class UserVO {
    
    @Schema(description = "用户ID", example = "1001")
    private Long id;
    
    @Schema(description = "用户名", example = "张三")
    private String username;
    
    @Schema(description = "年龄", example = "25")
    private Integer age;
    
    @Schema(description = "邮箱", example = "zhangsan@example.com")
    private String email;
}

@Data
@Schema(description = "用户查询请求")
public class UserQueryDTO {
    
    @Schema(description = "用户名")
    private String username;
    
    @Schema(description = "页码", defaultValue = "1")
    private Integer pageNum = 1;
    
    @Schema(description = "每页条数", defaultValue = "10")
    private Integer pageSize = 10;
}
```

### 统一响应
```java
@Data
@Schema(description = "统一响应")
public class Result<T> {
    
    @Schema(description = "状态码", example = "200")
    private Integer code;
    
    @Schema(description = "提示信息", example = "操作成功")
    private String message;
    
    @Schema(description = "响应数据")
    private T data;
    
    public static <T> Result<T> success(T data) {
        Result<T> result = new Result<>();
        result.setCode(200);
        result.setMessage("成功");
        result.setData(data);
        return result;
    }
    
    public static <T> Result<T> error(String message) {
        Result<T> result = new Result<>();
        result.setCode(500);
        result.setMessage(message);
        return result;
    }
}
```

---

## 五、生产环境配置
### 关闭 Swagger（生产环境）
```yaml
# application-prod.yml
springdoc:
  api-docs:
    enabled: false
  swagger-ui:
    enabled: false
```

### 条件启用
```java
@ConditionalOnProperty(name = "springdoc.swagger-ui.enabled", havingValue = "true")
```

---

## 六、隐藏接口
```java
@Hidden  // 添加到类或方法上
@GetMapping("/internal")
public Result<String> internal() {
    // ...
}
```

---

## 七、快速总结
### 3步集成
1. **添加依赖**（springdoc-openapi-ui）
2. **写注解**（@Tag、@Operation、@Schema）
3. **访问地址**（/swagger-ui/index.html）

### 核心规范
+ ✅ 所有接口必须有 @Operation
+ ✅ 所有字段必须有 @Schema(example = "")
+ ✅ 统一响应格式 Result
+ ✅ 生产环境关闭 Swagger
+ ❌ 不在 Controller 写业务逻辑
1. **强制使用 SpringDoc**，废弃 SpringFox
2. **生产环境必须关闭** Swagger 或配置访问限制
3. **所有接口必须有清晰的描述**（@Operation）
4. **所有字段必须有示例值和描述**（@Schema）
5. **统一的响应格式**（Result + @ApiResponse）
6. **敏感接口必须标注安全认证**（@SecurityRequirement）
7. **禁止在 Controller 中写业务逻辑**，保持文档清晰

# 任务
## 异步任务
```java
package com.jie.service;

import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

@Service
public class AsyncService {

    // 告诉Spring这是一个异步方法
    @Async
    public void hello(){
        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        System.out.println("正在加载资源");
    }

}

```

```java
@Controller
public class AsyncController {

    @Autowired
    AsyncService asyncService;

    @RequestMapping("/hello")
    public String hello(){
        asyncService.hello();
        return "success";
    }

}
```

```java
@EnableAsync
@SpringBootApplication
public class SpringbootMissionApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringbootMissionApplication.class, args);
    }

}
```



## 邮件任务
### 快速实现
1. 导入依赖

```xml
<dependency>
  <groupId>org.springframework.boot</groupId>
  <artifactId>spring-boot-starter-mail</artifactId>
</dependency>
```

2. 配置文件

```properties
spring:
  mail:
    host: smtp.qq.com          # SMTP服务器地址
    port: 465                   # 端口（QQ邮箱使用465或587）
    username: your-email@qq.com # 发件人邮箱
    password: your-auth-code    # 授权码（不是登录密码！）
    default-encoding: UTF-8
    properties:
      mail:
        smtp:
          ssl:
            enable: true        # QQ邮箱需要开启SSL
          auth: true
          starttls:
            enable: true        #开启加密验证
```

3.1 注入JavaMailSender

```java
@Autowired
private JavaMailSender mailSender;
```

3.2 发送简单文本邮件

```java
public void sendSimpleMail(String to, String subject, String content) {
    SimpleMailMessage message = new SimpleMailMessage();
    message.setFrom("your-email@qq.com");  // 发件人
    message.setTo(to);                      // 收件人
    message.setSubject(subject);            // 主题
    message.setText(content);               // 内容
    mailSender.send(message);
}
```

3.3 发送复杂邮件（HTML + 附件）

```java
@Test
public void sendComplexMail() throws MessagingException {
    // 1. 创建复杂邮件对象
    MimeMessage mimeMessage = mailSender.createMimeMessage();
    
    // 2. 使用MimeMessageHelper包装，第二个参数true表示支持附件
    MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
    
    // 3. 设置邮件基本信息
    helper.setSubject("通知-今晚开会");
    helper.setFrom("your-email@qq.com");
    helper.setTo("target@163.com");
    
    // 4. 设置HTML内容（第二个参数true表示内容为HTML格式）
    helper.setText("<b style=''color:red''>今晚7:30开会</b>", true);
    
    // 5. 添加附件
    helper.addAttachment("1.jpg", new File("C:/images/1.jpg"));
    helper.addAttachment("2.jpg", new File("C:/images/2.jpg"));
    
    // 6. 发送
    mailSender.send(mimeMessage);
}
```

3.4 发送带内嵌图片的邮件

```java
public void sendInlineMail() throws MessagingException {
    MimeMessage message = mailSender.createMimeMessage();
    MimeMessageHelper helper = new MimeMessageHelper(message, true);
    
    helper.setSubject("带图片的邮件");
    helper.setTo("receiver@example.com");
    helper.setFrom("sender@qq.com");
    
    // HTML内容中使用CID引用图片
    String content = "<html><body>"
        + "<h3>这是一封带图片的邮件</h3>"
        + "<img src=''cid:imageId'' />"
        + "</body></html>";
    helper.setText(content, true);
    
    // 添加内嵌图片（第二个参数是CID，与HTML中的cid对应）
    helper.addInline("imageId", new File("C:/images/logo.png"));
    
    mailSender.send(message);
}
```

3.5 发送邮件工具类完整示例

```java
@Service
@Slf4j
public class MailService {
    
    @Autowired
    private JavaMailSender mailSender;
    
    @Value("${spring.mail.username}")
    private String from;
    
    /**
     * 发送简单邮件
     */
    public void sendSimpleMail(String to, String subject, String content) {
        try {
            SimpleMailMessage message = new SimpleMailMessage();
            message.setFrom(from);
            message.setTo(to);
            message.setSubject(subject);
            message.setText(content);
            mailSender.send(message);
            log.info("简单邮件发送成功 -> {}", to);
        } catch (Exception e) {
            log.error("发送简单邮件失败", e);
        }
    }
    
    /**
     * 发送HTML邮件
     */
    public void sendHtmlMail(String to, String subject, String htmlContent) {
        try {
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
            helper.setFrom(from);
            helper.setTo(to);
            helper.setSubject(subject);
            helper.setText(htmlContent, true);
            mailSender.send(message);
            log.info("HTML邮件发送成功 -> {}", to);
        } catch (MessagingException e) {
            log.error("发送HTML邮件失败", e);
        }
    }
    
    /**
     * 发送带附件的邮件
     */
    public void sendAttachmentMail(String to, String subject, String content, 
                                   Map<String, File> attachments) {
        try {
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
            helper.setFrom(from);
            helper.setTo(to);
            helper.setSubject(subject);
            helper.setText(content, true);
            
            // 添加附件
            for (Map.Entry<String, File> entry : attachments.entrySet()) {
                helper.addAttachment(entry.getKey(), entry.getValue());
            }
            
            mailSender.send(message);
            log.info("带附件邮件发送成功 -> {}", to);
        } catch (MessagingException e) {
            log.error("发送带附件邮件失败", e);
        }
    }
}
```



### 结合模板引擎
使用Thymeleaf模板

```xml
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-thymeleaf</artifactId>
</dependency>

```

邮件模板（mail-template.html）：

```html
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
</head>
<body>
    <h3 th:text="${title}"></h3>
    <p>尊敬的 <span th:text="${username}"></span>，您好！</p>
    <p th:text="${content}"></p>
    <a th:href="${link}">点击验证</a>
</body>
</html>

```

发送模板邮件：

```java
@Service
public class TemplateMailService {
    
    @Autowired
    private JavaMailSender mailSender;
    
    @Autowired
    private SpringTemplateEngine templateEngine;
    
    public void sendTemplateMail(String to, String username, String link) {
        try {
            // 构建模板数据
            Context context = new Context();
            context.setVariable("title", "欢迎注册");
            context.setVariable("username", username);
            context.setVariable("content", "请点击下方链接完成验证");
            context.setVariable("link", link);
            
            // 渲染模板
            String htmlContent = templateEngine.process("mail-template", context);
            
            // 发送邮件
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
            helper.setFrom("your-email@qq.com");
            helper.setTo(to);
            helper.setSubject("注册验证邮件");
            helper.setText(htmlContent, true);
            
            mailSender.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}
```



### 结合异步任务
发送邮件是耗时操作（网络IO），建议使用异步方式避免阻塞主线程。

```java
// 1. 启动类添加 @EnableAsync
@SpringBootApplication
@EnableAsync
public class Application {
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}

// 2. 邮件服务方法添加 @Async
@Service
public class AsyncMailService {
    
    @Autowired
    private JavaMailSender mailSender;
    
    @Async
    public void sendMailAsync(String to, String subject, String content) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom("your-email@qq.com");
        message.setTo(to);
        message.setSubject(subject);
        message.setText(content);
        mailSender.send(message);
    }
}
```

**核心要点：**

+ 密码使用**授权码**而非登录密码
+ QQ邮箱需要开启SSL
+ 复杂邮件使用 `MimeMessageHelper`
+ 生产环境建议异步处理 + 模板引擎





## 定时任务
### 概述
Spring Boot 提供了 `@Scheduled` 注解，可以非常方便地实现定时任务功能，底层基于 Spring 的 TaskScheduler 实现。

**应用场景：**

+ 定时备份数据
+ 定时发送邮件/消息
+ 定时统计数据
+ 定时清理临时文件
+ 定时同步数据



### 快速开始
#### 开启定时任务支持
在启动类或配置类上添加 `@EnableScheduling` 注解：

```java
@SpringBootApplication
@EnableScheduling  // 开启定时任务
public class Application {
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
```

#### 2.2 创建定时任务
```java
@Component
@Slf4j
public class MyScheduledTask {
    
    /**
     * 固定延迟：每5秒执行一次（上次执行结束后等待5秒）
     */
    @Scheduled(fixedDelay = 5000)
    public void task1() {
        log.info("固定延迟任务执行：{}", new Date());
    }
    
    /**
     * 固定频率：每3秒执行一次（不管上次是否执行完）
     */
    @Scheduled(fixedRate = 3000)
    public void task2() {
        log.info("固定频率任务执行：{}", new Date());
    }
    
    /**
     * 初始延迟：启动后等待2秒再开始执行
     */
    @Scheduled(initialDelay = 2000, fixedRate = 5000)
    public void task3() {
        log.info("延迟启动任务执行：{}", new Date());
    }
    
    /**
     * Cron表达式：每天上午10:30执行
     */
    @Scheduled(cron = "0 30 10 * * ?")
    public void task4() {
        log.info("Cron定时任务执行：{}", new Date());
    }
}
```



### Cron表达式详解
#### 3.1 Cron表达式格式
```plain
秒 分 时 日 月 周 年(可选)
│ │ │ │ │ │
│ │ │ │ │ └── 星期 (0-7, 0和7都表示周日)
│ │ │ │ └──── 月份 (1-12)
│ │ │ └────── 日期 (1-31)
│ │ └──────── 小时 (0-23)
│ └────────── 分钟 (0-59)
└──────────── 秒 (0-59)
```

#### 3.2 特殊字符说明
| 字符 | 含义 | 示例 |
| --- | --- | --- |
| `*` | 所有值 | `*` 表示每一秒/分/时... |
| `?` | 不指定值 | 常用于日期和星期冲突时 |
| `-` | 范围 | `10-12` 表示10到12点 |
| `,` | 列举 | `1,3,5` 表示1,3,5 |
| `/` | 间隔 | `0/15` 表示每隔15分钟 |
| `L` | 最后 | 月份中的最后一天 |
| `W` | 工作日 | 最近的工作日 |
| `#` | 第几个 | 第几个星期几 |


#### 3.3 常用Cron表达式示例
```java
// 每5秒执行一次
@Scheduled(cron = "0/5 * * * * ?")

// 每分钟的第30秒执行
@Scheduled(cron = "30 * * * * ?")

// 每5分钟执行一次
@Scheduled(cron = "0 0/5 * * * ?")

// 每小时的第0分0秒执行
@Scheduled(cron = "0 0 * * * ?")

// 每天凌晨2点执行
@Scheduled(cron = "0 0 2 * * ?")

// 每周一上午10:15执行
@Scheduled(cron = "0 15 10 ? * MON")

// 每月1号凌晨1点执行
@Scheduled(cron = "0 0 1 1 * ?")

// 每年3月20日上午10:30执行
@Scheduled(cron = "0 30 10 20 3 ?")

// 工作日每天上午9点到下午5点，每半小时执行
@Scheduled(cron = "0 0/30 9-17 * * MON-FRI")

// 每个月最后一个周五上午10点执行
@Scheduled(cron = "0 0 10 ? * 6L")

// 每天上午10点，下午2点，下午4点执行
@Scheduled(cron = "0 0 10,14,16 * * ?")
```

#### 3.4 Cron在线生成器
推荐使用在线工具生成Cron表达式：

+ [https://cron.qqe2.com/](https://cron.qqe2.com/)
+ [https://www.bejson.com/othertools/cron/](https://www.bejson.com/othertools/cron/)



### 配置线程池
默认情况下，Spring Boot 使用单线程执行所有定时任务。如果一个任务执行时间过长，会阻塞其他任务。

#### 4.1 配置自定义线程池
```java
@Configuration
@EnableScheduling
public class ScheduledConfig implements SchedulingConfigurer {
    
    @Override
    public void configureTasks(ScheduledTaskRegistrar taskRegistrar) {
        taskRegistrar.setScheduler(taskExecutor());
    }
    
    @Bean(destroyMethod = "shutdown")
    public Executor taskExecutor() {
        return Executors.newScheduledThreadPool(10);  // 10个线程的线程池
    }
}
```

#### 4.2 使用配置文件方式（application.yml）
```yaml
spring:
  task:
    scheduling:
      pool:
        size: 10                    # 线程池大小
      thread-name-prefix: scheduled-task-  # 线程名称前缀
      shutdown:
        await-termination: true     # 等待任务执行完毕再关闭
        await-termination-period: 30s  # 最大等待时间
```



### 五、动态定时任务
#### 5.1 从配置文件读取Cron表达式
```java
@Component
@Slf4j
public class DynamicScheduledTask {
    
    @Scheduled(cron = "${task.cron:0 0 2 * * ?}")  // 从配置文件读取，默认凌晨2点
    public void taskFromConfig() {
        log.info("从配置文件读取的定时任务执行");
    }
}
```

**application.yml：**

```yaml
task:
  cron: 0 0/5 * * * ?  # 每5分钟执行一次
```

#### 5.2 编程式动态修改定时规则
```java
@Component
@Slf4j
public class ReScheduledTask {
    
    @Autowired
    private ThreadPoolTaskScheduler taskScheduler;
    
    private ScheduledFuture<?> future;
    
    /**
     * 启动定时任务
     */
    public void startTask(String cron) {
        if (future != null && !future.isCancelled()) {
            future.cancel(false);  // 取消现有任务
        }
        
        // 解析Cron表达式
        CronTrigger trigger = new CronTrigger(cron);
        
        // 启动新任务
        future = taskScheduler.schedule(() -> {
            log.info("动态定时任务执行，时间：{}", new Date());
            // 执行具体业务逻辑
        }, trigger);
    }
    
    /**
     * 停止任务
     */
    public void stopTask() {
        if (future != null && !future.isCancelled()) {
            future.cancel(false);
            log.info("定时任务已停止");
        }
    }
}
```

**调用示例：**

```java
@RestController
public class TaskController {
    
    @Autowired
    private ReScheduledTask reScheduledTask;
    
    @PostMapping("/task/start")
    public String startTask(@RequestParam String cron) {
        reScheduledTask.startTask(cron);
        return "定时任务已启动，Cron：" + cron;
    }
    
    @PostMapping("/task/stop")
    public String stopTask() {
        reScheduledTask.stopTask();
        return "定时任务已停止";
    }
}
```

#### 5.3 基于接口的动态任务
```java
@Component
@Slf4j
public class DynamicTask implements SchedulingConfigurer {
    
    private String cron = "0/5 * * * * ?";  // 默认每5秒
    
    @Override
    public void configureTasks(ScheduledTaskRegistrar taskRegistrar) {
        taskRegistrar.addTriggerTask(
            () -> {
                // 任务逻辑
                log.info("动态Cron任务执行：{}", new Date());
            },
            triggerContext -> {
                // 动态获取Cron表达式
                CronTrigger trigger = new CronTrigger(cron);
                return trigger.nextExecutionTime(triggerContext);
            }
        );
    }
    
    // 提供修改Cron的方法
    public void updateCron(String newCron) {
        this.cron = newCron;
        log.info("Cron已更新为：{}", newCron);
    }
}
```



### 六、异步定时任务
结合 `@Async` 实现异步执行，避免阻塞定时任务线程：

```java
@Component
@Slf4j
public class AsyncScheduledTask {
    
    @Async  // 异步执行
    @Scheduled(cron = "0/10 * * * * ?")
    public void asyncTask() {
        log.info("异步定时任务开始执行，线程：{}", Thread.currentThread().getName());
        // 模拟长时间任务
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        log.info("异步定时任务执行完成");
    }
}
```

**注意：** 需要先开启异步支持 `@EnableAsync`



### 七、分布式环境下的定时任务
在分布式环境中，多个实例同时执行定时任务会造成数据重复处理。解决方案：

#### 7.1 使用ShedLock
```xml
<dependency>
    <groupId>net.javacrumbs.shedlock</groupId>
    <artifactId>shedlock-spring</artifactId>
    <version>4.42.0</version>
</dependency>
<dependency>
    <groupId>net.javacrumbs.shedlock</groupId>
    <artifactId>shedlock-provider-jdbc-template</artifactId>
    <version>4.42.0</version>
</dependency>

```

**配置：**

```java
@Configuration
@EnableScheduling
@EnableSchedulerLock(defaultLockAtMostFor = "30s")
public class ShedLockConfig {
    
    @Bean
    public LockProvider lockProvider(DataSource dataSource) {
        return new JdbcTemplateLockProvider(dataSource);
    }
}
```

**使用：**

```java
@Component
public class DistributedTask {
    
    @Scheduled(cron = "0 0 2 * * ?")
    @SchedulerLock(name = "backupTask", lockAtMostFor = "5m", lockAtLeastFor = "1m")
    public void backupTask() {
        // 这个任务在同一时间只会有一个实例执行
        log.info("分布式定时任务执行");
    }
}
```

#### 7.2 使用Redis分布式锁
```java
@Component
@Slf4j
public class RedisDistributedTask {
    
    @Autowired
    private StringRedisTemplate redisTemplate;
    
    @Scheduled(cron = "0/30 * * * * ?")
    public void taskWithRedisLock() {
        String lockKey = "task:backup";
        String lockValue = UUID.randomUUID().toString();
        
        // 尝试获取锁，过期时间10秒
        Boolean success = redisTemplate.opsForValue()
            .setIfAbsent(lockKey, lockValue, Duration.ofSeconds(10));
        
        if (Boolean.TRUE.equals(success)) {
            try {
                log.info("获取锁成功，执行任务");
                // 执行业务逻辑
            } finally {
                // 释放锁
                String script = "if redis.call(''get'', KEYS[1]) == ARGV[1] then return redis.call(''del'', KEYS[1]) else return 0 end";
                redisTemplate.execute(new DefaultRedisScript<>(script, Long.class), 
                    Collections.singletonList(lockKey), lockValue);
            }
        } else {
            log.info("未获取到锁，跳过执行");
        }
    }
}
```



### 八、注意事项与最佳实践
#### 8.1 避免长时间任务阻塞
```java
// ❌ 错误：长时间任务会阻塞其他定时任务
@Scheduled(fixedRate = 5000)
public void badTask() {
    Thread.sleep(30000);  // 执行30秒
}

// ✅ 正确：使用异步或另起线程
@Async
@Scheduled(fixedRate = 5000)
public void goodTask() {
    // 长时间任务
}
```

#### 8.2 捕获异常
```java
@Scheduled(cron = "0/10 * * * * ?")
public void safeTask() {
    try {
        // 业务逻辑
    } catch (Exception e) {
        log.error("定时任务执行失败", e);
        // 可以发送告警通知
    }
}
```

#### 8.3 避免任务重叠执行
```java
private AtomicBoolean running = new AtomicBoolean(false);

@Scheduled(fixedDelay = 5000)  // 使用fixedDelay确保上一次执行完成
public void nonOverlapTask() {
    if (!running.compareAndSet(false, true)) {
        log.warn("上次任务尚未完成，跳过本次执行");
        return;
    }
    try {
        // 业务逻辑
    } finally {
        running.set(false);
    }
}
```

#### 8.4 合理的Cron表达式
+ 避免在高并发时段执行耗时任务
+ 定时任务尽量在凌晨业务低峰期执行
+ 设置合理的超时时间



### 九、监控与管理
```java
@Component
@Slf4j
public class ScheduledTaskMonitor {
    
    @EventListener
    public void handleTaskStart(ScheduledTaskRegistrationEvent event) {
        log.info("定时任务注册：{}", event.getTask());
    }
    
    // 通过Actuator端点查看任务信息
    @Autowired
    private ScheduledTaskRegistrar taskRegistrar;
    
    public List<String> getRunningTasks() {
        return taskRegistrar.getScheduledTasks().stream()
            .map(Object::toString)
            .collect(Collectors.toList());
    }
}
```



### 十、总结
| 参数 | 说明 | 示例 |
| --- | --- | --- |
| `fixedDelay` | 上次结束到下次开始的间隔 | `fixedDelay = 5000` |
| `fixedRate` | 固定频率执行 | `fixedRate = 5000` |
| `initialDelay` | 初始延迟启动 | `initialDelay = 3000` |
| `cron` | Cron表达式 | `cron = "0 0 2 * * ?"` |


**核心要点：**

1. 启动类添加 `@EnableScheduling`
2. 任务方法添加 `@Scheduled`
3. 默认单线程执行，注意配置线程池
4. 分布式环境需要考虑锁机制
5. 长时间任务建议使用异步
6. 做好异常处理和日志记录
', 0, NOW());

INSERT INTO `note` (`id`, `author_id`, `title`, `content`, `like_count`, `created_at`)
VALUES (13, 1003, '多线程', '# 概述
## Process(进程),Thread(线程)
进程是系统分配的，线程在进程里面，至少有一个main（主）线程

+ 线程是独立的执行路径
+ 在程序运行时，即使没有创建线程，后台也会有多个线程，如主线程，gc线程(垃圾回收线程)；
+ main()称之为主线程，为系统的入口，用于执行整个程序
+ 在一个进程中，如果开辟了多个线程，线程的运行由调度器安排调度，调度器是与操作系统紧密相关的，先后顺序是不能被人为的干预的
+ 对同一份资源操作时，会存在资源抢夺的问题，需要加入并发控制
+ 线程会带来额外的开销，如cpu调度时间，并发控制开销
+ 每个线程在自己的工作内存交互，内存控制不当会造成数据不一致

# 三种创建方式
## Thread class
继承Thread类，重写run()方法， 调用Start开启线程

线程开启不一定立即执行，有CPU调度执行

```java

public class TestThread1 extends Thread{
    @Override
    public void run() {
        for (int i = 0; i < 200; i++) {
            System.out.println("这是run方法"+i);
        }
    }

    public static void main(String[] args) {
        // 创建一个线程对象
        TestThread1 t = new TestThread1();

        // 调用start()方法开启线程
        t.start();

        for (int i = 0; i < 2000; i++) {
            System.out.println("这是主线程"+i);
        }
    }
}

```

同时下载三张图片

```java
package com.jie.thread;

import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.net.URL;

// 联系Thread， 实现多线程同步下载图片
public class TestThread2 extends Thread {
    private String name;  // 保存的文件名
    private String url;   // 网络图片地址

    public TestThread2(String name, String url) {
        this.url = url;
        this.name = name;
    }


    @Override
    public void run() {
        WebDownloader downloader = new WebDownloader();
        downloader.download(url, name);
        System.out.println("下载了文件名wield: " + name);
    }

    public static void main(String[] args) {
        TestThread2 t1= new TestThread2("2.jpg", "https://ts1.tc.mm.bing.net/th/id/OIP-C.TUkeTnzawcsiD2PSuz3UnAHaE8?w=280&h=211&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2");
        TestThread2 t2 = new TestThread2("2.jpg", "https://ts1.tc.mm.bing.net/th/id/OIP-C.TUkeTnzawcsiD2PSuz3UnAHaE8?w=280&h=211&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2");
        TestThread2 t3 = new TestThread2("2.jpg", "https://ts1.tc.mm.bing.net/th/id/OIP-C.TUkeTnzawcsiD2PSuz3UnAHaE8?w=280&h=211&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2");

        t1.start();
        t2.start();
        t3.start();
    }
}

// 下载器
class WebDownloader{
    public void download(String url, String name){
        try {
            FileUtils.copyURLToFile(new URL(url), new File(name));
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("IO异常，downloader方法出现问题");
        }
    }
}

```

## Runnable 接口  (建议使用)
### 初始Runable
实现runnable接口，重写run方法，执行线程需要丢入runnable接口实现类

```java
package com.jie.thread;

public class TestThread3 implements Runnable {
    @Override
    public void run() {
        for (int i = 0; i < 20; i++) {
            System.out.println("这是run方法" + i);
        }
    }

    public static void main(String[] args) {
        //创建润那边了接口的实现类对象
        TestThread1 testThread1 = new TestThread1();

        // 创建线程对象，通过线程对象来开启我们的线程，代理
        //Thread thread = new Thread(testThread1);
        //thread.start();

        new Thread(testThread1).start();


        for (int i = 0; i < 20; i++) {
            System.out.println("这是主线程" + i);
        }
    }
}

```

发现问题：多个线程同时操作同一个资源的情况下，线程不安全，数据紊乱

```java
package com.jie.thread;

// 多个线程同时操作一个对象
// 买火车票
public class TestThread4 implements Runnable {

    //票数
    private int ticketNums = 10;


    @Override
    public void run() {
        while (true) {

            if (ticketNums <= 0) {
                break;
            }
            try {
                Thread.sleep(200);
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
            System.out.println(Thread.currentThread().getName()+"-->拿到了第"+ticketNums--+"票");
        }
    }

    public static void main(String[] args) {
        TestThread4 ticket = new TestThread4();
        new Thread(ticket,"小明").start();
        new Thread(ticket,"老师").start();
        new Thread(ticket,"黄牛党").start();
    }
}
```

### 龟兔赛跑
```java
package com.jie.thread;

// 模拟龟兔赛跑
public class Race implements Runnable {

    // 胜利者
    private static String winner;

    @Override
    public void run() {
        for (int i = 0; i <= 100; i++) {

            // 模拟兔子睡觉
            if (Thread.currentThread().getName().equals("兔") && i%10==0) {
                try {
                    Thread.sleep(10);
                } catch (InterruptedException e) {
                    throw new RuntimeException(e);
                }
            }

            // 判断比赛是否结束
            boolean flag = gameOver(i);
            // 如果比赛结束, 久停止程序
            if (flag) {
                break;
            }

            System.out.println(Thread.currentThread().getName() + "跑了-->" + i + "步");
        }
    }

    private boolean gameOver (int steps){
        if (winner != null) { // 已经存在胜利者
            return true;
        }

        if(steps >= 100){
            winner = Thread.currentThread().getName();
            System.out.println("winner is " + winner);
            return true;

        }
        return false;
    }

    public static void main(String[] args) {
        Race race = new Race();
        new Thread(race,"龟").start();
        new Thread(race,"兔").start();
    }
}
```

## callable 接口
步骤

+ 连接接口 Callable
+ 重写call方法，需要抛出异常
+ 创建执行服务: ExecutorService ser =  Executors.newFixedThreadPool(nums)
+ 提交执行 Future<Boolean> result1 = ser.submit(1);
+ 获取结果 Boolean r1 = result1.get();
+ 关闭服务 ser.shutdownNow();

# 线程模式
## 静态代理模式
+ 目标对象和代理对象都需要实现同一个接口
+ 代理对象要代理真实角色
+ 好处
    - 代理对象可以做很多真实对象做不到的事情
    - 真实对象可以专注做自己的事情

## Lamda表达式
### 函数式接口（functional Interface）
#### 定义
+ 任何接口，如果只包含唯一一个抽象方法，那么它就是一个函数式接口

```java
public interface Runnable{
    public abstract void run();
}
```

+ 对于函数式接口，我们可以通过lambda表达式来创建该接口的对象

### 为什么要用lamda表达式 ()->
+ 避免匿名内部类定义过多
+ 可以让你的代码看起来很简洁
+ 去掉了一堆没有意义的代码，只留下核心的逻辑

### lambda的推导过程
```java
package com.jie.thread;

// 推导 lambda 表达式
public class TestLambda1 {

    // 静态内部类
    static class Like2 implements ILike{

        @Override
        public void Lambda() {
            System.out.println("i like lambda2");
        }
    }


    public static void main(String[] args) {
        ILike like = new Like();
        like.Lambda();

        like = new Like2();
        like.Lambda();

        // 局部内部类
        class Like3 implements ILike{
            @Override
            public void Lambda() {
                System.out.println("i like lambda3");
            }
        }

        like = new Like3();
        like.Lambda();

        // 匿名内部类，没有类的名称，必须借助接口或者父类
        like = new ILike() {
            @Override
            public void Lambda() {
                System.out.println("i like lambda4");
            }
        };
        like.Lambda();

        // 用lambda简化
        like = ()->{
            System.out.println("i like lambda5");
        };
        like.Lambda();
    }

}


// 定义一个函数式接口

interface ILike{
    void Lambda();
}


// 实现类
class Like implements ILike{

    @Override
    public void Lambda() {
        System.out.println("I like Lambda");
    }
}


```

### lanbda 的简化过程
```java
package com.jie.thread;

public class TestLambda2 {
    public static void main(String[] args) {
        Ilove love = null;
        
        // 1、lambda表示简化
        love =(int a)->{
            System.out.println("i love you-->"+a);
        };
        // 简化1、去掉参数类型
        love = (a)->{
            System.out.println("i love you-->"+a);
        };

        // 简化2、简化括号
        love = a -> {
            System.out.println("i love you-->"+a);
        };

        // 简化3、简化花括号
        love = a -> System.out.println("i love you-->"+a);

        love.love(250);
    }
}

interface Ilove {
    void love(int a);
}
```

### 总结
+ lambda表达式只能有一行代码的情况下才能简化成一行，如果有多行，那么就用代码块包裹
+ 前提是接口为函数式接口
+ 多个参数也可以去掉参数类型，要去掉就都去掉，多个参数必须加上括号
+

# 线程状态
## 线程的五个状态
<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1744267800072-d86a1671-1801-4bc5-868d-6c7485970c8b.png" width="1171.2" title="" crop="0,0,1,1" id="u4ff70ecc" class="ne-image">



## 线程方法
+ setPriority(int newPriorith)：更改线程的优先级
+ static void sleep(long millis)：在指定的毫秒数内让当前正在执行的线程体休眠
+ void jion()：等待线程终止
+ static void yield()：暂停当前正在执行的线程对象，并执行其他的线程
+ void interrupt()：中断线程，不用这个方式
+ boollean isAlive()：测试线程是否处于活动状态

## 线程停止
### 测试stop
1.建议线程正常停止---> 利用次数，不建议死循环

2.建议使用标志位---> 设置一个标志位

3.不要使用stop或者destroy等过时或JIK不建议的方法

```java
package com.jie.thread;

public class TestStop implements Runnable {
    //设置一个标识位
    private Boolean flag = true;

    @Override
    public void run() {
        int i = 0;
        
        //线程体使用该标识
        while (flag) {
            System.out.println("run...Thread..."+i++);
        }
    }

    // 设置一个公开的方法停止线程，转换表示位
    public void stop() {
        flag = false;
        System.out.println("stop....");
    }

    public static void main(String[] args) {
        TestStop t = new TestStop();
        new Thread(t).start();

        // 设置主线程
        for (int i = 0; i < 1000; i++) {
            System.out.println("main...Thread..."+i);
            if (i==900){
                t.stop();
            }
        }
    }
}

```

## 线程休眠
+ sleep(时间)指定当前线程阻塞的毫秒数；
+ sleep存在异常InterruptedException；
+ sleep时间达到后线程进入就绪状态
+ sleep可以模拟网络延时，倒计时等
+ 每一个对象都有一个锁，sleep不会释放锁；

```java
package com.jie.thread;


import java.text.SimpleDateFormat;
import java.util.Date;

public class TestSleep2 {
    public static void main(String[] args) {
        //获取系统当前时间
        Date startTime = new Date(System.currentTimeMillis());

        while (true) {
            try {
                Thread.sleep(1000);
                System.out.println(new SimpleDateFormat("HH:mm:ss").format(startTime));
                startTime = new Date(System.currentTimeMillis()); // 更新时间
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }

    }

    public void tenDown() throws InterruptedException {
        int num = 10;
        while (true) {
            Thread.sleep(1000);
            System.out.println(num--);
            if (num <= 0) {
                break;
            }
        }
    }
}
```

## 线程礼让
+ 礼让线程，让当前正在执行的线程暂停，但不阻塞
+ 让线程从运行状态转为就绪状态
+ **让cpu重新调度，礼让不一定成功，看CPU心情**

```java
package com.jie.thread;

public class TestYield {
    public static void main(String[] args) {
        MyYield myYield1 = new MyYield();
        new Thread(myYield1, "a").start();
        new Thread(myYield1, "b").start();


    }
}

class MyYield implements Runnable {

    @Override
    public void run() {
        System.out.println(Thread.currentThread().getName()+"线程开始执行");
        Thread.yield();//礼让
        System.out.println(Thread.currentThread().getName()+"线程停止执行");
    }
}
```

## Join
+ Join合并线程，待此线程执行完后，再执行其他线程，其他线程阻塞
+ 线程的插队

```java
package com.jie.thread;

// 测试Join方法，想象成插队
public class TestJoin implements Runnable{
    @Override
    public void run() {
        for (int i = 0; i < 1000; i++) {
            System.out.println("线程vip来了-->"+i);
        }
    }

    public static void main(String[] args) throws InterruptedException {
        TestJoin t = new TestJoin();
        Thread t1 = new Thread(t);
        t1.start();
        for (int i = 0; i < 1000; i++) {
            if(i==200){
                t1.join();
            }
            System.out.println("主线程执行-->"+i);
        }
    }
}
```

## 线程状态观测state
+ Thread.State
    - NEW：尚未启动的线程处于此状态
    - RUNNABLE：在Java虚拟机中执行的线程处于此状态
    - BLOCKED：被阻塞等待监视器锁定的线程处于此状态
    - WAITING：在等待另一个线程执行特定动作的线程处于此状态
    - TIMED_WAITING：正在等待另一个线程执行动作达到制定等待时间的线程处于此状态
    - TERMINATED：已退出的线程处于此状态

```java
package com.jie.thread;

//观察测试线程的状态
public class TestState {
    public static void main(String[] args) {
        Thread thread = new Thread(()->{
            for (int i = 0; i < 5; i++) {
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    throw new RuntimeException(e);
                }
            }
            System.out.println("//////////");
        });

        // 线程未启动的状态
        Thread.State state = thread.getState();
        System.out.println(state);

        // 线程启动后的状态
        thread.start();
        // 更新线程的状态
        state = thread.getState();
        System.out.println(state);

        while (state != Thread.State.TERMINATED) {
            try {
                Thread.sleep(100);
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
            state = thread.getState();
            System.out.println(state);
        }

        // 已经启动后的线程不能再次被启动
        thread.start();

    }
}

```

## 线程优先级PRIORITY
+ 线程优先级用数字表示，范围从1`10
    - Thread.MIN_PRIORITY=1;
    - Thread.MAX_PRIORITY=10;
    - Thread.NORM_PRIORITY=5;
+ 使用以下方式更改或获取优先级
    - getPriority(), setPriority(int xxx)
+ 优先级的设定建议在start()调度前

```java
package com.jie.thread;

// 测试线程的优先级
public class TestPriority {
    public static void main(String[] args) {
        System.out.println(Thread.currentThread().getName()+"-->"+Thread.currentThread().getPriority());
        MyPriority myPriority = new MyPriority();
        Thread t1 = new Thread(myPriority);
        Thread t2 = new Thread(myPriority);
        Thread t3 = new Thread(myPriority);
        Thread t4 = new Thread(myPriority);
        Thread t5 = new Thread(myPriority);
        Thread t6 = new Thread(myPriority);

        t1.start();

        t2.setPriority(Thread.MAX_PRIORITY);
        t2.start();

        t3.setPriority(Thread.MIN_PRIORITY);
        t4.start();

        t5.setPriority(8);
        t5.start();

        t6.setPriority(Thread.NORM_PRIORITY);
        t6.start();
    }

}

class MyPriority implements Runnable {

    @Override
    public void run() {
        System.out.println(Thread.currentThread().getName()+"-->"+Thread.currentThread().getPriority());
    }
}
```

## 守护线程 daemon


+ 线程分为用户线程和守护线程
+ 虚拟机必须确保用户线程执行完毕
+ 虚拟机不用等待守护线程支持完毕

```java
package com.jie.thread;

public class TestDaemon {
    public static void main(String[] args) {

        God god = new God();

        Thread thread = new Thread(god);
        thread.setDaemon(true); // 默认我false 表示用户线程
        thread.start();

        new Thread(new You()).start();
    }
}

class God implements Runnable {

    @Override
    public void run() {
        while (true) {
            System.out.println("上帝守护每一天");
        }
    }
}

class You implements Runnable {
    @Override
    public void run() {
        for (int i = 0; i < 100; i++) {
            System.out.println("开心的活着每一天");
        }
        System.out.println("run over");
    }
}

```

# 线程同步
## 同步锁synchronized
+ 由于我们可以通过private关键字来保证数据对象只能憋方法访问，所以我们只需要针对方法提出一套机制，这套机制是 synchronized 关键字， 它包括两种用法：synchronized方法和synchronized块

方法同步`public synchronized void method(int args){}`

+ synchronized方法控制对“对象”的访问，，每个对象对应一把锁，每个synchronized方法都必须获得调用该方法的对象的锁才能执行，否则线程会阻塞，方法一旦执行，就独占该锁，直到该方法释放锁，后面阻塞的线程才能获得这个锁，继续执行
+ 缺陷：若将一个大的方法声明为synchronized会影响效率
+ 方法里面需要修改的内容才需要锁，锁的太多，浪费资源

## 死锁
### 产生死锁的必要条件
+ 互斥条件：一个资源每次只能被一个进程使用
+ 请求保持条件：一个进程因请求资源而阻塞时，对方获得的资源保持不放
+ 不剥夺条件：进程已获得的资源，在未使用完之前不能强行剥夺
+ 循环等待条件：若干进程之间形成一种头尾相连的循环等待资源关系

```java
package com.jie.syn;

// 多个线程相互抱着对方需要的资源，然后形成僵持
public class DeadLock {
    public static void main(String[] args) {
        Makeup makeup = new Makeup(0,"name1");
        Makeup makeup2 = new Makeup(1,"name2");

        new Thread(makeup).start();
        new Thread(makeup2).start();
    }

}

// 镜子
class Mirror{}

//口红
class Lipstice{}

class Makeup extends Thread{
    int count;    //获得的状态
    String name;  //获得的人名

    public Makeup(int count,String name){
        this.count=count;
        this.name=name;
    }

    @Override
    public void run() {
        try {
            makeup();
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    // 需要的资源只有一种，用static来保证只有一份
    static Mirror mirror = new Mirror();
    static Lipstice lipstice = new Lipstice();

    private void makeup() throws InterruptedException {
        if(count == 0){
            synchronized(mirror){
                System.out.println(this.name+"锁住了镜子");
                Thread.sleep(1000);
                synchronized(lipstice){
                    System.out.println(this.name+"锁住了口红");
                }
            }
        }else{
            synchronized(lipstice){
                System.out.println(this.name+"锁住了口红");
                Thread.sleep(2000);
                synchronized(mirror){
                    System.out.println(this.name+"锁住了镜子");
                }
            }
        }
    }
}
```

## Lock(锁)
+ 通过显式定义同步锁对象来实现同步。同步锁使用Lock对象充当
+ java.util.concurrent.lock.Lock接口是控制多个线程对共享资源进行访问的工具。锁提供了对共享资源的独占访问，每次只能有一个线程多Lock对象加锁，线程开始访问共享资源之前应先获得Lock对象
+ ReentrantLock 类实现了Lock，它拥有与synchronized相同的并发和内存语义，在实现安全的控制中，比较常用的是ReentrantLock，可以显示加锁，释放锁

```java
package com.jie.syn;


import java.util.concurrent.locks.ReentrantLock;

//测试Lock锁
public class TestLock {
    public static void main(String[] args) {
        Lock lock = new Lock();
        new Thread(lock).start();
        new Thread(lock).start();
        new Thread(lock).start();
    }
}

class Lock implements Runnable {
    int ticketNums = 10;

    //定义Lock锁
    private final ReentrantLock lock = new ReentrantLock();


    @Override
    public void run() {
        while (true) {
            try {
                lock.lock();  //加锁
                if (ticketNums > 0) {
                    try {
                        Thread.sleep(100);
                    } catch (InterruptedException e) {
                        throw new RuntimeException(e);
                    }
                    System.out.println("获得了" + ticketNums--);
                }else {
                    break;
                }
            }finally {
                lock.unlock();  //解锁
            }
        }
    }
}
```

## synchronized与Lock的比较
+ Lock是显式死锁（手动开启和关闭）synchronized是隐式锁，出了作用域自动释放
+ Lock只有代码块有锁，synchronized有代码块锁和方法锁
+ 使用Lock锁，JVM将花费较少的时间来调度线程，性能更好。并且具有更好的扩展性

# 线程通信
## 线程中解决线程通信的方法
+ wait()：表示线程一直在等待，直到其他线程通知，与sleep不同，会释放锁
+ wait(long  timeout)：指定等待的毫秒数
+ notify()：唤醒一个处于等待状态的线程
+ notifyAll()：唤醒同一个对象上所有调用wait()方法的线程，优先级别高的线程优先调度
+ 注意：均是Object类的方法，都只能在同步方法或者同步代码快中使用，否则会抛出异常IIIegaIMonitorStateException

## 管理法
```java
package com.jie.syn;

// 测试：生产者消费者模型-->利用缓冲区解决：管程法
public class TestPC {
    public static void main(String[] args) {
        SynContainer container = new SynContainer();

        new Productor(container).start();
        new Consumer(container).start();
    }
}

//生产者
class Productor extends Thread {
    SynContainer container;

    public Productor(SynContainer container) {
        this.container = container;
    }
    
    // 生产
    public void run() {
        for (int i = 0; i < 100; i++) {
            container.push(new Chicken(i));
            System.out.println("生产了" + i+ "只鸡");
        }
    }

}


//消费者
class Consumer extends Thread {
    SynContainer container;
    public Consumer(SynContainer container) {
        this.container = container;
    }

    public void run() {
        for (int i = 0; i < 100; i++) {
            System.out.println("消费了-->"+ container.pop().id+"只鸡");

        }
    }
    
    

}

//产品
class Chicken {
    int id; //产品编号
    public Chicken(int id) {
        this.id = id;
    }
}

// 缓冲区
class SynContainer{

    // 需要一个容器大小
    Chicken[] chickens = new Chicken[10];
    //容器计数器
    int count = 0;



    // 需要生产者放入产品
    public synchronized void push(Chicken chicken) {
        // 如果容器满了，就需要等待消费者消费
        if (count == chickens.length) {
            // 通知消费者消费，生产者消费
            try {
                this.wait();
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }

        // 如果没有满，就需要丢入产品
        chickens[count] = chicken;
        count++;

        // 可以通知 消费者消费了
        this.notifyAll();
    }
    public synchronized Chicken pop() {
        // 判断消费者能否消费
        if (count == 0) {
            try {
                this.wait();
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
            //等待生产者生产，消费者等待
        }
        //如果可以消费
        count--;
        Chicken chicken = chickens[count];

        //吃完了，通知生产者生产
        this.notifyAll();
        return chicken;
    }
}
```

## 信号灯法
```java
package com.jie.syn;

// 生产者消费者问题：信号灯法
public class TestPC2 {
    public static void main(String[] args) {
        TV tv = new TV();
        new Player(tv).start();
        new Watcher(tv).start();
    }
}

// 生产者-->演员
class Player extends Thread {
    TV tv;
    public Player(TV tv) {
        this.tv = tv;
    }

    public void run() {
        for (int i = 0; i < 20; i++) {
            if (i % 2 == 0) {
                this.tv.play("快乐大本营");
            }else{
                this.tv.play("抖音：记录美好生活");
            }
        }
    }
}

// 消费者-->观众
class Watcher extends Thread {
    TV tv;
    public Watcher(TV tv) {
        this.tv = tv;
    }

    public void run() {
        for (int i = 0; i < 20; i++) {
            tv.watce();
        }
    }
}

// 产品-->节目
class TV {
    // 演员表演 观众等待
    // 观众观看 演员等待
    String voice; //表演的节目
    boolean flag = true;

    // 表演
    public synchronized void play(String voice) {
        if (!flag) {
            try {
                this.wait();
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }
        System.out.println("演员表演了" + voice);
        // 通知观众观看
        this.notifyAll(); //通知唤醒
        this.voice = voice;

        this.flag = !this.flag;
    }


    // 观看
    public synchronized void watce() {
        if (flag) {
            try {
                this.wait();
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }
        System.out.println("观看了" + voice);
        // 通知演员表演
        this.notifyAll();
        this.flag = !this.flag;
    }
}

```

# 线程池
## 使用线程池
+ 线程池相关API： ExecutorService和Executors
+ ExecutorService：真正的线程池接口，常用子类ThreadPoolExecutor
+ Executors：工具类，线程池的工厂类，用于创建并返回不同类型的线程池

```java
package com.jie.syn;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

// 测试线程池
public class TestPool {
    public static void main(String[] args) {
        // 1. 创建线程池
        // newFixedThreadPool 参数为：线程池大小
        ExecutorService service = Executors.newFixedThreadPool(10);

        service.execute(new MyThread());
        service.execute(new MyThread());
        service.execute(new MyThread());
        service.execute(new MyThread());

        // 2.关闭连接
        service.shutdown();
    }
}

class MyThread extends Thread {
    public void run() {
        System.out.println(Thread.currentThread().getName());
    }
}
```
', 0, NOW());

INSERT INTO `note` (`id`, `author_id`, `title`, `content`, `like_count`, `created_at`)
VALUES (14, 1004, 'JavaScript', '# 快速入门
## 引入JavaScript
+ 内部标签

```javascript
// <!--  script 标签内，写入JavaScript代码  -->
<script>
  alert(''Hello Wold'')
</script>
```

+ 外部引入

abs.js

```javascript
alert(''hello world'')
```

test.html

```html
<script src="../js/vendor/qj.js"></script>
```

## 基本语法如入门
```plain
<script>
  // 定义变量  变量类型 变量名 = 变量值；
  var score = 2;
  // 条件控制
  if (score>60 && score < 70) {
    alert("60~70");
  } else if (score>70 && score < 80){
    alert("70~80")
  } else {
    alert("other")
  }

  // console.log(score) 在浏览器的控制台打印！ sout
</script>
```

## 数据类型
数值，文本，图形，音频，视频......

**变量**

JavaScript中所有的变量使用var

**number**

js不区小数和整数， number

```plain
123  // 整数
123.1 // 浮点数
1.123e3 // 科学计数法
-99  // 复数
NaN // not a number
Infinity // 表示无限大
```

**字符串**

''abc''   "abc"

**布尔值**

true false

**与** **或 非**

&&  ||  ！

**比较运算符**

```plain
=   // 赋值
==  // 等于 类型不一样，值一样 结果为true
===  // 绝对等于 类型一样， 值一样 结果为true
```

NaN===NaNo  这个与所有的数值都相等，包括自己

`console.log((1/3)===(1-2/3))`

尽量避免使用浮点数进行运算，存在精度问题

`Math.abs((1/3)===(1-2/3))<0.00000000001`

**null 和 undefined**

+ null  空
+ undefined   未定义

**数组**

JS中不需要必须是相同类型

`var arr = [1, 2, 3, 4, ''hello'', ''str'']`

取数组下标 如果越界了 就会undefined

**对象**

对象是大括号，数组是中括号

每个属性必须用逗号隔开，最后一个不需要添加

```javascript
var person = {
  name: "suibian",
  age: 3,
  tags: [''js'', ''java'', ''web, ''...'']
}
```

取对象的值

```javascript
person.name
person.age
```

## 严格检查模式
```plain
<script>
  ''user strict''
  // ''user strict''; 严格检查模式，预防JavaScript的随意性倒置产生的一些问题
  // 必须写在JavaScript第一行
  // 局部变量建议使用 let 去定义
  // 全局变量
  i = 1;
  // 局部变量
  let i = 1;
</script>
```

# 数据类型
## 字符串
+ 正常字符串使用单引号或双引号包裹
+ 注意转义字符  \
    - \''
    - \n
    - \t
    - \u####    unicode编码
    - \x     ascll 字符
+ 多行字符串编写

```javascript
var msg = `
    hello
    world
    你好ya
    你好`
```

+ 模版字符串

```javascript
let name = "suibian";
let age = 3;
let msg = `你好，${name}`
console.log(msg)
```

+ 字符串长度

```javascript
str.lenght
```

+ 字符串的可变性，不可变
+ 大小写转换
    - student.toUpperCase()  转大写
    - student.toLowerCase()   转小写
+ student.indexOf(''t'')  获取字符位置/索引
+ student.substring(1,3)  截取字符串 左闭右开 

## 数组
+ Array可以包含任意的数据类型
    - var arr = [1, 2, 3, ''b'', ''string'']  // 通过下标取值和赋值
    - arr[2] ;
    - arr[3] = 1;
+ 长度
    - arr.length
    - 如果给arr.length 赋值，数组大小会发生变化，如果赋值过小，元素会丢失
+ indexOf()   通过元素获得下标索引
    - 字符串的"1"  和 数值 1 不一样
+ slice()  截取Array的一部分，返回一个新的数组  类似于String中的substring
+ push，pop
    - push()：压入到尾部
    - pop()：弹出尾部的一个元素
+ unshift()，shift() 头部
    - unshift()：压入到头部
    - shift()：弹出头部的一个元素
+ 排序 sort()
+ 元素反转 reverse()
+ concat() 拼接
    - arr.concat([1, 2, 3])
    - 并没有修改数组，只返回新的数组
+ 连接符join()
    - 打印拼接数组，使用特定的字符串连接
    - var arr = [''a'', ''b'', ''c'']
    - arr.join(''-'')
    - ''a-b-c''
+ 多维数组

## 对象
+ 若干个键值对

```javascript
var 对象名 = {
  属性名: 属性值,
  属性名: 属性值,
  属性名: 属性值
}
```

+ js中对象，{...}表示一个对象。键值对描述信息xxx：xxx，多个属性使用逗号隔开，最后一个属性不加逗号！
+ JavaScript中的所有键都是字符串，值是任意对象！
+ 对象赋值
    - person.name = "json";
+ 使用一个不存在的对象属性，不会报错 ！ undefined
+ 动态删除对象属性，通过delete删除对象的属性
    - delete person.name
+ 动态的添加，直接给新的属性添加值即可
    - person.name = "haha"
+ 判断属性值是否在这个对象中  xxx  in xxx
+ 判断一个属性是否是这个对象自身拥有的hasOwnProperty()
    - person.hasOwnProperty("name")

## 流程控制
+ if判断

```javascript
var age = 3;
if (age > 3){
  alert("haha");
} else if (age < 3) {
  alert("kuwa~");
} else {
  alert("suibian");
}
```

+ while循环，避免死循环

```javascript
var age =3;
while(age<100){
  age = age+1;
  console.log(age);
}

do {
  age = age+1;
  console.log(age);
} while(age<100)

```

+ for循环

```javascript
var age = 3;
for (let i = 1; i< 1; i++){
  console.log();
}



```

+ forEach() 循环

```javascript
var arr = [1231,2,12,412,4,42,22,32,32,31]

arr.forEach(function (value)) {
  console.log(arr);
}
```

+ for ...  in 

```javascript
var arr = [1231,2,12,412,4,42,22,32,32,31]

for(var num in arr){
  if (arr.hasOwnPropertu(num)){
    console.log("存在");
    console.log(arr[num]);
  }
}

```

## Map 和 Set
map

```javascript
var map = new Map([[''zhangsan'':  100], [''lisi'': 92]]);

var name = map.get(''zhangsan''); // 根据key获取value
map.set(''admin'': 123);  //新增或修改
map.delete("zhangsan"); // 删除
```

set：无序不重复的集合

```javascript
set.add(3);   // 添加
set.delete(1);   // 删除
console.log(set.has(3));  // 是否包含某个元素

```

## Interator
遍历数组

```javascript
var arr = [2, 3, 4];
for (let x of arr){
  console.log(x);
}
```

遍历Map

```javascript
var map = new Map([[''zhangsan'':  100], [''lisi'': 92]]);

for (let x of map){
  console.log(x);
}
```

遍历set

```javascript
var set = new Set([3, 1, 4]);
for (let x of set){
  console.log(x);
}
```

# 函数
## 函数的定义
### 定义方式1
绝对值函数

```javascript
function abs(x){
  if(x>0){
    return x;
  }else{
    return -x;
  }
}
```

一旦执行return代表方法结束，返回结果！

如果没有执行return，函数执行完也会返回结果，undefined



### 定义方式2
```javascript
var abs = function(x){
  if(x>0){
    return x;
  }else{
    return -x;
  }
}
```

function(x){...} 这是一个匿名函数，但是可以把结果赋值给abs，通过abs就可以调用函数

### 调用函数
abs(10) //10

abs(-10) //10

### 参数问题
JavaScript可以传递任意个参数，也可以不传递参数

参数进来是否存在的问题？

假设不存在参数如何处理

```javascript
<script>
  var abs = function (x){
  // 手动抛出异常来判断
  if (typeof x !== ''number''){
    throw ''not a number''
  }
  if (x < 0){
    return -x;
  } else
    return x;
}
  </script>
```

假设存在多个参数如何处理

**arguments**

是一个js免费赠送的关键字：代表传递所有参数，是一个数组

```javascript
for (var i = 0; i<arguments.length; i++){
        console.log(arguments[i]);
      }
```

**rest 获取可变长参数**

```javascript
    function aaa(a, b,...rest){
      console.log(a);
      console.log(b);
      console.log(rest);
    }
```

## 变量的作用域
### 函数内变量
在JavaScript中，var定义变量实际是有作用域的

假设在函数体中声明，则在函数体外不可以使用

```javascript
function qjS(){
  var x = 1;
  x = x + 2;
}

x = x + 2;    // Uncaught ReferenceError: x is not defined
```

如果函数使用了相同的变量名，只要在函数内部，就不冲突

内部函数可以访问外部函数的成员，反之则不行

假设内部函数和外部函数的变量重名！

假设在JavaScript中函数查找变量从自身函数开始，由''内''向''外''查找，假设外部存在这个同名的函数变量，则内部函数会屏蔽外部函数的变量

### 全局函数
```javascript
// 全局变量
x = 1;

function f(){
  console.log(x);
}

console.log(x);
```

全局对象window

```javascript
var x = ''xxx'';
alert(x);
alert(window.x)  // 默认所有的全局变量，都会自动绑定window对象下
```

alert() 这个函数本身也是一个 window 对象

```javascript
var x = ''xx'';
window.alert(x);
var old_alert = window.alert;
// 发现alert()失效了
window.alert(''123'');

// 恢复
window.alert = old_alert;
window.alert(345);
```

JavaScript实际上只有一个全局变量，任何变量(函数也可以视为变量), 假设没有在函数作用范围内找到，就会向外查找，如果在全局作用域都没有找到，报错 RefrenceError



### 规范
由于我们所有的全局变量都会绑定到我们的 window上如果不同的js文件，使用了相同的全局变量，冲突->如何减少冲突？

```javascript
// 唯一全局变量
var suibian = {};

// 定义全局变量
suibian.name = ''suibian'';
suibian.add = function(a, b){
  return a+b;
}
```

把自己的代码全部放入自己定义的唯一空间名字中，降低全局命名冲突的问题



### 局部作用域 let
```javascript
function aaa(){
  for(var i = 1; i< 100; i++){
    console.log(i);
  }
  console.log(i+1); // 问题，i出了作用域还能使用
}
```

let 关键字，解决局部作用域冲突问题

```javascript
function aaa(){
  for(let i = 1; i< 100; i++){
    console.log(i);
  }
  console.log(i+1); // Uncaught ReferenceError:i is not defind
}
```

建议使用let去定义局部作用域的变量；

### 常量 const
```javascript
const PI = ''3.14'';  // 只读变量
console.log(PI);
PI = ''123'';  // TypeError：Assignment to constant variable
console.log(PI);
```

## 方法
#### 定义方法
方法就是把函数发在对象的里面，对象只有两个东西：属性和方法

```javascript
var houjie = {
  name: ''houjie'',
  birth: 2004,
  age: function (){
    var now = new Date().getFullYear();
    return now - this.birth;
  },
}

// 属性
houjie.name
// 方法，一定要计算括号
houjie.age()
```

# 内部对象
## 标准对象 typeof
+ "number":
+ "string":
+ "boolean":
+ NaN 是 "number"
+ [], {} 是 "object"
+ Math.abs ... 是 "function"



## Date
### 基本使用
```javascript
var now = new Date()
now.getFullYear()  // 年
now.getMonth()    // 月
now.getDay()      //星期
now.getHours()    // 时
now.getDate()    // 日
now.getMinutes()  // 分
now.getSeconds()  // 秒
now.getTime()    //时间戳
```

### 转化
```javascript
now.toLocaleString()
''2025/4/29 20:46:19''
now.toGMTString()
''Tue, 29 Apr 2025 12:46:19 GMT''
```

## JSON
### 什么是JSON
+ JSON(JavaScript Object Notation, js对象简谱)是一种轻量级的数据交换格式
+ 简洁和清晰的**层次结构**使得JSON成为理想的数据交换语言，
+ 易于人阅读和编写，同时也易于机器解析和生成，并有效地提升网络传输效率
+ 在JavaScript一切皆为对象，任何js支持的类型都可以用JSON来表示
+ 格式
    - 对象都用()
    - 数组都用[]
    - 所有的键值对 都是  key：value

### JSON字符串和js对象的转换
```javascript
var user = {
  name: ''name'',
  age: 3,
  sex: ''男''
}

// js对象转换为JSON字符串
var jsonuser = JSON.stringify(user)

// json字符串 转换为 js对象
var jsuser = JSON.parse(jsonuser)
```

### JSON 和 JS 的区别


# 面向对象编程
## 什么是面向对象
JavaScript， Java，C#。。。面向对象，javascript有些区别

类：模版 原型 proto

对象：具体的实例

在JavaScript这个需要换一下思维

原型：

```javascript
var user = {
  name: ''name'',
  age: 3,
  sex: ''男'',
  run: function (){
    console.log(this.name + "run....")
  }
};

var xiaoming = {
  name: "xiaoming"
};

xiaoming.__proto__ = user;
var Bird = {
  fly: function (){
    console.log(this.name + "fly....")
  }
}

xiaoming.__proto__ = Bird;
```

```javascript
function Student(name){
  this.name = name;
}

//给student新增一个方法
Student.prototype.hello = function (){
  alert(''hello'')
};
```

## class继承
class 关键字，在ES6引入的

1、定义一个类、属性、方法

```javascript
class Student{
  constructor(name) {
    this.name = name;
  }

  hello() {
    alert(''hello'')
  }
}
```

```javascript
class Student{
  constructor(name) {
    this.name = name;
  }

  hello() {
    alert(''hello'')
  }
}

class XiaoStudent extends Student{
  constructor(name, grade) {
    super(name);
    this.grade = grade;
  }

  myGrade() {
    alert(''我是一个小学生'')
  }

}
var xiaoming = new Student("xiaoming")
var xiaohong = new XiaoStudent("xiaohong")
```

## 原型链
<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1746600701203-1022c6c4-2a14-44a2-84b2-dac3d0b33ff5.png" width="420" title="" crop="0,0,1,1" id="u120ff1a9" class="ne-image">

# 操作BOM对象
## 浏览器简介
JavaScript和浏览器的关系

JavaScript诞生就是为了能够让它在浏览器中运行！

BOM：浏览器对象模型

+ IE
+ CHrome
+ Safari
+ FireFox  Linux默认浏览器

## window对象
window 代表 浏览器窗口

```javascript
window.alert(1)  // 弹窗
window.innerHeight    // 窗口内部高度
window.innerWidth
window.outerHeight   // 窗口外部高度
window.outerWidth
```

## navigator对象
Navigator,封装了浏览器的信息

```javascript
navigator.appName   // 应用名
''Netscape''
navigator.appVersion  // 应用版本号
''5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0''
navigator.userAgent   // 用户信息
''Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0''
navigator.platform   // 系统版本
''Win32''
```

大多数时候，不会使用navigator对象，因为会被人为修改！

不建议使用这些属性来判断和编写代码

## screen对象
代表屏幕尺寸

```javascript
screen.height
1200
screen.width
1920
```

## location对象 （重要）
location 代表当前页面的URL信息

```javascript
// 属性
host: "www.baidu.com"  // 主机
href: "https://www.baidu.com/"  // 位置
protocol: "https:"  // 协议

// 方法
location.reload()  // 刷新网页
location.assign(''https://blog.kuangstudy.com/'')  // 设置新的位置
```

## document对象
document代表当前的页面， HTML DOM文档树

```javascript
document.title
''百度一下，你就知道''
document.title = "狂神说"
''狂神说''
```

获取具体的文档树节点

```javascript
<dl id="app">
  <dt>java</dt>
  <dd>javaee</dd>
  <dd>javase</dd>
</dl>

<script>
  var dl = document.getElementById("app");
</script>
```

获取 cookie

```javascript
document.cookie
''csrftoken=TBv5LaT8knlC3QvC3EtZeZJEiPka0bpM''
```

劫持 cookie 的原理

```javascript
<script src="aaa.js"></script>
<!--恶意人员：获取你的cookie上传到它的服务器-->
```

服务器端可以设置 cookie：httpOnly



## history对象
history代表浏览器的历史记录

```javascript
history.back()   // 网页后退
history.forward()   // 网页前进
```

# 操作DOM对象
## 核心
浏览器网页就是一个DOM树形结构

+ 更新：更新DOM节点
+ 遍历：得到DOM节点
+ 删除：删除一个DOM节点
+ 添加：添加一个行的DOM节点

要操作一个DOM节点，就必须先获得这个DOM节点

## 获得DOM节点
```javascript
var h1 =document.getElementsByTagName(''h1'')  //标签名
var p1 = document.getElementById("p1")   // id选择器
var p2 = document.getElementsByClassName("p2")  // 类选择器
var father = document.getElementById("father")

var chidrens = father.children;  // 获取父节点下的所有子节点
father.firstChild;
father.lastChild;
```

这是原生代码，之后使用jQuery



## 更新节点
```javascript
<div id="id1"></div>
<script>
  var id1 = document.getElementById("id1");
  // 操作文本
  id1.innerText = "123";  // 修改文本的值
  id1.innerHTML = ''<strong>123</strong>''; //可以解析HTML文本标签
  // 操作js
  id1.style.color = ''red'';
  id1.style.fontStyle = "20px";
  id1.style.padding = ''2em'';
</script>
```

## 删除节点
步骤：先获取 父节点 ，再通过父节点删除自己

```html
<body id="father">
  <h1>标题1</h1>
  <p id="p1">p1</p>
  <p class="p2">p2</p>
  <script>
    var p1 = document.getElementById("p1")
    var father = document.getElementById("father")
    var father = p1.parentElement;
    father.removeChild(p1);
    // 删除是一个动态的过程
    father.removeChild(father.children[0]);
    father.removeChild(father.children[1]);
    father.removeChild(father.children[2]);
  </script>
</body>
```

## 插入节点
获得了某个DOM节点，假设这个DOM节点是空的，通过innerHTML就可以增加一个元素，如果这个DOM已经存在元素了，会产生覆盖

追加

```html
<p id="js">JavaScript</p>
<div id="list">
  <p id="se">javaSE</p>
  <p id="ee">javaEE</p>
  <p id="me">javaME</p>
</div>

<script>
  var js = document.getElementById(''js'');
  var li = document.getElementById(''list'');
  li.append(js);   // 追加到后面
</script>
```

创建一个新的标签，实现插入

```javascript
var newp = document.createElement(''p'');  // 创建一个新的标配
newp.id = ''newp'';   // 设置id
newp.innerText = ''linux'';  // 添加文本
li.append(newp);  // 将创建好的标签添加到div中

// 创建一个标签Style
var MyStyle = document.createElement(''style'');
MyStyle.setAttribute(''type'', ''text/css'');
MyStyle.innerHTML = ''body{background-color: chartreuse}'';
document.getElementsByTagName(''head'')[0].appendChild(MyStyle);
```

insertBefore  查到谁的前面

```javascript
<script>
  var ee = document.getElementById(''ee'');
  var js = document.getElementById(''js'');
  var list = document.getElementById(''list'');
  // 要包含的节点，将要插入新的节点放在谁的前面insertBefore(newNode, targetNode)
  list.insertBefore(js, ee);
</script>
```

# 操作表单（验证）
## 表单是什么 form DOM树
+ 文本框 text
+ 下拉框 <select>
    - open
+ 单选框   radio
+ 多选框   checkbox
+ 隐藏域    hidden
+ 密码框    password
+ .......

表单的目的 ：提交信息



## 获得提交的信息
```html
<form action="#" method="post">
  <p>
    <span>用户名：</span><input type="text" id="username">
  </p>
  <p>
    <span>性别：</span>
    <input type="radio" name="sex" value="man" id="boy"> 男
    <input type="radio" name="sex" value="woman" id="girl"> 女
  </p>
</form>

<script>
  var input_text = document.getElementById(''username'')
  var boy_radio = document.getElementById(''boy'')
  var girl_radio = document.getElementById(''girl'')
  // 获得输入框的值
  input_text.value;
  // 修改输入框的值
  input_text.value = "123";

  // 对于单选框，多选框 等固定的值，boy_radio.value只能取到当前的值
  boy_radio.checked;   // 查看返回的结果是否为true 如果是true，则被选中
  girl_radio.children;
</script>
```

## 前端md5加密
```html
<head>
  <meta charset="UTF-8">
  <title>Title</title>
  <script src="https://cdn.bootcss.com/blueimp-md5/2.10.0/js/md5.min.js"></script>
</head>
<body>
<!--
  表单绑定事件
  onsubmit=绑定一个提交检测的函数， true  false
  将这个结果返回给表单，使用onsubmit接收
  onsubmit="return aaa()"
-->
<form action="#" method="post" onsubmit="return aaa()">
  <p>
    <span>用户名：</span><input type="text" id="username">
  </p>
  <p>
    <span>密码：</span><input type="password" id="input-password">
  </p>

  <input type="hidden" id="md5-password" name="password">

  <button type="button">提交</button>
</form>

<script>
  function aaa() {
    var username = document.getElementById(''username'');
    var pwd = document.getElementById(''input-password'');
    var md5pwd = document.getElementById(''md5-password'')

    md5pwd.value = md5(pwd.value);
    // 可以判断表单内容 true 可以提交， false 阻止提交
    return false;

  }
</script>
```

# jQuery   
文档工具站：[http://jquery3.yanzhihui.com/index.html](http://jquery3.yanzhihui.com/index.html)

## 初识jQuery
jQuery库，里面存在大量的JavaScript函数

引入jQuery   使用 jQuery 加速器

```html
 <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.5.1.min.js"></script>
```

可到官网下载

公式： $(slector).action()

+ slector：选择器  CSS中的选择器都能用
+ action：事件

文档工具站：[http://jquery3.yanzhihui.com/index.html](http://jquery3.yanzhihui.com/index.html)

## 事件
+ 鼠标事件  mouse
+ 键盘事件

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Title</title>
  <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.5.1.min.js"></script>
  <style>
    #divMove{
      width: 300px;
      height: 300px;
      border: 1px solid red;
    }
  </style>
</head>
<body>
mouse: <span id="mouseMove"></span>
<div id="divMove">
  这里移动鼠标
</div>

<script>
  // 当网页加载完毕之后，相应事件
  $(function (){
    $(''#divMove'').mousemove(function (e){
      $(''#mouseMove'').text(''x'' + e.pageX+'',y'' + e.pageY)
    })
  });
</script>
</body>
</html>
```

## 操作DOM', 0, NOW());

INSERT INTO `note` (`id`, `author_id`, `title`, `content`, `like_count`, `created_at`)
VALUES (15, 1004, 'Nginx', '### 📚 Nginx 深入学习笔记（扩展版）
#### 0. 核心配置结构回顾
Nginx 的配置本质上是一个**树形上下文（Context）**结构：

+ **Main（全局）**：影响全局的指令。
+ **Events**：配置网络连接相关的参数。
+ **HTTP**：处理 HTTP 请求的核心块，内部可包含多个 `Server`。
+ **Server**：定义一个虚拟主机（网站），内部可包含多个 `Location`。
+ **Location**：定义特定的 URL 匹配规则和处理方式。

**关键原则：子上下文会继承父上下文的配置，子上下文内的配置优先级高于父级。**

---

### 1. 深入 Location 块：Nginx 最精妙的匹配逻辑
`Location` 是配置中最常出错也最核心的地方，它的匹配顺序和语法至关重要。

#### 1.1 Location 语法类型
```nginx
location [修饰符] /uri/ {
    # 处理逻辑
}
```

| 修饰符 | 含义 | 示例 |
| :--- | :--- | :--- |
| **无** | **前缀匹配**，以指定 URI 开头即匹配 | `location /api` 匹配 `/api`, `/api/v1`, `/api/user` |
| **=** | **精确匹配**，必须完全一致，匹配后立即停止 | `location = /` 只匹配根路径 `/` |
| **~** | **正则匹配（区分大小写）** | `location ~ ^/images/.*\.(jpg|png)$` |
| **~******* | **正则匹配（不区分大小写）** | `location ~* \.html$` 匹配 `.html`, `.HTML` |
| **^~** | **优先前缀匹配**，如果匹配上，则不再进行后续的正则匹配 | `location ^~ /static/` 匹配 `/static/` 下的所有请求 |


#### 1.2 核心匹配顺序（面试高频！）
1. **精准匹配**：检查是否有 `=` 修饰符的 Location。有则匹配，停止搜索。
2. **优先前缀匹配**：检查是否有 `^~` 修饰符的 Location。如果有匹配，则**立即使用，并停止后续的正则匹配**。
3. **正则匹配**：按照配置文件中**出现的顺序**，依次匹配带有 `~` 或 `~*` 的正则 Location。一旦匹配，**立即使用，停止搜索**。
4. **普通前缀匹配**：如果所有正则都没匹配上，则找出所有普通的前缀匹配（无修饰符）中，**匹配度最高（即URL最长）** 的那个。

**记忆口诀：**`=`** 优先，**`^~`** 其次，正则按顺序，前缀看最长。**

---

### 2. Nginx 内置变量大全（常用精选）
变量是 Nginx 实现动态配置的灵魂。掌握这些变量，你就能在 `proxy_pass`、`rewrite`、`access_log` 中游刃有余。

| 变量名 | 作用 | 示例值 |
| :--- | :--- | :--- |
| `$remote_addr` | 客户端 IP 地址 | `192.168.1.100` |
| `$proxy_add_x_forwarded_for` | 获取客户端真实 IP 链（X-Forward-For） | `100.2.3.4, 10.0.0.1` |
| `$host` | 请求中的主机头（Host），小写 | `www.example.com` |
| `$request_uri` | 完整的原始请求 URI（包含参数） | `/api/user?id=1` |
| `$uri` | 当前请求的 URI（不包含参数，已解码） | `/api/user` |
| `$args` | URL 中的查询参数（问号后的部分） | `id=1` |
| `$scheme` | 请求协议，`http` 或 `https` | `https` |
| `$http_<name>` | 获取任意请求头的值（小写+连字符变下划线） | `$http_user_agent` 获取 User-Agent |
| `$status` | 响应的 HTTP 状态码 | `200`, `404` |
| `$request_time` | 请求处理的总耗时（秒） | `0.023` |


---

### 3. 高级配置技巧
#### 3.1 动静分离（提升性能）
将静态资源（图片、CSS、JS）直接由 Nginx 处理，不转发给后端应用服务器。

```nginx
server {
    listen 80;
    server_name static.example.com;

    # 匹配图片、样式、脚本文件
    location ~* \.(gif|jpg|jpeg|png|css|js|ico)$ {
        root /var/www/static;  # 本地磁盘路径
        expires 30d;           # 设置浏览器缓存过期时间为30天
        access_log off;        # 关闭访问日志，减少磁盘IO
    }
}
```

#### 3.2 常见错误页面优雅展示
自定义 404、500 等错误页面，提升用户体验。

```nginx
server {
    # ...
    error_page 404 /404.html;
    error_page 500 502 503 504 /50x.html;
    
    location = /404.html {
        root /usr/share/nginx/html;
        internal; # 只允许内部重定向，防止用户直接访问
    }
}
```

#### 3.3 跨域配置（CORS）
在前后端分离架构中，往往需要在网关层解决跨域问题。

```nginx
location /api/ {
    # 允许的域名，生产环境不建议用 *
    add_header ''Access-Control-Allow-Origin'' ''*'';
    # 允许的请求方法
    add_header ''Access-Control-Allow_Methods'' ''GET, POST, OPTIONS'';
    # 允许的请求头
    add_header ''Access-Control-Allow-Headers'' ''DNT,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type,Range,Authorization'';
    # 预检请求（OPTIONS）缓存时间
    add_header ''Access-Control-Max-Age'' 1728000;
    
    # 如果是预检请求，直接返回204成功
    if ($request_method = ''OPTIONS'') {
        return 204;
    }
    proxy_pass http://backend_server;
}
```

---

### 4. 性能调优实践
#### 4.1 文件传输优化
```nginx
http {
    # 开启零拷贝，减少内核态到用户态的数据拷贝，极大提升静态文件传输效率
    sendfile on;
    
    # 开启 TCP_NOPUSH（Linux）或 TCP_CORK，与 sendfile 配合，在一个网络包中发送响应头和文件内容
    tcp_nopush on;
    
    # 开启 TCP_NODELAY，禁用 Nagle 算法，小数据包可以实时发送（适用于长连接）
    tcp_nodelay on;
}
```

#### 4.2 缓冲与超时设置
适当调整代理缓冲和超时，可以防止后端慢服务拖垮 Nginx。

```nginx
http {
    # 代理缓冲区大小
    proxy_buffering on;
    proxy_buffer_size 4k;
    proxy_buffers 8 4k;
    proxy_busy_buffers_size 8k;

    # 连接超时（单位：秒）
    proxy_connect_timeout 3s;   # 与后端建立连接的超时
    proxy_read_timeout 30s;     # 读取后端响应的超时
    proxy_send_timeout 30s;     # 发送请求到后端的超时
}
```

#### 4.3 Gzip 压缩优化
```nginx
http {
    gzip on;                   # 开启压缩
    gzip_vary on;              # 在响应头中添加 Vary: Accept-Encoding，告知代理服务器缓存版本
    gzip_min_length 1k;        # 小于 1KB 的文件不压缩
    gzip_comp_level 6;         # 压缩级别 1-9，级别越高压缩比越高，但消耗 CPU
    gzip_types text/plain text/css text/xml text/javascript application/json application/javascript image/svg+xml;
    # 对图片、视频等已压缩文件不进行二次压缩
    gzip_disable "msie6";      # 禁用 IE6 的 gzip
}
```

---

### 5. 日志管理与分析
日志是排查问题的利器，合理的日志格式能极大提升排错效率。

#### 5.1 自定义日志格式
```nginx
http {
    log_format main ''$remote_addr - $remote_user [$time_local] "$request" ''
                    ''$status $body_bytes_sent "$http_referer" ''
                    ''"$http_user_agent" "$http_x_forwarded_for" ''
                    ''rt=$request_time uct="$upstream_connect_time" ''
                    ''uht="$upstream_header_time" urt="$upstream_response_time"'';

    access_log /var/log/nginx/access.log main buffer=32k flush=5s;
    error_log /var/log/nginx/error.log warn;
}
```

+ `buffer=32k flush=5s`：将日志写入内存缓冲区，每5秒或缓冲满时再刷入磁盘，能显著提升高并发下的性能。
+ **上游时间变量**：`upstream_connect_time`, `upstream_header_time`, `upstream_response_time` 是排查后端性能瓶颈的绝佳指标。

---

### 6. Nginx 的高可用与动态配置
#### 6.1 Nginx + Keepalived 实现高可用
Nginx 本身没有主备切换功能，通常配合 **Keepalived** 实现两台 Nginx 服务器的 VIP（虚拟IP）漂移，一台为 Master，一台为 Backup，当 Master 宕机时 VIP 自动切换到 Backup，保证网关层的高可用。

#### 6.2 动态 Upstream（第三方方案）
原生 Nginx 的 `upstream` 配置变更需要 `nginx -s reload`（会有短暂中断）。在微服务场景下，可以使用 **Nginx Plus**（商业版）或 **OpenResty / APISIX**，它们支持通过 API 动态修改上游服务器列表，无需重启。

---

### 7. 安全加固要点
+ `server_tokens off;`：关闭版本号显示，防止攻击者通过版本漏洞攻击。
+ `client_max_body_size 10M;`：限制客户端请求体大小，防止大文件攻击。
+ `limit_conn_zone $binary_remote_addr zone=addr:10m;` 配合 `limit_conn addr 100;`：限制同一 IP 的并发连接数。
+ `limit_req_zone $binary_remote_addr zone=req:10m rate=10r/s;` 配合 `limit_req zone=req burst=20 nodelay;`：限制请求频率，实现基础的防刷保护。

---

这份扩展笔记覆盖了 Nginx 从基础到进阶的核心内容。如果想再深入某个具体方向，比如 **Lua 脚本扩展（OpenResty）** 或 **与 K8s Ingress 的集成**，可以随时告诉我。😊
', 0, NOW());

INSERT INTO `note` (`id`, `author_id`, `title`, `content`, `like_count`, `created_at`)
VALUES (16, 1004, 'SprngCloud', '### 📚 Nginx 深入学习笔记（扩展版）
#### 0. 核心配置结构回顾
Nginx 的配置本质上是一个**树形上下文（Context）**结构：

+ **Main（全局）**：影响全局的指令。
+ **Events**：配置网络连接相关的参数。
+ **HTTP**：处理 HTTP 请求的核心块，内部可包含多个 `Server`。
+ **Server**：定义一个虚拟主机（网站），内部可包含多个 `Location`。
+ **Location**：定义特定的 URL 匹配规则和处理方式。

**关键原则：子上下文会继承父上下文的配置，子上下文内的配置优先级高于父级。**

---

### 1. 深入 Location 块：Nginx 最精妙的匹配逻辑
`Location` 是配置中最常出错也最核心的地方，它的匹配顺序和语法至关重要。

#### 1.1 Location 语法类型
```nginx
location [修饰符] /uri/ {
    # 处理逻辑
}
```

| 修饰符 | 含义 | 示例 |
| :--- | :--- | :--- |
| **无** | **前缀匹配**，以指定 URI 开头即匹配 | `location /api` 匹配 `/api`, `/api/v1`, `/api/user` |
| **=** | **精确匹配**，必须完全一致，匹配后立即停止 | `location = /` 只匹配根路径 `/` |
| **~** | **正则匹配（区分大小写）** | `location ~ ^/images/.*\.(jpg|png)$` |
| **~******* | **正则匹配（不区分大小写）** | `location ~* \.html$` 匹配 `.html`, `.HTML` |
| **^~** | **优先前缀匹配**，如果匹配上，则不再进行后续的正则匹配 | `location ^~ /static/` 匹配 `/static/` 下的所有请求 |


#### 1.2 核心匹配顺序（面试高频！）
1. **精准匹配**：检查是否有 `=` 修饰符的 Location。有则匹配，停止搜索。
2. **优先前缀匹配**：检查是否有 `^~` 修饰符的 Location。如果有匹配，则**立即使用，并停止后续的正则匹配**。
3. **正则匹配**：按照配置文件中**出现的顺序**，依次匹配带有 `~` 或 `~*` 的正则 Location。一旦匹配，**立即使用，停止搜索**。
4. **普通前缀匹配**：如果所有正则都没匹配上，则找出所有普通的前缀匹配（无修饰符）中，**匹配度最高（即URL最长）** 的那个。

**记忆口诀：**`=`** 优先，**`^~`** 其次，正则按顺序，前缀看最长。**

---

### 2. Nginx 内置变量大全（常用精选）
变量是 Nginx 实现动态配置的灵魂。掌握这些变量，你就能在 `proxy_pass`、`rewrite`、`access_log` 中游刃有余。

| 变量名 | 作用 | 示例值 |
| :--- | :--- | :--- |
| `$remote_addr` | 客户端 IP 地址 | `192.168.1.100` |
| `$proxy_add_x_forwarded_for` | 获取客户端真实 IP 链（X-Forward-For） | `100.2.3.4, 10.0.0.1` |
| `$host` | 请求中的主机头（Host），小写 | `www.example.com` |
| `$request_uri` | 完整的原始请求 URI（包含参数） | `/api/user?id=1` |
| `$uri` | 当前请求的 URI（不包含参数，已解码） | `/api/user` |
| `$args` | URL 中的查询参数（问号后的部分） | `id=1` |
| `$scheme` | 请求协议，`http` 或 `https` | `https` |
| `$http_<name>` | 获取任意请求头的值（小写+连字符变下划线） | `$http_user_agent` 获取 User-Agent |
| `$status` | 响应的 HTTP 状态码 | `200`, `404` |
| `$request_time` | 请求处理的总耗时（秒） | `0.023` |


---

### 3. 高级配置技巧
#### 3.1 动静分离（提升性能）
将静态资源（图片、CSS、JS）直接由 Nginx 处理，不转发给后端应用服务器。

```nginx
server {
    listen 80;
    server_name static.example.com;

    # 匹配图片、样式、脚本文件
    location ~* \.(gif|jpg|jpeg|png|css|js|ico)$ {
        root /var/www/static;  # 本地磁盘路径
        expires 30d;           # 设置浏览器缓存过期时间为30天
        access_log off;        # 关闭访问日志，减少磁盘IO
    }
}
```

#### 3.2 常见错误页面优雅展示
自定义 404、500 等错误页面，提升用户体验。

```nginx
server {
    # ...
    error_page 404 /404.html;
    error_page 500 502 503 504 /50x.html;
    
    location = /404.html {
        root /usr/share/nginx/html;
        internal; # 只允许内部重定向，防止用户直接访问
    }
}
```

#### 3.3 跨域配置（CORS）
在前后端分离架构中，往往需要在网关层解决跨域问题。

```nginx
location /api/ {
    # 允许的域名，生产环境不建议用 *
    add_header ''Access-Control-Allow-Origin'' ''*'';
    # 允许的请求方法
    add_header ''Access-Control-Allow_Methods'' ''GET, POST, OPTIONS'';
    # 允许的请求头
    add_header ''Access-Control-Allow-Headers'' ''DNT,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type,Range,Authorization'';
    # 预检请求（OPTIONS）缓存时间
    add_header ''Access-Control-Max-Age'' 1728000;
    
    # 如果是预检请求，直接返回204成功
    if ($request_method = ''OPTIONS'') {
        return 204;
    }
    proxy_pass http://backend_server;
}
```

---

### 4. 性能调优实践
#### 4.1 文件传输优化
```nginx
http {
    # 开启零拷贝，减少内核态到用户态的数据拷贝，极大提升静态文件传输效率
    sendfile on;
    
    # 开启 TCP_NOPUSH（Linux）或 TCP_CORK，与 sendfile 配合，在一个网络包中发送响应头和文件内容
    tcp_nopush on;
    
    # 开启 TCP_NODELAY，禁用 Nagle 算法，小数据包可以实时发送（适用于长连接）
    tcp_nodelay on;
}
```

#### 4.2 缓冲与超时设置
适当调整代理缓冲和超时，可以防止后端慢服务拖垮 Nginx。

```nginx
http {
    # 代理缓冲区大小
    proxy_buffering on;
    proxy_buffer_size 4k;
    proxy_buffers 8 4k;
    proxy_busy_buffers_size 8k;

    # 连接超时（单位：秒）
    proxy_connect_timeout 3s;   # 与后端建立连接的超时
    proxy_read_timeout 30s;     # 读取后端响应的超时
    proxy_send_timeout 30s;     # 发送请求到后端的超时
}
```

#### 4.3 Gzip 压缩优化
```nginx
http {
    gzip on;                   # 开启压缩
    gzip_vary on;              # 在响应头中添加 Vary: Accept-Encoding，告知代理服务器缓存版本
    gzip_min_length 1k;        # 小于 1KB 的文件不压缩
    gzip_comp_level 6;         # 压缩级别 1-9，级别越高压缩比越高，但消耗 CPU
    gzip_types text/plain text/css text/xml text/javascript application/json application/javascript image/svg+xml;
    # 对图片、视频等已压缩文件不进行二次压缩
    gzip_disable "msie6";      # 禁用 IE6 的 gzip
}
```

---

### 5. 日志管理与分析
日志是排查问题的利器，合理的日志格式能极大提升排错效率。

#### 5.1 自定义日志格式
```nginx
http {
    log_format main ''$remote_addr - $remote_user [$time_local] "$request" ''
                    ''$status $body_bytes_sent "$http_referer" ''
                    ''"$http_user_agent" "$http_x_forwarded_for" ''
                    ''rt=$request_time uct="$upstream_connect_time" ''
                    ''uht="$upstream_header_time" urt="$upstream_response_time"'';

    access_log /var/log/nginx/access.log main buffer=32k flush=5s;
    error_log /var/log/nginx/error.log warn;
}
```

+ `buffer=32k flush=5s`：将日志写入内存缓冲区，每5秒或缓冲满时再刷入磁盘，能显著提升高并发下的性能。
+ **上游时间变量**：`upstream_connect_time`, `upstream_header_time`, `upstream_response_time` 是排查后端性能瓶颈的绝佳指标。

---

### 6. Nginx 的高可用与动态配置
#### 6.1 Nginx + Keepalived 实现高可用
Nginx 本身没有主备切换功能，通常配合 **Keepalived** 实现两台 Nginx 服务器的 VIP（虚拟IP）漂移，一台为 Master，一台为 Backup，当 Master 宕机时 VIP 自动切换到 Backup，保证网关层的高可用。

#### 6.2 动态 Upstream（第三方方案）
原生 Nginx 的 `upstream` 配置变更需要 `nginx -s reload`（会有短暂中断）。在微服务场景下，可以使用 **Nginx Plus**（商业版）或 **OpenResty / APISIX**，它们支持通过 API 动态修改上游服务器列表，无需重启。

---

### 7. 安全加固要点
+ `server_tokens off;`：关闭版本号显示，防止攻击者通过版本漏洞攻击。
+ `client_max_body_size 10M;`：限制客户端请求体大小，防止大文件攻击。
+ `limit_conn_zone $binary_remote_addr zone=addr:10m;` 配合 `limit_conn addr 100;`：限制同一 IP 的并发连接数。
+ `limit_req_zone $binary_remote_addr zone=req:10m rate=10r/s;` 配合 `limit_req zone=req burst=20 nodelay;`：限制请求频率，实现基础的防刷保护。

---

这份扩展笔记覆盖了 Nginx 从基础到进阶的核心内容。如果想再深入某个具体方向，比如 **Lua 脚本扩展（OpenResty）** 或 **与 K8s Ingress 的集成**，可以随时告诉我。😊
', 0, NOW());

INSERT INTO `note` (`id`, `author_id`, `title`, `content`, `like_count`, `created_at`)
VALUES (17, 1004, '常用类', '# Object类
## getClass方法
+ 返回类对象

```java
Class c1 = s1.getClass();
```

## hashCode()方法
+ public int hashCode(){}
+ 返回该对象的法系码值
+ 哈希值根据对象地址或字符串或数字使用hash算法计算出来的int类型的数值
+ 一般情况下相同对象返回相同的哈希码值

```java
s1.hashCode();
```

## toString()方法
+ public String toString(){}
+ 返回该对象的字符串（表示形式）
+ 可以根据程序需求覆盖该方法，如：展示对象的各个属性值

```java
s1.toString();
```

## equals()方法
+ public boolean equals(Object obj){}
+ 默认实现为(this == obj)，比较两个对象地址是否相同
+ 可进行覆盖，比较两个对象的内容是否相同

```java
s1.equals(s2);
```

# String类
## 概述
+ 字符串是常量，创建之后不可改变
+ 字符串字面值存储在字符串池中，也可共享
+ String s = "Hello"; 产生一个对象，字符串池中存储
+ String s = new String("Hello"); 产生两个对象，堆，吃个存储一个

## 常用方法
+ public int length()：返回字符串的长度
+ public char charAt(int index)：根据下标获取字符串
+ public boolean contains(String str)：判断当前字符串中是否包含str
+ pulic char[] toCharArray()：将字符串转为数组
+ public int indexOf(String str)：查找str首次出现的下标，存在则返回该下标，不存在，则返回-1
+ public int lastIndexOf(String str)：查找str在字符串中最后一次出现的下标
+ public String trim()：去掉字符串前后的空格
+ public String toUpperCase()：将小写转换成大写
+ public String endWith(String str)：判断字符串是否以str结尾
+ public String replace(char oldChar,char newChar)：将就字符串转换为新字符串
+ public String[] split(String str)：根据str做拆分
', 0, NOW());

INSERT INTO `note` (`id`, `author_id`, `title`, `content`, `like_count`, `created_at`)
VALUES (18, 1005, 'JavaWeb', '# Tomcat
## 用tomcat发布一个网站
将自己写的网站，放到服务器（tomcat）中指定的web应用的文件夹（webapps）下，就可以访问了

网络应该有的结构

```plain
--webapps: Tomcat服务器的web目录
  --ROOT
  --kuangstduy :网站的目录名
    - WEB-INF
      -classes :java程序
      -lib :web应用所依赖的jar包
      -web.xml :网站的配置文件
    -index.html 默认的首页
    -static
      -css
      -js
      -img
    -......
```

# Servlet
## 编写一个Servlet程序
+ 创建一个普通的Maven项目，删除src文件
+ 创建一个Module
    - Module中可以继承父项目中的jar包
+ Maven环境优化
+ 编写一个Servlet的程序

```plain
public class HelloServlet extends HttpServlet {

    // 由于get或post只能请求实现的不同的方式，可以相互调用，业务逻辑都一样
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // ServletOutputStream outputStream = resp.getOutputStream();
        PrintWriter out = resp.getWriter();   // 响应流

        out.print("Hello Servlet");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
```

+ 编写Servlet的映射
    - 为什么需要映射：我们写的是java程序，要通过浏览器访问，而浏览器需要链接web服务器，所以我们需要在web服务器中注册我写的Servlet，还需给他一个浏览器能够访问的路径；

```xml
<web-app>
  <display-name>Archetype Created Web Application</display-name>
  <!--  注册Servlet-->
  <servlet>
    <servlet-name>hello</servlet-name>
    <servlet-class>com.jie.servlet.HelloServlet</servlet-class>
  </servlet>
  <!-- Servlet请求的路径-->
  <servlet-mapping>
    <servlet-name>hello</servlet-name>
    <url-pattern>/hello</url-pattern>
  </servlet-mapping>
</web-app>
```

+ 配置Tomcat
+ <img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1747377923221-b238db4e-015d-4a31-95fe-4bf1663ef059.png" width="593" title="" crop="0,0,1,1" id="u5044518f" class="ne-image">

## Servlet原理
Servlet是由Web服务器调用，web服务器在收到浏览器请求之后，会：

<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1747379394800-f0d62945-270b-4fdf-a886-0081173b9c31.png" width="808.8" title="" crop="0,0,1,1" id="u6d1bf402" class="ne-image">

## Mapping问题
一个Servlet可以指定一个映射路径

```xml
<servlet-mapping>
        <servlet-name>hello</servlet-name>
        <url-pattern>/hello</url-pattern>
</servlet-mapping>
```

一个Servlet可以指定多个个映射路径

一个Servlet可以指定通用映射路径

一个指定一些后缀或者前缀等等……

## getServletContext
### 共享数据
web容器在启动的时候，它会为每个web程序都创建一个对应的ServletContext对象，它代表了当前的web应用；

+ 共享数据
    - 我在这个Servlet中保存的数据，可以在另一个Servlet中拿到；
+ 放置数据的类

```java
public class HelloServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //        this.getInitParameter("name");   // 初始化参数
        //        this.getServletConfig()          // Servlet配置
        //        this.getServletContext()         // Servlet上下文
        ServletContext context = this.getServletContext();
        String name = "jie";    // 数据
        // 将一个数据保存到了ServletContext中，名字为username，只为name
        context.setAttribute("username", name);
    }
}
```

+ 读取数据的类

```java
public class GetServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext context = this.getServletContext();
        String username = (String) context.getAttribute("username");

        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        resp.getWriter().print(username);
    }
}
```

+ 配置路由

```xml
<servlet>
  <servlet-name>hello</servlet-name>
  <servlet-class>com.jie.servlet01.HelloServlet</servlet-class>
</servlet>

<servlet-mapping>
  <servlet-name>hello</servlet-name>
  <url-pattern>/hello</url-pattern>
</servlet-mapping>

<servlet>
  <servlet-name>gets</servlet-name>
  <servlet-class>com.jie.servlet01.GetServlet</servlet-class>
</servlet>

<servlet-mapping>
  <servlet-name>gets</servlet-name>
  <url-pattern>/gets</url-pattern>
</servlet-mapping>
```

+ 测试访问结果



### 初始化参数
```xml
  <context-param>
    <param-name>url</param-name>
    <param-value>jdbc:mysql://192.168.204.131:3306/jdbcStudy</param-value>
  </context-param>

  <servlet>
    <servlet-name>damo03</servlet-name>
    <servlet-class>com.jie.servlet01.ServletDemo03</servlet-class>
  </servlet>

  <servlet-mapping>
    <servlet-name>damo03</servlet-name>
    <url-pattern>/damo3</url-pattern>
  </servlet-mapping>
```

```java
public class ServletDemo03 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext context = this.getServletContext();
        String url = context.getInitParameter("url");
        resp.getWriter().print(url);
    }
}
```

### 请求转发
```java
public class ServletDemo04 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext context = this.getServletContext();
//        RequestDispatcher requestDispatcher = context.getRequestDispatcher("/damo03");   // 转发请求的路径
//        requestDispatcher.forward(req, resp);  // 调用forward实现请求转发
        System.out.println("进入了这里");
        context.getRequestDispatcher("/damo03").forward(req, resp);
    }
}
```

### 读取资源文件
Properties

+ 在java目录下新建properties
+ 子啊resources目录下新建properties

发现：都被打包的了统一路径下：classes，我们俗称这个路径为classpath

思路：

+ 需要一个文件流：

```java
public class ServletDamo05 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        InputStream is = this.getServletContext().getResourceAsStream("/WEB-INF/classes/db.properties");
        Properties prop = new Properties();
        prop.load(is);
        String username = prop.getProperty("username");
        String password = prop.getProperty("password");
        resp.setContentType("text/html;charset=utf-8");
        resp.getWriter().println("username: " + username + " password: " + password);
    }
}
```

## HttpServletResponse
### 简单分类
web服务器连接收到的客户端的http请求，针对这个请求，分别创建一个代表请求的HttpServletResponse对象，代表响应一个；

+ 如果要获取客户端请求来的参数，找HttpServletRequest
+ 如期客户端响应一些消息找：HttpServletResponse

向浏览器发送数据的方法

```java
ServletOutputStream getOutputStream() throw IOException;
PrintWriter getWriter() throw IOException;
```

负责向浏览器发送响应头的方法

响应的状态码

### 常见应用
1. 向浏览器输出消息
2. 下载文件
    1. 要获取文件的路径
    2. 下载的文件名是啥？
    3. 设置向办法让刘浏览器能够支持下载我们需要的东西
    4. 获取下载文件的输入流
    5. 创建缓冲区
    6. 获取OutputStream对象
    7. 将FileOutputStream列入到buffer缓冲区
    8. 使用OutputStream将缓冲区中的数据输出到客户端

```java
package com.jie.response;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.FileInputStream;
import java.io.IOException;

public class FileServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取下载文件的路径
        String realPath = this.getServletContext().getRealPath("1.png");
        // 下载的文件名是啥？
        String fileName = realPath.substring(realPath.lastIndexOf("/") + 1);
        // 设置想办法让浏览器支持下载的需要的东西
        resp.setHeader("Content-Disposition", "attachment; filename=" + fileName);
        // 获取下载文件的输入流
        FileInputStream in = new FileInputStream(realPath);
        // 创建缓冲区
        int len = 0;
        byte[] buffer = new byte[1024];
        // 获取输出流对象
        ServletOutputStream out = resp.getOutputStream();
        // 将FileOutputStream流写入到buffer中
        while ((len = in.read(buffer)) != -1) {
            out.write(buffer, 0, len);
        }
        in.close();
        out.close();


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}

```

# Cookie/Session
## 会话
**会话**：用户打开一个浏览器，点击了很多超链接，访问多个文本资源，关闭浏览器，这个过程称之为会话

**有状态回话**：一个同学来过教室，下次再来教室，我们会知道这个同学，曾经来过，称之为有状态回话

## 保存会话的两种技术
**Cookie**

+ 客户端技术（响应，请求）

session

+ 服务器技术，利用这个技术，可以保持用户的回话信息，我们可以把数据或信息放在session中

常见场景：网站登录之后，下次不用再登录了，

## Cookie
1. 从请求中拿到Cookie信息
2. 服务器响应给客户端Cookie

<details class="lake-collapse"><summary id="u2175f3d9"><span class="ne-text">Cookie方法</span></summary><p id="ua8aab64b" class="ne-p"><span class="ne-text">req.getCookies(); // 获得Cookie<br /></span><span class="ne-text">cookie.getName();  // 获得Cookie的key<br /></span><span class="ne-text">cookie.getValue();  // 获得cookie的value<br /></span><span class="ne-text">// 新建一个cookie<br /></span><span class="ne-text">new Cookie(&quot;lastLoginTime&quot;, System.currentTimeMillis() + &quot;&quot;);<br /></span><span class="ne-text">Cookie.setMaxAge(24*60*60); // 设置cookie的有效期<br /></span><span class="ne-text">resp.addCookie(cookie);  // 响应给客户端一个Cookie<br /></span></p></details>
一个网站Cookie是否存在上限！ 

+ 一个Cookie只能保存一个信息；
+ 一个web网站点可以给浏览器发送多个Cookie，最多存放20个Cookie；
+ Cookie大小有上限
+ 300个Cookie浏览器上限

删除Cookie

+ 不设置有效期，关闭浏览器，自动失效；
+ 设置有效期时间为0；

编码解码

```java
URLEncoder.encode("秦疆", "utf-8");
URLDecoder.decoder(cookie.getValue(), "utf-8");
```

## Session
什么是session：

+ 服务器会个每一个用户（浏览器）创建一个session
+ 一个session独占一个浏览器，只要浏览器没关，这个session就存在
+ 用户登录之后，整个网站都可以访问，--> 保存用户的信息，保存购物车的信息……

session和Cookie的区别

+ Cookie是把用户的数据写给用户的浏览器，浏览器保存
+ session是把用户的数据写到用户独占session中，服务器端保存（b保存重要的信息，坚守服务器资源的浪费）
+ Session对象由服务创建

使用场景

+ 保存一个登录用户的信息
+ 购物车信息
+ 在整个网站中经常使用的数据，将他们保持在Session中

使用Session

```java
package com.jie.cookie;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;

import java.io.IOException;

public class SessionDamo01 extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 解决乱码问题
        req.setCharacterEncoding("GBK");
        resp.setCharacterEncoding("GBK");
        resp.setContentType("text/html;charset=UTF-8");

        // 得到Session
        HttpSession session = req.getSession();
        // 给Session中存东西
        session.setAttribute("name", "秦疆");

        // 获取session的id
        String id = session.getId();

        // 判断Session是不是新建
        if (session.isNew()) {
            resp.getWriter().write("session is a new,ID:"+id);
        } else {
            resp.getWriter().write("session is a old,ID:"+id);
        }

        // session创建的时候做了什么
        Cookie cookie = new Cookie("JSESSIONID", id);
        resp.addCookie(cookie);
    }
}

```

会话自动过期

```xml
<!--  设置session默认的注销时间-->
<session-config>
  <!--    以分钟为单位-->
  <session-timeout>1</session-timeout>
</session-config>
```

# JSP
## 什么是JSP
Java Server Pages：Java服务器端页面，也和Servlet一样，用于动态Web技术

最大的提点

+ 写JSP就像写HTML
+ 区别
    - HTML只能给用户提供静态的数据
    - JSP页面中可以嵌入Java代码，为用户提供动态数据；

## JSP原理
思路：JSP到底是怎么执行的

+ 代码层面没用任何问题
+ 服务器内部工作
    - Tomcat中有一个work目录
    - IDEA中使用Tomcat的会在IDEA的IDEA中产生一个work目录

浏览器向服务器发送请求，不管访问什么资源，其实都是在访问Servlet

jsp最终夜壶变成为一个Java类

jsp本质就是一个Servlet

```java
// 初始化
public void _jspInit() {}
// 销毁
public void _jspDestory() {}
// JSPService
public void _jspService(.HttpServletRequest request, HttpServletResponse response)
```

1. 判断请求
2. 内置了一些对象
3. 输出页面前增加的代码
4. 在JSP页面中，只要是java代码就会原封不动的输出，如是HTML代码，就会被转换为`out.writer("<html>")`

## 基础语法
任何语言都有自己的语法，JSP作为java技术的应用，它拥有一些自己扩充的语法，java所有的语法都支持！

JSP表达式

JSP声明

```jsx
<%!
    static {
        System.out.println("Loading Servlet!");
    }

    private int globalval = 0;

    public void function() {
        System.out.println(globalval);
    }

%>
```

jsp声明：会被编译到jsp生成的java了类中，其他的，就会被生成到_jspService方法中

在jsp，嵌入java代码即可！

```jsx
<%%>  // 片段
<%= %>  // 表达式输出一个值
<%--  --%>  // 这是注释
```

jsp的注释不会在客户端显示

## JSP指令
自定义指令错误

```jsx
<%--自定义错误页面--%>
  <%@ page errorPage="error/500.jsp" %>
```

```xml
<error-page>
  <error-code>404</error-code>
  <location>/error/404.jsp</location>
</error-page>

<error-page>
  <error-code>500</error-code>
  <location>/error/500.jsp</location>
</error-page>
```

jsp标签

```jsx
// 导入另一个文件的内容
<jsp:include page="common/header.jsp"/>
```

jsp 设置EL表达式

```jsx
// true表示忽略EL表达式
<%@ page isELIgnored="false" %>
```

## 内置的9大对象
+ PageContext    // 页面上下文
+ Request       // 请求
+ Response    // 响应
+ Session      // session
+ Application  【ServletContext】
+ config   【ServletConfig】
+ out
+ page       // 当前
+ Exception

作用域

```java
public static final int PAGE_SCOPE = 1;
public static final int REQUEST_SCOPE = 2;
public static final int SESSION_SCOPE = 3;
public static final int APPLICATION_SCOPE = 4;
pageContext.setAttribute("name1","姓名1");   // 保存的数据只在一个页面中有效
request.setAttribute("name2","姓名2");       // 保存的数据只在一次请求中有效，请求转发会携带这个这个数据
session.setAttribute("name3","姓名3");       // 保存的数据只在一次会话中有效。从浏览器打开到浏览器关闭
application.setAttribute("name4","姓名4");   // 保存的数据只在服务器中有效，从打开服务器到关闭服务器
```

## JSP标签，JSTL标签，EL表达式
```xml
<dependency>
    <groupId>javax.servlet.jsp.jstl</groupId>
    <artifactId>jstl-api</artifactId>
    <version>1.2</version>
</dependency>
<dependency>
    <groupId>taglibs</groupId>
    <artifactId>standard</artifactId>
    <version>1.1.2</version>
</dependency>
```

EL** 表达式：${}**

+ **获取数据**
+ **执行运算**
+ **获取web开发的常用对象**

**jsp标签**

```xml
<!--  -->
<jsp: include></jsp:>
<!-- http://localhost:8080/hello1.jsp?name1=名字1&name2=名字2 -->
<jsp:forward page="hello1.jsp">
  <jsp:param name="name1" value="名字1"/>
  <jsp:param name="name2" value="名字2"/>
</jsp:forward>
```

**JSTL标签**

[**菜鸟教程**](https://www.runoob.com/jsp/jsp-jstl.html)** 查看标签**

JSTL 标签库的使用就是为了弥补HTML标签的不足；它自定义了许多标签，可以供我们使用，标签的功能和java代码一样！

+ 核心标签
+ 格式化标签
+ SQL标签
+ XML标签

jstl标签库使用步骤

+ 引入对应的taglib
+ 使用其中的方法
+ 在tomcat也需要引入jstl的包，否则会报错：jstl解析错误

c:if c:choose c:when c:forEach

```html
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%--引入核心标签库，才能使用核心标签 core--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="damo02.jsp" method="get">
    <input type="text" name="username" value="${param.username}">
    <input type="submit" value="登录">
</form>
<!-- if 测试 -->
<c:if test="${param.username==''admin''}" var="isAdmin">
    <c:out value="管理员登录成功" />
</c:if>

<c:out value="${isAdmin}" />


<%--
var 每一次遍历出来的变量
items 要遍历的对象
begin 起始值
end 结束值
step 步长
--%>
<c:forEach var="people" items="${list}" begin="1" end="3" step="2">
    <c:out value="${people}"/> <br>
</c:forEach>

</body>
</html>

```

## JavaBean
实体类

JavaBean有特定的写法：

+ 必须有一个无参构造
+ 属性必须私有化
+ 必须有对应的get/set方法

一般用来和数据库的字段做连接

```html
<body>

<jsp:useBean id="people" class="com.jie.jsp.People" scope="page"/>

<jsp:setProperty name="people" property="address" value="长江"/>
<jsp:setProperty name="people" property="age" value="18"/>
<jsp:setProperty name="people" property="id" value="1"/>
<jsp:setProperty name="people" property="name" value="张三"/>

地址：<jsp:getProperty name="people" property="address"/>
id: <jsp:getProperty name="people" property="id"/>
name: <jsp:getProperty name="people" property="name"/>
年龄：<jsp:getProperty name="people" property="age"/>
</body>
```

```java
People people = new people();
people.setid("1");
people.setname("张三");
people.setage("18");
people.setaddress("长江");

people.getid();
people.getname();
people.getage();
people.getaddress();
```

# MVC三层架构
## 两层架构
<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1747821299842-6b134002-ce53-414e-9b42-84c26585a488.png" width="945.6" title="" crop="0,0,1,1" id="uf44931e8" class="ne-image">

用户直接访问控制层，控制层就可以直接操作数据库；

```plain
servlet --> CRUD --> 数据库
弊端：程序十分臃肿，不利于维护
Servlet中的代码：处理请求，响应，视图跳转，处理jdbc，处理业务中的代码，处理逻辑代码
```

## 三层架构
<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1747821531421-5b6ced94-5d37-41ee-ab43-3350b4e70785.png" width="1034.4" title="" crop="0,0,1,1" id="u94af92f5" class="ne-image">

Model

+ 业务处理：业务逻辑 （Servlet）
+ 数据持久层：CRUD （Dao）

VIew

+ 展示数据
+ 提供链接发起Servlet请求 （a，form，img....）

Controller （Servlet）

+ 接收用户的请求： （req：请求参数，Session信息……）
+ 交给业务层处理对应的代码
+ 控制视图的跳转

# 过滤器，监听器
## Filter
Filter：过滤器，用来过滤网站的数据

+ 处理中文乱码
+ 登录验证

Filter开发步骤

+ 导包
+ 编写过滤器

```java
public class CharacterEncodingFilter implements jakarta.servlet.Filter {
    // 初始化
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("CharacterEncodingFilter初始化");
    }

    // chain : 链
    /**
    过滤中的所有底代码，在过滤待定请求的时候都会执行
    必须让顾虑去继续执行同行
    */
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        System.out.println("CharacterEncodingFilter执行前");
        // 程序从此处开始拦截
        chain.doFilter(request, response);  // 让过滤器接着往下走
        System.out.println("CharacterEncodingFilter执行后");
    }

    // 销毁
    @Override
    public void destroy() {
        System.out.println("CharacterEncodingFilter销毁");
    }
}

```

+ 在web.xml中配置Filter过滤器

```xml
<web-app>
  <servlet>
    <servlet-name>ShowServlet</servlet-name>
    <servlet-class>com.jie.servlet.ShowServlet</servlet-class>
  </servlet>
  <servlet-mapping>
    <servlet-name>ShowServlet</servlet-name>
    <url-pattern>/servlet/show</url-pattern>
  </servlet-mapping>
  <servlet-mapping>
    <servlet-name>ShowServlet</servlet-name>
    <url-pattern>/show</url-pattern>
  </servlet-mapping>

  <filter>
    <filter-name>CharacterEncodingFilter</filter-name>
    <filter-class>com.jie.filter.CharacterEncodingFilter</filter-class>
  </filter>

  <filter-mapping>
    <filter-name>CharacterEncodingFilter</filter-name>
    <!-- 只要是/servlet的任何请求都会经过这个过滤器  -->
    <url-pattern>/servlet/*</url-pattern>
  </filter-mapping>

</web-app>
```

+

## Listener
实现监听器的接口；很多

+ 编写一个监听器，实现监听器的接口

```java
public class OnlineCountListener implements HttpSessionListener {

    // 创建Session监听：
    // 一旦创建一个Session就会触发一次这个事件
    @Override
    public void sessionCreated(HttpSessionEvent se) {
        System.out.println(se.getSession().getId());
        ServletContext ctx = se.getSession().getServletContext();
        Integer onlineCount = (Integer) ctx.getAttribute("OnlineCount");
        if (onlineCount == null) {
            onlineCount = 1;
        } else {
            int count = onlineCount.intValue();
            onlineCount = count +1;
        }

        ctx.setAttribute("OnlineCount", onlineCount);

    }

    // 销毁
    // 一旦销毁一个Session就会触发一次这个事件
    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        ServletContext ctx = se.getSession().getServletContext();
        Integer onlineCount = (Integer) ctx.getAttribute("OnlineCount");
        if (onlineCount == null) {
            onlineCount = 0;
        } else {
            int count = onlineCount.intValue();
            onlineCount = count - 1;
        }
        ctx.setAttribute("OnlineCount", onlineCount);
    }
}
```

+ web.xml注册监听器

```java
<!-- 注册监听器 -->
  <listener>
    <listener-class>com.jie.listener.OnlineCountListener</listener-class>
  </listener>
```

+ 看情况是否使用监听器



## 常见应用
用户登录之后才能进入主页！用户注销后就不能进入主页了！

1. 用户登录之后，向session中放入用户的数据
2. 进入主页的时候要判断是否已经登录,在主页和过滤器中都可以实现

```java
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取前端请求的参数
        String username = req.getParameter("username");

        if (username.equals("admin")) {  // 登录成功
            req.getSession().setAttribute(Contanst.USER_SESSION,  req.getSession().getId());
            resp.sendRedirect("/sys/success.jsp");
        } else {    // 登录失败
            resp.sendRedirect("/error.jsp");
        }
    }
```

```java
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    Object user_session = req.getSession().getAttribute(Contanst.USER_SESSION);

    if (user_session != null) {
        req.getSession().removeAttribute(Contanst.USER_SESSION);
        resp.sendRedirect("/login.jsp");
    } else {
        resp.sendRedirect("/login.jsp");
    }
}
```

```java
public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

    HttpServletRequest request = (HttpServletRequest) servletRequest;
    HttpServletResponse response = (HttpServletResponse) servletResponse;

    if (request.getSession().getAttribute(Contanst.USER_SESSION) != null) {
        response.sendRedirect("/error.jsp");
    }

    filterChain.doFilter(servletRequest, servletResponse);
}
```

```xml
  <servlet>
    <servlet-name>LogoutServlet</servlet-name>
    <servlet-class>com.jie.servlet.LogoutServlet</servlet-class>
  </servlet>
  <servlet-mapping>
    <servlet-name>LogoutServlet</servlet-name>
    <url-pattern>/servlet/logout</url-pattern>
  </servlet-mapping>

  <filter>
    <filter-name>SysFilter</filter-name>
    <filter-class>com.jie.listener.SysFilter</filter-class>
  </filter>
  <filter-mapping>
    <filter-name>SysFilter</filter-name>
    <url-pattern>/sys/*</url-pattern>
  </filter-mapping>
```

```html
<body>
<h1>登录</h1>
<form action="servlet/login">
  <input type="text" name="username">
  <input type="submit">
</form>
</body>
```

```html
<h1>错误页面</h1>
<h3>没有权限，用户名错误</h3>

<a href="/login.jsp">返回登录页面</a>
```

```html
<body>
<%
    Object userSession = request.getSession().getAttribute(Contanst.USER_SESSION);

    if (userSession==null){
       response.sendRedirect("/login.jsp");
    }

%>
<h1>主页</h1>
<a href="/servlet/logout" >注销</a>
</body>
```

# JDBC
## 流程
1. 导入依赖

```xml
<dependency>
  <groupId>mysql</groupId>
  <artifactId>mysql-connector-java</artifactId>
  <version>8.0.33</version>
</dependency>
```

2. IDEA中连接数据库
3. 使用JDBC
    1. 加载驱动
    2. 连接数据库
    3. 向数据库发送SQL的对象Statement，PrepareStatement
    4. 编写SQL
    5. 执行SQL
    6. 关闭连接

# 文件上传下载
## 准备工作
+ 需要导入的jar包

```xml
<dependency>
  <groupId>commons-io</groupId>
  <artifactId>commons-io</artifactId>
  <version>2.19.0</version>
</dependency>
<dependency>
  <groupId>commons-fileupload</groupId>
  <artifactId>commons-fileupload</artifactId>
  <version>1.5</version>
</dependency>
```

+ 文件上传的注意事项
    - 为保证服务器的安全，上传文件应该放在外界无法直接访问的目录下，比如放于WEB-INF目录下
    - 为防止文件覆盖的现象发生，要为上传文件产生一个唯一的文件名
    - 要限制文件上传的最大值
    - 可以限制上传文件的类型，在收到上传文件名时，判断后缀名是否合法
+ 需要用到的类详解
    - ServletFIleUpload：负责处理上传文件数据，并将表单中每个输入项封装成一个FileItem对象，在使用ServletFIleUpload对象解析请求时需要DiskFIleItemFactory对象。所以，需要在进行解析工作前构造好DiskFileItemFactory对象，通过ServletFIleUpload对象的构造方法或setFileItemFactory()方法设置ServletFIleUpload对象的fileItemFactory属性

## FileItem类
+ 在HTML页面input必须有name`<input type="file" name="filename">`
+ 表单如果包含一个文件输入项的话，这个表单的enctype属性就必须设置为`multipart/form-data`

```html
<%--通过表单上传文件
  get：上传文件大小有限制
  post：上传文件没有限制
  --%>
  <form action="" enctype="multipart/form-data" method="post">
    上传用户：<input type="text" name="username"><br/>
    <p><input type="file" name="file1"></p>
    <p><input type="file" name="file2"></p>

    <p><input type="submit">|<input type="reset"></p>
  </form>
  
```

+ 常用方法介绍

```java
//是普通表单字段？（true）文件上传字段(false)
boolean isFormField();
//用于返回表单标签name属性的值
String getFieldName();
//用于将FileItem对象中保存的数据流内容以一个字符串返回
String getString(String encoding) throws UnsupportedEncodingException;
//文件上传字段的文件名 IE显示：路径+文件名（C:\1.txt） 其他：1.txt
String getName();
//输入流返回上传文件数据
InputStream getInputStream() throws IOException;
//清空Fileitem保存内容
void delete();
//上传文件大小
long getSize();
//在内存？（true）
boolean isInMemory();
//写入文件
void write(File file) throws Exception
```

## ServletFileUpload类
ServletFileUpload负责处理上传的文件的数据，并将表单中的每个输入项封装成一个FileItem对象中，使用其parseRequest(HttpServletRequest)方法，可以将公共表单中的每一个HTML标签提交的数据封装成一个FileItem对象，然后以List列表的形式返回，使用该方法处理上传我那件简单易用

## 完整代码
```java
public class FIleServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // 判断上传的文件是普通表单还是待文件的表单
        if (ServletFileUpload.isMultipartContent((RequestContext) req)){
            return;  // 终止方法运行，说明这是一个普工的表单，直接返回
        }

        // 创建上传文件的保存路径，建议在WEB-INF路径下，安全，用户无法直接访问上传的文件
        String uploadPath = this.getServletContext().getRealPath("/WEB-INF/upload");
        File uploadFile = new File(uploadPath);
        if (!uploadFile.exists()){
            uploadFile.mkdirs();   // 创建这个目录
            System.out.println("下载目录创建成功");
        }

        // 缓存，临时文件
        // 临时路径，假如文件超过了预期的大小，我们就把它放到一个临时文件中，过几天自动删除，或者提醒用户转为永久文件
        String temPath = this.getServletContext().getRealPath("/WEB-INF/temp");
        File temFile = new File(temPath);
        if (!temFile.exists()){
            temFile.mkdirs();   // 创建这个临时目录
            System.out.println("临时目录创建成功");
        }

        // 处理上传的文件，一般都需要通过流来获取
        // 可以使用request.getInputStream(),原生态的文件上传流获取，比较麻烦
        // 建议使用Apache的文件上传组件来实现
        // common-fileupload，大需要依赖于 commons-io 组件

        // 1.创建DiskFileItemFactory对象，处理文件上传路径或者大小限制的
        DiskFileItemFactory factory = new DiskFileItemFactory();
        // 通过这个工厂设置一个缓冲区，当上传的文件大于这个缓冲区的时候，将他放到临时文件中
        factory.setSizeThreshold(1024*1024); // 缓冲区大小为1M
        factory.setRepository(temFile);  // 临时目录的保存目录，需要一个File

        // 2. 获取ServletFileUpload
        ServletFileUpload upload = new ServletFileUpload(factory);

        // 监听文件上传进度
        upload.setProgressListener(new ProgressListener() {
            @Override
            // pBytesRead: 已经读取到的文件大小
            // pContentLength： 文件大小
            public void update(long pBytesRead, long pContentLength, int i) {
                System.out.println("总大小"+pContentLength+"已上传"+pBytesRead);
            }
        });
        // 处理乱码问题
        upload.setHeaderEncoding("UTF-8");
        // 设置单个文件的最大值
        upload.setFileSizeMax(1024*1024*10);
        // 设置总共能够上传文件的大小
        // 1024 = 1kb * 1024
        upload.setSizeMax(1024*1024*10);

        // 3.处理上传的文件
        String msg = "文件上传失败";
        try {
            // 把前端请求解析，封装成一个FileItem对象， 需要从ServletFileUpload对象中获取
            List<FileItem> fileItems = upload.parseRequest((RequestContext) req);
            // FileItem 每一个表单对象
            for (FileItem item : fileItems) {
                // 判断上传文件是普通的表单还是带文件的表单
                if (item.isFormField()) {
                    String name = item.getFieldName();
                    String value = item.getString("UTF-8");  // 处理乱码
                    System.out.println(name + "：" + value);
                } else {  // 文件的情况下

                    //========================处理文件=================================
                    String uploadFileName = item.getName();
                    // 可能存在文件名不合法的可能
                    if (uploadFileName.trim().equals("")||uploadFileName==null){
                        continue;
                    }

                    // 获取上传的文件名， substring截取字符串：从文件路径最后一个 / +1 的位置开始
                    String fileName = uploadFileName.substring(uploadFileName.lastIndexOf("/") + 1);
                    // 获取文件的后缀名   从最后一个 . +1 的位置开始截取
                    String fileExtName = fileName.substring(fileName.lastIndexOf(".") + 1);

                    // 可以使用UUID（唯一识别通用码），保证文件名唯一
                    // UUID.randomUUID()，随机生一个唯一识别的通用码

                    // 网络传输中的东西，都需要序列化
                    // POJO，实体类，如果想要在多个电脑上运行，传输===>需要把对象都序列化了
                    // implements Serializable  ： 标记接口，JVM---> Java栈 本地方法栈 native --> C++
                    String uuid = UUID.randomUUID().toString();

                    //========================存放地址=================================

                    // 存到哪？ uploadPath
                    // 文件真实存在的路径 realPath
                    String realPath = uploadPath + "/" + uuid;
                    // 给每一个文件创建一个对应的文件夹
                    File realPathFIle = new File(realPath);
                    if (!realPathFIle.exists()){
                        realPathFIle.mkdirs();
                    }

                    //========================文件传输=================================
                    // 获取文件上传的流
                    InputStream inputStream = item.getInputStream();

                    // 创建一个文件输出流
                    // realPath = 真实的文件夹；
                    // 差一个文件；加上输出文件的名字+ “/” + uuid
                    FileOutputStream outputStream = new FileOutputStream(realPath+"/"+fileName);

                    // 创建一个缓冲区
                    byte[] buffer = new byte[1024*1024];

                    // 判断是否读取完毕
                    int len = 0;
                    // 如果大于0说明还存在数据；
                    while ((len = inputStream.read(buffer)) > 0) {
                        outputStream.write(buffer, 0, len);
                    }

                    // 关闭流
                    inputStream.close();
                    outputStream.close();

                    msg = "文件上传成功";

                    item.delete();  // 上传成功，清除临时文件

                }
            }


        } catch (FileUploadException e) {
            e.printStackTrace();
        }

        req.setAttribute("msg", msg);
        req.getRequestDispatcher("info.jsp").forward(req, resp);

        /*
        // 可以直接将上面3步封装成方法
        // 1.创建DiskFileItemFactory对象，处理文件上传路径或者大小限制的
        DiskFileItemFactory factory = getDiskFileItemFactory(file);
        // 2. 获取ServletFileUpload
        ServletFileUpload upload = getSevletFileUpload(factory);
        // 3.处理上传的文件
        String msg = uploadParseRequest(upload, req, uploadPath);
        */


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
```



```html
<html>
<body>
<h2>Hello World!</h2>
<%--通过表单上传文件
    get：上传文件大小有限制
    post：上传文件没有限制
    ${pageContext.request.contextPath}  获取服务器路径
--%>
<form action="/upload.do" enctype="multipart/form-data" method="post">
    上传用户：<input type="text" name="username"><br/>
    <p><input type="file" name="file1"></p>
    <p><input type="file" name="file2"></p>

    <p><input type="submit">|<input type="reset"></p>
</form>
</body>
</html>

```

## 文件下载
1. 向浏览器输出消息
2. 下载文件
    1. 要获取文件的路径
    2. 下载的文件名是啥？
    3. 设置向办法让刘浏览器能够支持下载我们需要的东西
    4. 获取下载文件的输入流
    5. 创建缓冲区
    6. 获取OutputStream对象
    7. 将FileOutputStream列入到buffer缓冲区
    8. 使用OutputStream将缓冲区中的数据输出到客户端

```java
package com.jie.response;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.FileInputStream;
import java.io.IOException;

public class FileServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取下载文件的路径
        String realPath = this.getServletContext().getRealPath("1.png");
        // 下载的文件名是啥？
        String fileName = realPath.substring(realPath.lastIndexOf("/") + 1);
        // 设置想办法让浏览器支持下载的需要的东西
        resp.setHeader("Content-Disposition", "attachment; filename=" + fileName);
        // 获取下载文件的输入流
        FileInputStream in = new FileInputStream(realPath);
        // 创建缓冲区
        int len = 0;
        byte[] buffer = new byte[1024];
        // 获取输出流对象
        ServletOutputStream out = resp.getOutputStream();
        // 将FileOutputStream流写入到buffer中
        while ((len = in.read(buffer)) != -1) {
            out.write(buffer, 0, len);
        }
        in.close();
        out.close();


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}

```

# 邮件发送
## 基本原理
<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1748864219279-83263ed3-a2aa-4ade-8c65-e9f624e91488.png" width="1038.4" title="" crop="0,0,1,1" id="uba02b2c0" class="ne-image">

<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1748864779429-3330453f-76b5-4288-9e30-ec423a34fef6.png" width="1317.6" title="" crop="0,0,1,1" id="u58d78310" class="ne-image">

## 需要的jar包
+ 需要导入的jar包

<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1748865022050-97089895-da63-40e4-8121-0db9b879010c.png" width="429.79998779296875" title="" crop="0,0,1,1" id="u4e7e8d3e" class="ne-image">

## 普通邮件流程
+ 基本流程

<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1748865444223-415d8dc6-0ad6-40c4-9ba3-6c3313418751.png" width="751.2" title="" crop="0,0,1,1" id="u98c5f62b" class="ne-image">

+ 1.创建定义整个应用程序所需的环境信息的 Session 对象

```java
// QQ 才有，其他邮箱就不用
Session session = Session.getDefaultInstance(prop, new Authenticator() {
    public PasswordAuthentication getPasswordAuthentication() {
        // 发送人邮箱用户名，授权码
        return new PasswordAuthentication("用户名", "授权码");
    }
})

// 开启session的debug模式，这用就可以产科程序发送Email的运动状态
session.setDebug(True);
```

+ 2.通过Session得到transport对象

```java
Transport ts = session.getTransport();
```

+ 3.使用邮箱的用户名和授权码连上邮箱的服务器

```java
// host    user    password
ts.connect("smtp.qq.com", "2746325155@qq.com", "授权码");
```

+ 4.创建邮件

```java
// 注意需要传递session
MimeMessage message = new MimeMessage(session)
// 指明邮件的发送人
message.setFrom(new InternetAddress("账号"));
// 指明邮件的收件人，现在发件人和收件人是一样的，就是自己发给自己
message.setRecipient(Message.RecipientType.TO, new InternetAdderss("账号");
// 邮件的标题
message.setContent("<h1 style=''color: red''>标题</h1>", "text/html;charset=utf-8");

```

+ 5.发送邮件

```java
ts.sendMessage(message, message.getAllRecipients());
```

+ 6.关闭连接

```java
ts.close();
```

## 复杂邮件', 0, NOW());

INSERT INTO `note` (`id`, `author_id`, `title`, `content`, `like_count`, `created_at`)
VALUES (19, 1005, 'Numpy', '### array创建组
语法格式如下

numpy.array(object, dtupe=None, copy=True, order=None)

+ object：数组或嵌套的数列，可以是数值型列表
+ dtype：数组元素的数据类型，可选，常用的有int，float
+ copy：对洗澡歌是否需要复制，可选
+ order：创建数组的样式，C为行方向，F为列方向，A为任意方向（默认）
+ subok：默认返回一个与基类类型一致的数组
+ ndmin：指定生成数组的最小维度

```python
import numpy as np
# 一维数组
np.array([1,2,3,4,5])
#二维数组
np.array([
    [1,2,3],
    [4,5,6],
    [7,8,9]])
# 指定维度
np.array([1,2,3], ndmin=3)  # 生成三维数组
# 指定数组的数据类型
np.array([1,2,3,4,5], dtype=np.int)

```



### arange创建数组
格式

numpy.arange(start, stop, step, stype)

+ start：起始值
+ stop：终止值（不包含）
+ step：步长，默认为1
+ dtype：返回ndarray的数组类型，如果没有提供，则会使用输入数据的类型

```python
# arange创建数组
# 一维数组
import numpy as np
np.arange(1,6,2,dtype=float)
# 二维数组
np.array([np.arange(1,4),np.arange(4,8)])
```



### random创建随机数组
numpy中的random模块包含了很多方法可以用来产生随机数

+ seed：确定随机生成器种子
+ permutation：返回一个序列的随机排列或返回一个随机排列的范围
+ shuffle：对一个序列就地随机排雷
+ rand：产生均匀分布的样本值
+ randint：该方法有三个参数low、high，size，默认high是None，如果只有low，那范围就是[0,low), 如果有high，范围就是[low,high)
+ random（size=None）：该方法返回(0.0,1.0)范围的随机数
+ randn（d0,d1,d2,.....,dn）:randn函数返回一个或一组样本，具有标准正态分布(期望为0，方差为1)，dn表格每个维度，返回值范围指定维度的array
+ normal(loc, scale,size)：生成正态分布数组，loc：期望，scale：方差，size：形状

```python
impart numpy as np
# 随机生成器种子，使生成的随机数每次都一样
np.random.seed(0)
# size可确定数组的形状
# np.random.random() 数值范围在(0.0,1.0)
np.random.random(size=(2,5))  # 2行5列

# np.random.randint(low, high, size)
# low:最小值,high:最大值,size形状
np.random.randint(2, 5, size(4, 5))
# .shape 获取数组的形状

#  np.random.randn(d0,d1,...,dn)标准正态分布数组,dn数组维度
np.random.randn(2,3,4) # 4维数组

# 生成正态分布数组
np.random.normal(loc=2, scale=1, size(3,2))
```

### ndarray对象的属性
+ .ndim：秩，即轴的数量或维度的数量
+ .shape：ndarray对象的尺度，对于矩阵，n行m列
+ .size：ndarray对象元素的个数，相当于.shape中n*m
+ .dtype：ndarray对象的元素类型
+ .itemsize：ndarray对象中每个元素的大小，以字节为单位

### zeros创建全0数组，ones创建全为1的数组
numpy.zeros(shape, dtype=float, order=''C'')

numpy.ones(shape, dtype=float, order=''C'')

+ shape：数组形状，
+ dtype：数组元素数据类型，可选，默认为float
+ order：<font style="color:rgb(6, 6, 7);">用于指定数组在内存中的存储顺序，可选，''C'', ''F'', ''A''</font>

numpy.zeros_like(z)：根据传入数组的的形状创建全为零的数组

numpy.zones_like(z)：根据传入数组的的形状创建全为零的数组

### empty创建指定形状的数组，可填充数据
numpy.empty(shape, dtype=float, order="C")

+ shape：指定数组的形状
+ dtype：未初始化数组的数据类型，可选，默认为float
+ order：<font style="color:rgb(6, 6, 7);">用于指定数组在内存中的存储顺序，可选，''C'', ''F'', ''A''</font>

numpyempty_like(z)：根据传入数组的的形状创建未初始化数组

### full创建指定形状，指定值的数组
numpy.full(shape,fill_value)

+ shape：指定数组的形状
+ fill_value：指定值

numpy.full_like(a,fill_value): 对指定数组的值全改为fill_value

### 创建单位矩阵eye,identity
对角线全为1，其余值全为0的矩阵，任何矩阵与之相乘都等于其本身

eye(shape,dtype=float)

identity(shape,dtype=float)

+ shape：数组的维度
+ dtype：数组的数据类型，可选，默认为float

### linspace创建等差一维数组,logspace创建等比数列
np.linspace(start,stop,num=50,endpoing=True,retstep=False，dtype=float)

np.logspace(start,stop,num=50,endpoing=True,base=10.0,dtype=float)

+ start：起始值, base**start
+ stop：终止值，base**stop，如果endpoing=true，该值包含于数列中
+ num：要生成等步长的样本数量，默认为50
+ endpoint：True：表示该值包含于数列中，False：与之相反，默认为True
+ retstep：如果为True，生成的数组中会显示间距，反之不显示，默认为False
+ base：对数log的底数
+ dtype：ndarry的数据类型，默认为float



### 一维数组索引和切片
索引：可以基于0-n的下标进行索引，**arr[a]**

切片：并设置start，stop，step,从原数组中切割一个新的数组

**arr[start:stop:step]，arr[start:stop]**

+ start：起位置，默认为0
+ stop：终止位置，默认为最后一个位置
+ step：步长，默认为1, 当为负数时，从后往前开始切片

****

### 二维数组索引和切片
根据下标进行索引

对行和列进行切片 arr[行索引，列索引]

**arr[start:stop:step, start:stop:step]**

```python
import numpy as np
x = np.arange(1,10).reshape#(3,3)
# 获取第二行
x[1]
# 获取第二行第三列
x[1][2]
x[1,2]
# 获取的二列
x[:2]
# 获取第二到三行，第一到三列
x[1:2,0:2]
# 同时获取多个数据时,第二行第三列，第三行第三列的数据
x[(1,2), (2,2)]
```

二维数据也支持负索引

对数组索引或切片后的值进行修改后，原数组的值也会一起被修改

如果对数组进行拷贝`np.copy`后，修改新数组的值时，原数组的值不会修改

### 改变数组的维度
注意：前后数组的元素个数不能改变

**arr.reshape()**：将一维数组转换为二维，三维或更多维度的数组，也可将多维数组转换位一维数组

**arr.ravel():**将三维数组转换为一维数组

**arr.flatten():**将二维数组转换为一维数组

**arr.shape=(6,4):**利用shape属性将三维数组arr转换为二维数组(6行，4列)

**arr.resize((2,12)):**使用resize修改数组的维度



### 数组的拼接
常用的函数

1. concatenate((arr1,arr2,...), axis=0)
    - (arr1,arr2,...)：相同类型的数组
    - axis：沿着它连接数组的轴，0：第一个维度，1：第二个维度，……，默认为0

**注意：多维数组拼接时需要数组的形状相同**

2. hstack()：水平堆叠序列中的数组（列方向即行不变即axis=0）
3. vstack()：竖直堆叠序列中的数组（行方向即列不变即axis=1）
4. dstack()：即axis=3

### 数组的转置
二维数组可以使用arr.T进行对数组的转置

使用transpose进行多维数组转置

transpose(arr, 列表/元组)

列表/元组：表示想要转置数组的形状

```python
import numpy as np

arr = np.arange(1,37).reshape(2,6,3)
arr2 = np.transpose(arr,(0,2,1))
print(arr2.shape)
# 输出结果为(2,3,6)
```

### 数组的分隔
numpy.split(ary, indices_or_sections, axis)

+ ary：被分割的数组
+ indices_or_sections：如果是一个整数，就用该数进行平均分割，即分成多少分；如果是一个数组，为沿轴切分隔的位置(左开右闭)
+ axis：沿着哪个维度进行切向，默认为0

```python
import numpy as np
arr = np.arange(1,37).reshape(6,6)
# 传入整数，平均分成三个数组
np.split(arr, 3)
# 传入数组
np.split(arr, [2,5])

```



### Numpy中的常用函数
#### 数学函数
+ np.abs(), np.fags()：计算整数，浮点数的绝对值
+ np.sqrt()：计算各元素的平方根
+ np.reciprocal()：计算各元素的倒数
+ np.square()：计算各元素的平方
+ np.exp：计算各元素的指数ex
+ np.log(), np.log10(), np.log2()：计算各元素的自然对数，以10为底的对数，以2为底的对数
+ np.slgn()：计算各元素的符号，1（整数），0（零），-1（负数）
+ np.cell(), np.floor(), np.rint()：对各个元素分别向上，向下取整，四舍五入
+ np.modf()：将各个元素的小数部分和整数部分以两个独立的数组返回
+ np.cos(), np.sin(), np.tan()：求各个元素的三角函数

#### 算数函数
+ np.add(), np.subtract(), np.multiply(), np.divide()：对两个数组的各个元素进行加（a+b），减(a-b)，乘(a*b)，除(a/b)

out参数的使用：将计算后的数据传入指定的未初始化的相同数组

```python
import numpy as np
a = np.aragne(1,13).reshape(3,4)
b = np.aragne(13,24).reshape(3,4)
result = empty_like(a)
np.addd(a,b,out=result)
```

#### 统计函数
+ np.sum(), np.mean(), np.prod()：求和，求平均值，求所有元素的乘积
+ np.std(), np.var(), np.median()：求标准差，求方差，求中位数
+ np.power(arr, a, out=new_arr), np.sqrt(arr, a, out=new_arr)：幂运算，开方
+ np.min(), np.max()：最小值，最大值
+ np.argmin(), np.argmax()：最小值下标，最大值下标
+ np.cumsum()：对数组中元素累加求和，可指定轴向
+ np.cumprod()：对数组中元素累积求和，可指定轴向
+ np.ptp()：计算一组数中最大值与最小值，可指定轴向
+ np.unigue()：删除数组中重复数据，并对数据进行排序
+ np.nonzero()：返回数组中非零元素的索引

numpy.power()：将第一个输入数组中的元素作为底数，计算他与第二个输入数组中对应元素的幂

对于多维数组可用axis参数指定轴向

#### 其他常用函数
+ np.tile()：将数组的数据按照行列复制扩展

```python
import numpy as np
arr = np.array([1,2,3,4])
# 将数组扩展复制两次，生成一个新的数组
arr2 = np.tile(arr, 2)
# 将数组在列上扩展两次，在行上扩展三次
arr3 = np.tile(arr, (2, 3))
```

+ np.repeat(arr, num, axis=0)：将数组中的每个元素重复若干次，没有指定axis时，生成一维数组

```python
import numpy as np
arr = np.array([1,2,3,4])
# 将每个元素重复3次
arr2 = np.repeat(arr, 3)
```

+ np.roll(arr，sum，axis=0)：对数组元素进行移位，sum大于0向后，sum小于0向前，指定axis时，会将整个维度的数向后移位

```python
import numpy as np
arr = np.array([1,2,3,4])
# 将每个元素向后调2位
arr2 = np.roll(arr, 2)
```

+ resize()：重新调整数组的大小，数组元素可以不同
+ place()/put()：将数组中满足条件的元素/指定的元素的索引替换为指定的值

```python
import numpy as np
arr = np.array([1,2,3,4])
# 将数组中小于5的数用0替换
np.place(arr, arr<5, 0)
# 将索引为2的值替换掉
np.put(arr, 2, 1000)
```

+ np.savetxt(path, arr, fmt=None)：将数据保存到txt文件中
    - path：文件路径
    - arr：数组
    - fmt：数据的数据类型, %d, %f
+ np.roadtxt(path, dtype=float, delimiter='',''， skiprows=0, <font style="color:rgb(6, 6, 7);">usecols=None</font>)：从文件中加载数据
    - path：文件路径
    - dtype：数据类型， 默认为float
    - delimeiter：指定分隔符
    - skiprows：跳过文件开头的行数，默认为0
    - usecols：指定需要读取的列，默认为None，表示读取所有列
+ np.genfromtxt()：根据文件内容生成数据，可以指定缺失值的处理等
+ np.any()：如果数组中存在一个为True的元素（或者能转为True的元素），返回True
+ np.all()：如果数组中所有元素都为True的元素（或者能转为True的元素），返回True
+ np.where(条件, x, y)：将每个元素进行判断，如果条件为True，对应值为x，否则对应值为y
+ np.dot()：将矩阵相乘
+ np.sort(arr，axis=1)：对数组进行从小到大排序，返回一个新的排好序的数组，axis默认为1，原数组不变
+ np.argsort()：返回的是数组值从小到大排序后元素对应的索引值

### Numpy广播机制
1. **<font style="color:rgb(6, 6, 7);">如果两个数组的维度数不同，形状较小的数组会在最左边补 1</font>**<font style="color:rgb(6, 6, 7);">，直到两个数组的维度数相同。</font>
2. **<font style="color:rgb(6, 6, 7);">从右向左比较两个数组的形状</font>**<font style="color:rgb(6, 6, 7);">，如果某个维度的大小不同，且其中一个数组在该维度的大小为 1，则该数组会在该维度上进行扩展，以匹配另一个数组的大小。</font>
3. **<font style="color:rgb(6, 6, 7);">如果某个维度的大小不同，且两个数组在该维度的大小均不为 1，则会抛出错误</font>**<font style="color:rgb(6, 6, 7);">，因为无法进行广播。</font>

### 比较掩码
<font style="color:rgb(6, 6, 7);">布尔掩码是 NumPy 中处理数组数据的强大工具，可以高效地筛选、修改和统计数组中的元素。通过合理使用布尔掩码，可以避免显式循环，提高代码的效率和可读性</font>

### <font style="color:rgb(6, 6, 7);">魔法命令</font>
1. %time 和 %timeit用于测量代码的执行时间。
    - %time：测量单次执行的时间。
    - %timeit：多次执行代码，给出平均执行时间，更适合测量小段代码的性能。

```python
import numpy as np
测量单次执行时间
%time np.random.rand(1000000)
测量多次执行的平均时间
%timeit np.random.rand(1000000)
```

2. %matplotlib：用于在 Jupyter Notebook 中嵌入 Matplotlib 图形。
    - %matplotlib inline：将图形嵌入到 Notebook 中。
    - %matplotlib notebook：提供交互式图形支持。

```python
%matplotlib inline
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 100)
plt.plot(x, np.sin(x))
plt.show()
```

3.  %who 和 %whos：用于列出当前命名空间中的变量。
    - %who：列出当前命名空间中的所有变量。
    - %whos：列出当前命名空间中的所有变量及其详细信息（类型、大小等）。

```python
import numpy as np
a = np.array([1, 2, 3])
b = np.array([[1, 2], [3, 4]])
%who
%whos
```

4. %run：用于运行一个 Python 脚本文件

```python
%run my_script.py
```


', 0, NOW());

INSERT INTO `note` (`id`, `author_id`, `title`, `content`, `like_count`, `created_at`)
VALUES (20, 1005, 'SprngMVC', '# 简介
## 基本原理
<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1750230213640-25cd6846-2414-4a6d-aac0-d71d412546ca.png" width="744.8" title="" crop="0,0,1,1" id="uf44df764" class="ne-image">

**简要分析执行流程**

1. DispatcherServlet表示前置控制器，是整个SpringMVC的控制中心。用户发出请求，DispatcherServlet接收请求并拦截请求。

我们假设请求的url为 : http://localhost:8080/SpringMVC/hello

**如上url拆分成三部分：**

http://localhost:8080服务器域名

SpringMVC部署在服务器上的web站点

hello表示控制器

通过分析，如上url表示为：请求位于服务器localhost:8080上的SpringMVC站点的hello控制器。

2. HandlerMapping为处理器映射。DispatcherServlet调用HandlerMapping,HandlerMapping根据请求url查找Handler。
3. HandlerExecution表示具体的Handler,其主要作用是根据url查找控制器，如上url被查找控制器为：hello。
4. HandlerExecution将解析后的信息传递给DispatcherServlet,如解析控制器映射等。
5. HandlerAdapter表示处理器适配器，其按照特定的规则去执行Handler。
6. Handler让具体的Controller执行。
7. Controller将具体的执行信息返回给HandlerAdapter,如ModelAndView。
8. HandlerAdapter将视图逻辑名或模型传递给DispatcherServlet。
9. DispatcherServlet调用视图解析器(ViewResolver)来解析HandlerAdapter传递的逻辑视图名。
10. 视图解析器将解析的逻辑视图名传给DispatcherServlet。
11. DispatcherServlet根据视图解析器解析的视图结果，调用具体的视图。
12. 最终视图呈现给用户。

## 第一个springMVC
+ web.xml配置DispatchServlet

```java
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns="http://xmlns.jcp.org/xml/ns/javaee"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_4_0.xsd"
         version="4.0">
    <!--配置dispatchServlet：这个是springMVC的核心：请求分发器，前端控制器-->
    <servlet>
        <servlet-name>springmvc</servlet-name>
        <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
        <!--DispatcherServlet要绑定spring的配置文件-->
        <init-param>
            <param-name>contextConfigLocation</param-name>
            <param-value>classpath:springmvc-servlet.xml</param-value>
        </init-param>
        <!--启动级别-->
        <load-on-startup>1</load-on-startup>
    </servlet>

    <servlet-mapping>
        <servlet-name>springmvc</servlet-name>
        <url-pattern>/</url-pattern>
    </servlet-mapping>
</web-app>
```

+ 设置视图解析器

```java
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xmlns:aop="http://www.springframework.org/schema/aop"
       xsi:schemaLocation="http://www.springframework.org/schema/beans
                           http://www.springframework.org/schema/beans/spring-beans.xsd">

    <!-- 处理器映射器：可以不用显式设置-->
    <bean class="org.springframework.web.servlet.handler.BeanNameUrlHandlerMapping"/>

    <!--处理器适配器：可以不用显式设置-->
    <bean class="org.springframework.web.servlet.mvc.SimpleControllerHandlerAdapter"/>

    <!--视图解析器: 模版引擎，必须设置-->
    <bean class="org.springframework.web.servlet.view.InternalResourceViewResolver" id="internalResourceViewResolver">
        <!--前缀-->
        <property name="prefix" value="/WEB-INF/jsp/"/>
        <!--后缀-->
        <property name="suffix" value=".jsp"/>
    </bean>

    <!--BeanNameUrlHandlerMapping，注册实现类-->
    <bean id="/hello" class="com.jie.controller.HelloController"/>
</beans>
```

+ 实现Controller接口

```java
package com.jie.controller;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class HelloController implements Controller {
    @Override
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

        ModelAndView modelAndView = new ModelAndView();

        // 业务代码
        String message = "Hello Spring MVC!";

        modelAndView.addObject("msg", message);
        // 视图跳转
        modelAndView.setViewName("test");

        return modelAndView;
    }
}
```

## 注解实现（简单）
+ web.xml 配置基本不变

```xml
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns="http://xmlns.jcp.org/xml/ns/javaee"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_4_0.xsd"
  version="4.0">
  <!--配置dispatchServlet：这个是springMVC的核心：请求分发器，前端控制器-->
  <servlet>
    <servlet-name>springmvc</servlet-name>
    <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
    <!--DispatcherServlet要绑定spring的配置文件-->
    <init-param>
      <param-name>contextConfigLocation</param-name>
      <param-value>classpath:springmvc-servlet.xml</param-value>
    </init-param>
    <!--启动级别-->
    <load-on-startup>1</load-on-startup>
  </servlet>

  <servlet-mapping>
    <servlet-name>springmvc</servlet-name>
    <url-pattern>/</url-pattern>
  </servlet-mapping>
</web-app>
```

+ springmvc-servlet.xm 设置注解扫描，IOC容器，视图解析器

```xml
<?xml version="1.0" encoding="UTF-8"?><beans xmlns="http://www.springframework.org/schema/beans"
                                             xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                                             xmlns:context="http://www.springframework.org/schema/context"
                                             xmlns:mvc="http://www.springframework.org/schema/mvc"
                                             xsi:schemaLocation="http://www.springframework.org/schema/beans
                                             http://www.springframework.org/schema/beans/spring-beans.xsd
                                             http://www.springframework.org/schema/context
                                             https://www.springframework.org/schema/context/spring-context.xsd
                                             http://www.springframework.org/schema/mvc
                                             https://www.springframework.org/schema/mvc/spring-mvc.xsd">
    <!-- 自动扫描包，让指定包下的注解生效,由IOC容器统一管理 -->
    <context:component-scan base-package="com.jie.controller"/>
    <mvc:default-servlet-handler />
    <mvc:annotation-driven />

    <!-- 视图解析器 -->
    <bean class="org.springframework.web.servlet.view.InternalResourceViewResolver" id="internalResourceViewResolver">
        <!-- 前缀 -->
        <property name="prefix" value="/WEB-INF/jsp/" />
        <!-- 后缀 -->
        <property name="suffix" value=".jsp" />   </bean>
</beans>
```

+ 创建对应的包和实现方法

```java
@Controller
public class HelloController {

    @RequestMapping("/hello")
    public String hello(Model model) {

        //向模型中添加属性msg与值，可以在JSP页面中取出并渲染
        model.addAttribute("msg", "Hello World111111111111111");
        //web-inf/jsp/hello.jsp
        return "hello";
    }
}
```

+ 前端接收参数  msg

```html
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
${msg}
</body>
</html>
```

# Controller和RequestMapping
## 控制器Controller
+ 控制器复杂提供访问应用程序的行为，通常通过接口定义或注解定义两种方法实现。
+ 控制器负责解析用户的请求并将其转换为一个模型。
+ 在Spring MVC中一个控制器类可以包含多个方法
+ 在Spring MVC中，对于Controller的配置方式有很多种

使用注解@Controller

+ @Controller注解类型用于声明Spring类的实例是一个控制器（在讲IOC时还提到了另外3个注解）；
+ Spring可以使用扫描机制来找到应用程序中所有基于注解的控制器类，为了保证Spring能找到你的控制器，需要在配置文件中声明组件扫描。

```xml
<!-- 自动扫描指定的包，下面所有注解类交给IOC容器管理 -->
<context:component-scan base-package="com.kuang.controller"/>
```

+ 增加一个ControllerTest2类，使用注解实现；

```java
//@Controller注解的类会自动添加到Spring上下文中
@Controller
public class ControllerTest2{

    //映射访问路径
    @RequestMapping("/t2")
    public String index(Model model){
        //Spring MVC会自动实例化一个Model对象用于向视图中传值
        model.addAttribute("msg", "ControllerTest2");
        //返回视图位置
        return "test";
    }
}
```



## RequestMapping
**@RequestMapping**

+ @RequestMapping注解用于映射url到控制器类或一个特定的处理程序方法。可用于类或方法上。用于类上，表示类中的所有响应请求的方法都是以该地址作为父路径。
+ 为了测试结论更加准确，我们可以加上一个项目名测试 myweb
+ 只注解在方法上面

```java
@Controller
public class TestController {
    @RequestMapping("/h1")
    public String test(){
        return "test";
    }
}
```

访问路径：http://localhost:8080 / 项目名 / h1

+ 同时注解类与方法

```java
@Controller
@RequestMapping("/admin")
public class TestController {
    @RequestMapping("/h1")
    public String test(){
        return "test";
    }
}
```

访问路径：http://localhost:8080 / 项目名/ admin /h1  , 需要先指定类的路径再指定方法的路径；

## RestFul 风格
**概念**

+ Restful就是一个资源定位及资源操作的风格。不是标准也不是协议，只是一种风格。基于这个风格设计的软件可以更简洁，更有层次，更易于实现缓存等机制。

**功能**

+ 资源：互联网所有的事物都可以被抽象为资源
+ 资源操作：使用POST、DELETE、PUT、GET，使用不同方法对资源进行操作。分别对应 添加、 删除、修改、查询。

**传统方式操作资源**  ：通过不同的参数来实现不同的效果！方法单一，post 和 get

	http://127.0.0.1/item/queryItem.action?id=1 查询,GET

	http://127.0.0.1/item/saveItem.action 新增,POST

	http://127.0.0.1/item/updateItem.action 更新,POST

	http://127.0.0.1/item/deleteItem.action?id=1 删除,GET或POST

**使用RESTful操作资源** ：可以通过不同的请求方式来实现不同的效果！如下：请求地址一样，但是功能可以不同！

	http://127.0.0.1/item/1 查询,GET

	http://127.0.0.1/item 新增,POST

	http://127.0.0.1/item 更新,PUT

	http://127.0.0.1/item/1 删除,DELETE

**学习测试**

+ 在Spring MVC中可以使用  @PathVariable 注解，让方法参数的值对应绑定到一个URI模板变量上。

```java
@Controller
public class RestFulController {

    //映射访问路径
    @RequestMapping("/commit/{p1}/{p2}")
    public String index(@PathVariable int p1, @PathVariable int p2, Model model){

        int result = p1+p2;
        //Spring MVC会自动实例化一个Model对象用于向视图中传值
        model.addAttribute("msg", "结果："+result);
        //返回视图位置
        // localhost:8080/commit/p1/p2
        return "test";
    }
}
```

**使用method属性指定请求类型**

+ 用于约束请求的类型，可以收窄请求范围。指定请求谓词的类型如GET, POST, HEAD, OPTIONS, PUT, PATCH, DELETE, TRACE等

**所有的地址栏请求默认都会是 HTTP GET 类型的**

+ 方法级别的注解变体有如下几个：组合注解

```java
@GetMapping
@PostMapping
@PutMapping
@DeleteMapping
@PatchMapping
```

+ @GetMapping 是一个组合注解，平时使用的会比较多！
+ 它所扮演的是 @RequestMapping(method =RequestMethod.GET) 的一个快捷方式。

# 转发、跳转、数据处理
## SpringMVC实现转发和跳转
**通过SpringMVC来实现转发和重定向 - 无需视图解析器；**

测试前，需要将视图解析器注释掉

```java
@Controller
public class ResultSpringMVC {
    @RequestMapping("/rsm/t1")
    public String test1(){
        //转发
        return "/index.jsp";
    }

    @RequestMapping("/rsm/t2")
    public String test2(){
        //转发二
        return "forward:/index.jsp";
    }

    @RequestMapping("/rsm/t3")
    public String test3(){
        //重定向
        return "redirect:/index.jsp";
    }
}
```

**通过SpringMVC来实现转发和重定向 - 有视图解析器；**

重定向 , 不需要视图解析器 , 本质就是重新请求一个新地方嘛 , 所以注意路径问题.

可以重定向到另外一个请求实现 .

```java
@Controller
public class ResultSpringMVC2 {
    @RequestMapping("/rsm2/t1")
    public String test1(){
        //转发
        return "test";
    }

    @RequestMapping("/rsm2/t2")
    public String test2(){
        //重定向
        return "redirect:/index.jsp";
        //return "redirect:hello.do"; //hello.do为另一个请求/
    }

}
```

## 数据处理
```java
package com.jie.controller;

import com.jie.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/user")
public class UserController {

    @GetMapping("/t1/{username}")
    // 前端传递一个参数
    public String test1(@PathVariable("username") String name, Model model) {

        // 1.接收前端数据
        System.out.println(name);

        // 2.将返回的结果传递给前端  Model
        model.addAttribute("msg", name);

        // 跳转视图
        return "hello";
    }

    /**
     * 1.接收前端用户传递的参数，判断参数的名字，假设名字直接在方法上，可以直接使用
     * 2. 假设传递的参数对象User，匹配User对象中的字段名，如果名字一致则OK，否则匹配不到
     * **/

    // 前端传递一个对象 ： id， name， age
    @GetMapping("/t2")
    public String test2(User user, Model model) {
        System.out.println(user);
        return "hello";
    }


}

```

# 乱码问题
## SpringMVC解决乱码的过滤器
```xml
<filter>
  <filter-name>encoding</filter-name>
  <filter-class>org.springframework.web.filter.CharacterEncodingFilter</filter-class>
  <init-param>
    <param-name>encoding</param-name>
    <param-value>utf-8</param-value>
  </init-param>
</filter>
<filter-mapping>
  <filter-name>encoding</filter-name>
  <url-pattern>/*</url-pattern>
</filter-mapping>
```

## 自定义过滤器类
+ 过滤器类

```java
package com.kuang.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Map;

/**
 * 解决get和post请求 全部乱码的过滤器
 */
public class GenericEncodingFilter implements Filter {

    @Override
    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        //处理response的字符编码
        HttpServletResponse myResponse=(HttpServletResponse) response;
        myResponse.setContentType("text/html;charset=UTF-8");

        // 转型为与协议相关对象
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        // 对request包装增强
        HttpServletRequest myrequest = new MyRequest(httpServletRequest);
        chain.doFilter(myrequest, response);
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

}

//自定义request对象，HttpServletRequest的包装类
class MyRequest extends HttpServletRequestWrapper {

    private HttpServletRequest request;
    //是否编码的标记
    private boolean hasEncode;
    //定义一个可以传入HttpServletRequest对象的构造函数，以便对其进行装饰
    public MyRequest(HttpServletRequest request) {
        super(request);// super必须写
        this.request = request;
    }

    // 对需要增强方法 进行覆盖
    @Override
    public Map getParameterMap() {
        // 先获得请求方式
        String method = request.getMethod();
        if (method.equalsIgnoreCase("post")) {
            // post请求
            try {
                // 处理post乱码
                request.setCharacterEncoding("utf-8");
                return request.getParameterMap();
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        } else if (method.equalsIgnoreCase("get")) {
            // get请求
            Map<String, String[]> parameterMap = request.getParameterMap();
            if (!hasEncode) { // 确保get手动编码逻辑只运行一次
                for (String parameterName : parameterMap.keySet()) {
                    String[] values = parameterMap.get(parameterName);
                    if (values != null) {
                        for (int i = 0; i < values.length; i++) {
                            try {
                                // 处理get乱码
                                values[i] = new String(values[i]
                                                       .getBytes("ISO-8859-1"), "utf-8");
                            } catch (UnsupportedEncodingException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                }
                hasEncode = true;
            }
            return parameterMap;
        }
        return super.getParameterMap();
    }

    //取一个值
    @Override
    public String getParameter(String name) {
        Map<String, String[]> parameterMap = getParameterMap();
        String[] values = parameterMap.get(name);
        if (values == null) {
            return null;
        }
        return values[0]; // 取回参数的第一个值
    }

    //取所有值
    @Override
    public String[] getParameterValues(String name) {
        Map<String, String[]> parameterMap = getParameterMap();
        String[] values = parameterMap.get(name);
        return values;
    }
}
```

+ 在web.xml中配置这个过滤器

```xml
<filter>
    <filter-name>encoding</filter-name>
    <filter-class>com.jie.filter.GenericEncodingFilter</filter-class>
</filter>

<filter-mapping>
    <filter-name>encoding</filter-name>
    <url-pattern>/*</url-pattern>
</filter-mapping>
```

## JSON乱码问题
    - 解决乱码的问题
        * 使用@RequestMapping设置

```xml
@RequestMapping(value = "/t1",produces = "application/json;charset=utf-8")
```

        * 我们可以在springmvc的配置文件上添加一段消息StringHttpMessageConverter转换配置！

```xml
<!--我们可以在springmvc的配置文件上添加一段消息StringHttpMessageConverter转换配置！-->
<mvc:annotation-driven>
  <mvc:message-converters register-defaults="true">
    <bean class="org.springframework.http.converter.StringHttpMessageConverter">
      <constructor-arg value="UTF-8"/>
    </bean>
    <bean class="org.springframework.http.converter.json.MappingJackson2HttpMessageConverter">
      <property name="objectMapper">
        <bean class="org.springframework.http.converter.json.Jackson2ObjectMapperFactoryBean">
          <property name="failOnEmptyBeans" value="false"/>
        </bean>
      </property>
    </bean>
  </mvc:message-converters>
</mvc:annotation-driven>
```

# JSON
## 简介
+ JSON(JavaScript Object Notation, JS 对象标记) 是一种轻量级的数据交换格式，目前使用特别广泛。
+ 采用完全独立于编程语言的**文本格式**来存储和表示数据。
+ 简洁和清晰的层次结构使得 JSON 成为理想的数据交换语言。
+ 易于人阅读和编写，同时也易于机器解析和生成，并有效地提升网络传输效率。

在 JavaScript 语言中，一切都是对象。因此，任何JavaScript 支持的类型都可以通过 JSON 来表示，例如字符串、数字、对象、数组等。看看他的要求和语法格式：

+ 对象表示为键值对，数据由逗号分隔
+ 花括号保存对象
+ 方括号保存数组
+ JSON(JavaScript Object Notation, JS 对象标记) 是一种轻量级的数据交换格式，目前使用特别广泛。

**JSON 键值对**是用来保存 JavaScript 对象的一种方式，和 JavaScript 对象的写法也大同小异，键/值对组合中的键名写在前面并用双引号 "" 包裹，使用冒号 : 分隔，然后紧接着值：

```json
{"name": "QinJiang"}
{"age": "3"}
{"sex": "男"}
```

很多人搞不清楚 JSON 和 JavaScript 对象的关系，甚至连谁是谁都不清楚。其实，可以这么理解：

JSON 是 JavaScript 对象的字符串表示法，它使用文本表示一个 JS 对象的信息，本质是一个字符串。

```javascript
//这是一个对象，注意键名也是可以使用引号包裹的
var obj = {a: ''Hello'', b: ''World''}; 
//这是一个 JSON 字符串，本质是一个字符串
var json = ''{"a": "Hello", "b": "World"}''; 
```

**JSON 和 JavaScript 对象互转**

要实现从JSON字符串转换为JavaScript 对象，使用 JSON.parse() 方法：

```javascript
var obj = JSON.parse(''{"a": "Hello", "b": "World"}'');
//结果是 {a: ''Hello'', b: ''World''}
```

要实现从JavaScript 对象转换为JSON字符串，使用 JSON.stringify() 方法：

```javascript
var json = JSON.stringify({a: ''Hello'', b: ''World''});
//结果是 ''{"a": "Hello", "b": "World"}''
```

## Controller返回JSON数据
+ 导入依赖

```xml
<dependency>
  <groupId>com.fasterxml.jackson.core</groupId>
  <artifactId>jackson-databind</artifactId>
  <version>2.18.2</version>
</dependency>
```

+ 正常的web.xml和springmvc-servlet.xml配置
    - 将java对象转为JSON字符串上传

```java
//@RequestMapping(value = "/t1",produces = "application/json;charset=utf-8")
@RequestMapping("/t1")
public String t1() throws JsonProcessingException {

ArrayList<User> users = new ArrayList<User>();

User user1 = new User("秦疆1号", 3, "男");
User user2 = new User("秦疆2号", 3, "男");
User user3 = new User("秦疆3号", 3, "男");
User user4 = new User("秦疆4号", 3, "男");

users.add(user1);
users.add(user2);
users.add(user3);
users.add(user4);

ObjectMapper mapper = new ObjectMapper();

return mapper.writeValueAsString(users);
}
```

    - 解决乱码的问题
        * 使用@RequestMapping设置

```xml
@RequestMapping(value = "/t1",produces = "application/json;charset=utf-8")
```

        * 我们可以在springmvc的配置文件上添加一段消息StringHttpMessageConverter转换配置！

```xml
<!--我们可以在springmvc的配置文件上添加一段消息StringHttpMessageConverter转换配置！-->
<mvc:annotation-driven>
  <mvc:message-converters register-defaults="true">
    <bean class="org.springframework.http.converter.StringHttpMessageConverter">
      <constructor-arg value="UTF-8"/>
    </bean>
    <bean class="org.springframework.http.converter.json.MappingJackson2HttpMessageConverter">
      <property name="objectMapper">
        <bean class="org.springframework.http.converter.json.Jackson2ObjectMapperFactoryBean">
          <property name="failOnEmptyBeans" value="false"/>
        </bean>
      </property>
    </bean>
  </mvc:message-converters>
</mvc:annotation-driven>
```



## 自己写工具类简化代码返回一个时间戳
+ 工具类

```java
public class JsonUtils {

    public static String getJson(Object obj) {
        return getJson(obj, "yyyy-MM-dd HH:mm:ss");
    }


    public static String getJson(Object object, String dateFormat) {
        ObjectMapper mapper = new ObjectMapper();
        //不使用时间差的方式
        mapper.configure(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS, false);
        //自定义日期格式对象
        SimpleDateFormat sdf = new SimpleDateFormat(dateFormat);
        //指定日期格式
        mapper.setDateFormat(sdf);
        try {
            return mapper.writeValueAsString(object);
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
    }
}
```

+ 测试

```java
// 使用工具类
@RequestMapping("/t3")
    // 使用自己写的工具类
    public String t3() throws JsonProcessingException {
        return JsonUtils.getJson(new Date());
    }

// 不使用工具类
@RequestMapping("/t2")
    // 返回一个时间
    public String t2() throws JsonProcessingException {
        // 不指定时间格式
        // return new ObjectMapper().writeValueAsString(new Date());

        // 指定时间格式
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        ObjectMapper mapper = new ObjectMapper();
        mapper.setDateFormat(sdf);
        return mapper.writeValueAsString(new Date());
    }
```

## 使用fastJson实现转换
+ 导入依赖

```xml
<dependency>
    <groupId>com.alibaba</groupId>
    <artifactId>fastjson</artifactId>
    <version>2.0.53</version>
</dependency>
```

+ 测试

```java
// 使用fastJson 实现
@RequestMapping("/t4")
public String t4() throws JsonProcessingException {
    ArrayList<User> users = new ArrayList<User>();

    User user1 = new User("秦疆1号", 3, "男");
    User user2 = new User("秦疆2号", 3, "男");
    User user3 = new User("秦疆3号", 3, "男");
    User user4 = new User("秦疆4号", 3, "男");

    users.add(user1);
    users.add(user2);
    users.add(user3);
    users.add(user4);

    // 将java对象转为JSON字符串
    String str1 = JSON.toJSONString(users);
    String str2 = JSON.toJSONString(user2);
    // 将JSON字符串转为java对象
    User jp_user2 =JSON.parseObject(str2, User.class);
    // 将java对象转为JSON对象
    JSONObject jsonObject = (JSONObject) JSON.toJSON(user2);
    // JSON对象转为java对象
    User jp_user3  = JSON.toJavaObject(jsonObject, User.class);
    return str1+str2+JsonUtils.getJson(jp_user3)+JsonUtils.getJson(jp_user2)+JsonUtils.getJson(jp_user3);
}

```

# 整合ssm
## 导入依赖，资源过滤
```xml
<!--依赖 junit 数据库驱动，连接池， servlet， jsp， Mybatis， Mybatis-spring, spring-->
<dependencies>
  <dependency>
    <groupId>junit</groupId>
    <artifactId>junit</artifactId>
    <version>3.8.1</version>
    <scope>test</scope>
  </dependency>
  <!--数据库驱动-->
  <dependency>
    <groupId>mysql</groupId>
    <artifactId>mysql-connector-java</artifactId>
    <version>8.0.33</version>
  </dependency>
  <!--数据库连接池：c3p0-->
  <dependency>
    <groupId>com.mchange</groupId>
    <artifactId>c3p0</artifactId>
    <version>0.10.1</version>
  </dependency>
  <!--servlet jsp-->
  <dependency>
    <groupId>javax.servlet</groupId>
    <artifactId>servlet-api</artifactId>
    <version>2.5</version>
  </dependency>
  <dependency>
    <groupId>javax.servlet.jsp</groupId>
    <artifactId>jsp-api</artifactId>
    <version>2.1</version>
  </dependency>
  <!--Mybatis-->
  <dependency>
    <groupId>org.mybatis</groupId>
    <artifactId>mybatis</artifactId>
    <version>3.5.16</version>
  </dependency>
  <dependency>
    <groupId>org.mybatis</groupId>
    <artifactId>mybatis-spring</artifactId>
    <version>3.0.4</version>
  </dependency>
  <!--spring-->
  <dependency>
    <groupId>org.springframework</groupId>
    <artifactId>spring-webmvc</artifactId>
    <version>6.1.13</version>
  </dependency>
  <dependency>
    <groupId>org.springframework</groupId>
    <artifactId>spring-jdbc</artifactId>
    <version>6.2.8</version>
  </dependency>
</dependencies>
<!--Maven 资源过滤问题-->
<build>
  <resources>
    <resource>
      <directory>src/main/java</directory>
      <includes>
        <include>**/*.properties</include>
        <include>**/*.xml</include>
      </includes>
      <filtering>false</filtering>
    </resource>
    <resource>
      <directory>src/main/resources</directory>
      <includes>
        <include>**/*.properties</include>
        <include>**/*.xml</include>
      </includes>
      <filtering>false</filtering>
    </resource>
  </resources>
</build>
```
', 0, NOW());

INSERT INTO `note` (`id`, `author_id`, `title`, `content`, `like_count`, `created_at`)
VALUES (21, 1005, '注解和反射', '# 注解java.Annotation
## 什么是注解
可以被其他程序（比如：编译器等）读取

格式"@注解名"

可通过凡是机制编程实现对这些元数据的访问



## 内置注解
+ @Override：定义在java.lang.Override中，只适用于修辞方法的，表示一个方法声明打算重写超类中的另一个方法
+ @Deprecated：定义在java.lang.Deprecated中，表示不鼓励程序员使用这些方法的元素，通常是因为它很危险或存在更好的选择
+ @SuppressWarnings：定义在java.lang.SuppressWarnings中，用来抑制编译时的警告信息，需要选择参数
    - @SuppressWarnings("all")
    - @SuppressWarnings("unchecked")
    - @SuppressWarnings(value={"unchecked","deprecation"})
    - 等等。。。。。

## 元注解
+ 作用：负责注解其他注解，java定义了4个标准的meta-annotation类型，他们被用来提供其他annoatation类型作用的说明
+ 这些类型和他们所支持的类在java.lang.annotation包中可以找到（@Target,@Retention,@Documented,@Inherited）
    - @Target：用于描述注解的使用范围（即：被描述的注解可以用在什么地方）
    - @Retention：表示需要再什么级别保存该注释信息，用于描述注解的生命周期
        * （SOURCE<CLASS<RUNTIME）
    - @Document：说明该注解将被包含在javadoc中
    - @Inherited：说明子类可以继承父类中的该注解

## 自定义注解 @Interface
使用@Interface自定义注解，自动继承了java.lang.annotation.Annotation接口

```java
package com.jie.annotation;

import java.lang.annotation.*;

// 测试元注解

public class Test02 {
    // 注解可以显示赋值，若没有默认值，就必须给注解赋值
    @MyAnnotation(name = "string")
    @MyAnnotation2(value="随便")
    public void test() {

    }
}

// 定义一个元注解
// Target 表示注解可以使用在哪些地方
@Target(value = {ElementType.TYPE, ElementType.METHOD})
// Retention 表示注解在什么地方还有效
@Retention(RetentionPolicy.RUNTIME)
// Documented 表示是否将注解生成在javadoc中
@Documented
// Inherited 子类可以继承父类的注解
@Inherited
@interface MyAnnotation{
    // 注解的参数： 参数类型 + 参数名();
    String name() default "";
    int age() default 0;
    int id() default -1; // 如果默认值为-1， 代表不存在
    String schools() default "北大";

}

@Target({ElementType.TYPE, ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@interface MyAnnotation2{
    String value();
}

```

# 反射机制 java.Reflaction
## java Reflection
+ Reflection(反射)：是java被视为动态语言的管家，反射机制允许程序在执行器借助Refletion API取得任何类的内部信息，并能直接操作任何对象的内部属性及方法 `Class c = Class.forName("java.lang.String")`
+ 加载完类后，在堆内存的方法区中就产生可一个Class类型的对象（一个类只有一个Class对象），这个对象就包含了完整的类的结构信息

### 反射相关的主要API
+ java.lang.CLass：代表一个类
+ java.lang.reflact.Method：代表类的方法
+ java.lang.reflect.Field：代表类的成员变量
+ java.lang.reflect.Constructor：代表类的构造器

## Class类
+ 在Object类中定义了一下的方法，此方法江北所有子类继承

`public final Class getClass()`

+ 以上类的返回值的类型是一个Class类，此类是Java反射的源头，可以通过对象反射求出类的名称
+ Class类中常用的方法

<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1744624319300-08eeda9b-7e58-4c65-953b-c4c8be5231b0.png" width="587.3333333333334" title="" crop="0,0,1,1" id="uf32c5735" class="ne-image">

+ 获取Class类中的实例

```java
package com.jie.annotation;

// 测试Class类的创建方式有哪些
public class Test04 {
    public static void main(String[] args) throws ClassNotFoundException {
        Porson porson = new Porson();
        System.out.println("这个人是"+porson.name);

        // 方式一： 通过对象获得
        Class c1 = porson.getClass();
        System.out.println(c1.hashCode());

        // 方式二： forname获得
        Class c2 = Class.forName("com.jie.annotation.Student");
        System.out.println(c2.hashCode());

        // 方式三：通过 类名.class 获得
        Class c3 = Student.class;
        System.out.println(c3.hashCode());

        // 方式四： 基本内置类型的包装类都有一个Type属性
        Class c4 = Integer.TYPE;
        System.out.println(c4);
        
        // 获得父类类型
        Class c5 = c1.getSuperclass();
        System.out.println(c5);

    }
}

class Porson{
    public String name;

    public Porson(String name) {
        this.name = name;
    }

    public Porson() {}

    public String toString() {
        return "Porson(" + name + ''\'''' + ")";
    }
}

class Student extends Porson{
    public Student(){
        this.name = "学生";
    }
}

class Teacher extends Porson{
    public Teacher(){
        this.name = "老师";
    }
}
```

## 可以有Class对象的类型
+ class：外部类，成员（成员内部类，静态内部类），局部内部类，匿名内部类
+ interface ：接口
+ []：数组
+ enum：枚举
+ annotation：注解@interface
+ primitive type：基本数据类型
+ void

```java
package com.jie.annotation;

import javax.xml.stream.events.Comment;
import java.lang.annotation.ElementType;

// 所有类型的class
public class Test01 {
    public static void main(String[] args) {
        Class c1 = Object.class;   //类
        Class c2 = Comment.class;  // 接口
        Class c3 = String[].class; // 一维数组
        Class c4 = int[][].class; // 二维数组
        Class c5 = Override.class;  // 注解
        Class c6 = ElementType.class;  // 枚举
        Class c7 = Integer.class; // 基本数据类型
        Class c8 = void.class;   // void
        Class c9 = Class.class;  //class

        System.out.println(c1);
        System.out.println(c2);
        System.out.println(c3);
        System.out.println(c4);
        System.out.println(c5);
        System.out.println(c6);
        System.out.println(c7);
        System.out.println(c8);
        System.out.println(c9);

        // 只要类型和维度一样，就是同一个class
        int[] a = new int[10];
        int[] b = new int[100];
        System.out.println(a.getClass().hashCode());
        System.out.println(b.getClass().hashCode());
    }
}
```

## 类加载
+ 加载到内存，会产生一个类对应Class对象
+ 连接，
+ 初始化
    - <clinit>(){  }

## 什么时候会发生类初始化
+ 累的主动引用（一定会发生初始化）
    - 当虚拟机启动，先初始化main方法所在的类
    - new一个类的对象
    - 调用类的静态成员（除了final常量）和静态方法
    - 使用java.lang.reflect包的方法对类进行反射调用
    - 当初始化一个类，如果去父类没有被初始化，则先回初始化它的父类
+ 类的被动引用（不会发生类的初始化）
    - 当访问一个静态域时，只有真正声明这个与的类才被初始化
    - 通过数组定义类引用，不会触发此类的初始化
    - 引用常量不会触发此类的初始化（常量在链接阶段就存入调用类的常量池中了）

## 类加载器的作用
+ 类加载器的作用：将class文件字节码内容加载到内存中，并将这些静态数据转换成方法区的运行时数据结构，然后在堆中生成一个代表这个类的java.lang.Class对象，作为方法区中类数据的访问入口。
+ 类缓存：标准的JavaSE类加载器可以按照要求查找类，但一旦某个类被加载到类加载器中，它将维持加载（缓存）一段时间，不过JVM垃圾回收机制可以回收这些Class对象
+ 类加载器
    - 引导类加载器：从C++编写的，是JVM自带的类加载器，负责Java平台核心库，用来装载核心类库，该加载器无法直接获取
    - 扩展类加载器：负责jre/bin/text目录下的jar包或-D java.ext.dirs 指定目录下的jar包装入工作库
    - 系统类加载器：负责java -classpath 或 -D java.class.path所指定的目录下的类与jar包装入工作，最常用的类加载器

## 获取运行时类的完整结构
通过反射获取运行

```java
package com.jie.annotation;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

// 获取类的信息
public class Test06 {
    public static void main(String[] args) throws ClassNotFoundException, NoSuchFieldException, NoSuchMethodException {
        Class c1 = Class.forName("com.jie.annotation.User");

        // 获取类的名字
        System.out.println(c1.getName()); // 获取包名 + 类名
        System.out.println(c1.getSimpleName()); // 获取类名

        // 获取类的属性
        // Field[] fields = c1.getFields();    //只能找到public属性
        Field[] fields = c1.getDeclaredFields();  // 找到全部属性
        for (Field field : fields) {
            System.out.println(field.getName());
        }

        // 获得特定属性的值
        Field name = c1.getDeclaredField("name");
        System.out.println(name);

        // 获得类的方法
        Method[] methods = c1.getMethods();   // 获得本类及其父类的全部public方法
        for (Method method : methods){
            System.out.println("正常的"+ method);
        }
        methods = c1.getDeclaredMethods();   // 获得所有方法
        for (Method method : methods){
            System.out.println("getDeclaredMethods"+method);
        }
        
        // 获得指定方法
        Method getName = c1.getMethod("getName", null);
        Method setName = c1.getMethod("setName", String.class);
        System.out.println(getName);
        System.out.println(setName);

        // 获得指定的构造器
        Constructor[] constructors = c1.getConstructors();  // 获得public的构造 方法
        for (Constructor constructor : constructors){
            System.out.println(constructor);
        }
        constructors = c1.getDeclaredConstructors();    // 获得全部构造方法
        for (Constructor constructor : constructors){
            System.out.println(constructor);
        }

        // 获得指定的构造器
        Constructor declaredConstructor = c1.getDeclaredConstructor(String.class, int.class, int.class);
        System.out.println("指定"+declaredConstructor);
    }
}


```

## 动态创建对象执行方法
```java
package com.jie.annotation;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

// 动态的创建对象 ， 通过反射
public class Test07 {
    public static void main(String[] args) throws ClassNotFoundException, InstantiationException, IllegalAccessException, NoSuchMethodException, InvocationTargetException, NoSuchFieldException {
        Class c1 = Class.forName("com.jie.annotation.User");

//        // 构造一个对象
//        User user = (User)c1.newInstance();  // 本质是调用无参构造器
//        System.out.println(user);
//
//        // 通过构造去创建对象
//        Constructor constructor = c1.getDeclaredConstructor(String.class, int.class,int.class);
//        constructor.newInstance("jie", 001, 18);
//        User user2 = (User)c1.newInstance();
//        System.out.println(user2);

        // 通过反射调用普通方法
        User user3 = (User) c1.newInstance();
        // 通过反射获取一个方法
        Method setName = c1.getMethod("setName", String.class);
        // invoke : 激活方法
        // （对象， “方法值“）
        setName.invoke(user3, "jie");
        System.out.println(user3.getName());

        //通过反射操作属性
        User user4 = (User) c1.newInstance();
        Field name = c1.getDeclaredField("name");

        // 不能直接操作私有属性，需要关闭程序的安全检测， 属性或方法的 name.setAccessible(true);
        name.setAccessible(true);
        name.set(user4, "jie2");
        System.out.println(user4.getName());
    }
}

```

## 反射性能分析
```java
package com.jie.annotation;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

// 分析性能 问题
public class Test08 {
    // 普通方式调用
    public static void test01() {
        User user = new User();
        long stratTime = System.currentTimeMillis();
        for (int i = 0; i < 1000000000; i++) {
            user.getName();
        }
        long endTime = System.currentTimeMillis();
        System.out.println("普通方法执行10亿次"+(endTime - stratTime)+"ms");

    }
    // 反射方式调用
    public static void test02() throws ClassNotFoundException, NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        User user = new User();
        Class c1 = Class.forName("com.jie.annotation.User");
        Method getname = c1.getMethod("getName",null);
        long stratTime = System.currentTimeMillis();
        for (int i = 0; i < 1000000000; i++) {
            getname.invoke(user, null);
        }
        long endTime = System.currentTimeMillis();
        System.out.println("反射方法执行10亿次"+(endTime - stratTime)+"ms");
    }
    // 反射方式调用 关闭检测
    public static void test03() throws ClassNotFoundException, NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        User user = new User();
        Class c1 = Class.forName("com.jie.annotation.User");
        Method getname = c1.getMethod("getName",null);
        getname.setAccessible(true);
        long stratTime = System.currentTimeMillis();
        for (int i = 0; i < 1000000000; i++) {
            getname.invoke(user, null);
        }
        long endTime = System.currentTimeMillis();
        System.out.println("关闭检测执行10亿次"+(endTime - stratTime)+"ms");
    }

    public static void main(String[] args) throws ClassNotFoundException, InvocationTargetException, NoSuchMethodException, IllegalAccessException {
        test01();
        test02();
        test03();
    }
}

```

## 通过反射操作泛型
+ ParameterizedType：表示一种参数化类型，比如Collection<String>
+ GenericArrayType：表示一种元素类型是参数化类型或者类型变量的数组类型
+ TypeVariable：是各种类型变量的公共父接口
+ WildcardType：代表一种通配符表达式

```java
package com.jie.annotation;

import java.lang.reflect.AnnotatedType;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;

// 通过反射获取泛型
public class Test09 {
    public void test01(Map<String, User> map, List<User> list) {
        System.out.println("test01");
    }

    public Map<String, User> test02() {
        System.out.println("test02");
        return null;
    }

    public static void main(String[] args) throws NoSuchMethodException {
        Method method = Test09.class.getMethod("test01", Map.class, List.class);
        Type[] genericParameterTypes = method.getGenericParameterTypes();
        for (Type genericParameterType : genericParameterTypes) {
            System.out.println(genericParameterType);
            if (genericParameterType instanceof ParameterizedType) {
                Type[] actualTypeArguments = ((ParameterizedType) genericParameterType).getActualTypeArguments();
                for (Type actualTypeArgument : actualTypeArguments) {
                    System.out.println(actualTypeArgument);
                }
            }
        }
    }
}
```

## 反射获取注解分析
```java
package com.jie.annotation;

import java.lang.annotation.*;
import java.lang.reflect.Field;

public class Test10 {
    public static void main(String[] args) throws ClassNotFoundException, NoSuchFieldException {
        Class c1 = Class.forName("com.jie.annotation.Student2");

        // 通过反射获得注解
        Annotation[] annotations = c1.getAnnotations();
        for (Annotation annotation : annotations) {
            System.out.println(annotation);
        }

        // 获得注解的value的值
        Tablejie tablejie = (Tablejie) c1.getAnnotation(Tablejie.class);
        String value = tablejie.value();
        System.out.println(value);

        // 获得类指定的注解
        Field f = c1.getDeclaredField("name");
        Fieldjie annotation = f.getAnnotation(Fieldjie.class);
        System.out.println(annotation.columnName());
        System.out.println(annotation.type());
        System.out.println(annotation.length());
    }
}

@Tablejie("db_student")
class Student2 {
    @Fieldjie(columnName = "db_id", type = "int", length = 10)
    private int id;
    @Fieldjie(columnName = "db_age", type = "int", length = 10)
    private int age;
    @Fieldjie(columnName = "db_name", type = "int", length = 10)
    private String name;

    public Student2(int id, int age, String name) {
        this.id = id;
        this.age = age;
        this.name = name;
    }
    public Student2() {

    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public int getAge() {
        return age;
    }
    public void setAge(int age) {
        this.age = age;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Student2 [id=" + id + ", age=" + age + ", name=" + name + "]";
    }
}

// 类名的注解
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
@interface Tablejie{
    String value();
}

// 属性的注解
@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
@interface Fieldjie{
    String columnName();
    String type();
    int length();
}
```
', 0, NOW());

-- ============================================================
-- 3. ?????????
-- ============================================================

UPDATE `user` SET `note_count` = 5 WHERE `id` = 1001;
UPDATE `user` SET `note_count` = 4 WHERE `id` = 1002;
UPDATE `user` SET `note_count` = 4 WHERE `id` = 1003;
UPDATE `user` SET `note_count` = 4 WHERE `id` = 1004;
UPDATE `user` SET `note_count` = 4 WHERE `id` = 1005;

SET FOREIGN_KEY_CHECKS = 1;

COMMIT;