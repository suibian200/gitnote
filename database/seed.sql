-- ============================================================
-- 笔记系统 · 初始数据种子 (seed.sql)
-- 生成时间: 2026-06-25 18:33:48
-- 密码: '123456' 的 BCrypt 占位哈希，登录后建议修改
-- ============================================================

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE note_favorite;
TRUNCATE TABLE note_like;
TRUNCATE TABLE user_follow;
TRUNCATE TABLE note_tag;
DELETE FROM tag;
TRUNCATE TABLE note;
DELETE FROM user;
SET FOREIGN_KEY_CHECKS = 1;

-- ============================================================
-- 1. 用户
-- ============================================================

INSERT INTO user (id, username, password, email, vatar, 
ote_count, created_at)
VALUES (1001, 'user1001', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'user1001@example.com', 'avatars/1001_106799.jpg', 5, NOW());
INSERT INTO user (id, username, password, email, vatar, 
ote_count, created_at)
VALUES (1002, 'user1002', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'user1002@example.com', 'avatars/1002_960094.jpg', 4, NOW());
INSERT INTO user (id, username, password, email, vatar, 
ote_count, created_at)
VALUES (1003, 'user1003', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'user1003@example.com', 'avatars/1003_273803.jpeg', 4, NOW());
INSERT INTO user (id, username, password, email, vatar, 
ote_count, created_at)
VALUES (1004, 'user1004', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'user1004@example.com', 'avatars/1004_415551.jpeg', 4, NOW());
INSERT INTO user (id, username, password, email, vatar, 
ote_count, created_at)
VALUES (1005, 'user1005', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'user1005@example.com', 'avatars/1005_692517.jpg', 4, NOW());

-- ============================================================
-- 2. 笔记 & 标签
-- ============================================================

INSERT INTO 
ote (uthor_id, 	itle, content, created_at)
VALUES (1001, 'CSS', '# CSS绠€浠?
## 鍙戝睍鍙?
css1.0

css2.0 DIV锛堝揩锛? CSS锛孒TML涓嶤SS缁撴瀯鍒嗙鐨勬€濇兂锛岀綉椤靛彉寰楃畝鍗曪紝SEO

css3.0 鍦嗚锛岄槾褰憋紝鍔ㄧ敾銆傘€傘€?

## 蹇€熷叆闂?
### 鍩烘湰璇硶
```plain
瑙勮寖锛宻tyle 鍙互缂栧啓css鐨勭殑浠ｇ爜锛岃涓€涓０鏄庯紝鏈€濂戒娇鐢ㄥ垎鍙风粨灏?
璇硶
  閫夋嫨鍣▄
    澹版槑1;
    澹版槑2;
    澹版槑3;
  }
  寮曠敤鏂规硶
  <link rel="stylesheet" href="../css/style2.css">
```

## 浼樺娍
+ 鍐呭琛ㄧ幇鍒嗙
+ 缃戦〉缁撴瀯琛ㄧ幇缁熶竴锛屽彲浠ュ疄鐜板鐢?
+ 鏍峰紡鍗佸垎涓板瘜
+ 寤鸿浣跨敤鐙珛浜嶩TML鐨凜SS鏂囦欢
+ 鍒╀簬SEO锛屽鏄撹鎼滅储寮曟搸鏀跺綍

# CSS瀵煎叆鏂瑰紡
## 琛屽唴鏍峰紡
```html
<!--琛屽唴鏍峰紡锛氬湪鏍囩鍏冪礌涓紝缂栧啓涓€涓猻tyle灞炴€э紝缂栧啓鏍峰紡鍗冲彲-->
<h1 style="color: red"></h1>
```





















































































## style鏍囩
```html
  <style>
    h1{
      color: #cccccc;
    }
  </style>
```

## 澶栭儴鏍峰紡
杩炴帴寮?

```html
h1{
  color: green;
}
<link rel="stylesheet" href="../css/style2.css">
```

瀵煎叆寮?

```html
  <style>
    @import "css/style2.css";
  </style>
```

# 閫夋嫨鍣?
## 鍩烘湰閫夋嫨鍣?
### 鏍囩閫夋嫨鍣?
```html
鏍煎紡锛?
鏍囩鍚峽
  灞炴€?;
  灞炴€?;
}
```

### 绫婚€夋嫨鍣?
```html
鏍煎紡 .class鐨勫悕绉皗
  灞炴€?
  灞炴€?
}
濂藉锛屽彲浠ュ涓爣绛惧綊绫伙紝鏄悓涓€涓猚lass锛屽彲浠ュ鐢?

```

### id閫夋嫨鍣?
```html
鏍煎紡
#id鍚嶇О{
  灞炴€?
}
id 蹇呴』淇濊瘉鍏ㄥ眬鍞竴
```

### 浼樺厛绾?
id>class>鏍囩

## 楂樼骇閫夋嫨鍣?
### 灞傛閫夋嫨鍣?
+ 鍚庝唬閫夋嫨鍣細鍦ㄦ煇涓厓绱犵殑鍚庨潰

```html
body p{
      background: bisque;
}
```

+ 瀛愰€夋嫨鍣? 鍙綔鐢ㄤ簬涓€灞傜粨鏋?

```plain
body>p{
  background: aqua;
}
```

+ 鐩搁偦閫夋嫨鍣?鍙湁涓€涓?鐩搁偦锛堝悜涓嬶級

```plain
.hidden + p{
  background: coral;
}
```

+ 閫氱敤閫夋嫨鍣?褰撳墠閫変腑鍏冪礌鐨勫悜涓嬬殑鎵€鏈夊厔寮熷厓绱?

```plain
.hidden~p{
  background: greenyellow;
}
```

### 缁撴瀯浼被閫夋嫨鍣?
```plain
/*ul鐨勭涓€涓瓙鍏冪礌*/
ul li:first-child{
  background: greenyellow;
}

/*ul鐨勬渶鍚庡瓙鍏冪礌*/
ul li:last-child{
  background: #b3d4fc;
}
```

```plain
/*閫夋嫨p2 瀹氫綅鍒扮埗鍏冪礌锛岄€夋嫨褰撳墠鐨勭涓€涓厓绱?/
/*閫夋嫨褰撳墠p鍏冪礌鐨勭埗绾ф爣绛撅紝閫変腑鐖剁骇鏍囩鐨勭鍑犱釜, 骞朵笖鏄綋鍓嶅厓绱犳墠鑳界敓鏁?/
p:nth-child(2){
  background: cornsilk;
}
/*閫変腑鐖跺厓绱犱笅鐨刾鍏冪礌鐨勭浜屼釜*/
p:nth-of-type(2){
  background: cadetblue;
}
```

### 灞炴€ч€夋嫨鍣紙甯哥敤锛?
+ 鏍囩[灞炴€у悕]
+ 鏍囩[灞炴€у悕=灞炴€у€糫
+ 鏍囩[灞炴€у€?姝ｅ垯琛ㄨ揪寮廬
    - = 鏄粷瀵圭瓑浜?
    - *= 鏄寘鍚?
    - ^= 浠ヨ繖涓粨灏?
    - $= 浠ヨ繖涓粨灏?

# 瀛椾綋缇庡寲
span鏍囩锛氶噸鐐硅绐佸嚭鐨勬枃瀛楋紝浣跨敤span鏍囩濂楄捣鏉?

瀛椾綋璁剧疆

```plain
font-family 瀛椾綋
font-size: 澶у皬
font-weight: 瀛椾綋绮楃粏
color: 瀛椾綋棰滆壊
font锛氬瓧浣撴牱寮?
```

# 鏂囨湰鏍峰紡
+ 棰滆壊color
    - 鑻辨枃鍗曡瘝
    - rgb 0~F
    - rgba(r, g, b, a) 閫忔槑搴 0-1
+ 鏂囨湰瀵归綈鏂瑰紡 text-align
    - center灞呬腑
    - left锛氬乏杈?
    - right锛氬彸杈?
+ 娈佃惤棣栬缂╄繘text-indent   鍗曚綅em锛堝瓧闀匡級
+ 琛岄珮 鍜?鍧楃殑楂樺害涓€鑷村彲瀹炵幇灞呬腑
    - height 鍧楅珮
    - line-height  琛岄珮
+ text-decoration淇グ鏂囨湰
    - <font style="color:rgba(0, 0, 0, 0.9);"></font>`<font style="color:rgba(0, 0, 0, 0.9);">underline</font>`<font style="color:rgba(0, 0, 0, 0.9);">锛氭坊鍔犱笅鍒掔嚎銆?/font>
    - `<font style="color:rgba(0, 0, 0, 0.9);">overline</font>`<font style="color:rgba(0, 0, 0, 0.9);">锛氭坊鍔犱笂鍒掔嚎銆?/font>
    - `<font style="color:rgba(0, 0, 0, 0.9);">line-through</font>`<font style="color:rgba(0, 0, 0, 0.9);">锛氭坊鍔犲垹闄ょ嚎銆?/font>
    - `<font style="color:rgba(0, 0, 0, 0.9);">none</font>`<font style="color:rgba(0, 0, 0, 0.9);">锛氫笉璁剧疆</font>
+ 鏂囨湰鍥剧墖姘村钩瀵归綈锛歷ertica-align锛歮iddle
+ 鏂囨湰闃村奖 text-shadow

```plain
#price{
  /*闃村奖棰滆壊 x y z 鍋忕Щ鍊?/
  text-shadow: #15abe3 10px 10px 10px;
}
```

# 瓒呴摼鎺ヤ吉绫?
```plain
/*榧犳爣鎮仠鐘舵€?/
a:hover{
  color: aqua;

}
/*闀挎寜鐘舵€?/
a:active{
  color: green;
}
/*鐐瑰嚮鍚庣殑棰滆壊*/
a:visited{
  color: red;
}
```

# 鍒楄〃
+ list-style:
    - none: 鍘绘帀鍦嗙偣鎴栨暟瀛?
    - circle锛氱┖蹇冨渾
    - decimol 鏁板瓧
    - square 姝ｆ柟褰?

# 鑳屾櫙鍥剧墖
+ 娣诲姞鑳屾櫙鍥剧墖锛歜ackground-image 锛?url("鍥剧墖鍦板潃")
+ 鍥剧墖浣嶇疆 background-position锛氭按骞充綅缃紝绔栫洿浣嶇疆锛?
+ 鍥剧墖娓愬彉 background-image锛歭inear-gradient锛?
    - https://www.gradient.com/
    - 寰勫悜娓愬彉
    - 鍦嗗舰娓愬彉
+ 閫夋嫨骞抽摵锛歜ackground-repeat
    - 榛樿涓哄叏閮ㄥ钩閾?
    - repeat-x锛氭按骞冲钩閾?
    - repeat-y锛氱珫鐩村钩閾?
    - no-repeat锛氫笉骞抽摵
+ background锛歝olor url("鍥剧墖")  姘村钩浣嶇疆 绔栫洿浣嶇疆 骞抽摵鏂瑰紡repeat
+

# 鐩掑瓙妯″瀷
## 浠€涔堟槸鐩掑瓙妯″瀷
margin锛氬杈硅窛

border锛氳竟妗?

padding锛氬唴杈硅窛

<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1745496964933-7d0db80f-241f-4bac-8bf3-6e4abf6d4efb.png" width="369.6000061035156" title="" crop="0,0,1,1" id="udbbacf9d" class="ne-image">

## 杈规 border
border 锛氬ぇ灏?  鏍峰紡   棰滆壊;

鏍峰紡锛?

solid锛氬疄绾?

dashed锛氳櫄绾?



## 澶栬竟璺?margin
margin锛?锛涗笂涓?宸﹀彸閮戒负0

margin锛?  auto  涓婁笅涓?  宸﹀彸鐩哥瓑

margin锛?  0  0  0锛涗笂 宸?涓?鍙?椤烘椂閽堟棆杞?

## 鍐呰竟璺?padding
## 鍦嗚杈规 border-radius
椤烘椂閽堟柟鍚?

+ border-radius锛?0px 20px 30px 40px銆?

鍦嗚鐨勫崐寰?

鍙疄鐜板崐鍦嗭紝鎵囧舰绛夊浘鐗?

## 鐩掑瓙闃村奖 box-shadow
# display灞炴€?
## 鍧楀厓绱?block
+ 鍦ㄧ綉椤典腑鐙崰涓€琛?
+ 甯歌鐨勫彸h1~h6 p div 鍒楄〃

## 鍧楀厓绱?inline
+ 琛屽唴鍏冪礌涓嶄細鐙崰涓€琛岋紝涓€琛屽彲浠ユ樉绀哄涓鍐呭厓绱狅紝涓嶈兘璁剧疆瀹藉害鍜岄珮搴﹀睘鎬?
+ 甯歌鐨勬湁span  a  img  strong em

## 琛屽唴鍧楀厓绱?inline-block
+ 琛屽唴鍧楀厓绱犱笉浼氳嚜鍔ㄦ崲琛岋紝澶氫釜琛屽唴鍧楀厓绱犲彲浠ユ帓鍦ㄥ悓涓€琛?
+ 甯歌鐨勬湁input(閮ㄥ垎)  buttom

## none 闅愯棌鍏冪礌
# 娴姩 float
float锛歭eft 鍚戝乏

float锛歳ight 鍚戝彸



# 鐖剁骇杈规濉岄櫡闂
## 澧炲姞鐖剁骇鍏冪礌鐨勯珮搴?
##  clear
clear锛歳ight锛涘彸渚т笉鍏佽鏈夋诞鍔ㄥ厓绱?

clear锛歭eft锛涘乏渚т笉鍏佽鏈夋诞鍔ㄥ厓绱?

clear锛歜oth锛涗袱渚т笉鍏佽鏈夋诞鍔ㄥ厓绱?

clear锛歯one锛?

## overflow
hidden 锛氶殣钘忚秴鍑虹殑閮ㄥ垎

scroll锛氬鏋滄湁瓒呭嚭閮ㄥ垎娣诲姞涓€涓粴鍔ㄦ潯

## 鐖剁骇鍏冪礌娣诲姞涓€涓吉绫?
```css
#father:after{
  content: '''';
  display:block;
  clear: both;
}
```

# 瀹氫綅锛歱osition
## 鐩稿瀹氫綅 ralative
+ position锛歳elative
+ 鐩稿浜庡師鏉ョ殑浣嶇疆锛岃繘琛屾寚瀹氱殑鍋忕Щ锛屽畠浠荤劧鍦ㄦ爣鍑嗘枃妗ｆ祦涓紝鍘熸潵鐨勪綅缃細琚繚鐣?
    - top -20px锛?
    - left 20px锛?
    - bottom -10px锛?
    - right 20px

## 缁濆瀹氫綅 absolute
+ 娌℃湁鐖剁骇鍏冪礌瀹氫綅鐨勫墠鎻愪笅锛岀浉瀵逛簬娴忚鍣ㄥ畾浣?
+ 鍋囪鐖剁骇鍏冪礌瀛樺湪瀹氫綅锛屾垜浠€氬父浼氱浉瀵逛簬鐖剁骇鍏冪礌杩涜鍋忕Щ
+ 鍦ㄧ埗绾у厓绱犺寖鍥村唴绉诲姩
+ 鍘熸潵浣嶇疆涓嶄細琚繚鐣?

## 鍥哄畾瀹氫綅 fixed
## z-index 灞傜骇璁剧疆
z-index: 10锛?

瀹炵幇鍧楃骇灞傜骇

0~鈭? 灞傜骇瓒婂ぇ锛岃〃绀鸿秺鍦ㄤ笂闈?

## opacity 鑳屾櫙閫忔槑搴?
0~1

# 鍔ㄧ敾锛', NOW());
SET @last_note_id = LAST_INSERT_ID();

INSERT INTO 
ote (uthor_id, 	itle, content, created_at)
VALUES (1001, 'javaSE', '## 甯哥敤蹇嵎閿?
Ctrl + D  锛?澶嶅埗褰撳墠琛屽埌涓嬩竴琛?

ALT + INSERT 锛氳嚜鍔ㄧ敓鎴愭瀯閫犲櫒

Ctrl + H锛氭墦寮€鏍戠粨鏋?

Ctrl + Alt + T 锛氶€夋嫨浠ｇ爜琚寘瑁圭殑绫诲瀷

## 鎼缓鐜
### 鍗歌浇JDK
+ 鍒犻櫎java鐨勫畨瑁呯洰褰?
+ 鍒犻櫎鐜鍙橀噺JAVA_HOME
+ 鍒犻櫎path椤瑰叧浜嶫ava鐨勭洰褰?
+ java -version

### 瀹夎JDK
+ 鐧惧害鎼滅储JDK8锛屾壘鍒颁笅杞藉湴鍧€
+ 鍚屾剰鍗忚
+ 涓嬭浇鐢佃剳瀵瑰簲鐨勭増鏈?
+ 鍙屽嚮瀹夎
+ 璁颁綇瀹夎鐨勮矾寰?
+ 閰嶇疆鐜鍙橀噺
    - 鎴戠殑鐢佃剳-->鍙抽敭-->灞炴€?
    - 鐜鍙橀噺-->鏂板缓绯荤粺鍙橀噺-->JAVA_HOME锛屽畨瑁呰矾寰?
    - 閰嶇疆path鍙橀噺
        * %JAVA_HOME%\bin
        * %JAVA_HOME%\jre\bin
+ java -version

### HelloWorld
+ 鍒涘缓涓€涓斁浠ｇ爜鐨勬枃浠跺す
+ 鍒涘缓涓€涓互.java涓哄悗缂€鐨勬枃浠?
+ 缂栧啓浠ｇ爜

```java
public class Hello{
    public static void main(String[], args){
        System.out.print("Hello World锛?);
    }
}
```

+ 缂栬瘧锛歫avac java鏂囦欢锛屼細鐢熸垚涓€涓猚lass鏂囦欢
+ 杩愯class鏂囦欢S

<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1743765924281-0b39cd7e-0524-45e8-9f83-0f56a11ba992.png" width="397.4285888671875" title="" crop="0,0,1,1" id="ua426976d" class="ne-image">

### 鍙兘鍑虹幇鐨勯棶棰?
+ 姣忎釜鍗曡瘝鐨勫ぇ灏忓啓涓嶈兘鍑虹幇闂锛孞ava鏄ぇ灏忓啓鏁忔劅鐨?
+ 灏介噺浣跨敤鑻辨枃
+ 鏂囦欢鍚?鍜?绫诲悕蹇呴』淇濇寔涓€鑷达紝骞朵笖棣栧瓧姣嶅ぇ鍐?
+ 绗﹀彿蹇呴』浣跨敤鑻辨枃



## Java鍩虹璇硶
### 娉ㄩ噴銆佹爣璇嗙銆佸叧閿瓧
#### 娉ㄩ噴
娉ㄩ噴骞朵笉浼氳鎵ц锛屾槸缁欏啓浠ｇ爜缁欏埆浜虹湅鐨?

java涓殑娉ㄩ噴鏈変笁绉?

+ 鍗曡娉ㄩ噴

```java
// 杩欐槸涓€涓崟琛屾敞閲?
```

+ 澶氳娉ㄩ噴

```java
/*
    杩欐槸涓€涓琛屾敞閲?
*/
```

+ 鏂囨。娉ㄩ噴

```java
//JavaDoc: 鏂囨。娉ㄩ噴
/**
 *@bes
 */
```

#### 鏍囪瘑绗?
鎵€鏈夌殑鏍囪瘑绗﹂兘鏄互瀛楁瘝锛圓-Z鎴朼-z锛夛紝缇庡厓绗︼紙$锛夛紝鎴栬€呬笅鍒掔嚎锛坃锛夊紑濮?

棣栧瓧姣嶄箣鍚庡彲浠ユ槸瀛楁瘝锛圓-Z鎴朼-z锛夛紝缇庡厓绗︼紙$锛夛紝涓嬪垝绾匡紙_锛夋垨鏁板瓧鐨勪换浣曞瓧绗︾粍鍚?

鏍囪瘑绗︽槸澶у皬鍐欐晱鎰熺殑

涓嶈兘浣跨敤鍏抽敭瀛椾綔涓哄彉閲忓悕鎴栨柟娉曞悕

涓嶅缓璁娇鐢ㄤ腑鏂囧悕鎴栨嫾闊筹紝寰坙ow

#### 鍏抽敭瀛?
<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1743768836077-a6bb4d11-f8dd-4a6e-8d5a-92e9df83ec46.png" width="443.2857360839844" title="" crop="0,0,1,1" id="ufe692728" class="ne-image">

java鎵€鏈夌殑缁勬垚閮ㄥ垎閮介渶瑕佸悕瀛椼€傜被鍚嶏紝鍙橀噺鍚嶄互鍙婃柟娉曞悕閮借绉颁负鏍囪瘑绗?

### 鏁版嵁绫诲瀷
寮虹被鍨嬭瑷€锛氳姹傚彉閲忕殑浣跨敤瑕佷弗鏍肩鍚堣瀹氾紝鎵€鏈夊彉閲忛兘蹇呴』鍏堝畾涔夊悗鎵嶈兘浣跨敤

#### 鍩烘湰鏁版嵁绫诲瀷
![鐢绘澘](https://cdn.nlark.com/yuque/0/2025/jpeg/54050922/1743770818061-53510fd8-15e9-4553-877b-d26792d71910.jpeg)

```java
public class Demo2{
    public static void main(String[] args){
        //鏁存暟
        int num1 = 10;
        byte num2 = 20;
        short num3 = 30;
        long num4 = 30L; //Long绫诲瀷瑕佸湪鏁板瓧鍚庨潰鍔犱笂L

        //灏忔暟锛?娴偣鏁?
        float num5 = 5.1F; //float绫诲瀷瑕佸湪鏁板瓧鍚庨潰鍔犱笂F
        double num6 = 3.123436534;

        //瀛楃
        char name = ''涓?;
        //瀛楃涓诧紝 String涓嶆槸鍏抽敭瀛楋紝 绫?
        String name2 = "濂介毦杩?;

        //甯冨皵鍊?
        boolean flag = true;
        boolean flag2 = false;
    }
}
```

#### 寮曠敤鏁版嵁绫诲瀷
绫?

鎺ュ彛

鏁扮粍

#### 浠€涔堟槸瀛楄妭
浣嶏紙bit锛夛細鏄绠楁満鍐呴儴鏁版嵁瀛樺偍鐨勬渶灏忓崟浣嶏紝11001100鏄竴涓?浣嶄簩杩涘埗鏁?

瀛楄妭锛坆yte锛夛細鏄绠楁満涓暟鎹鐞嗙殑鍩烘湰鍗曚綅锛屼範鎯笂鐢ㄥぇ鍐橞鏉ヨ〃绀?

1B锛坆yte锛屽瓧鑺傦級= 8bit锛堜綅锛?

瀛楃锛氭槸鎸囪绠楁満涓娇鐢ㄧ殑瀛楁瘝锛屾暟瀛楋紝瀛楀拰绗﹀彿

#### 鎵╁睍
1. 杩涘埗琛ㄧず

```java
public class Demo2{
    public static void main(String[] args){
        //鏁存暟 鎵╁睍
        int i3 = 0b100;   //浜岃繘鍒?
        int i = 10;       //鍗佽繘鍒?
        int i1 = 010;     //鍏繘鍒?
        int i2 = 0x10;    //鍗佸叚杩涘埗

    }
}
```

2. 杞箟瀛楃
+ \t锛氭按骞冲埗琛ㄧ
+ \n锛氭崲琛岀
+ \r锛氬洖杞︾
+ \b锛氳鏍肩
+ \f锛氭崲椤电
+ \\锛氬弽鏂滄潬瀛楃
+ \''锛氬崟寮曞彿瀛楃
+ \"锛氬弻寮曞彿瀛楃
+ \u锛氳〃绀轰竴涓猆nicode瀛楃
+ \ddd锛氳〃绀轰竴涓叓杩涘埗瀛楃

### 绫诲瀷杞崲
涓嶅悓绫诲瀷鐨勬暟鎹厛杞崲涓哄悓涓€绫诲瀷锛岀劧鍚庤繘琛岃繍绠?

浣?------------------------------------------------>楂?

byte, short, char-->int-->long-->float-->double

#### 寮哄埗绫诲瀷杞崲
鏁版嵁绫诲瀷 鍙橀噺鍚? =锛堝彉閲忓悕2锛夊彉閲忥紱  楂?->浣?

```java
public class Demo{
    public static void main(String[] args){
        int i = 128;
        byte b = (byte)i;
        System.out.println(i);   //鍐呭瓨婧㈠嚭
        System.out.println(b);
    }
}
```

#### 鑷姩绫诲瀷杞崲
鏁版嵁绫诲瀷 鍙橀噺鍚?= 鍙橀噺锛?  浣?->楂?

#### 娉ㄦ剰
1. 涓嶈兘瀵瑰竷灏斿€艰繘琛岀被鍨嬭浆鎹?
2. 涓嶈兘鎶婂璞＄被鍨嬭浆鎹负涓嶇浉骞茬殑绫诲瀷
3. 鍦ㄦ妸楂樺閲忚浆鎹㈠埌浣庡閲忕殑鏃跺€欙紝寮哄埗杞崲
4. 杞崲鐨勬椂鍊欒偗瀛樺湪鍐呭瓨婧㈠嚭锛屾垨鑰呯簿搴﹂棶棰?
5. 鎿嶄綔鏁版瘮杈冨ぇ鐨勬椂鍊欙紝娉ㄦ剰婧㈠嚭闂
6. 鏁板瓧涔嬮棿鍙埄鐢ㄧ敤涓嬫粦绾垮垎鍓?  `int money = 10_0000_0000;`
7.



### 鍙橀噺锛屽父閲忥紝浣滅敤鍩?
#### 鍙橀噺
鍙互鍙樺寲鐨勯噺

姣忎釜鍙橀噺閮藉繀椤讳簨鍏堝０鍏剁被鍨?

鍙橀噺鏄▼搴忎腑鏈€鍩烘湰鐨勫瓨鍌ㄥ崟鍏冿紝鍏惰绱犲寘鎷彉閲忓悕锛屽彉閲忕被鍨嬪拰浣滅敤鍩?

`鏁版嵁绫诲瀷 鍙橀噺鍚?= 鍊?`

#####  娉ㄦ剰浜嬮」
+ 姣忎釜鍙橀噺閮芥湁绫诲瀷锛岀被鍨嬪彲浠ユ槸鍩烘湰绫诲瀷锛屼篃鍙互鏄紩鐢ㄧ被鍨?
+ 鍙橀噺鍚嶅繀椤绘槸鍚堟硶鐨勬爣璇嗙
+ 鍙橀噺澹版槑鏄竴鏉″畬鏁寸殑璇彞锛屽洜姝ゆ瘡涓€涓０鏄庨兘蹇呴』浠ュ垎鍙风粨鏉?

#### 浣滅敤鍩?
绫诲彉閲?

瀹炰緥鍙橀噺

灞€閮ㄥ彉閲?

```java
public class Damo {
    //灞炴€?鏂规硶

    // 绫诲彉閲?
    static double salary = 2500;
    
    
    //瀹炰緥鍙橀噺锛屼粠灞炰簬瀵硅薄 
    //濡傛灉涓嶈繘琛屽垵濮嬪寲锛岃繖涓被鍨嬬殑榛樿鍊?  0.0 
    //甯冨皵鍊硷細榛樿鍊间负false
    //闄や簡鍩烘湰绫诲瀷锛屽叾浣欑殑榛樿鍊奸兘鏄痭ull
    String name;
    int age;

    
    //main鏂规硶
    public static void main(String[] args) {
        //灞€閮ㄥ彉閲?蹇呴』澹版槑鍜屽垵濮嬪寲鍊?
        int i = 10;
        System.out.println(i);

        Damo damo = new Damo();
        damo.age;
    }

    //鍏朵粬鏂规硶
    
}

```

#### 甯搁噺
甯搁噺鍙互鐞嗚В涓轰竴绉嶇壒娈婄殑鍙橀噺锛屼粬鐨勫€艰璁惧畾鍚庯紝鍦ㄧ▼搴忔墽琛岃繃绋嬩腑涓嶅厑璁歌鏀瑰彉

```java
final 鍙橀噺鍚?= 鍊?
final double PI = 3.14;
```

甯搁噺鍚嶄竴鑸敤澶у啓瀛楃

淇グ绗︼紝涓嶅瓨鍦ㄥ厛鍚庨『搴?



#### 鍙橀噺鍚嶇殑鍛藉悕瑙勮寖
+ 鎵€鏈夊彉閲忥紝鏂规硶锛岀被鍚嶏細瑙佸悕鐭ユ剰
+ 绫绘垚鍛樺彉閲忥細棣栧瓧姣嶅皬鍐欏拰椹煎嘲鍘熷垯锛歮onthSalary
+ 灞€閮ㄥ彉閲忥細棣栧瓧姣嶅皬鍐欏拰椹煎嘲鍘熷垯
+ 甯搁噺锛氬ぇ鍐欏瓧姣嶅拰涓嬪垝绾匡細MAX_VALUE
+ 绫诲悕锛氶瀛楁瘝澶у啓鍜岄┘宄板師鍒欙細Man锛孏oodMan
+ 鏂规硶鍚嶏細棣栧瓧姣嶅皬鍐欏拰椹煎嘲鍘熷垯锛歳an(); ranRan();

### 杩愮畻绗?
#### 鍩烘湰杩愮畻绗?
+ 绠楁暟杩愮畻绗︼細+, -, *, /, %, ++, --
+ 璧嬪€艰繍绠楃锛?
+ 鍏崇郴杩愮畻绗︼細>, <, >=, <=, ==, !=, instanceof
+ 閫昏緫杩愮畻绗︼細&&, ||锛?锛?
+ 浣嶈繍绠楃锛?&(涓?, |(鎴?, ^(寮傛垨), ~(闈?,>>, <<, >>>(浜嗚В锛侊紒锛?

鍦ㄨ绠楁満杩愮畻鏃舵晥鐜囨渶楂?

`2<<1`=2*2

`2<<2`=2*2*2

`2>>1`=2/2

`2>>2`=2/2/2

+ 鏉′欢杩愮畻绗︼細锛?锛?
+ 鎵╁睍璧嬪€艰繍绠楃锛?=锛?-=锛?=锛?/=

a+=b   //a = a+b

a-=b   //a = a-b

#### 涓€鍏冭繍绠楃
++   --

++a锛氬厛璧嬪€硷紝鍐嶈嚜澧?

a++锛氬厛鑷锛屽啀璧嬪€?



#### Math宸ュ叿绫?
鏁版嵁绫诲瀷 鍙橀噺鍚?= Math.鏁板鍑芥暟();





#### 瀛楃涓茶繛鎺ョ
```java
System.out.println(""+a+b)
>> ab 瀛楃涓?
System.out.println(a+b+"")
>> a+b 杩愮畻鍚庣殑鍊?
```

#### 涓夊厓杩愮畻绗?  锛?锛?
x ? y : z

濡傛灉x=true 杩斿洖 y

濡傛灉x=false 杩斿洖 z

`score < 60 ? "涓嶅強鏍? : "鍙婃牸"`



#### 浼樺厛绾?
鏈€楂樹紭鍏堢骇(鎷彿)

鍚庣紑杩愮畻绗?++ --

涓€鍏冭繍绠楃 +(姝ｅ彿) -(璐熷彿) !(閫昏緫闈? ~(浣嶅彇鍙? ++(鍓嶇紑閫掑) --(鍓嶇紑閫掑噺)

涔橀櫎杩愮畻绗?* / %

鍔犲噺杩愮畻绗?+ -

鍏崇郴杩愮畻绗?> >= < <= instanceof

鐩哥瓑杩愮畻绗?== !=

浣嶈繍绠楃 & | ^

閫昏緫杩愮畻绗?&& ||

涓夊厓杩愮畻绗?锛?锛?

璧嬪€艰繍绠楃 = += -= .......

鏈€浣庣骇杩愮畻绗?閫楀彿杩愮畻绗︼紝

#### 
### 鍖呮満鍒? 鏂囦欢澶? package
涓€鑸埄鐢ㄥ叕鍙稿煙鍚嶅€掔疆浣滀负鍖呭悕  com.baidu.www

package pkg1[.pkg2[.pkg3...]]

涓轰簡鑳藉浣跨敤鏌愪竴涓寘鐨勬垚鍛橈紝闇€瑕佸啀Java绋嬪簭涓槑纭鍏ヨ鍖咃紝浣跨敤"import"璇彞浜嗗畬鎴愭鍔熻兘

import pkg1[.pkg2[.pkg3...].classname|*]

閫氶厤绗? 瀵煎叆鎵€鏈夋枃浠?*

### JavaDoc
```java
/**
 *鍙傛暟淇℃伅
 *绫绘敞閲?
 *@author 浣滆€呭悕 
 *@version 鐗堟湰鍙?
 *@since 鎸囨槑闇€瑕佹渶鏃╀娇鐢ㄧ殑jdk鐗堟湰鍙?
 *
 *鏂规硶娉ㄩ噴
 *@param 鍙傛暟鍚?
 *@return 杩斿洖鍊兼儏鍐?
 *@thrwos 寮傚父鎶涘嚭鎯呭喌
 */
```

####  cmd鍛戒护
javadoc -encoding UTF-8 -charser UTF-8 鏂囦欢鍚?java

## 娴佺▼鎺у埗
鍑℃槸灞炰簬IO(杈撳叆杈撳嚭)娴佺殑绫诲鏋滀笉鍏抽棴浼氫竴鐩村崰鐢ㄨ祫婧?  **瀵硅薄鍚?close();**

### 鐢ㄦ埛浜や簰Scanner
`**java.util.Scanner**`**鑾峰彇鐢ㄦ埛杈撳叆**

**鍩烘湰璇硶**`**Scanner s = new Scanner(System.in)**`** **

**閫氳繃Scanner绫荤殑next()涓巒ext()鏂规硶鑾峰彇杈撳叆鐨勫瓧绗︿覆锛屽湪璇诲彇鍓嶄竴鑸浣跨敤hasNext()涓巋asNextLine()鍒ゆ柇鏄惁杩樻湁杈撳叆鐨勬暟鎹?*

+ next()浠ョ┖鏍兼垨鍥炶溅浣滀负缁撴潫绗?鍗充笉鑳藉緱鍒板甫鏈夌┖鏍肩殑瀛楃涓?
+ nextLine()浠ュ洖杞︾浣滀负缁撴潫绗?鍗宠幏寰楀洖杞︾浠ュ墠鐨勬墍鏈夊瓧绗?

```java
public class damo {
    public static void main(String[] args) {
        Scanner scnner = new Scnner(System.in);
        if(scnner.hasNext()) {
            String str = scnner.next();
            System.out.println("杈撳嚭鐨勫唴瀹逛负锛?+str);
        }
        if(scnner.hasNextLint()) {
            String str = scnner.nextLine();
            System.out.println("杈撳嚭鐨勫唴瀹逛负锛?+str);
        }
        scnner.close();
    }
}
```

+ `scanner.nextInt()` 鎺ユ敹鏁存暟鏁版嵁
+ `scanner.hasNextInt()` 鏄惁鏄疘nt绫诲瀷鐨勬暟鎹?
+ `scanner.nextFloat()` 鎺ユ敹灏忔暟鏁版嵁
+ `equals()`鍒ゆ柇瀛楃涓叉槸鍚︾浉绛?

### 椤哄簭缁撴瀯
Java绋嬪簭鏄粠涓婂線涓嬩緷娆℃墽琛岋紝鏄换鎰忎竴涓畻娉曠▼搴忕鍩烘湰缁撴瀯

### 閫夋嫨缁撴瀯
#### if鍗曢€夋嫨缁撴瀯
```java
if(甯冨皵琛ㄨ揪寮? {
    //濡傛灉甯冨皵琛ㄨ揪寮忎负true灏嗘墽琛岀殑璇彞
}
```

#### if鍙岄€夋嫨缁撴瀯
```java
if(甯冨皵琛ㄨ揪寮? {
    //濡傛灉甯冨皵琛ㄨ揪寮忕殑鍊紅rue灏嗘墽琛岀殑璇彞
}else{
    //濡傛灉甯冨皵琛ㄨ揪寮忕殑鍊间负false灏嗘墽琛岀殑浠ｇ爜
}
```

#### if澶氶€夋嫨缁撴瀯
```java
if(甯冨皵琛ㄨ揪寮?) {
    //濡傛灉甯冨皵琛ㄨ揪寮?鐨勫€紅rue灏嗘墽琛岀殑璇彞
}else if(甯冨皵琛ㄨ揪寮?){
    //濡傛灉甯冨皵琛ㄨ揪寮?鐨勫€间负true灏嗘墽琛岀殑浠ｇ爜
}else if(甯冨皵琛ㄨ揪寮?) {
    //濡傛灉甯冨皵琛ㄨ揪寮?鐨勫€间负true灏嗘墽琛岀殑浠ｇ爜
}else {
    //濡傛灉浠ヤ笂甯冨皵琛ㄨ揪寮忕殑鍊奸兘涓篺alse灏嗘墽琛岀殑浠ｇ爜
}
```

#### 宓屽if缁撴瀯
```java
if(甯冨皵琛ㄨ揪寮?) {
    //濡傛灉甯冨皵琛ㄨ揪寮?鐨勫€紅rue灏嗘墽琛岀殑璇彞
    if(甯冨皵琛ㄨ揪寮?) {
        //濡傛灉甯冨皵琛ㄨ揪寮?鐨勫€紅rue灏嗘墽琛岀殑璇彞
    }
}
```

#### switch澶氶€夋嫨缁撴瀯
switch 璇彞涓殑鍙橀噺锛坴alue锛夌被鍨嬪彲浠ユ槸

+ byte  short Int char 鎴栨槸 string
+ case 鏍囩蹇呴』鏄瓧绗︿覆甯搁噺鎴栧瓧闈㈤噺
+ 濡傛灉case鍚庨潰涓嶅啓break; 灏嗕細浼氳緭鍑哄尮閰峜ase鍜屽悗闈㈢殑鍏ㄩ儴鍐呭

```java
switch(expression) {
    case value:
        //璇彞
        break;  //鍙€?
    case vlue:
        //璇彞
        break; //鍙€?
    // 鍙互鏈変换鎰忔暟閲忕殑case璇彞
    default :  //鍙€?
        //璇彞
}
```



### 寰幆缁撴瀯
#### while寰幆
```java
while (甯冨皵琛ㄨ揪寮?{
    // 寰幆鍐呭
}
```

+ 鍙琛ㄨ揪寮忎负true锛屽惊鐜氨浼氫竴鐩存墽琛屼笅鍘?
+ 澶у鏁伴兘瑕佸寰幆缁撴瀯杩涜鍋滄鎿嶄綔鐨?
+ 閬垮厤姝诲惊鐜?  `while(true){}`

#### do鈥︹€hile
```java
do {
    //浠ｇ爜璇彞
}while(甯冨皵琛ㄨ揪寮?;
```

+ 鍏堟墽琛屽悗鍒ゆ柇
+ 鎬昏兘淇濊瘉寰幆浣撹鎵ц涓€娆?

#### for寰幆
```java
for(鍒濆鍖? 甯冨皵琛ㄨ揪寮? 鏇存柊){
    //浠ｇ爜璇彞
}
```

+ for寰幆璇彞鏄敮鎸佽凯浠ｇ殑涓€绉嶉€氱敤缁撴瀯锛屾槸鏈€楂樻晥锛屾渶鐏垫椿鐨勫惊鐜粨鏋?

```java
for(int i = 1; i <= 9; i++){
    for(int j = 1; j <= i; j++){
        System.out.print(i+"*"+j+"="+(i*j)+"\t");
    }
    System.out.println();
}
```

#### 澧炲己for寰幆
```java
for(澹版槑璇彞: 琛ㄨ揪寮?{
    //浠ｇ爜鍙ュ瓙
}
```

+ 澹版槑璇彞锛氬０鏄庡績寰楀眬閮ㄥ彉閲忥紝璇ュ彉閲忕殑绫诲瀷蹇呴』鍜屾暟缁勫厓绱犵殑绫诲瀷鍖归厤锛屽叾浣滅敤鍩熼檺瀹氬湪寰幆璇彞鍧楋紝鍏跺€间笌姝ゆ椂鏁扮粍鍏冪礌鐨勫€肩浉绛?
+ 琛ㄨ揪寮忥細琛ㄨ揪寮忔槸瑕佽闂殑鏁扮粍鍚嶏紝鎴栨槸杩斿洖鍊间负鏁扮粍鐨勬柟娉?

#### break continue
+ break锛氬湪浠讳綍寰幆璇彞鐨勪富浣撻儴鍒嗭紝鍧囧彲鐢╞reak鎺у埗寰幆鐨勬祦绋嬶紝break鐢ㄤ簬寮鸿閫€鍑哄惊鐜紝涓嶆墽琛屽惊鐜腑鍓╀綑鐨勮鍙ワ紙break璇彞涔熷彲鍦╯witch璇彞涓娇鐢級
+ continue锛氳鍙ュ湪寰幆璇彞浣撲腑锛岀敤浜庣粓姝㈡煇娆″惊鐜繃绋嬶紝鍗宠烦鍑哄惊鐜綋涓皻鏈墽琛岀殑璇彞锛屾帴鐫€杩涜涓嬩竴娆℃槸鍚︽墽琛屽惊鐜殑鍒ゅ畾
+ goto鍏抽敭瀛楋細

## Java鏂规硶
### 浠€涔堟槸鏂规硶
鏂规硶鏄竴涓鍙ョ殑闆嗗悎

+ 鏂规硶鏄В鍐充竴绫婚棶棰樼殑姝ラ鐨勬湁搴忕粍鍚?
+ 鏂规硶鍖呭惈浜庣被 鎴栧璞′腑
+ 鏂规硶鍦ㄧ▼搴忎腑琚垱寤猴紝鍦ㄥ叾浠栧湴鏂硅寮曠敤
+ 鍘熷瓙鎬э細涓€涓柟娉曞彧瀹屾垚1涓姛鑳斤紝杩欐牱鍒╀簬鍚庢湡鐨勬墿灞?

### 鏂规硶鐨勫畾涔夊強璋冪敤
#### 鏂规硶鐨勫畾涔?
```java
淇グ绗?杩斿洖鍊肩被鍨?鏂规硶鍚?鍙傛暟绫诲瀷 鍙傛暟鍚?{
    鏂规硶浣?
    return 杩斿洖鍊?
}
```

#### 鏂规硶鐨勮皟鐢?
`瀵硅薄鍚?鏂规硶鍚?瀹炰緥鍙傛暟);`

褰撴柟娉曡繑鍥炰竴涓€肩殑鏃跺€欙紝鏂规硶璋冪敤閫氬父琚綋鍋氫竴涓€硷紝

`int larger = max(30, 40)`

濡傛灉鏂规硶杩斿洖鍊兼槸void锛屾柟娉曡皟鐢ㄤ竴瀹氭槸涓€鏉¤鍙?

`System.out.println("");`

### 鏂规硶鐨勯噸杞?
+ 鍦ㄤ竴涓被涓紝鏈夌浉鍚岀殑鍑芥暟鍚嶇О锛屼絾褰㈠弬涓嶅悓鐨勫嚱鏁?
+ 鏂规硶閲嶈浇鐨勮鍒?
    - 鏂规硶鍚嶇О蹇呴』鐩稿悓
    - 鍙傛暟鍒楄〃蹇呴』涓嶅悓锛堜釜鏁帮紝鍙傛暟绫诲瀷锛屾帓鍒楅『搴?锛?
    - 鏂规硶鐨勮繑鍥炲€肩被鍨嬪彲浠ョ浉鍚屼篃鍙笉鍚?
    - 浠呬粎杩斿洖绫诲瀷涓嶅悓涓嶆敞鎰忕О涓烘柟娉曠殑閲嶈浇

```java
public  class Damo {
    public static void main(String[] args){
        int max = max(10, 20);
    }

    public static int max(int a, int b){......}

    public static double max(double a, double b){......}
}
```

+ 鏂规硶鍚嶇О鐩稿悓鏃讹紝缂栬瘧鍣ㄤ細鏍规嵁璋冪敤鏂规硶鐨勫弬鏁颁釜鏁帮紝鍙傛暟绫诲瀷绛夊幓閫愪釜鍖归厤锛屼互閫夋嫨瀵瑰簲鐨勬柟娉曪紝濡傛灉鍖归厤澶辫触锛屽垯缂栬瘧杩囩▼浼氭姤閿?

### 鍛戒护琛屼紶鍙?
<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1743924109005-9e929619-b460-460e-b745-2520502de860.png" width="887.2" title="" crop="0,0,1,1" id="u753ee053" class="ne-image">

### 鍙彉鍙傛暟
+ 鍦ㄦ柟娉曞０鏄庝腑锛屽湪鎸囧畾鍙傛暟绫诲瀷鍚庡姞涓€涓渷鐣ュ彿(...)
+ 涓€涓柟娉曚腑鍙兘鎸囧畾涓€涓彲鍙樺弬鏁帮紝瀹冨繀椤绘槸鏂规硶鐨勬渶鍚庝竴涓弬鏁帮紝浠讳綍鏅€氱殑鍙傛暟蹇呴』鍦ㄥ畠涔嬪墠澹版槑

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

### 閫掑綊
+ 閫掑綊澶达細浠€涔堟椂鍊欎笉璋冪敤鑷韩鏂规硶锛屽鏋滄病鏈夐€掑綊澶达紝灏嗛櫡鍏ユ寰幆
+ 閫掑綊浣擄細浠€涔堟椂鍊欏緪娑涜皟鐢ㄨ嚜韬柟娉?

```java
public static int f(ing n){
    if(n == 1){
        return 1;
    }else{
        return n*f(n-1);
    }
}
```

## 鏁扮粍
### 鏁扮粍姒傝堪
+ 鏁扮粍鏄浉鍚岀被鍨嬫暟鎹殑鏈夊簭闆嗗悎
+ 鏁扮粍鎻忚堪鏄浉鍚岀被鍨嬬殑鑻ュ共涓暟鎹紝鎸夌収涓€瀹氱殑鐨勫厛鍚庢搴忔帓鍒楃粍鍚堣€屾垚鐨?
+ 鍏朵腑锛屾瘡涓€涓暟鎹搷浣滀竴涓暟缁勫厓绱狅紝姣忎釜鏁扮粍鍏冪礌鍙互閫氳繃涓€涓笅鏍囨潵璁块棶瀹冧滑
+ 鏁扮粍鐨勫洓涓熀鏈壒鐐?
    - 鍏堕暱搴︽槸鍥哄畾鐨?
    - 鍏冪礌绫诲瀷蹇呴』鏄浉鍚岀被鍨?
    - 鏁扮粍鐨勫厓绱犵被鍨嬪彲浠ユ槸浠讳綍鏁版嵁绫诲瀷锛屽寘鎷熀鏈被鍨嬮粦寮曠敤绫诲瀷
    - 鏁扮粍瀵硅薄鏈韩鏄湪鍫嗕腑鐨?

### 鏁扮粍鐨勫０鏄庡拰鍒涘缓
+ 棣栧厛蹇呴』澹版槑鏁扮粍鍙橀噺锛屾墠鑳藉湪绋嬪簭涓娇鐢ㄦ暟缁?

```java
dataType[] arrayRefVar;   //棣栭€夋柟娉?

dataType arrayRefVar[];  //鏁堟灉鐩稿悓锛屼絾涓嶆槸棣栭€夋柟娉?

```

+ **Java璇█浣跨敤new鎿嶄綔绗︽潵鍒涘缓鏁扮粍**

```java
dataType[] arrayRefVar = new dataType[arraySize]
```

+ 鏁扮粍鐨勫厓绱犳槸閫氳繃绱㈠紩璁块棶鐨勶紝鏁扮粍绱㈠紩浠?寮€濮?
+ 鑾峰彇鏁扮粍闀垮害 `arrays.length`

### 鍐呭瓨鍒嗘瀽
+ 澹版槑鏁扮粍锛氳幏鍙栦竴涓爤
+ 鍒涘缓鏁扮粍锛氬湪鍫嗕腑鍒涘缓涓€涓窡鏁扮粍鍚嶄竴鏍风殑瀹归噺涓€鏍风殑鍖哄煙
+ 缁欐暟缁勮祴鍊硷細鍦ㄦ瘡涓皬鐨勫尯鍩熺粰瀹氫竴涓€?
+ 涓嬫爣瓒婄晫锛氳幏鍙栨暟缁勫€兼椂锛屼笅鏍囦笉鑳借秴杩囨暟缁勭殑瀹归噺澶у皬
+ ArrayIndexOutOfBoundsExceptioin锛氭暟缁勪笅鏍囪秺鐣屽紓甯?

### 鏁扮粍鐨勪笁绉嶅垵濮嬪寲
闈欐€佸垵濮嬪寲锛?

```java
int[] a = {1, 2, 3}
Man[] man = {new Man(1, 1), new Man(2, 2)}
```

鍔ㄦ€佸垵濮嬪寲

```java
int[] a = new int[2];
a[0] = 1;
a[1] = 2;
```

鏁扮粍鐨勯粯璁ゅ垵濮嬪寲

鏁扮粍鏄紩鐢ㄧ被鍨嬶紝瀹冪殑鍏冪礌鐩稿綋浜庣被鐨勫疄渚嬪彉閲忥紝鍥犳鏁扮粍涓€缁忓垎閰嶇┖闂达紝姣忎釜鍏冪礌涔熻鎸夌収瀹炰緥杈╃浉鍚岀殑鏂瑰紡琚殣寮忓垵濮嬪寲

### 鏁扮粍鐨勪娇鐢?
#### for-each寰幆
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

#### 鏁扮粍浣滄柟娉曞叆鍙?
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

#### 鏁扮粍浣滀负杩斿洖鍊?
```java
public class ArrayDamo {
    public static void main(String[] args) {
        int[] arrays = {1, 2, 3, 4};
        int[] reverses = reverse(arrays);
        printArray(reveres);
    }  
    public static int[] revers(int[] arrays){
        int[] reslts = new arrays[arrays.length]
        // 鍙嶈浆鏁扮粍
        for (int i = 0, int j = arrays.length - 1; i < arrays.length; i++, j--){
            reslts[j] = arrays[i];
        }
        return revers;
    }
}
```

### 澶氱淮鏁扮粍
澶氱淮鏁扮粍鍙互鐪嬩綔鏄暟缁勭殑鏁扮粍

浜岀淮鏁扮粍

`int a[][] = new arr[2][4];`

浠ヤ笂鏁扮粍鍙互鐪嬩綔鏄袱琛屽洓鍒楃殑鏁扮粍

浜岀淮鏁扮粍鍙互鏍规嵁绱㈠紩閬嶅巻

### Array 绫?
API锛歚java.util.Array;`

浣跨敤 Array.鏂规硶鍚?);



### 鍐掓场鎺掑簭
涓ゅ眰寰幆锛屽灞傚啋娉¤疆鏁帮紝閲屽眰渚濇姣旇緝

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

### 绋€鐤忔暟缁?
#### 浠嬬粛
褰撲竴涓暟缁勪腑澶ч儴鍒嗗厓绱?锛屾垨鑰呬负鍚屼竴鍊肩殑鏁板€兼椂锛屽彲浠ヤ娇鐢ㄧ█鐤忔暟缁勬潵淇濆瓨璇ユ暟缁?

绋€鐤忔暟缁勭殑澶勭悊鏂瑰紡鏄?锛?

+ 璁板綍鏁扮粍涓€鍏卞嚑琛屽嚑鍒楋紝鏈夊灏戜釜涓嶅悓鍊?
+ 鎶婂叿鏈変笉鍚屾寚鐨勫厓绱犲拰琛屽垪鍙婅褰曞湪涓€涓皬瑙勬ā鐨勬暟缁勪腑锛屼粠鑰岀缉灏忕▼搴忕殑瑙勬ā

| 琛?| 鍒?| 鍊?|
| --- | --- | --- |
| 琛屾暟 | 鍒楁暟 | 鏁版嵁涓暟 |
| 鏁版嵁1琛屽潗鏍?| 鏁版嵁1鍒楀潗鏍?| 鏁版嵁1 |
| 鏁版嵁2琛屽潗鏍?| 鏁版嵁2鍒楀潗鏍?| 鏁版嵁2 |


## 闈㈠悜瀵硅薄缂栫▼锛圤bject-Orientend Programming, OOP锛?
### 鍒濊瘑闈㈠悜瀵硅薄
+ 闈㈠悜瀵硅薄缂栫▼鐨勬湰璐ㄦ槸锛氫互绫荤殑鏂瑰紡缁勭粐浠ｇ爜锛屼互瀵硅薄鐨勭粍缁囷紙灏佽锛夋暟鎹?
+ 鎶借薄
+ 涓夊ぇ鐗规€?灏佽 缁ф壙 澶氭€?
+ 浠庤璇嗚瑙掑害鑰冭檻鏄厛鏈夊璞″悗鏈夌被锛屽璞★紝鍏蜂綋鐨勪簨鐗╋紝绫伙紝鏄娊璞＄殑锛屾槸瀵瑰璞＄殑鎶借薄
+ 浠庝唬鐮佽繍琛岃搴﹁€冭檻鏄厛鏈夌被鍚庢湁瀵硅薄锛岀被鏄璞＄殑妯＄増



### 绫讳笌瀵硅薄鐨勫垱寤?
#### 绫讳笌瀵硅薄鐨勫叧绯?
+ 绫绘槸涓€绉嶆娊璞＄殑鏁版嵁绫诲瀷锛屽畠鏄鏌愪竴瀵逛簨鐗╂暣浣撴弿杩?瀹氫箟锛屼絾骞朵笉鏄唬琛ㄦ煇涓€涓叿浣撶殑浜嬬墿
+ 瀵硅薄鏄娊璞℃蹇电殑鍏蜂綋瀹炰緥

鍒涘缓涓庡垵濮嬪寲瀵硅薄

+ 浣跨敤new鍏抽敭瀛楀垱寤哄璞?
+ 浣跨敤new鍏抽敭瀛楀垱寤哄璞＄殑鏃跺€欙紝闄や簡 鍒嗛厤鍐呭瓨绌洪棿涔嬪锛岃繕浼氱粰鍒涘缓濂界殑瀵硅薄杩涜榛樿鐨勫垵濮嬪寲锛屽強瀵圭被涓瀯閫犲櫒鐨勮皟鐢?
+ 绫讳腑鐨勬瀯閫犲櫒涔熺О涓烘瀯閫犳柟娉曪紝鏄湪杩涜鍒涘缓瀵硅薄鐨勬椂鍊欏繀椤昏皟鐢ㄧ殑锛屽苟涓旀瀯閫犲櫒鏈変互涓嬩袱涓壒鐐癸細
    - 蹇呴』鍜岀被鐨勫悕瀛楃浉鍚?
    - 蹇呴』娌℃湁杩斿洖绫诲瀷锛屼篃涓嶈兘鍐檝oid
+ 鏋勯€犲櫒蹇呴』瑕佹帉鎻?
    - 浣跨敤new鍏抽敭瀛楋紝鏈川鏄皟鐢ㄦ瀯閫犲櫒
    - 鐢ㄦ潵鍒濆鍖栧€?
    - 鏈夊弬鏋勯€狅細涓€鏃﹀畾涔変簡鏈夊弬鏋勯€狅紝鏃犲弬鏋勯€犲繀椤绘樉绀哄畾涔?

#### 鏋勯€犲櫒
+ 鍜岀被鍚嶇浉鍚?
+ 娌℃湁杩斿洖鍊?

浣滅敤

+ new 鏈川鍦ㄨ皟鐢ㄦ瀯閫犳柟娉?
+ 鍒濊瘑鍖栧璞＄殑鍊?

娉ㄦ剰鐐?

+ 瀹氫箟鏈夊弬鏋勯€犳墽涔嬪墠锛屽鏋滄兂浣跨敤鏃犲弬鏋勯€狅紝鏄剧ず鍦板畾涔変竴涓棤鍙傛瀯閫?

ALT + INSTRL: 鑷姩鐢熸垚鏋勯€犲櫒

### 灏佽
+ 楂樺唴鑱氾紝浣庤€﹀悎
    - 楂樺唴鑱氾細灏辨槸绫荤殑鍐呴儴鏁版嵁鎿嶄綔缁嗚妭鑷繁瀹屾垚锛屼笉鍏佽澶栭儴骞叉秹
    - 浣庤€﹀悎锛氫粎鏆撮湶灏戦噺鐨勬柟娉曠粰澶栭儴浣跨敤
+ 鏁版嵁鐨勯殣钘忥細閫氬父锛屽簲绂佹鐩存帴璁块棶涓€涓璞′腑鏁版嵁鐨勫疄闄呰〃绀猴紝鑰屽簲閫氳繃鎿嶄綔鎺ュ彛鏉ヨ闂?
+ **灞炴€х鏈夛紝 get/set**
    - get锛氳幏寰楄繖涓暟鎹?
    - set锛氱粰杩欎釜鏁版嵁璁剧疆鍊?

```java
// 灞炴€х鏈?
private String name;
private int id;
private char sex;
```

+ 鎰忎箟
    - 鎻愰珮绋嬪簭鐨勫畨鍏ㄦ€э紝淇濇姢鏁版嵁
    - 闅愯棌浠ｇ爜鐨勫疄鐜扮粏鑺?
    - 缁熶竴鎺ュ彛
    - 澧炲姞浜嗙郴缁熺殑鍙淮鎶ゆ€?

### 缁ф壙
#### 缁ф壙鍩虹
+ extends鐨勬剰鎬濇槸"鎵╁睍"锛屽瓙绫绘槸鐖剁被鐨勬墿灞?
+ Java涓被鍙湁鍗曠户鎵匡紝娌℃湁澶氱户鎵?
+ 缁ф壙鏄被鍜岀被鐨勪竴绉嶅叧绯伙紝绫诲拰绫荤殑鍏崇郴杩樻湁渚濊禆锛岀粍鍚堬紝鑱氬悎绛?
+ 缁ф壙鍏崇郴鐨勪袱涓被锛屼竴涓负瀛愮被锛堟淳鐢熺被锛夛紝涓€涓负鐖剁被锛堝熀绫伙級锛屽瓙绫荤户鎵跨埗绫伙紝浣跨敤鍏抽敭瀛梕xtends琛ㄧず
+ 瀛愮被鍜岀埗绫讳箣闂达紝浠庢剰涔変笂璁插簲璇ュ叿鏈?is a" 鐨勫叧绯?
+ 瀛愮被缁ф壙浜嗙埗绫伙紝灏变細鎷ユ湁鐖剁被鐨勬墍鏈塸ublic鏂规硶
+ 鍦╦ava涓紝鎵€鏈夌殑绫婚兘鐩存帴鎴栭棿鎺ョ户鎵縊bject绫?

#### super锛氳皟鐢ㄧ埗绫绘柟娉?
+ super璋冪敤鐖剁被鐨勬瀯閫犳柟娉曪紝蹇呴』鍦ㄦ瀯閫犳柟娉曠殑绗竴涓?
+ super 蹇呴』鍙兘鍑虹幇鍦ㄥ瓙绫荤殑鏂规硶鎴栬€呮瀯閫犳柟娉曚腑
+ super鍜宼his涓嶈兘鍚屾椂璋冪敤
+ VS this
    - 浠ｈ〃鐨勫璞′笉鍚?
        * this锛氭湰韬皟鐢ㄨ€呰繖涓璞?
        * super锛氫唬琛ㄧ埗绫诲璞＄殑搴旂敤
    - 鍓嶆彁
        * this锛氭病鏈夌户鎵夸篃鍙互浣跨敤
        * super锛氬彧鑳藉湪缁ф壙鏉′欢涓嬫墠鍙互浣跨敤
    - 鏋勯€犳柟娉?
        * this();   鏈被鐨勬瀯閫?
        * super(); 鐖剁被鐨勬瀯閫?



#### 鏂规硶閲嶅啓锛氶渶瑕佹湁缁ф壙鍏崇郴锛屽瓙绫婚噸鍐欑埗绫荤殑鏂规硶
+ 鏂规硶鍚嶅繀椤荤浉鍚?
+ 鍙傛暟鍒楄〃蹇呴』鐩稿悓
+ 淇グ绗︼細鑼冨洿鍙互鎵╁ぇ锛? public-->Protected-->private
+ 鎶涘嚭寮傚父锛氳寖鍥达紝鍙互琚缉灏忥紝浣嗕笉鑳借鎵╁ぇ
+ 瀛愮被鐨勬柟娉曞拰鐖剁被蹇呴』涓€鑷达細鏂规硶浣撲笉鍚?
+ 蹇嵎閿細Alt + Insert 锛歰verride锛?

#### 涓嶈兘閲嶅啓鐨勬柟娉?
+ static 鏂规硶锛屽睘浜庣被锛屼粬涓嶅睘浜庡疄渚?
+ final 甯搁噺
+ private 鏂规硶锛氱鏈夋柟娉?

### 澶氭€?
+ 澶氭€佹槸鏂规硶鐨勫鎬侊紝灞炴€ф病鏈夊鎬?
+ 鐖剁被鍜屽瓙绫?锛屾湁鑱旂郴 绫诲瀷杞崲寮傚父锛欳lassCastException!
+ 瀛樺湪鏉′欢锛岀户鎵垮叧绯伙紝鏂规硶闇€瑕侀噸鍐欙紝鐖剁被寮曠敤鍙兂瀛愮被瀵硅薄锛?  Father f1 = new Son()
+ instanceof    (X instanceof Y)   鍒ゆ柇X鍜孻鏄惁瀛樺湪鐖跺瓙鍏崇郴
+ 绫诲瀷杞崲
    - 鐖剁被寮曠敤鎸囧悜瀛愮被鐨勫璞?
    - 鎶婂瓙绫昏浆鎹负鐖剁被锛屽悜涓婅浆鍚?
    - 鎶婄埗绫昏浆鎹负瀛愮被锛屽悜涓嬭浆鍚戯紝寮哄埗杞崲
    - 鏂逛究鏂规硶鐨勮皟鐢紝鍑忓皯閲嶅鐨勪唬鐮?

### static 锛氶潤鎬?
+ 瀹氫箟闈欐€佸彉閲忥細 private static int age锛?
+ 瀹氫箟闈欐€佹柟娉曪細public static viod go(){}
+ 鍖垮悕浠ｇ爜鍧楋細{ //浠ｇ爜鍧?}
+ 闈欐€佷唬鐮佸潡锛?static  { // 浠ｇ爜鍧?}  //鍙墽琛屼竴娆?

### 鎶借薄绫?abstract
```java
// 瀹氫箟鎶借薄绫?
public abstract class Action {
    // 瀹氫箟鎶借薄鏂规硶
    public abstract void toSomethng();
}

public class a extend Action{
    @Override
    public void toSomething{
        
    }
}
```

+ abstract 淇グ绗﹀彲浠ョ敤鏉ヤ慨楗版柟娉曚篃鍙互鐢ㄦ潵淇グ绫伙紝鎶借薄鏂规硶鍜屾娊璞＄被
+ 鎶借薄绫讳腑鍙互娌℃湁鎶借薄鏂规硶锛屼絾鎶借薄鏂规硶蹇呴』鏄湪鎶借薄绫讳腑
+ 鎶借薄绫伙紝涓嶈兘鐢╪ew鍏抽敭瀛楁潵鍒涢€犲璞★紝浠栨槸鐢ㄦ潵璁╁瓙绫荤户鎵跨殑
+ 鎶借薄鏂规硶鍙湁鏂规硶鐨勫０鏄庯紝娌℃湁鏂规硶鐨勫疄鐜?
+ 瀛愮被缁ф壙鎶借薄浜嗭紝蹇呴』瀹炵幇鎶借薄绫讳腑鐨勬娊璞℃柟娉曪紝鍚﹀垯璇ュ瓙绫讳篃瑕佸０鏄庝负鎶借薄绫?



### 鎺ュ彛 interface
+ 浣滅敤锛?
    - 绾︽潫
    - 瀹氫箟涓€浜涙柟娉曪紝璁╀笉鍚岀殑浜哄疄鐜?
    - public abstract
    - public static final
    - 鎺ュ彛涓嶈兘琚疄渚嬪寲锛屾帴鍙ｆ病鏈夋瀯閫犳柟娉?
    - implements鍙互瀹炵幇澶氫釜鎺ュ彛
    - 蹇呴』瑕侀噸鍐欐帴鍙ｄ腑鐨勬柟娉?

### 鍐呴儴绫?
```java
import Outher锛?
//娴嬭瘯绫?
public class Applicant{
    public static void main(String[] args){
        Outher outer = new Outer();
        // 閫氳繃杩欎釜澶栭儴绫绘潵瀹炰緥鍖栧唴閮ㄧ被
        Outer.Inner inner = outer.new Inner();
        inner.in();
        inner.getId();
    }
}

// 鍒涘缓澶栭儴绫?
public class Outer{
    private int id=10;
    public void out(){
        System.out.println("杩欐槸澶栭儴绫荤殑鏂规硶");
    }

    public class Inner {
        public void in(){
            System.out.println("杩欐槸涓€涓唴閮ㄧ被鐨勬柟娉?);
        }
        
        // 鑾峰緱澶栭儴绫荤殑绉佹湁灞炴€?
        public void getId(){
            System.out.println(id);
        }
    }

    
}


```

## 寮傚父鏈哄埗 exception
### 浠€涔堟槸寮傚父
+ 寮傚父鏄寚绋嬪簭杩愯涓嚭鐜扮殑涓嶆湡鑰岃嚦鐨勫悇绉嶇姸鍐碉紝濡傦細鏂囦欢鎵句笉鍒帮紝缃戠粶杩炴帴澶辫触锛岄潪娉曞弬鏁扮瓑
+ 寮傚父鍙戠敓鍦ㄧ▼搴忚繍琛屾湡闂达紝瀹冨奖鍝嶄簡姝ｅ父鐨勭▼搴忔墽琛屾祦绋?
+ 寮傚父鐨勭畝鍗曞垎绫?
    - 妫€鏌ユ€у紓甯革細濡傜敤鎴烽敊璇垨闂寮曡捣鐨勫紓甯革紝杩欐槸绋嬪簭鏃犳硶棰勮鐨?
    - 杩愯鏃跺紓甯革細鍙兘琚▼搴忓憳閬垮厤鐨勫紓甯?
    - 閿欒锛氳劚绂荤▼搴忓憳鎺у埗鐨勯棶棰橈紝濡傛爤婧㈠嚭

### Error Exception
![鐢绘澘](https://cdn.nlark.com/yuque/0/2025/jpeg/54050922/1744009511106-ad39608f-dc1f-4e05-a67f-909ea0f62765.jpeg)

#### Error
+ 鐢盝ava铏氭嫙鏈虹敓鎴愬苟鎶涘嚭锛屽ぇ澶氭暟閿欒涓庝唬鐮佺紪鍐欒€呮墍鎵ц鐨勬搷浣滄棤鍏?
+ Java铏氭嫙鏈鸿繍琛岄敊璇紙Virtual MachineError锛夛紝褰搄vm涓嶅湪鐢辩户缁墽琛屾搷浣滄墍闇€鐨勫唴瀛樿祫婧愭椂锛屽皢鍑虹幇OutOfMemoryError銆?
+ 杩樻湁鍙戠敓鍦ㄨ櫄鎷熸満璇曞浘鎵ц搴旂敤鏃讹紝濡傜被瀹氫箟閿欒锛圢oClassDefFoundError锛夛紝杩炴帴閿欒锛圠inkageError锛夈€傝繖浜涢敊璇槸涓嶅彲鏌ョ殑锛屽洜涓轰粬浠湪搴旂敤绋嬪簭鐨勬帶鍒跺拰澶勭悊鑳藉姏涔嬪锛岃€屼笖缁濆ぇ澶氭暟绋嬪簭杩愯鏃朵笉鍏佽鍑虹幇鐨勭姸鍐?





#### Exception
+ 鍦‥xception鍒嗘敮涓湁涓€涓噸瑕佺殑瀛愮被RuntimeException锛堣繍琛屽紓甯革級
    - ArrayIndexOutOfBoundsException锛堟暟缁勪笅鏍囪秺鐣岋級
    - NullPointerException锛堢┖鎸囬拡寮傚父锛?
    - ArithmeticException锛堢畻鏁板紓甯革級
    - MissingResourceException锛堜涪澶辫祫婧愶級
    - ClassNotFoundException锛堟壘涓嶅埌绫伙級绛夊紓甯歌繖浜涘紓甯告椂涓嶆鏌ュ紓甯革紝绋嬪簭涓彲浠ラ€夋嫨鎹曡幏澶勭悊锛屼篃鍙互涓嶅鐞?
+ 杩欎簺寮傚父涓€鑸槸鐢辩▼搴忛€昏緫閿欒寮曡捣鐨勶紝绋嬪簭搴旇浠庨€昏緫瑙掑害灏藉彲鑳介伩鍏嶈繖绫诲紓甯哥殑鍙戠敓
+ Error鍜孍xception鐨勫尯鍒細Error閫氬父鏄伨闅炬€х殑鑷村懡鐨勯敊璇紝鏄▼搴忔棤娉曟帶鍒跺拰澶勭悊鐨勶紝褰撳嚭鐜拌繖浜涘紓甯告椂锛孞ava铏氭嫙鏈猴紙JVM锛変竴鑸細閫夋嫨缁堟绾跨▼锛汦xception閫氬父鎯呭喌涓嬫槸鍙互琚▼搴忓鐞嗙殑锛屽苟涓斿湪绋嬪簭涓簲璇ュ敖鍙兘寰楀幓澶勭悊杩欎簺寮傚父

### 寮傚父澶勭悊鏈哄埗
鎶涘嚭寮傚父

鎹曡幏寮傚父

寮傚父澶勭悊浜斾釜鍏抽敭瀛?

+ try-catch锛氱敤浜庢崟鑾峰紓甯?
+ finally锛氱敤浜庡鐞嗗紓甯哥殑鍠勫悗宸ヤ綔
+ throw锛氬湪鏂规硶涓姏鍑哄紓甯?
+ throws锛氬湪鏂规硶涓婃姏鍑哄紓甯?

### 鑷畾涔夊紓甯?
鑷畾涔夊紓甯哥被鐨勬楠?

+ 鍒涘缓鑷畾涔夊紓甯哥被
+ 鍦ㄦ柟娉曚腑閫氳繃throw鍏抽敭瀛楁姏鍑哄紓甯稿璞?
+ 濡傛灉鍦ㄥ綋鍓嶆姏鍑哄紓甯哥殑鏂规硶涓鐞嗗紓甯革紝鍙互浣跨敤try-catch璇彞鎹曡幏骞跺鐞嗭紱鍚﹀垯鍦ㄦ柟娉曠殑澹版槑澶勯€氳繃throws鍏抽敭瀛楁寚鏄庤鎶涘嚭缁欐柟娉曡皟鐢ㄨ€呯殑寮傚父锛岀户缁暅鍍忎笅涓€姝ユ搷浣?
+ 鍦ㄥ嚭鐜板紓甯告柟娉曠殑璋冪敤鑰呬腑鎹曡幏骞跺鐞嗗紓甯?
', NOW());
SET @last_note_id = LAST_INSERT_ID();

INSERT INTO 
ote (uthor_id, 	itle, content, created_at)
VALUES (1001, 'MyBatis-Plus', '# <font style="color:rgb(23, 24, 28);">绠€浠?/font>
[<font style="color:rgb(70, 142, 247);">MyBatis-Plus</font>](https://github.com/baomidou/mybatis-plus)<font style="color:rgb(53, 56, 65);"> </font><font style="color:rgb(53, 56, 65);">鏄竴涓?/font><font style="color:rgb(53, 56, 65);"> </font>[<font style="color:rgb(70, 142, 247);">MyBatis</font>](https://www.mybatis.org/mybatis-3/)<font style="color:rgb(53, 56, 65);"> </font><font style="color:rgb(53, 56, 65);">鐨勫寮哄伐鍏凤紝鍦?MyBatis 鐨勫熀纭€涓婂彧鍋氬寮轰笉鍋氭敼鍙橈紝涓虹畝鍖栧紑鍙戙€佹彁楂樻晥鐜囪€岀敓銆?/font>

<font style="background-color:rgb(11, 87, 208) !important;">MyBatis-Plus 鏁欑▼</font>

**<font style="color:rgb(102, 8, 145);background-color:rgb(237, 209, 250);">鎰挎櫙</font>**

<font style="color:rgb(23, 24, 28);background-color:rgb(237, 209, 250);">鎴戜滑鐨勬効鏅槸鎴愪负 MyBatis 鏈€濂界殑鎼。锛屽氨鍍?</font>**<font style="color:rgb(23, 24, 28);background-color:rgb(237, 209, 250);">榄傛枟缃?/font>**<font style="color:rgb(23, 24, 28);background-color:rgb(237, 209, 250);"> 涓殑 1P銆?P锛屽熀鍙嬫惌閰嶏紝鏁堢巼缈诲€嶃€?/font>

## <font style="color:rgb(23, 24, 28);">鐗规€?/font>
+ **<font style="color:rgb(53, 56, 65);">鏃犱镜鍏?/font>**<font style="color:rgb(53, 56, 65);">锛氬彧鍋氬寮轰笉鍋氭敼鍙橈紝寮曞叆瀹冧笉浼氬鐜版湁宸ョ▼浜х敓褰卞搷锛屽涓濊埇椤烘粦</font>
+ **<font style="color:rgb(53, 56, 65);">鎹熻€楀皬</font>**<font style="color:rgb(53, 56, 65);">锛氬惎鍔ㄥ嵆浼氳嚜鍔ㄦ敞鍏ュ熀鏈?CURD锛屾€ц兘鍩烘湰鏃犳崯鑰楋紝鐩存帴闈㈠悜瀵硅薄鎿嶄綔</font>
+ **<font style="color:rgb(53, 56, 65);">寮哄ぇ鐨?CRUD 鎿嶄綔</font>**<font style="color:rgb(53, 56, 65);">锛氬唴缃€氱敤 Mapper銆侀€氱敤 Service锛屼粎浠呴€氳繃灏戦噺閰嶇疆鍗冲彲瀹炵幇鍗曡〃澶ч儴鍒?CRUD 鎿嶄綔锛屾洿鏈夊己澶х殑鏉′欢鏋勯€犲櫒锛屾弧瓒冲悇绫讳娇鐢ㄩ渶姹?/font>
+ **<font style="color:rgb(53, 56, 65);">鏀寔 Lambda 褰㈠紡璋冪敤</font>**<font style="color:rgb(53, 56, 65);">锛氶€氳繃 Lambda 琛ㄨ揪寮忥紝鏂逛究鐨勭紪鍐欏悇绫绘煡璇㈡潯浠讹紝鏃犻渶鍐嶆媴蹇冨瓧娈靛啓閿?/font>
+ **<font style="color:rgb(53, 56, 65);">鏀寔涓婚敭鑷姩鐢熸垚</font>**<font style="color:rgb(53, 56, 65);">锛氭敮鎸佸杈?4 绉嶄富閿瓥鐣ワ紙鍐呭惈鍒嗗竷寮忓敮涓€ ID 鐢熸垚鍣?- Sequence锛夛紝鍙嚜鐢遍厤缃紝瀹岀編瑙ｅ喅涓婚敭闂</font>
+ **<font style="color:rgb(53, 56, 65);">鏀寔 ActiveRecord 妯″紡</font>**<font style="color:rgb(53, 56, 65);">锛氭敮鎸?ActiveRecord 褰㈠紡璋冪敤锛屽疄浣撶被鍙渶缁ф壙 Model 绫诲嵆鍙繘琛屽己澶х殑 CRUD 鎿嶄綔</font>
+ **<font style="color:rgb(53, 56, 65);">鏀寔鑷畾涔夊叏灞€閫氱敤鎿嶄綔</font>**<font style="color:rgb(53, 56, 65);">锛氭敮鎸佸叏灞€閫氱敤鏂规硶娉ㄥ叆锛?Write once, use anywhere 锛?/font>
+ **<font style="color:rgb(53, 56, 65);">鍐呯疆浠ｇ爜鐢熸垚鍣?/font>**<font style="color:rgb(53, 56, 65);">锛氶噰鐢ㄤ唬鐮佹垨鑰?Maven 鎻掍欢鍙揩閫熺敓鎴?Mapper 銆?Model 銆?Service 銆?Controller 灞備唬鐮侊紝鏀寔妯℃澘寮曟搸锛屾洿鏈夎秴澶氳嚜瀹氫箟閰嶇疆绛夋偍鏉ヤ娇鐢?/font>
+ **<font style="color:rgb(53, 56, 65);">鍐呯疆鍒嗛〉鎻掍欢</font>**<font style="color:rgb(53, 56, 65);">锛氬熀浜?MyBatis 鐗╃悊鍒嗛〉锛屽紑鍙戣€呮棤闇€鍏冲績鍏蜂綋鎿嶄綔锛岄厤缃ソ鎻掍欢涔嬪悗锛屽啓鍒嗛〉绛夊悓浜庢櫘閫?List 鏌ヨ</font>
+ **<font style="color:rgb(53, 56, 65);">鍒嗛〉鎻掍欢鏀寔澶氱鏁版嵁搴?/font>**<font style="color:rgb(53, 56, 65);">锛氭敮鎸?MySQL銆丮ariaDB銆丱racle銆丏B2銆丠2銆丠SQL銆丼QLite銆丳ostgre銆丼QLServer 绛夊绉嶆暟鎹簱</font>
+ **<font style="color:rgb(53, 56, 65);">鍐呯疆鎬ц兘鍒嗘瀽鎻掍欢</font>**<font style="color:rgb(53, 56, 65);">锛氬彲杈撳嚭 SQL 璇彞浠ュ強鍏舵墽琛屾椂闂达紝寤鸿寮€鍙戞祴璇曟椂鍚敤璇ュ姛鑳斤紝鑳藉揩閫熸彧鍑烘參鏌ヨ</font>
+ **<font style="color:rgb(53, 56, 65);">鍐呯疆鍏ㄥ眬鎷︽埅鎻掍欢</font>**<font style="color:rgb(53, 56, 65);">锛氭彁渚涘叏琛?delete 銆?update 鎿嶄綔鏅鸿兘鍒嗘瀽闃绘柇锛屼篃鍙嚜瀹氫箟鎷︽埅瑙勫垯锛岄闃茶鎿嶄綔</font>

<font style="color:rgb(53, 56, 65);"></font>

# <font style="color:rgb(23, 24, 28);">蹇€熷紑濮?/font>
<font style="color:rgb(53, 56, 65);">鎴戜滑灏嗛€氳繃涓€涓畝鍗曠殑 Demo 鏉ラ槓杩?MyBatis-Plus 鐨勫己澶у姛鑳斤紝鍦ㄦ涔嬪墠锛屾垜浠亣璁炬偍宸茬粡锛?/font>

<font style="background-color:rgb(11, 87, 208) !important;">MyBatis-Plus鐢熸€?/font>

+ <font style="color:rgb(53, 56, 65);">鎷ユ湁 Java 寮€鍙戠幆澧冧互鍙婄浉搴?IDE</font>
+ <font style="color:rgb(53, 56, 65);">鐔熸倝 Spring Boot</font>
+ <font style="color:rgb(53, 56, 65);">鐔熸倝 Maven 鎴?Gradle</font>

---

<font style="color:rgb(53, 56, 65);">鐜版湁涓€寮?User 琛紝鍏惰〃缁撴瀯濡備笅锛?/font>

| <font style="color:rgb(53, 56, 65);">id</font> | <font style="color:rgb(53, 56, 65);">name</font> | <font style="color:rgb(53, 56, 65);">age</font> | <font style="color:rgb(53, 56, 65);">email</font> |
| --- | --- | --- | --- |
| <font style="color:rgb(53, 56, 65);">1</font> | <font style="color:rgb(53, 56, 65);">Jone</font> | <font style="color:rgb(53, 56, 65);">18</font> | [<font style="color:rgb(70, 142, 247);">test1@baomidou.com</font>](mailto:test1@baomidou.com) |
| <font style="color:rgb(53, 56, 65);">2</font> | <font style="color:rgb(53, 56, 65);">Jack</font> | <font style="color:rgb(53, 56, 65);">20</font> | [<font style="color:rgb(70, 142, 247);">test2@baomidou.com</font>](mailto:test2@baomidou.com) |
| <font style="color:rgb(53, 56, 65);">3</font> | <font style="color:rgb(53, 56, 65);">Tom</font> | <font style="color:rgb(53, 56, 65);">28</font> | [<font style="color:rgb(70, 142, 247);">test3@baomidou.com</font>](mailto:test3@baomidou.com) |
| <font style="color:rgb(53, 56, 65);">4</font> | <font style="color:rgb(53, 56, 65);">Sandy</font> | <font style="color:rgb(53, 56, 65);">21</font> | [<font style="color:rgb(70, 142, 247);">test4@baomidou.com</font>](mailto:test4@baomidou.com) |
| <font style="color:rgb(53, 56, 65);">5</font> | <font style="color:rgb(53, 56, 65);">Billie</font> | <font style="color:rgb(53, 56, 65);">24</font> | [<font style="color:rgb(70, 142, 247);">test5@baomidou.com</font>](mailto:test5@baomidou.com) |


<font style="color:rgb(53, 56, 65);">鍏跺搴旂殑鏁版嵁搴?Schema 鑴氭湰濡備笅锛?/font>

<font style="color:rgb(53, 56, 65);">schema-h2.sql</font>

<font style="background-color:rgb(11, 87, 208) !important;">Java瀹炰綋绫?/font>

```plain
DROP TABLE IF EXISTS `user`;




CREATE TABLE `user`

(

    id BIGINT NOT NULL COMMENT ''涓婚敭ID'',

    name VARCHAR(30) NULL DEFAULT NULL COMMENT ''濮撳悕'',

    age INT NULL DEFAULT NULL COMMENT ''骞撮緞'',

    email VARCHAR(50) NULL DEFAULT NULL COMMENT ''閭'',

    PRIMARY KEY (id)

);
```

<font style="color:rgb(53, 56, 65);">鍏跺搴旂殑鏁版嵁搴?Data 鑴氭湰濡備笅锛?/font>

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

<font style="color:rgb(53, 56, 65);">鍒涘缓涓€涓┖鐨?Spring Boot 宸ョ▼锛屽姞鍏?H2 鏁版嵁搴撹繘琛岄泦鎴愭祴璇曘€?/font>

## <font style="color:rgb(23, 24, 28);">娣诲姞渚濊禆</font>
<font style="color:rgb(53, 56, 65);">寮曞叆 MyBatis-Plus Starter 渚濊禆</font>

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
        <!--鏁版嵁搴撻┍鍔?->
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

浣跨敤mybatis-Plus鍙互鑺傜渷澶ч噺鐨勪唬鐮侊紝灏介噺涓嶈鍚屾椂瀵煎叆mybatis鍜宮ybatis-plus

## <font style="color:rgb(23, 24, 28);">閾炬帴鏁版嵁搴?/font>
```xml
spring.application.name=mybatis_plus
spring.datasource.username=root
spring.datasource.password=@Root1234
spring.datasource.url=jdbc:mysql://192.168.2.129:3306/mybatis_plus?useSSL=false&useUnicode=true&characterEncoding=utf-8&serverTimezone=GMT%2B8
spring.datasource.driver-class-name=com.mysql.jdbc.Driver

```

## <font style="color:rgb(23, 24, 28);">濡備綍浣跨敤</font>
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

// 鍦ㄥ搴旂殑Mapper涓婇潰缁ф壙鍩烘湰鐨勭被 BaseMapper
@Repository  // 浠ｈ〃鎸佷箙灞?
public interface UserMapper extends BaseMapper<User> {
    // 鎵€鏈夌殑crud宸茬粡閰嶇疆瀹屾垚
    // 涓嶉渶瑕侀厤缃叾浠栨枃浠朵簡
}
```

3. 娴嬭瘯

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

    @Autowired  // 缁ф壙浜咮aseMapper鎵€鏈夌殑鏂规硶锛屼篃鍙互鑷繁缂栧啓鏂规硶
    private UserMapper userMapper;

    @Test
    void contextLoads() {
        // 鍙傛暟鏄竴涓獁rapper锛屾潯浠舵瀯閫犲櫒锛岃繖閲屼娇鐢╪ull
        // 鏌ヨ鍏ㄩ儴鐢ㄦ埛
        List<User> users = userMapper.selectList(null);
        users.forEach(System.out::println);
    }
}
```

## <font style="color:rgb(23, 24, 28);"></font>
# 閰嶇疆鏃ュ織
鍦ㄩ厤缃枃浠朵腑璁剧疆

```plain
# 鏃ュ織閰嶇疆
mybatis-plus.configuration.log-impl=org.apache.ibatis.logging.stdout.StdOutImpl

```

鏌ョ湅鑷姩鐢熸垚鐨剆ql

# CRUD
## 鎻掑叆娴嬭瘯
```java
@Test // 鎻掑叆娴嬭瘯
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

<font style="color:rgb(53, 56, 65);">MyBatis-Plus 鎻愪緵浜嗙伒娲荤殑鑷畾涔塈D鐢熸垚鍣ㄥ姛鑳斤紝鍏佽寮€鍙戣€呮牴鎹笟鍔￠渶姹傚畾鍒禝D鐢熸垚绛栫暐銆備粠3.3.0鐗堟湰寮€濮嬶紝榛樿浣跨敤闆姳绠楁硶缁撳悎涓嶅惈涓垝绾跨殑UUID浣滀负ID鐢熸垚鏂瑰紡</font>

## <font style="color:rgb(53, 56, 65);">鑷绛栫暐</font>
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
    AUTO(0),  //涓婚敭鑷锛岃姹傛暟鎹簱瀛楁蹇呴』鑷
    NONE(1),  //鏈缃富閿?
    INPUT(2), // 鎵嬪姩杈撳叆
    ASSIGN_ID(3),  // 榛樿鍏ㄥ眬id
    ASSIGN_UUID(4); // 鍏ㄥ眬id

    private final int key;

    private IdType(int key) {
        this.key = key;
    }

    public int getKey() {
        return this.key;
    }
}
```

## 娴嬭瘯鏇存柊
```java
@Test // 鏇存柊娴嬭瘯
public void testUpdate(){
    User user = new User();
    user.setId(6L);
    user.setName("lisi");
    user.setAge(10);

    int result = userMapper.updateById(user);
    System.out.println(result);
}
```

## 鑷姩濉厖
鍒涘缓鏃堕棿锛屼慨鏀规椂闂达紒杩欎簺鎿嶄綔涓€鑸兘鏄嚜鍔ㄥ寲瀹屾垚鐨勶紝鎴戜滑涓嶅笇鏈涙墜鍔ㄦ洿鏂?

闃块噷宸村反寮€鍙戞墜鍐岋細鎵€鏈夌殑鏁版嵁搴撹〃閮藉簲璇ユ湁锛歡mt_create锛?gmt_modified鍑犱箮鎵€鏈夌殑琛ㄩ兘瑕侀厤缃笂锛岃€屼笖闇€瑕佽嚜鍔ㄥ寲锛?

### 鏁版嵁搴撶骇鍒?
鍦ㄨ〃涓柊澧炲瓧娈?create_time,update_time锛屽皢榛樿琛ㄨ揪鏄缃负CURRENT_TIMESTAMP锛屽皢update_tiem鏇存柊璁剧疆涓篊URRENT_TIMESTAMP

鍦ㄥ垱寤烘暟鎹拰淇敼鏁版嵁鍚庝細鑷姩鏇存敼

### 浠ｇ爜绾у埆
鍦ㄥ疄浣撶被瀛楁涓婂鍔犳敞瑙?

```java
// 瀛楁澧炲姞濉厖鍐呭
@TableField(fill = FieldFill.INSERT)
private Date createTime;
@TableField(fill = FieldFill.UPDATE)
private Date updateTime;
```

鍦ㄥ鐞嗗櫒涓鐞嗘敞瑙?

```java
package com.jie.handler;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.util.Date;

@Slf4j
@Component  // 涓€瀹氫笉瑕佸繕璁版妸澶勭悊鍣ㄥ姞鍒癷oc瀹瑰櫒涓?
public class MyMetaObjetHandler implements MetaObjectHandler {
    // 鎻掑叆鏃剁殑濉厖绛栫暐
    @Override
    public void insertFill(MetaObject metaObject) {
        log.info("start insert fill ....");
        // setFieldValByName(String fieldName, Object fieldVal, MetaObject metaObject)
        this.setFieldValByName("createTime", new Date(), metaObject);
        this.setFieldValByName("updateTime", new Date(), metaObject);
    }
    // 璺熸柊鏃剁殑濉厖绛栫暐
    @Override
    public void updateFill(MetaObject metaObject) {
        log.info("start update fill ....");
        // setFieldValByName(String fieldName, Object fieldVal, MetaObject metaObject)
        this.setFieldValByName("updateTime", new Date(), metaObject);
    }
}
```

## 涔愯閿?
<font style="color:rgb(53, 56, 65);">涔愯閿佹槸涓€绉嶅苟鍙戞帶鍒舵満鍒讹紝鐢ㄤ簬纭繚鍦ㄦ洿鏂拌褰曟椂锛岃璁板綍鏈鍏朵粬浜嬪姟淇敼銆侻yBatis-Plus 鎻愪緵浜?/font><font style="color:rgb(53, 56, 65);"> </font>`<font style="color:rgb(53, 56, 65);background-color:rgb(236, 238, 242);">OptimisticLockerInnerInterceptor</font>`<font style="color:rgb(53, 56, 65);"> </font><font style="color:rgb(53, 56, 65);">鎻掍欢锛屼娇寰楀湪搴旂敤涓疄鐜颁箰瑙傞攣鍙樺緱绠€鍗曘€?/font>

<font style="background-color:rgb(11, 87, 208) !important;">杞欢</font>

### <font style="color:rgb(23, 24, 28);">涔愯閿佺殑瀹炵幇鍘熺悊</font>
<font style="color:rgb(53, 56, 65);">涔愯閿佺殑瀹炵幇閫氬父鍖呮嫭浠ヤ笅姝ラ锛?/font>

1. <font style="color:rgb(53, 56, 65);">璇诲彇璁板綍鏃讹紝鑾峰彇褰撳墠鐨勭増鏈彿锛坴ersion锛夈€?/font>
2. <font style="color:rgb(53, 56, 65);">鍦ㄦ洿鏂拌褰曟椂锛屽皢杩欎釜鐗堟湰鍙蜂竴鍚屼紶閫掋€?/font>
3. <font style="color:rgb(53, 56, 65);">鎵ц鏇存柊鎿嶄綔鏃讹紝璁剧疆</font><font style="color:rgb(53, 56, 65);"> </font>`<font style="color:rgb(53, 56, 65);background-color:rgb(236, 238, 242);">version = newVersion</font>`<font style="color:rgb(53, 56, 65);"> </font><font style="color:rgb(53, 56, 65);">鐨勬潯浠朵负</font><font style="color:rgb(53, 56, 65);"> </font>`<font style="color:rgb(53, 56, 65);background-color:rgb(236, 238, 242);">version = oldVersion</font>`<font style="color:rgb(53, 56, 65);">銆?/font>
4. <font style="color:rgb(53, 56, 65);">濡傛灉鐗堟湰鍙蜂笉鍖归厤锛屽垯鏇存柊澶辫触銆?/font>

### 濡備綍瀹炵幇
1. 缁欐暟鎹〃涓姞涓妚ersion瀛楁锛岄粯璁や负1
2. 淇敼瀹炰綋绫伙紝鍔犱笂version

```java
@Version
private Integer version;
```

3. 娉ㄥ唽缁勪欢

```java
// 鎵弿mapper鏂囦欢澶?
@MapperScan("com.jie.mapper")
@EnableTransactionManagement
@Configuration //閰嶇疆绫?
public class MyBatisPlusConfig {

    // 娉ㄥ唽涔愯閿佹彃浠?
    @Bean
    public OptimisticLockerInnerInterceptor optimisticLockerInnerInterceptor() {
        return new OptimisticLockerInnerInterceptor();
    }
}
```

4. 涔愯閿佹祴璇?

```java
@Test // 娴嬭瘯涔愯閿?
public void testOptimisticLockerInner(){

    // 绾跨▼1
    User user = userMapper.selectById(1L);
    user.setAge(18);
    user.setEmail("123456789@qq.com");

    // 妯℃嫙鍙︿竴涓嚎绋嬫墽琛屾彃闃熸搷浣?
    User user2 = userMapper.selectById(1L);
    user2.setAge(30);
    user2.setEmail("213456789@qq.com");
    userMapper.updateById(user2);

    userMapper.updateById(user);
}

}
```

## 鏌ヨ鎿嶄綔
```java
@Test // 鏌ヨ娴嬭瘯
public void testSelectById(){  // 鍗曚釜ID
    User user = userMapper.selectById(1L);
    System.out.println(user);
}

@Test  // 娴嬭瘯鎵归噺鏌ヨ
public void testSelectByBatchId(){
    List<User> users = userMapper.selectByIds(Arrays.asList(1L, 2L, 3L));
    users.forEach(System.out::println);
}

@Test // 鏉′欢鏌ヨ map
public void testDeleteByIds(){
    HashMap<String, Object> map = new HashMap<>();
    map.put("name", "zhangsan");
    List<User> users = userMapper.selectByMap(map);
    users.forEach(System.out::println);

}

}
```

## 鍒嗛〉鏌ヨ
1. 閰嶇疆鍒嗛〉鎻掍欢

```java
@Bean
public MybatisPlusInterceptor mybatisPlusInterceptor() {
    MybatisPlusInterceptor interceptor = new MybatisPlusInterceptor();
    interceptor.addInnerInterceptor(new PaginationInnerInterceptor(DbType.MYSQL)); // 濡傛灉閰嶇疆澶氫釜鎻掍欢, 鍒囪鍒嗛〉鏈€鍚庢坊鍔?
    // 濡傛灉鏈夊鏁版嵁婧愬彲浠ヤ笉閰嶅叿浣撶被鍨? 鍚﹀垯閮藉缓璁厤涓婂叿浣撶殑 DbType
    return interceptor;
}
```

2. 娴嬭瘯鍒嗛〉鏌ヨ



```java
@Test // 娴嬭瘯鍒嗛〉鎻掑彊
public void testPage(){
    // 鍙傛暟涓€: 褰撳墠椤?
    // 鍙傛暟浜? 椤甸潰澶у皬
    Page<User> page = new Page<>(1,5);
    userMapper.selectPage(page,null);
    page.getRecords().forEach(System.out::println);
    //        System.out.println(page.getTotal());
}
```





## 鍒犻櫎鎿嶄綔
### 鍩烘湰鍒犻櫎鎿嶄綔
```java
@Test // 鏍规嵁id鍒犻櫎
public void testDeleteById(){
    User user = userMapper.selectById(1L);
    userMapper.deleteById(2045004534566916098L);
}

@Test // 鎵归噺鍒犻櫎
public void testDeleteBatchByIds(){
    List<Long> ids = Arrays.asList(7L,6L);
    userMapper.deleteBatchIds(ids);
}

@Test // 鏍规嵁鏉′欢鍒犻櫎
public void testDeleteMap(){
    HashMap<String, Object> map = new HashMap<>();
    map.put("name", "lis");
    userMapper.deleteByMap(map);
}
```

### 閫昏緫鍒犻櫎
1. 鐗╃悊鍒犻櫎锛氫粠鏁版嵁搴撲腑鍒犻櫎
2. 閫昏緫鍒犻櫎锛氬湪鏁版嵁搴撲腑娌℃湁琚Щ闄わ紝鑰屾槸閫氳繃涓€涓彉閲忔潵璁╀粬澶辨晥锛?deleted=0--> deleted =1 锛岀鐞嗗憳鍙互鏌ョ湅鍒犻櫎璁板綍锛岄槻姝㈡暟鎹涪澶?

娴嬭瘯

1. 鐜板湪鏁版嵁搴撲腑娣诲姞涓€涓猟eleted瀛楁
2. 鍦ㄥ疄浣撶被涓坊鍔燿eleted灞炴€?

```java
@TableLogic // 閫昏緫鍒犻櫎
private Integer deleted;
```

3. 閰嶇疆

```java
@Bean
public ISqlInjector sqlInjector() {
    return new LogicSqlInjector();
}
```

```xml
# 閰嶇疆閫昏緫鍒犻櫎
mybatis-plus.global-config.db-config.logic-delete-value=1
mybatis-plus.global-config.db-config.logic-not-delete-value=0
```

+ 娴嬭瘯鍒犻櫎锛屾湰璐ㄨ蛋鐨勬槸鏇存柊鎿嶄綔锛屽皢deleted鏀逛负0
+ 鏌ヨ鏃惰嚜鍔ㄨ繃婊よ閫昏緫鍒犻櫎鐨勬暟鎹?

## 
# 鎬ц兘鍒嗘瀽鎻掍欢
鍦ㄦ棩甯稿紑鍙戜腑锛屼細閬囧埌涓€浜涙參sql

浣滅敤锛氭€ц兘鍒嗘瀽鎷︽埅鍣紝鐢ㄤ簬杈撳嚭姣忔潯SQL璇彞鍙婂叾鎵ц鏃堕棿

MP涓篃鎻愪緵鎬ц兘鍒嗘瀽鎻掍欢锛屽鏋滆秴杩囪繖涓椂闂村氨浼氬仠姝㈣繍琛?

1. 瀵煎叆鎻掍欢

```java
@Bean
@Profile({"dev","test"}) // 璁剧疆 dev test 鐜寮€鍚?淇濊瘉寮€鍙戞晥鐜?
public PerformanceInterceptor performanceInterceptor() {
    PerformanceInterceptor performanceInterceptor = new PerformanceInterceptor();
    performanceInterceptor.setMaxTime(1); // ms 璁剧疆璇磋捣鏉ユ墽琛岀殑鏈€澶ф椂闂?
    performanceInterceptor.setFormat(true); //鏄惁寮€鍚牸寮忓寲鏀寔
    return performanceInterceptor;
}
```

瑕佸湪SpringBoot涓厤缃幆澧冧负dev鎴栬€卼est鐜锛?

```plain
# 璁剧疆寮€鍙戠幆澧?
spring.profiles.active=dev
```

2. 娴嬭瘯浣跨敤锛岃秴杩囨祴璇曟椂闂村氨浼氬仠姝㈣繍琛?

# 鏉′欢鏋勯€犲櫒
<font style="color:rgb(53, 56, 65);">MyBatis-Plus 鎻愪緵浜嗕竴濂楀己澶х殑鏉′欢鏋勯€犲櫒锛圵rapper锛夛紝鐢ㄤ簬鏋勫缓澶嶆潅鐨勬暟鎹簱鏌ヨ鏉′欢銆俉rapper 绫诲厑璁稿紑鍙戣€呬互閾惧紡璋冪敤鐨勬柟寮忔瀯閫犳煡璇㈡潯浠讹紝鏃犻渶缂栧啓绻佺悙鐨?SQL 璇彞锛屼粠鑰屾彁楂樺紑鍙戞晥鐜囧苟鍑忓皯 SQL 娉ㄥ叆鐨勯闄┿€?/font>

<font style="background-color:rgb(11, 87, 208) !important;">閾惧紡璋冪敤</font>

<font style="color:rgb(53, 56, 65);">鍦?MyBatis-Plus 涓紝Wrapper 绫绘槸鏋勫缓鏌ヨ鍜屾洿鏂版潯浠剁殑鏍稿績宸ュ叿銆備互涓嬫槸涓昏鐨?Wrapper 绫诲強鍏跺姛鑳斤細</font>

+ **<font style="color:rgb(53, 56, 65);">AbstractWrapper</font>**<font style="color:rgb(53, 56, 65);">锛氳繖鏄竴涓娊璞″熀绫伙紝鎻愪緵浜嗘墍鏈?Wrapper 绫诲叡鏈夌殑鏂规硶鍜屽睘鎬с€傚畠瀹氫箟浜嗘潯浠舵瀯閫犵殑鍩烘湰閫昏緫锛屽寘鎷瓧娈碉紙column锛夈€佸€硷紙value锛夈€佹搷浣滅锛坈ondition锛夌瓑銆傛墍鏈夌殑 QueryWrapper銆乁pdateWrapper銆丩ambdaQueryWrapper 鍜?LambdaUpdateWrapper 閮界户鎵胯嚜 AbstractWrapper銆?/font>
+ **<font style="color:rgb(53, 56, 65);">QueryWrapper</font>**<font style="color:rgb(53, 56, 65);">锛氫笓闂ㄧ敤浜庢瀯閫犳煡璇㈡潯浠讹紝鏀寔鍩烘湰鐨勭瓑浜庛€佷笉绛変簬銆佸ぇ浜庛€佸皬浜庣瓑鍚勭甯歌鎿嶄綔銆傚畠鍏佽浣犱互閾惧紡璋冪敤鐨勬柟寮忔坊鍔犲涓煡璇㈡潯浠讹紝骞朵笖鍙互缁勫悎浣跨敤</font><font style="color:rgb(53, 56, 65);"> </font>`<font style="color:rgb(53, 56, 65);background-color:rgb(236, 238, 242);">and</font>`<font style="color:rgb(53, 56, 65);"> </font><font style="color:rgb(53, 56, 65);">鍜?/font><font style="color:rgb(53, 56, 65);"> </font>`<font style="color:rgb(53, 56, 65);background-color:rgb(236, 238, 242);">or</font>`<font style="color:rgb(53, 56, 65);"> </font><font style="color:rgb(53, 56, 65);">閫昏緫銆?/font>
+ **<font style="color:rgb(53, 56, 65);">UpdateWrapper</font>**<font style="color:rgb(53, 56, 65);">锛氱敤浜庢瀯閫犳洿鏂版潯浠讹紝鍙互鍦ㄦ洿鏂版暟鎹椂鎸囧畾鏉′欢銆備笌 QueryWrapper 绫讳技锛屽畠涔熸敮鎸侀摼寮忚皟鐢ㄥ拰閫昏緫缁勫悎銆備娇鐢?UpdateWrapper 鍙互鍦ㄤ笉鍒涘缓瀹炰綋瀵硅薄鐨勬儏鍐典笅锛岀洿鎺ヨ缃洿鏂板瓧娈靛拰鏉′欢銆?/font>
+ **<font style="color:rgb(53, 56, 65);">LambdaQueryWrapper</font>**<font style="color:rgb(53, 56, 65);">锛氳繖鏄竴涓熀浜?Lambda 琛ㄨ揪寮忕殑鏌ヨ鏉′欢鏋勯€犲櫒锛屽畠閫氳繃 Lambda 琛ㄨ揪寮忔潵寮曠敤瀹炰綋绫荤殑灞炴€э紝浠庤€岄伩鍏嶄簡纭紪鐮佸瓧娈靛悕銆傝繖绉嶆柟寮忔彁楂樹簡浠ｇ爜鐨勫彲璇绘€у拰鍙淮鎶ゆ€э紝灏ゅ叾鏄湪瀛楁鍚嶅彲鑳藉彂鐢熷彉鍖栫殑鎯呭喌涓嬨€?/font>
+ **<font style="color:rgb(53, 56, 65);">LambdaUpdateWrapper</font>**<font style="color:rgb(53, 56, 65);">锛氱被浼间簬 LambdaQueryWrapper锛孡ambdaUpdateWrapper 鏄熀浜?Lambda 琛ㄨ揪寮忕殑鏇存柊鏉′欢鏋勯€犲櫒銆傚畠鍏佽浣犱娇鐢?Lambda 琛ㄨ揪寮忔潵鎸囧畾鏇存柊瀛楁鍜屾潯浠讹紝鍚屾牱閬垮厤浜嗙‖缂栫爜瀛楁鍚嶇殑闂</font>

<font style="color:rgb(53, 56, 65);">MyBatis-Plus 鐨?Wrapper 绫绘槸鏋勫缓澶嶆潅鏌ヨ鍜屾洿鏂版潯浠剁殑鍏抽敭宸ュ叿銆傚畠鍏佽寮€鍙戣€呬互閾惧紡璋冪敤鐨勬柟寮忔瀯閫?SQL 鐨?WHERE 瀛愬彞锛屾彁渚涗簡鏋佸ぇ鐨勭伒娲绘€у拰渚垮埄鎬с€?/font>

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
    @Autowired  // 缁ф壙浜咮aseMapper鎵€鏈夌殑鏂规硶锛屼篃鍙互鑷繁缂栧啓鏂规硶
    private UserMapper userMapper;

    @Test
    void test1() {
        // 鏌ヨname涓嶄负绌猴紝涓旈偖绠变笉涓虹┖锛屽勾榫勫ぇ浜庣瓑浜?2鐨勭敤鎴?
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.isNotNull("name")
        .isNotNull("email")
        .ge("age", 18);
        userMapper.selectList(wrapper);
    }

    @Test
    void test2() {
        // 鏌ヨ鍚嶅瓧涓篢om鐨勭敤鎴?
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.eq("name","Tom");
        User user = userMapper.selectOne(wrapper); // 鏌ヨ涓€涓暟鎹紙selectOne锛? 鍑虹幇澶氫釜鍊熺敤鐢╨ist鎴栬€卪ap
        System.out.println(user);
    }

    @Test
    void test3() {
        // 鏌ヨ骞撮緞鍦?0鍒?0涔嬮棿鐨勭敤鎴?
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.between("age",20,30);
        Long l = userMapper.selectCount(wrapper);
        System.out.println(l);
    }

    @Test
    void test4() {
        // 妯＄硦鏌ヨ
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.notLike("name","o")
        .likeRight("email","t");
        List<Map<String, Object>> maps = userMapper.selectMaps(wrapper);
        maps.forEach(System.out::println);
    }

    @Test
    void test5() {
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        // id 鍦ㄥ瓙鏌ヨ涓煡鍑烘潵
        wrapper.inSql("id", "select id from users where id < 3");
        List<Object> objects = userMapper.selectObjs(wrapper);
        objects.forEach(System.out::println);
    }

    @Test
    void test6() {
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        //閫氳繃id杩涜鎺掑簭
        wrapper.orderByDesc("id");
        List<User> users = userMapper.selectObjs(wrapper);
        users.forEach(System.out::println);
    }
}
```



# 浠ｇ爜鑷姩鐢熸垚鍣', NOW());
SET @last_note_id = LAST_INSERT_ID();

INSERT INTO 
ote (uthor_id, 	itle, content, created_at)
VALUES (1001, 'Redis', '# <font style="color:rgb(15, 17, 21);">Redis 姒傝堪銆?/font>
## 姒傝堪
<font style="color:rgb(15, 17, 21);"> Redis 鏄竴涓紑婧愮殑銆佸熀浜庡唴瀛樼殑閿€煎瀛樺偍鏁版嵁搴擄紝琚獕涓衡€滄暟鎹粨鏋勬湇鍔″櫒鈥濄€傚畠浠?/font>**<font style="color:rgb(15, 17, 21);">鏋侀珮鐨勬€ц兘</font>**<font style="color:rgb(15, 17, 21);">钁楃О锛岃鍐欓€熷害鍙揪姣忕10涓囨浠ヤ笂锛屼富瑕佺敤浜庤В鍐抽珮骞跺彂鍦烘櫙涓嬫暟鎹簱鐨勮闂摱棰堥棶棰樸€?/font>

<font style="color:rgb(15, 17, 21);">涓庡彧鏀寔绠€鍗曞瓧绗︿覆鐨勭紦瀛樺伐鍏蜂笉鍚岋紝Redis 鎻愪緵浜?/font>**<font style="color:rgb(15, 17, 21);">涓板瘜鐨勬暟鎹粨鏋?/font>**<font style="color:rgb(15, 17, 21);">锛堝瀛楃涓层€佸搱甯屻€佸垪琛ㄣ€侀泦鍚堛€佹湁搴忛泦鍚堢瓑锛夛紝鍙互鐩存帴瀹炵幇鎺掕姒溿€佺ぞ浜ゅ叧绯汇€佹秷鎭槦鍒楃瓑澶嶆潅鍔熻兘銆傚悓鏃讹紝瀹冭繕鏀寔</font>**<font style="color:rgb(15, 17, 21);">鏁版嵁鎸佷箙鍖?/font>**<font style="color:rgb(15, 17, 21);">锛堥噸鍚笉涓㈠け锛夈€?/font>**<font style="color:rgb(15, 17, 21);">鍒嗗竷寮忛攣</font>**<font style="color:rgb(15, 17, 21);">銆?/font>**<font style="color:rgb(15, 17, 21);">涓讳粠澶嶅埗</font>**<font style="color:rgb(15, 17, 21);">鍜?/font>**<font style="color:rgb(15, 17, 21);">闆嗙兢</font>**<font style="color:rgb(15, 17, 21);">绛夐珮鍙敤鐗规€с€?/font>

<font style="color:rgb(15, 17, 21);">绠€鍗曟潵璇达紝Redis 鏄幇浠ｉ珮骞跺彂銆佷綆寤惰繜绯荤粺鐨勨€?/font>**<font style="color:rgb(15, 17, 21);">鎬ц兘鍔犻€熷櫒</font>**<font style="color:rgb(15, 17, 21);">鈥濓紝鍑犱箮鎵€鏈夊ぇ鍨嬩簰鑱旂綉椤圭洰閮界涓嶅紑瀹冦€?/font>

## Linux瀹夎
1. 涓嬭浇瀹夎鍖?

```properties
https://download.redis.io/releases/
```

2. 灏嗗畨瑁呭寘绉诲埌 /opt/  涓紝瑙ｅ帇缂?

```properties
mv redis-8.6.4.tar.gz /opt
tar -v-zxvf redis-8.6.4.tar.gz
```

3. 涓嬭浇 gcc-c++

```properties
yum install gcc-c++
make
make install
```

4. 淇敼閰嶇疆鏂囦欢

```properties
cd /usr/local/bin
mkdir config
mv redis.conf config/
cd /config
vim redis.conf

daemonize yes

```

5. 鍚姩Redis鏈嶅姟

```properties
cd /usr/local/bin
redis-server config/redis.conf
```

6. 閾炬帴redis

```properties
redis-cli -p 6379
```

<img src="https://cdn.nlark.com/yuque/0/2026/png/54050922/1780733409646-33f9dd5c-6fb2-4c9f-a43e-52ee930a4631.png" width="557.6" title="" crop="0,0,1,1" id="u580fc5dd" class="ne-image">

7. 鏌ョ湅杩涚▼

<img src="https://cdn.nlark.com/yuque/0/2026/png/54050922/1780733587215-d4e9d144-d5ce-46a8-bf1b-2a45e1b8b5ea.png" width="640.8" title="" crop="0,0,1,1" id="u6693e831" class="ne-image">

8. 鍏抽棴閫€鍑?

<img src="https://cdn.nlark.com/yuque/0/2026/png/54050922/1780733562576-ce71d22b-facb-4026-b12a-b8b96a874af3.png" width="522.4" title="" crop="0,0,1,1" id="uef64c5c8" class="ne-image">

## redis-benchmark 鎬ц兘娴嬭瘯宸ュ叿
1. 鍙傛暟璇存槑

| <font style="color:rgb(15, 17, 21);">鍙傛暟</font> | <font style="color:rgb(15, 17, 21);">璇存槑</font> | <font style="color:rgb(15, 17, 21);">榛樿鍊?/font> |
| --- | --- | --- |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-h</font>` | <font style="color:rgb(15, 17, 21);">鏈嶅姟鍣?IP 鎴栧煙鍚?/font> | <font style="color:rgb(15, 17, 21);">127.0.0.1</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-p</font>` | <font style="color:rgb(15, 17, 21);">鏈嶅姟鍣ㄧ鍙?/font> | <font style="color:rgb(15, 17, 21);">6379</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-a</font>` | <font style="color:rgb(15, 17, 21);">杩炴帴瀵嗙爜</font> | <font style="color:rgb(15, 17, 21);">鏃?/font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-c</font>` | <font style="color:rgb(15, 17, 21);">骞跺彂杩炴帴鏁帮紙妯℃嫙澶氬皯涓鎴风锛?/font> | <font style="color:rgb(15, 17, 21);">50</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-n</font>` | <font style="color:rgb(15, 17, 21);">鎬昏姹傛暟閲?/font> | <font style="color:rgb(15, 17, 21);">100000</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-d</font>` | <font style="color:rgb(15, 17, 21);">SET/GET 鐨勬暟鎹ぇ灏忥紙瀛楄妭锛?/font> | <font style="color:rgb(15, 17, 21);">3</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-t</font>` | <font style="color:rgb(15, 17, 21);">鎸囧畾娴嬭瘯鐨勫懡浠ら泦锛屽</font><font style="color:rgb(15, 17, 21);"> </font>`<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-t set,get,lpush</font>` | <font style="color:rgb(15, 17, 21);">娴嬭瘯鎵€鏈夊懡浠?/font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-r</font>` | <font style="color:rgb(15, 17, 21);">浣跨敤闅忔満 key锛堥伩鍏嶇儹鐐?key 褰卞搷娴嬭瘯缁撴灉锛?/font> | <font style="color:rgb(15, 17, 21);">鍥哄畾 key</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-P</font>` | <font style="color:rgb(15, 17, 21);">绠￠亾锛坧ipeline锛夎姹傛暟</font> | <font style="color:rgb(15, 17, 21);">1锛堟棤绠￠亾锛?/font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-q</font>` | <font style="color:rgb(15, 17, 21);">瀹夐潤妯″紡锛屽彧鏄剧ず QPS 鍊?/font> | <font style="color:rgb(15, 17, 21);">鏄剧ず璇︾粏缁撴灉</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-l</font>` | <font style="color:rgb(15, 17, 21);">寰幆娴嬭瘯锛屾案涓嶅仠鏈?/font> | <font style="color:rgb(15, 17, 21);">鍙窇涓€杞?/font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">--csv</font>` | <font style="color:rgb(15, 17, 21);">浠?CSV 鏍煎紡杈撳嚭</font> | <font style="color:rgb(15, 17, 21);">鏅€氭枃鏈?/font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">--threads</font>` | <font style="color:rgb(15, 17, 21);">澶氱嚎绋嬫ā寮忥紙Redis 6.0+ 缂栬瘧鐨勭増鏈敮鎸侊級</font> | <font style="color:rgb(15, 17, 21);">鍗曠嚎绋?/font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">--cluster</font>` | <font style="color:rgb(15, 17, 21);">闆嗙兢妯″紡锛堟祴璇?Redis Cluster 鏃堕渶鍔犳鍙傛暟锛?/font> | <font style="color:rgb(15, 17, 21);">鍗曟満妯″紡</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-e</font>` | <font style="color:rgb(15, 17, 21);">鏄剧ず Redis 杩斿洖鐨勯敊璇俊鎭?/font> | <font style="color:rgb(15, 17, 21);">涓嶆樉绀?/font> |


2. <font style="color:rgb(15, 17, 21);">娴嬭瘯 SET 鍜?GET 鐨勬€ц兘</font>

```properties
redis-benchmark -t set,get -n 1000000 -c 200
```

3. <font style="color:rgb(15, 17, 21);">妯℃嫙鐪熷疄鍦烘櫙锛堝ぇ Value銆侀殢鏈?Key锛?/font>

```properties
redis-benchmark -t set -n 5000000 -c 500 -d 256 -r 1000000
```

| <font style="color:rgb(15, 17, 21);">鍙傛暟</font> | <font style="color:rgb(15, 17, 21);">鍚箟</font> | <font style="color:rgb(15, 17, 21);">璇存槑</font> |
| --- | --- | --- |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-c 500</font>` | <font style="color:rgb(15, 17, 21);">500 涓苟鍙戣繛鎺?/font> | <font style="color:rgb(15, 17, 21);">妯℃嫙楂樺苟鍙戝満鏅?/font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-n 5000000</font>` | <font style="color:rgb(15, 17, 21);">500 涓囨璇锋眰</font> | <font style="color:rgb(15, 17, 21);">娴嬭瘯闀挎椂闂寸ǔ瀹氭€?/font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-d 256</font>` | <font style="color:rgb(15, 17, 21);">姣忎釜 Value 256 瀛楄妭</font> | <font style="color:rgb(15, 17, 21);">妯℃嫙瀛樺偍杈冨ぇ鏁版嵁</font> |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">-r 1000000</font>` | <font style="color:rgb(15, 17, 21);">100 涓囦釜闅忔満 key</font> | <font style="color:rgb(15, 17, 21);">key 鑼冨洿 </font>`<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">mykey_000000000000</font>`<font style="color:rgb(15, 17, 21);">鍒?</font>`<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">mykey_000000999999</font>` |


# 鏁版嵁绫诲瀷
## 涓€銆佸叏灞€閿懡浠わ紙閫氱敤锛?
杩欎簺鍛戒护閫傜敤浜庢墍鏈夋暟鎹被鍨嬶細

| 鍛戒护 | 浣滅敤 | 绀轰緥 |
| :--- | :--- | :--- |
| `SET key value` | 璁剧疆閿€煎 | `SET name "John"` |
| `GET key` | 鑾峰彇閿殑鍊?| `GET name` |
| `DEL key [key...]` | 鍒犻櫎涓€涓垨澶氫釜閿?| `DEL name` |
| `EXISTS key` | 妫€鏌ラ敭鏄惁瀛樺湪锛堣繑鍥?/0锛?| `EXISTS name` |
| `EXPIRE key seconds` | 璁剧疆杩囨湡鏃堕棿锛堢锛?| `EXPIRE session 3600` |
| `TTL key` | 鏌ョ湅鍓╀綑杩囨湡鏃堕棿锛?1姘镐箙锛?2涓嶅瓨鍦級 | `TTL session` |
| `PERSIST key` | 绉婚櫎杩囨湡鏃堕棿锛屼娇鍏舵案涔?| `PERSIST session` |
| `KEYS pattern` | 鏌ユ壘鍖归厤鐨勯敭锛?*鐢熶骇鐜鎱庣敤锛屼細闃诲**锛?| `KEYS user:*` |
| `SCAN cursor` | 澧為噺杩唬閿紙鏇夸唬KEYS锛屾棤闃诲锛?| `SCAN 0 MATCH user:*` |
| `TYPE key` | 鏌ョ湅閿殑鏁版嵁绫诲瀷 | `TYPE name` |
| `RENAME old new` | 閲嶅懡鍚嶉敭 | `RENAME name username` |


**鉀?*** 鐗瑰埆璀﹀憡**锛歚KEYS` 鍛戒护浼氭壂鎻忔暣涓暟鎹簱锛屽湪鐢熶骇鐜锛堝嚑鐧句竾key锛変腑鎵ц浼氶樆濉濺edis鏁扮鐢氳嚦鏇翠箙锛屽鑷存湇鍔′笉鍙敤銆傝浣跨敤 `SCAN` 浠ｆ浛銆?

---

## 浜屻€佷簲澶ф牳蹇冩暟鎹被鍨?
#### 1. 瀛楃涓诧紙String锛?
鏈€鍩虹鐨勭被鍨嬶紝閫傚悎缂撳瓨銆佽鏁板櫒銆佸垎甯冨紡閿併€?

| 鍛戒护 | 浣滅敤 | 绀轰緥 |
| :--- | :--- | :--- |
| `SET key value [EX seconds] [NX/XX]` | 璁剧疆鍊硷紙鏀寔杩囨湡鏃堕棿銆佷粎涓嶅瓨鍦ㄦ椂璁剧疆锛?| `SET user:1 "Alice" EX 60 NX` |
| `GET key` | 鑾峰彇鍊?| `GET user:1` |
| `MSET k1 v1 k2 v2` | 鎵归噺璁剧疆 | `MSET a 1 b 2 c 3` |
| `MGET k1 k2` | 鎵归噺鑾峰彇 | `MGET a b` |
| `INCR key` | 鍘熷瓙+1 | `INCR page_view` |
| `DECR key` | 鍘熷瓙-1 | `DECR stock` |
| `INCRBY key n` | 鍘熷瓙+n | `INCRBY score 10` |
| `APPEND key value` | 杩藉姞瀛楃涓?| `APPEND log " new line"` |
| `STRLEN key` | 鑾峰彇瀛楃涓查暱搴?| `STRLEN name` |
| GETRANGE key a b | 鎴彇瀛楃涓?[a, b] | GETRANGE key1 0 3 |
| GETRANGE key 0 -1 | 鎴彇鍏ㄩ儴瀛楃涓?| GETRANGE key1 0 -1 |


**搴旂敤鍦烘櫙**锛?

+ 缂撳瓨鐢ㄦ埛淇℃伅銆侀〉闈TML
+ 鏂囩珷闃呰閲忋€佺偣璧炴暟璁℃暟鍣?
+ 鍒嗗竷寮忛攣锛坄SET key value NX EX 30`锛?

---

#### 2. 鍝堝笇锛圚ash锛?
閫傚悎瀛樺偍瀵硅薄锛堝鐢ㄦ埛淇℃伅銆佸晢鍝佽鎯咃級銆?

| 鍛戒护 | 浣滅敤 | 绀轰緥 |
| :--- | :--- | :--- |
| `HSET key field value` | 璁剧疆瀛楁鍊?| `HSET user:100 name "Bob" age 25` |
| `HGET key field` | 鑾峰彇瀛楁鍊?| `HGET user:100 name` |
| `HMSET key field val [field val...]` | 鎵归噺璁剧疆 | `HMSET user:100 name "Bob" age 25` |
| `HMGET key field [field...]` | 鎵归噺鑾峰彇 | `HMGET user:100 name age` |
| `HGETALL key` | 鑾峰彇鎵€鏈夊瓧娈靛拰鍊?| `HGETALL user:100` |
| `HKEYS key` | 鑾峰彇鎵€鏈夊瓧娈靛悕 | `HKEYS user:100` |
| `HVALS key` | 鑾峰彇鎵€鏈夊€?| `HVALS user:100` |
| `HDEL key field [field...]` | 鍒犻櫎瀛楁 | `HDEL user:100 age` |
| `HEXISTS key field` | 鍒ゆ柇瀛楁鏄惁瀛樺湪 | `HEXISTS user:100 name` |
| `HINCRBY key field n` | 瀛楁鍊煎鍔爊 | `HINCRBY user:100 score 10` |
| `HLEN key` | 鑾峰彇瀛楁鏁伴噺 | `HLEN user:100` |


**搴旂敤鍦烘櫙**锛?

+ 瀛樺偍鐢ㄦ埛璧勬枡銆佸晢鍝佽鎯咃紙姣擲tring鑺傜渷鍐呭瓨锛屾敮鎸佸瓧娈电骇鎿嶄綔锛?

---

#### 3. 鍒楄〃锛圠ist锛?
鏈夊簭鍙噸澶嶏紝閫傚悎娑堟伅闃熷垪銆佹渶鏂版秷鎭垪琛ㄣ€?

| 鍛戒护 | 浣滅敤 | 绀轰緥 |
| :--- | :--- | :--- |
| `LPUSH key value [value...]` | 宸︿晶鎻掑叆锛堝ご閮級 | `LPUSH queue "task1" "task2"` |
| `RPUSH key value [value...]` | 鍙充晶鎻掑叆锛堝熬閮級 | `RPUSH queue "task3"` |
| `LPOP key` | 宸︿晶寮瑰嚭骞剁Щ闄?| `LPOP queue` |
| `RPOP key` | 鍙充晶寮瑰嚭骞剁Щ闄?| `RPOP queue` |
| `LRANGE key start stop` | 鑾峰彇鎸囧畾鑼冨洿鍏冪礌锛?寮€濮嬶紝-1缁撳熬锛?| `LRANGE queue 0 -1` |
| `LLEN key` | 鑾峰彇鍒楄〃闀垮害 | `LLEN queue` |
| `LINDEX key index` | 鑾峰彇鎸囧畾绱㈠紩鍏冪礌 | `LINDEX queue 0` |
| `LTRIM key start stop` | 鎴彇淇濈暀鎸囧畾鑼冨洿 | `LTRIM queue 0 99`锛堜繚鐣欏墠100鏉★級 |
| `BLPOP key timeout` | 闃诲寮忓乏渚у脊鍑?| `BLPOP queue 10`锛堢瓑寰?0绉掞級 |
| `BRPOP key timeout` | 闃诲寮忓彸渚у脊鍑?| `BRPOP queue 10` |


**搴旂敤鍦烘櫙**锛?

+ 闃熷垪/鏍堢粨鏋勶紙LPUSH+RPOP=闃熷垪锛孡PUSH+LPOP=鏍堬級
+ 鏈€鏂版秷鎭椂闂寸嚎锛堝寰崥鏈€鏂?0鏉★級
+ 闃诲闃熷垪锛圔LPOP瀹炵幇鐢熶骇鑰?娑堣垂鑰呮ā寮忥級

---

#### 4. 闆嗗悎锛圫et锛?
鏃犲簭涓斿厓绱犲敮涓€锛岄€傚悎鏍囩绯荤粺銆佸叡鍚屽ソ鍙嬨€佹娊濂栥€?

| 鍛戒护 | 浣滅敤 | 绀轰緥 |
| :--- | :--- | :--- |
| `SADD key member [member...]` | 娣诲姞鍏冪礌 | `SADD tags "redis" "db"` |
| `SREM key member [member...]` | 鍒犻櫎鍏冪礌 | `SREM tags "db"` |
| `SMEMBERS key` | 鑾峰彇鎵€鏈夊厓绱狅紙澶ч泦鍚堟厧鐢級 | `SMEMBERS tags` |
| `SISMEMBER key member` | 鍒ゆ柇鏄惁瀛樺湪 | `SISMEMBER tags "redis"` |
| `SCARD key` | 鑾峰彇鍏冪礌涓暟 | `SCARD tags` |
| `SPOP key [count]` | 闅忔満寮瑰嚭骞剁Щ闄?| `SPOP lottery 1`锛堟娊濂栵級 |
| `SRANDMEMBER key [count]` | 闅忔満鑾峰彇锛堜笉绉婚櫎锛?| `SRANDMEMBER lottery 1` |
| `SINTER key1 key2` | 浜ら泦 | `SINTER setA setB`锛堝叡鍚屽ソ鍙嬶級 |
| `SUNION key1 key2` | 骞堕泦 | `SUNION setA setB` |
| `SDIFF key1 key2` | 宸泦锛坘ey1鏈夎€宬ey2娌℃湁鐨勶級 | `SDIFF setA setB` |


**搴旂敤鍦烘櫙**锛?

+ 鐢ㄦ埛鏍囩绯荤粺
+ 鍏卞悓濂藉弸/鍙兘璁よ瘑鐨勪汉锛堜氦闆嗭級
+ 鎶藉/闅忔満鎺ㄨ崘锛圫POP锛?

---

#### 5. 鏈夊簭闆嗗悎锛圸Set锛?
甯﹀垎鏁扮殑鏈夊簭闆嗗悎锛岄€傚悎鎺掕姒溿€佷紭鍏堥槦鍒椼€?

| 鍛戒护 | 浣滅敤 | 绀轰緥 |
| :--- | :--- | :--- |
| `ZADD key score member [score member...]` | 娣诲姞鍏冪礌鍙婂垎鏁?| `ZADD rank 100 "Alice" 90 "Bob"` |
| `ZREM key member [member...]` | 鍒犻櫎鍏冪礌 | `ZREM rank "Bob"` |
| `ZRANGE key start stop [WITHSCORES]` | 鎸夊垎鏁板崌搴忚幏鍙?| `ZRANGE rank 0 -1 WITHSCORES` |
| `ZREVRANGE key start stop [WITHSCORES]` | 鎸夊垎鏁伴檷搴忚幏鍙?| `ZREVRANGE rank 0 9`锛堝墠10鍚嶏級 |
| `ZRANGEBYSCORE key min max` | 鎸夊垎鏁拌寖鍥磋幏鍙?| `ZRANGEBYSCORE rank 80 100` |
| `ZRANK key member` | 鑾峰彇鍗囧簭鎺掑悕锛?寮€濮嬶級 | `ZRANK rank "Alice"` |
| `ZREVRANK key member` | 鑾峰彇闄嶅簭鎺掑悕 | `ZREVRANK rank "Alice"` |
| `ZSCORE key member` | 鑾峰彇鍏冪礌鍒嗘暟 | `ZSCORE rank "Alice"` |
| `ZINCRBY key n member` | 澧炲姞鍏冪礌鍒嗘暟 | `ZINCRBY rank 10 "Alice"` |
| `ZCARD key` | 鑾峰彇鍏冪礌涓暟 | `ZCARD rank` |
| `ZCOUNT key min max` | 缁熻鍒嗘暟鑼冨洿鍐呬釜鏁?| `ZCOUNT rank 60 100` |


**搴旂敤鍦烘櫙**锛?

+ 娓告垙鎺掕姒滐紙ZREVRANGE鍙栧墠N鍚嶏級
+ 浼樺厛绾т换鍔￠槦鍒?
+ 甯︽潈閲嶇殑鎺ㄨ崘绯荤粺

---

## 涓夈€佸疄鐢ㄧ鐞嗗懡浠?
| 鍛戒护 | 浣滅敤 | 绀轰緥 |
| :--- | :--- | :--- |
| `PING` | 娴嬭瘯杩炴帴锛岃繑鍥濸ONG | `PING` |
| `SELECT db` | 鍒囨崲鏁版嵁搴擄紙0-15锛?| `SELECT 1` |
| `DBSIZE` | 鏌ョ湅褰撳墠搴搆ey鏁伴噺 | `DBSIZE` |
| `FLUSHDB` | 娓呯┖褰撳墠搴擄紙**鎱庣敤**锛?| `FLUSHDB` |
| `FLUSHALL` | 娓呯┖鎵€鏈夊簱锛?*鏋佸害鎱庣敤**锛?| `FLUSHALL` |
| `INFO [section]` | 鏌ョ湅鏈嶅姟鍣ㄤ俊鎭?| `INFO memory` |
| `CONFIG GET param` | 鑾峰彇閰嶇疆鍙傛暟 | `CONFIG GET maxmemory` |
| `CONFIG SET param value` | 鍔ㄦ€佷慨鏀归厤缃?| `CONFIG SET maxmemory 2gb` |
| `SLOWLOG GET n` | 鏌ョ湅鎱㈡煡璇㈡棩蹇?| `SLOWLOG GET 10` |
| `MONITOR` | 瀹炴椂鐩戞帶鎵€鏈夊懡浠わ紙璋冭瘯鐢紝褰卞搷鎬ц兘锛?| `MONITOR` |


## 鍥涖€佸揩閫熻蹇嗗崱
| 鎯宠浠€涔?| 鐢ㄤ粈涔堝懡浠?|
| :--- | :--- |
| 瀛樹竴涓€?| `SET key value` |
| 鍙栦竴涓€?| `GET key` |
| 瀛樺璞?| `HSET user:1 name "John"` |
| 鍒楄〃澶存彃 | `LPUSH queue item` |
| 鍒楄〃灏惧脊 | `RPOP queue` |
| 瀛樹笉閲嶅鍊?| `SADD tags "redis"` |
| 浜ら泦锛堝叡鍚屽ソ鍙嬶級 | `SINTER set1 set2` |
| 鎺掕姒滃墠10 | `ZREVRANGE rank 0 9` |
| 璁℃暟鍣?1 | `INCR page_view` |
| 璁剧疆30绉掕繃鏈?| `SET key value EX 30` |
| 娴嬭瘯杩炴帴 | `PING` |


# 鐗规畩鏁版嵁绫诲瀷
## 涓€銆丟EO锛堝湴鐞嗕綅缃級
瀛樺偍鍦扮悊浣嶇疆锛堢粡绾害锛夛紝瀹炵幇**闄勮繎鐨勪汉**銆?*璺濈璁＄畻**銆?*闂ㄥ簵鎼滅储**绛?LBS锛堝熀浜庝綅缃殑鏈嶅姟锛夊姛鑳姐€?

### 搴曞眰瀹炵幇
鍩轰簬 ZSet锛堟湁搴忛泦鍚堬級锛屽皢缁忕含搴︾紪鐮佷负 GeoHash 瀛楃涓蹭綔涓?score銆?

### 鏍稿績鍛戒护
| 鍛戒护 | 璇硶 | 浣滅敤 | 绀轰緥 |
| :--- | :--- | :--- | :--- |
| `GEOADD` | `GEOADD key longitude latitude member [longitude latitude member ...]` | 娣诲姞涓€涓垨澶氫釜鍦扮悊浣嶇疆 | `GEOADD cities 116.397128 39.916527 beijing` |
| `GEOPOS` | `GEOPOS key member [member ...]` | 鑾峰彇鎸囧畾浣嶇疆鐨勭粡绾害 | `GEOPOS cities beijing` |
| `GEODIST` | `GEODIST key member1 member2 [鍗曚綅]` | 璁＄畻涓ょ偣涔嬮棿鐨勮窛绂?| `GEODIST cities beijing shanghai km` |
| `GEORADIUS` | `GEORADIUS key longitude latitude radius 鍗曚綅 [WITHDIST] [WITHCOORD] [COUNT n]` | 鏍规嵁缁欏畾缁忕含搴﹀崐寰勬煡璇?| `GEORADIUS cities 116.40 39.90 100 km WITHDIST` |
| `GEORADIUSBYMEMBER` | `GEORADIUSBYMEMBER key member radius 鍗曚綅 [WITHDIST] [WITHCOORD] [COUNT n]` | 浠ユ寚瀹氭垚鍛樹负涓績鍗婂緞鏌ヨ | `GEORADIUSBYMEMBER cities beijing 200 km` |
| `GEOHASH` | `GEOHASH key member [member ...]` | 杩斿洖 GeoHash 瀛楃涓诧紙鍙敤浜?URL 鍒嗕韩锛?| `GEOHASH cities beijing` |


**鍗曚綅**锛歚m`锛堢背锛夈€乣km`锛堝崈绫筹級銆乣mi`锛堣嫳閲岋級銆乣ft`锛堣嫳灏猴級

### 浣跨敤绀轰緥
```bash
# 1. 娣诲姞澶氫釜鍩庡競鍧愭爣
GEOADD cities 116.397128 39.916527 beijing 121.473701 31.230416 shanghai

# 2. 璁＄畻鍖椾含鍒颁笂娴风殑璺濈锛堝叕閲岋級
GEODIST cities beijing shanghai km
# 杈撳嚭: "1067.1234"

# 3. 鏌ヨ鍖椾含鍛ㄥ洿200鍏噷鍐呯殑鍩庡競锛堝甫璺濈锛?
GEORADIUSBYMEMBER cities beijing 200 km WITHDIST
# 杈撳嚭: 1) beijing (0.0000 km)

# 4. 鏍规嵁缁忕含搴︽煡璇㈤檮杩?00km鐨勪綅缃?
GEORADIUS cities 116.40 39.90 100 km WITHCOORD
```

### 瀹為檯搴旂敤鍦烘櫙
+ 婊存淮鎵撹溅锛氭煡鎵鹃檮杩?鍏噷鐨勫徃鏈?
+ 缇庡洟/澶т紬鐐硅瘎锛氭煡鎵鹃檮杩?00绫崇殑椁愬巺
+ 寰俊/闄岄檶锛氭煡鎵鹃檮杩戠殑浜?
+ 楂樺痉鍦板浘锛氳绠椾袱鍦伴┚杞﹁窛绂?

---

## 浜屻€丅itmap锛堜綅鍥撅級
浠?*浣嶏紙bit锛?*涓哄崟浣嶅瓨鍌ㄤ簩鍊肩姸鎬侊紙0/1锛夛紝閫傚悎**娴烽噺鏁版嵁鐨勫竷灏斿瀷缁熻**锛屽鐢ㄦ埛绛惧埌銆佸湪绾跨姸鎬併€佸竷闅嗚繃婊ゅ櫒銆?

### 搴曞眰瀹炵幇
鏈川鏄?String 绫诲瀷锛屼絾鎸変綅鎿嶄綔銆?瀛楄妭=8浣嶏紝1浜夸綅浠呴渶绾?**12MB** 鍐呭瓨銆?

### 鏍稿績鍛戒护
| 鍛戒护 | 璇硶 | 浣滅敤 | 绀轰緥 |
| :--- | :--- | :--- | :--- |
| `SETBIT` | `SETBIT key offset value` | 璁剧疆鎸囧畾鍋忕Щ閲忎笂鐨勪綅鍊硷紙0鎴?锛?| `SETBIT sign:202501 1000 1` |
| `GETBIT` | `GETBIT key offset` | 鑾峰彇鎸囧畾鍋忕Щ閲忎笂鐨勪綅鍊?| `GETBIT sign:202501 1000` |
| `BITCOUNT` | `BITCOUNT key [start end]` | 缁熻鍊间负1鐨勪綅鏁帮紙缁熻鏁伴噺锛?| `BITCOUNT sign:202501` |
| `BITOP` | `BITOP operation destkey key [key ...]` | 瀵瑰涓綅鍥炬墽琛屼綅杩愮畻锛圓ND/OR/XOR/NOT锛?| `BITOP AND dest key1 key2` |
| `BITPOS` | `BITPOS key bit [start end]` | 鏌ユ壘绗竴涓寚瀹氫綅鍊肩殑浣嶇疆 | `BITPOS sign:202501 1` |
| `BITFIELD` | `BITFIELD key [GET type offset] [SET type offset value]` | 鍘熷瓙鎿嶄綔澶氫釜浣嶅煙 | `BITFIELD stats:user GET u32 0` |


### 浣跨敤绀轰緥
```bash
# 鍦烘櫙1锛氱敤鎴风鍒扮郴缁燂紙鐢ㄦ埛ID=1000锛岀30澶╃鍒帮級
SETBIT sign:2025-01 30 1

# 鏌ヨ鐢ㄦ埛ID=1000 绗?0澶╂槸鍚︾鍒?
GETBIT sign:2025-01 30
# 杈撳嚭: 1

# 缁熻2025骞?鏈堟墍鏈夌敤鎴风鍒版€绘鏁?
BITCOUNT sign:2025-01

# 鍦烘櫙2锛氱敤鎴峰湪绾跨姸鎬侊紙鐢ㄦ埛ID=1000 鍦ㄧ嚎锛?
SETBIT online:20250101 1000 1

# 缁熻鍦ㄧ嚎浜烘暟
BITCOUNT online:20250101
```

### 瀹為檯搴旂敤鍦烘櫙
+ **杩炵画绛惧埌缁熻**锛氳褰曠敤鎴锋瘡鏃ョ鍒扮姸鎬?
+ **娲昏穬鐢ㄦ埛缁熻**锛氭棩娲伙紙DAU锛夈€佹湀娲伙紙MAU锛?
+ **鐢ㄦ埛鍦ㄧ嚎鐘舵€?*锛氬疄鏃舵樉绀哄湪绾?绂荤嚎
+ **甯冮殕杩囨护鍣?*锛氳В鍐崇紦瀛樼┛閫忛棶棰?
+ **娓告垙鎴愬氨绯荤粺**锛氳褰曠敤鎴疯В閿佸摢浜涙垚灏?

### 鍐呭瓨浼扮畻
| 鏁版嵁閲?| 鍗犵敤鐨勫唴瀛?|
| :--- | :--- |
| 100涓囩敤鎴?| 绾?0.12 MB |
| 1浜跨敤鎴?| 绾?12 MB |
| 10浜跨敤鎴?| 绾?120 MB |


---

## 涓夈€丠yperLogLog锛堝熀鏁扮粺璁★級
璁＄畻**涓嶉噸澶嶅厓绱犵殑澶ф鏁伴噺**锛堝熀鏁帮級锛屽吀鍨嬪満鏅槸缁熻**UV锛堢嫭绔嬭瀹級**銆傛渶澶т紭鍔匡細璁＄畻绾?2^64 涓厓绱犵殑鍩烘暟鍙渶 **12KB 鍐呭瓨**銆?

### 鐗圭偣
+ 鉁?**鏋佺渷鍐呭瓨**锛?2KB 鍥哄畾鍐呭瓨
+ 鉁?**鑷姩鍘婚噸**锛氳嚜鍔ㄧ粺璁′笉閲嶅鍏冪礌
+ 鈿狅笍 **鏈夎宸?*锛氭爣鍑嗚宸害 **0.81%**锛堢敤绮惧害鎹㈢┖闂达級
+ 鉂?**涓嶈兘鍙栧洖鍏冪礌**锛氬彧鑳界粺璁℃暟閲忥紝涓嶈兘鑾峰彇鍏蜂綋鍏冪礌

### 鏍稿績鍛戒护
| 鍛戒护 | 璇硶 | 浣滅敤 | 绀轰緥 |
| :--- | :--- | :--- | :--- |
| `PFADD` | `PFADD key element [element ...]` | 娣诲姞涓€涓垨澶氫釜鍏冪礌 | `PFADD uv:20250101 user_123` |
| `PFCOUNT` | `PFCOUNT key [key ...]` | 鑾峰彇鍘婚噸鍚庣殑鍩烘暟浼扮畻鍊?| `PFCOUNT uv:20250101` |
| `PFMERGE` | `PFMERGE destkey sourcekey [sourcekey ...]` | 鍚堝苟澶氫釜 HyperLogLog | `PFMERGE uv:week uv:day1 uv:day2` |


### 浣跨敤绀轰緥
```bash
# 鍦烘櫙1锛氱粺璁＄綉椤礥V锛堢嫭绔嬭瀹級
# 鐢ㄦ埛 user_1001 璁块棶棣栭〉
PFADD page:home:20250101 user_1001

# 鐢ㄦ埛 user_1002 璁块棶棣栭〉
PFADD page:home:20250101 user_1002

# 鐢ㄦ埛 user_1001 鍐嶆璁块棶锛堥噸澶嶈闂笉璁★級
PFADD page:home:20250101 user_1001

# 缁熻浠婃棩 UV
PFCOUNT page:home:20250101
# 杈撳嚭: 2

# 鍦烘櫙2锛氱粺璁″懆娲伙紙鍚堝苟7澶╂暟鎹級
PFADD week1_uv user1 user2 user3
PFADD week2_uv user2 user3 user4
PFMERGE total_uv week1_uv week2_uv
PFCOUNT total_uv
# 杈撳嚭: 4锛堝幓閲嶅悗鐨勬暟閲忥細user1,user2,user3,user4锛?
```

### 瀹為檯搴旂敤鍦烘櫙
+ **缃戠珯 UV 缁熻**锛堟浛浠?Set锛岃妭鐪佸唴瀛橈級
+ **鎼滅储鍏抽敭璇嶅幓閲嶇粺璁?*
+ **IP 鐙珛璁垮鏁?*
+ **娉ㄥ唽璁惧鏁扮粺璁?*
+ **甯栧瓙鐙珛娴忚浜烘暟**

### 瀵规瘮 Set
| 瀵规瘮椤?| Set | HyperLogLog |
| :--- | :--- | :--- |
| 鍐呭瓨鍗犵敤 | 闅忓厓绱犳暟閲忕嚎鎬у闀?| 鍥哄畾 12KB |
| 绮剧‘搴?| 100% 绮剧‘ | 绾?99.19%锛?.81% 璇樊锛?|
| 鑳藉惁鍙栧洖鍏冪礌 | 鑳?| 涓嶈兘 |
| 閫傜敤鏁版嵁閲?| 鐧句竾绾т互涓?| 浜跨骇浠ヤ笂 |


---

## 鍥涖€丼tream锛堟秷鎭槦鍒楋級
### 馃搶 鐢ㄩ€?
瀹炵幇**鎸佷箙鍖栥€佸彲闈犵殑娑堟伅闃熷垪**锛圧edis 5.0 寮曞叆锛夛紝瑙ｅ喅浜?List 鍜?Pub/Sub 鐨勭己闄凤細

+ **List 浣滀负闃熷垪**锛氫笉鏀寔 ACK锛堟秷鎭‘璁わ級锛屾秷璐硅€呭穿婧冧細瀵艰嚧娑堟伅涓㈠け
+ **Pub/Sub**锛氭秷鎭笉鎸佷箙鍖栵紝娑堣垂鑰呯绾垮悗娑堟伅鐩存帴涓㈠純

### 鏍稿績鐗规€?
+ 鉁?**娑堟伅鎸佷箙鍖?*锛氭秷鎭瓨鍌ㄥ湪鍐呭瓨锛堝彲閫?RDB/AOF 鎸佷箙鍖栵級
+ 鉁?**娑堣垂缁?*锛氭敮鎸佸涓秷璐硅€呭垎宸ユ秷璐?
+ 鉁?**ACK 鏈哄埗**锛氫繚璇佹秷鎭嚦灏戣娑堣垂涓€娆?
+ 鉁?**娑堟伅鍥炴函**锛氭敮鎸侀噸鏂版秷璐瑰巻鍙叉秷鎭?

### 鏍稿績鍛戒护
| 鍛戒护 | 璇硶 | 浣滅敤 | 绀轰緥 |
| :--- | :--- | :--- | :--- |
| `XADD` | `XADD key [MAXLEN ~ count] ID field value [field value ...]` | 娣诲姞娑堟伅鍒伴槦鍒楋紙鑷姩鐢熸垚ID锛?| `XADD mystream * user "John" age 30` |
| `XREAD` | `XREAD [COUNT n] [BLOCK ms] STREAMS key [key ...] id [id ...]` | 璇诲彇娑堟伅锛堝彲闃诲锛?| `XREAD COUNT 1 STREAMS mystream 0` |
| `XGROUP` | `XGROUP CREATE key groupname id [MKSTREAM]` | 鍒涘缓娑堣垂缁?| `XGROUP CREATE mystream mygroup 0` |
| `XREADGROUP` | `XREADGROUP GROUP group consumer [COUNT n] [BLOCK ms] STREAMS key [key ...] id [id ...]` | 娑堣垂缁勮鍙栨秷鎭?| `XREADGROUP GROUP mygroup consumer1 STREAMS mystream >` |
| `XACK` | `XACK key group id [id ...]` | 纭娑堟伅宸茶澶勭悊 | `XACK mystream mygroup 123456-0` |
| `XPENDING` | `XPENDING key group [start end count] [consumer]` | 鏌ョ湅寰呯‘璁ょ殑娑堟伅 | `XPENDING mystream mygroup` |
| `XCLAIM` | `XCLAIM key group consumer min-idle-time id [id ...]` | 杞Щ鏈狝CK鐨勬秷鎭粰鍏朵粬娑堣垂鑰?| `XCLAIM mystream mygroup consumer2 3600000 123456-0` |
| `XDEL` | `XDEL key id [id ...]` | 鍒犻櫎娑堟伅 | `XDEL mystream 123456-0` |
| `XLEN` | `XLEN key` | 鑾峰彇娑堟伅闃熷垪闀垮害 | `XLEN mystream` |
| `XRANGE` | `XRANGE key start end [COUNT n]` | 鎸塈D鑼冨洿鑾峰彇娑堟伅 | `XRANGE mystream - + COUNT 10` |


### 浣跨敤绀轰緥锛堟秷鎭槦鍒楀畬鏁存祦绋嬶級
```bash
# 1. 鐢熶骇鑰咃細娣诲姞娑堟伅锛? 琛ㄧず鑷姩鐢熸垚ID锛?
XADD orders * user_id 1001 product "iPhone" price 5999
# 杩斿洖: "1736234567890-0"

# 2. 娑堣垂鑰?锛氬垱寤烘秷璐圭粍锛堜粠娑堟伅澶村紑濮嬫秷璐癸級
XGROUP CREATE orders mygroup 0 MKSTREAM

# 3. 娑堣垂鑰?锛氭秷璐规秷鎭紙> 琛ㄧず璇诲彇鏈秷璐圭殑娑堟伅锛?
XREADGROUP GROUP mygroup consumer1 COUNT 1 STREAMS orders >
# 杩斿洖娑堟伅鍐呭

# 4. 娑堣垂鑰?锛氬鐞嗗畬娑堟伅鍚庣‘璁?
XACK orders mygroup 1736234567890-0

# 5. 鏌ョ湅寰呯‘璁ょ殑娑堟伅锛堟晠闅滄仮澶嶏級
XPENDING orders mygroup
```

### 瀹為檯搴旂敤鍦烘櫙
+ **璁㈠崟澶勭悊绯荤粺**锛氬彲闈犲湴澶勭悊璁㈠崟娑堟伅
+ **鏃ュ織鏀堕泦绯荤粺**锛氭寔涔呭寲瀛樺偍鏃ュ織
+ **瀹炴椂閫氱煡鎺ㄩ€?*锛氭秷鎭彲闈犳姇閫?
+ **寮傛浠诲姟闃熷垪**锛氳€楁椂鐨勫悗鍙颁换鍔?
+ **浜嬩欢婧簮**锛氬瓨鍌ㄤ簨浠舵祦

---

## 浜斻€丅itfield锛堜綅鍩燂級
### 馃搶 鐢ㄩ€?
鍦?Redis 瀛楃涓蹭腑**鍘熷瓙鎿嶄綔澶氫釜浣嶅瓧娈?*锛岄€傚悎瀛樺偍澶ч噺灏忔暣鏁帮紙濡傜敤鎴风殑澶氶」浜岃繘鍒跺睘鎬с€佹父鎴忓瓨妗ｆ暟鎹級銆?

### 鏍稿績鍛戒护
| 鍛戒护 | 璇硶 | 浣滅敤 | 绀轰緥 |
| :--- | :--- | :--- | :--- |
| `BITFIELD` | `BITFIELD key [GET type offset] [SET type offset value] [INCRBY type offset increment] [OVERFLOW WRAP/SAT/FAIL]` | 鍘熷瓙鎿嶄綔澶氫釜浣嶅煙 | `BITFIELD stats:user GET u32 0 SET u32 0 100` |


**绫诲瀷鏍煎紡**锛歚i8`锛堟湁绗﹀彿8浣嶏級銆乣u16`锛堟棤绗﹀彿16浣嶏級銆乣i32`绛?

### 浣跨敤绀轰緥
```bash
# 鍦烘櫙锛氱敤1涓猭ey瀛樺偍鐢ㄦ埛鐨勫椤瑰睘鎬?
# offset 0-7: 绛夌骇 (u8, 鑼冨洿0-255)
# offset 8-15: 缁忛獙鍊?(u8)
# offset 16-23: 瑁呭ID (u8)

# 璁剧疆绛夌骇=10
BITFIELD user:1001 SET u8 0 10

# 璁剧疆缁忛獙鍊?50
BITFIELD user:1001 SET u8 8 50

# 涓€娆℃€ц幏鍙栧涓睘鎬?
BITFIELD user:1001 GET u8 0 GET u8 8
# 杈撳嚭: 10, 50

# 鍘熷瓙澧炲姞绛夌骇锛堟孩鍑哄悗鐜粫锛?
BITFIELD user:1001 OVERFLOW WRAP INCRBY u8 0 1
```

### 瀹為檯搴旂敤鍦烘櫙
+ **娓告垙瀛樻。**锛氬瓨鍌ㄧ瓑绾с€佺粡楠屽€笺€佽澶嘔D绛夊皬鏁存暟
+ **鐢ㄦ埛灞炴€т綅鍥?*锛氬瓨鍌ㄥ椤瑰紑鍏崇姸鎬?
+ **绱у噾瀛樺偍**锛氳妭鐪佸唴瀛橈紙姣?Hash 鏇寸渷鍐呭瓨锛?

---

## 馃搳 蹇€熼€夋嫨鎸囧崡
| 闇€姹傚満鏅?| 閫夋嫨鐨勬暟鎹被鍨?| 鐞嗙敱 |
| :--- | :--- | :--- |
| **闄勮繎鐨勪汉/闂ㄥ簵** | **GEO** | 鍘熺敓鏀寔鍦扮悊鍧愭爣鍜岃窛绂昏绠?|
| **鐢ㄦ埛绛惧埌/鍦ㄧ嚎鐘舵€?* | **Bitmap** | 鏋佺渷鍐呭瓨锛岄€傚悎娴烽噺浜屽€肩姸鎬?|
| **缁熻 UV锛堢嫭绔嬭瀹級** | **HyperLogLog** | 鍥哄畾12KB鍐呭瓨锛屽厑璁?.81%璇樊 |
| **绮惧噯 UV 缁熻** | **Set** | 100% 绮剧‘锛屼絾鍐呭瓨闅忔暟鎹噺澧為暱 |
| **鍙潬娑堟伅闃熷垪** | **Stream** | 鏀寔鎸佷箙鍖栥€丄CK銆佹秷璐圭粍 |
| **瀛樺偍澶氶」灏忔暣鏁?* | **Bitfield** | 鍘熷瓙鎿嶄綔锛岃妭鐪佸唴瀛?|


---

## 馃挕 瀹炵敤鎶€宸?
1. **GEO 搴曞眰鏄?ZSet**锛氬彲浠ョ敤 ZSet 鐨勫懡浠ゆ搷浣?GEO 鏁版嵁锛堝 `ZREM` 鍒犻櫎浣嶇疆锛?
2. **Bitmap 鎸夋湀鍒?key**锛歚sign:2025-01`銆乣sign:2025-02` 鏂逛究娓呯悊杩囨湡鏁版嵁
3. **HyperLogLog 鍚堝苟**锛氱敤 `PFMERGE` 鍚堝苟澶氬ぉ鏁版嵁缁熻鍛ㄦ椿/鏈堟椿
4. **Stream 娑堟伅ID**锛氱敤 `*` 璁?Redis 鑷姩鐢熸垚鏃堕棿鎴矷D锛堟绉掔骇锛夛紝鏀寔鎸夋椂闂磋寖鍥存煡璇?
5. **Stream 娑堣垂缁?*锛氬涓秷璐硅€呯敤鍚屼竴涓?group 鍚嶏紝鑷姩璐熻浇鍧囪　

---

**浣犳兂娣卞叆浜嗚В鍝釜鐗规畩鏁版嵁绫诲瀷鐨勫叿浣撳疄鐜帮紝鎴栬€呮湁鐗瑰畾鐨勪笟鍔″満鏅渶瑕佽璁″悧锛?* 鎴戝彲浠ユ彁渚涙洿璇︾粏鐨勪唬鐮佺ず渚嬪拰浼樺寲寤鸿銆?

# Redis 浜嬪姟
## 涓€銆佷簨鍔℃杩?
### 浠€涔堟槸 Redis 浜嬪姟锛?
Redis 浜嬪姟鍏佽**涓€娆℃€с€佹寜椤哄簭鎵ц澶氫釜鍛戒护**锛屽苟涓斿叿鏈変互涓嬬壒鐐癸細

+ 鉁?**涓€娆℃€ф墽琛?*锛氫簨鍔′腑鐨勬墍鏈夊懡浠や細鎸夐『搴忔墽琛?
+ 鉁?**闅旂鎬?*锛氫簨鍔℃墽琛岃繃绋嬩腑锛屼笉浼氳鍏朵粬瀹㈡埛绔殑鍛戒护鎵撴柇
+ 鉁?**鍘熷瓙鎬э紙閮ㄥ垎鏀寔锛?*锛歊edis 鐨勪簨鍔″師瀛愭€т笌浼犵粺鏁版嵁搴撲笉鍚?

### 涓?MySQL 浜嬪姟鐨勫尯鍒?
| 鐗规€?| MySQL 浜嬪姟 | Redis 浜嬪姟 |
| :--- | :--- | :--- |
| **鍘熷瓙鎬?* | 瑕佷箞鍏ㄦ垚鍔燂紝瑕佷箞鍏ㄥ洖婊?| **涓嶆敮鎸佸洖婊?*锛屼竴涓懡浠ゅけ璐ワ紝鍏朵粬缁х画鎵ц |
| **闅旂鎬?* | 澶氱骇闅旂绾у埆 | 鍗曠嚎绋嬫墽琛岋紝澶╃劧闅旂 |
| **鎸佷箙鎬?* | 鏀寔 | 鍙栧喅浜庢寔涔呭寲閰嶇疆 |
| **鍥炴粴** | 鏀寔 | **涓嶆敮鎸?* |


> 鈿狅笍 **閲嶈**锛歊edis 浜嬪姟鐨?鍘熷瓙鎬?鏄寚浜嬪姟涓殑鍛戒护**涓嶄細琚叾浠栧鎴风鐨勫懡浠ゆ墦鏂?*锛岃€屼笉鏄紶缁熸剰涔変笂鐨?瑕佷箞鍏ㄥ仛锛岃涔堝叏涓嶅仛"銆?
>

## 浜屻€佷簨鍔′笁澶у懡浠?
| 鍛戒护 | 浣滅敤 | 璇存槑 |
| :--- | :--- | :--- |
| **MULTI** | 寮€鍚簨鍔?| 鏍囪浜嬪姟鍧楃殑寮€濮嬶紝鍚庣画鍛戒护浼氬叆闃熻€屼笉绔嬪嵆鎵ц |
| **EXEC** | 鎵ц浜嬪姟 | 鎵ц浜嬪姟鍧椾腑鐨勬墍鏈夊懡浠?|
| **DISCARD** | 鍙栨秷浜嬪姟 | 鏀惧純浜嬪姟锛屾竻绌哄懡浠ら槦鍒?|


### 杈呭姪鍛戒护
| 鍛戒护 | 浣滅敤 | 璇存槑 |
| :--- | :--- | :--- |
| **WATCH** | 鐩戣涓€涓垨澶氫釜 key | 涔愯閿侊紝濡傛灉琚洃瑙嗙殑 key 琚慨鏀癸紝浜嬪姟灏嗚鎵撴柇 |
| **UNWATCH** | 鍙栨秷鐩戣 | 娓呴櫎鎵€鏈夌洃瑙嗙殑 key |


## 涓夈€佷簨鍔″伐浣滄祦绋?
```plain
鈹屸攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?    鈹屸攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?    鈹屸攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?    鈹屸攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?
鈹? MULTI  鈹?鈹€鈹€鈻?鈹? 鍛戒护1  鈹?鈹€鈹€鈻?鈹? 鍛戒护2  鈹?鈹€鈹€鈻?鈹? EXEC   鈹?
鈹斺攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?    鈹斺攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?    鈹斺攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?    鈹斺攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?
    鈹?              鈹?              鈹?              鈹?
    鈹?         鍛戒护鍏ラ槦          鍛戒护鍏ラ槦        鎵归噺鎵ц
    鈹?        (QUEUED)          (QUEUED)        (涓€娆℃€?
```

## 鍥涖€佸熀鏈娇鐢ㄧず渚?
### 1. 鎴愬姛鐨勪簨鍔?
```bash
# 寮€鍚簨鍔?
127.0.0.1:6379> MULTI
OK

# 鍛戒护鍏ラ槦
127.0.0.1:6379(TX)> SET user:1001 name "寮犱笁"
QUEUED

127.0.0.1:6379(TX)> SET user:1001 age 25
QUEUED

127.0.0.1:6379(TX)> INCR user:1001 age
QUEUED

# 鎵ц浜嬪姟
127.0.0.1:6379(TX)> EXEC
1) OK
2) OK
3) (integer) 26

# 楠岃瘉缁撴灉
127.0.0.1:6379> GET user:1001:age
"26"
```

### 2. 鍙栨秷浜嬪姟
```bash
127.0.0.1:6379> MULTI
OK

127.0.0.1:6379(TX)> SET order:001 status "pending"
QUEUED

127.0.0.1:6379(TX)> SET order:001 amount 100
QUEUED

# 鍙栨秷浜嬪姟锛堟斁寮冩墍鏈夋帓闃熷懡浠わ級
127.0.0.1:6379(TX)> DISCARD
OK

# 楠岃瘉锛歬ey 娌℃湁琚垱寤?
127.0.0.1:6379> EXISTS order:001
(integer) 0
```

### 3. 璇硶閿欒锛堝懡浠ら敊璇級
```bash
127.0.0.1:6379> MULTI
OK

127.0.0.1:6379(TX)> SET name "Alice"
QUEUED

# 閿欒鐨勫懡浠ゅ悕
127.0.0.1:6379(TX)> SETT name "Bob"
(error) ERR unknown command ''SETT''

127.0.0.1:6379(TX)> GET name
QUEUED

# 鎵ц EXEC 浼氭姤閿欙紝浜嬪姟琚嫆缁濇墽琛?
127.0.0.1:6379(TX)> EXEC
(error) EXECABORT Transaction discarded because of previous errors.
```

> 馃搶 **缁撹**锛氬鏋滀簨鍔′腑鏈?*璇硶閿欒**锛屾暣涓簨鍔′細琚嫆缁濇墽琛屻€?
>

### 4. 杩愯鏃堕敊璇紙閫昏緫閿欒锛?
```bash
127.0.0.1:6379> MULTI
OK

127.0.0.1:6379(TX)> SET score 100
QUEUED

# 瀵瑰瓧绗︿覆绫诲瀷杩涜 INCR锛堣繍琛屾椂閿欒锛?
127.0.0.1:6379(TX)> INCR score
QUEUED

127.0.0.1:6379(TX)> GET score
QUEUED

# 鎵ц浜嬪姟
127.0.0.1:6379(TX)> EXEC
1) OK
2) (error) ERR value is not an integer or out of range
3) "100"                    # 馃憟 娉ㄦ剰锛氶敊璇笉褰卞搷鍚庣画鍛戒护鎵ц锛?

# 楠岃瘉缁撴灉
127.0.0.1:6379> GET score
"100"                       # SET 鎴愬姛锛孖NCR 澶辫触
```

> 鈿狅笍 **鍏抽敭鐐?*锛氳繍琛屾椂閿欒**涓嶄細瀵艰嚧浜嬪姟鍥炴粴**锛屽叾浠栧懡浠や粛鐒舵甯告墽琛岋紒
>

### 5. 浜嬪姟涓殑璇绘搷浣?
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
1) "10"      # 鎵ц鍓嶇殑鍊?
2) (integer) 11
3) "11"      # 鎵ц鍚庣殑鍊?
```

## 浜斻€乄ATCH 涔愯閿?
### 鍘熺悊
`WATCH` 鍛戒护鐢ㄤ簬瀹炵幇**涔愯閿?*锛岀洃瑙嗕竴涓垨澶氫釜 key锛?

+ 濡傛灉鍦?`WATCH` 涔嬪悗銆乣EXEC` 涔嬪墠锛岃鐩戣鐨?key 琚?*鍏朵粬瀹㈡埛绔慨鏀?*锛岄偅涔?`EXEC` 浼氳繑鍥?`(nil)`锛屼簨鍔?*澶辫触**
+ 閫傜敤浜庤В鍐?*绔炴€佹潯浠?*

### 浣跨敤妯″紡
```plain
WATCH key
    鈫?
璇诲彇 key 鐨勫€?
    鈫?
鏍规嵁鍊煎仛涓氬姟鍒ゆ柇
    鈫?
MULTI
    鈫?
鎵ц鐩稿叧鍛戒护
    鈫?
EXEC
    鈫?
妫€鏌?EXEC 杩斿洖鍊?
```

### 绀轰緥1锛氶槻姝㈣秴鍗栵紙搴撳瓨鎵ｅ噺锛?
```bash
# 鍦烘櫙锛氬晢鍝佸簱瀛樹负 10锛岄槻姝㈠苟鍙戣秴鍗?

# 瀹㈡埛绔?A
127.0.0.1:6379> WATCH stock:iphone      # 鐩戣搴撳瓨 key
OK
127.0.0.1:6379> GET stock:iphone         # 璇诲彇褰撳墠搴撳瓨
"10"
127.0.0.1:6379> MULTI
OK
127.0.0.1:6379(TX)> DECR stock:iphone    # 鎵ｅ噺搴撳瓨
QUEUED
127.0.0.1:6379(TX)> EXEC
1) (integer) 9                           # 鎴愬姛锛屽簱瀛樺彉涓?9

# 濡傛灉鍦?WATCH 鍜?EXEC 涔嬮棿锛屽叾浠栧鎴风淇敼浜?stock:iphone
# 鍒?EXEC 浼氳繑鍥?(nil)锛屼簨鍔″け璐?
```

### 绀轰緥2锛歐ATCH 澶辨晥鍦烘櫙
```bash
# 瀹㈡埛绔?1
127.0.0.1:6379> SET balance 100
OK

127.0.0.1:6379> WATCH balance
OK

# 姝ゆ椂锛屽鎴风 2 淇敼浜?balance
# 瀹㈡埛绔?2
127.0.0.1:6379> SET balance 50
OK

# 瀹㈡埛绔?1 缁х画鎵ц浜嬪姟
127.0.0.1:6379> MULTI
OK

127.0.0.1:6379(TX)> SET balance 200
QUEUED

127.0.0.1:6379(TX)> EXEC
(nil)                                    # 浜嬪姟澶辫触锛?

# 楠岃瘉锛歜alance 娌℃湁琚慨鏀规垚 200
127.0.0.1:6379> GET balance
"50"                                     # 杩樻槸瀹㈡埛绔?璁剧疆鐨勫€?
```

### 绀轰緥3锛氶噸璇曟満鍒讹紙Python 浼唬鐮侊級
```python
def transfer_money(source, target, amount):
    while True:
        # 鐩戣婧愯处鎴?
        redis.watch(source)
        
        # 璇诲彇褰撳墠浣欓
        balance = int(redis.get(source))
        
        if balance < amount:
            redis.unwatch()
            return False, "浣欓涓嶈冻"
        
        # 寮€鍚簨鍔?
        redis.multi()
        redis.decrby(source, amount)
        redis.incrby(target, amount)
        
        # 鎵ц浜嬪姟
        result = redis.exec()
        
        if result is not None:
            # 浜嬪姟鎴愬姛
            return True, "杞处鎴愬姛"
        # 浜嬪姟澶辫触锛岄噸璇?
```

---

## 鍏€佷簨鍔′笌 Pipeline 鐨勫尯鍒?
| 瀵规瘮椤?| 浜嬪姟 (MULTI/EXEC) | Pipeline |
| :--- | :--- | :--- |
| **鐩殑** | 淇濊瘉鍛戒护搴忓垪鐨勫師瀛愭€ф墽琛?| 鍑忓皯缃戠粶寰€杩斿欢杩?|
| **鍘熷瓙鎬?* | 鍛戒护涔嬮棿涓嶄細琚叾浠栧鎴风鎵撴柇 | 涓嶄繚璇侊紝鍙兘琚叾浠栧懡浠ゆ彃鍏?|
| **鍥炴粴** | 涓嶆敮鎸?| 涓嶆敮鎸?|
| **杩斿洖缁撴灉** | 涓€娆℃€ц繑鍥炴墍鏈夌粨鏋?| 娴佸紡杩斿洖缁撴灉 |
| **浣跨敤鍦烘櫙** | 闇€瑕佷繚璇佸懡浠よ繛缁墽琛岀殑鍦烘櫙 | 鎵归噺鎿嶄綔锛屽叧娉ㄦ€ц兘鐨勫満鏅?|


### 绀轰緥锛氫簨鍔?vs Pipeline
```python
# 浜嬪姟锛氬懡浠や笉浼氳鍏朵粬瀹㈡埛绔墦鏂?
redis_client.multi()
redis_client.set("key1", "value1")
redis_client.set("key2", "value2")
redis_client.exec()

# Pipeline锛氬彧鍏虫敞鎬ц兘锛屼笉淇濊瘉鍘熷瓙鎬?
pipe = redis_client.pipeline()
pipe.set("key1", "value1")
pipe.set("key2", "value2")
pipe.execute()
```

> 馃挕 **鎻愮ず**锛氫簨鍔″拰 Pipeline 鍙互缁撳悎浣跨敤锛堥€氳繃 Pipeline 鍙戦€?MULTI/EXEC锛夛紝鏃㈣兘淇濊瘉鍘熷瓙鎬э紝鍙堣兘鍑忓皯缃戠粶寤惰繜銆?
>

---

## 涓冦€佷簨鍔″け璐ヤ笌鍥炴粴璇存槑
### Redis 涓轰粈涔堜笉鏀寔鍥炴粴锛?
Redis 瀹樻柟鏂囨。璇存槑锛?

> Redis 鍛戒护鍙細鍥犱负**閿欒鐨勮娉?*锛堝湪闃熷垪鏃舵娴嬩笉鍒帮級鎴?*閿欒鐨勬暟鎹被鍨?*鑰屽け璐ワ紝杩欎簺閿欒鏄紪绋嬮敊璇紝搴旇鍦ㄥ紑鍙戦樁娈佃鍙戠幇銆傚洜姝?Redis 鍐呴儴鏇寸畝鍗曘€佹洿蹇€燂紝涓嶉渶瑕佸洖婊氬姛鑳姐€?
>

### 浜嬪姟澶辫触鍦烘櫙鎬荤粨
| 澶辫触绫诲瀷 | 鍙戠敓鏃舵満 | 浜嬪姟琛屼负 |
| :--- | :--- | :--- |
| **璇硶閿欒** | 鍛戒护鍏ラ槦鏃舵娴嬪埌 | 鏁翠釜浜嬪姟琚嫆缁濓紝EXEC 鎶ラ敊 |
| **杩愯鏃堕敊璇?* | 鍛戒护鎵ц鏃跺彂鐢?| 璇ュ懡浠ゅけ璐ワ紝鍏朵粬鍛戒护缁х画鎵ц |
| **WATCH 鍐茬獊** | EXEC 鎵ц鍓嶆娴嬪埌 | 鏁翠釜浜嬪姟琚斁寮冿紝EXEC 杩斿洖 nil |


---

## 鍏€佹渶浣冲疄璺?
### 鉁?鎺ㄨ崘鍋氭硶
1. **浣跨敤 WATCH 瀹炵幇涔愯閿?*锛氳В鍐冲苟鍙戝啿绐侀棶棰?
2. **浜嬪姟涓伩鍏嶄緷璧栧叾浠栧懡浠ょ殑缁撴灉**锛氬洜涓烘墍鏈夊懡浠ゅ湪 EXEC 鍓嶅彧鎺掗槦涓嶆墽琛?
3. **鍚堢悊璁剧疆浜嬪姟澶у皬**锛氶伩鍏嶈繃澶т簨鍔″鑷撮暱鏃堕棿闃诲
4. **閰嶅悎 Lua 鑴氭湰鏇夸唬澶嶆潅浜嬪姟**锛歀ua 鑴氭湰鍙互淇濊瘉鍘熷瓙鎬э紝涓旀敮鎸侀€昏緫鍒ゆ柇

### 鉂?閬垮厤鐨勫仛娉?
1. **涓嶈鏈熸湜鍥炴粴**锛歊edis 浜嬪姟涓嶆敮鎸佸洖婊?
2. **涓嶈鍦ㄤ簨鍔′腑鎵ц杩囧鏁伴噺鐨勫懡浠?*锛氫細闀挎椂闂撮樆濉?Redis
3. **涓嶈渚濊禆浜嬪姟涓殑璇绘搷浣滃仛涓氬姟鍒ゆ柇**锛氬洜涓鸿鎿嶄綔鐨勭粨鏋滄槸鎺掗槦鏃剁殑蹇収锛屼笉鏄墽琛屾椂鐨勫疄闄呭€?

### 浜嬪姟 vs Lua 鑴氭湰閫夋嫨
| 鍦烘櫙 | 鎺ㄨ崘鏂规 |
| :--- | :--- |
| 绠€鍗曠殑鍛戒护搴忓垪鎵ц | **浜嬪姟** |
| 闇€瑕佹潯浠跺垽鏂紙if/else锛?| **Lua 鑴氭湰** |
| 闇€瑕佸洖婊氶€昏緫 | **Lua 鑴氭湰** |
| 澶嶆潅涓氬姟閫昏緫 | **Lua 鑴氭湰** |
| 澶氫釜瀹㈡埛绔殑骞跺彂鎺у埗 | **WATCH + 浜嬪姟** |


---

## 涔濄€佸懡浠ら€熸煡琛?
| 鍛戒护 | 浣滅敤 | 鏃堕棿澶嶆潅搴?|
| :--- | :--- | :--- |
| `MULTI` | 寮€鍚簨鍔?| O(1) |
| `EXEC` | 鎵ц浜嬪姟涓殑鎵€鏈夊懡浠?| 鍙栧喅浜庡懡浠ゆ暟閲?|
| `DISCARD` | 鍙栨秷浜嬪姟锛屾竻绌洪槦鍒?| O(1) |
| `WATCH key [key...]` | 鐩戣涓€涓垨澶氫釜 key | O(N) |
| `UNWATCH` | 鍙栨秷鎵€鏈夌洃瑙?| O(1) |


---

## 鍗併€佸父瑙侀潰璇曢
### Q1锛歊edis 浜嬪姟鏀寔鍥炴粴鍚楋紵
**A**锛氫笉鏀寔銆俁edis 鐨勮璁″摬瀛︽槸"淇濇寔绠€鍗曘€佸揩閫?锛岃涓哄懡浠ゅけ璐ラ€氬父鏄紪绋嬮敊璇紝搴旇鍦ㄥ紑鍙戦樁娈佃В鍐筹紝鑰屼笉鏄湪杩愯鏃跺洖婊氥€?

### Q2锛歐ATCH 鏄浣曞疄鐜扮殑锛?
**A**锛歐ATCH 浼氬湪 Redis 鏈嶅姟鍣ㄧ鏍囪琚洃瑙嗙殑 key锛屽綋鎵ц EXEC 鏃讹紝妫€鏌ヨ繖浜?key 鏄惁琚叾浠栧鎴风淇敼杩囷紝濡傛灉琚慨鏀瑰垯鎷掔粷鎵ц浜嬪姟銆?

### Q3锛氫簨鍔″拰 Lua 鑴氭湰鏈変粈涔堝尯鍒紵
**A**锛?

+ 浜嬪姟淇濊瘉鍛戒护椤哄簭鎵ц涓嶈鎵撴柇锛屼絾涓嶆敮鎸佹潯浠堕€昏緫鍜屽洖婊?
+ Lua 鑴氭湰鍦?Redis 鍐呴儴鍘熷瓙鎵ц锛屾敮鎸佸鏉傞€昏緫锛屽姛鑳芥洿寮哄ぇ

### Q4锛氫簨鍔′腑鍙互浣跨敤 WATCH 鐩戣澶氫釜 key 鍚楋紵
**A**锛氬彲浠ャ€俙WATCH key1 key2 key3...` 鍙互鐩戣澶氫釜 key锛屼换浣曚竴涓淇敼閮戒細瀵艰嚧浜嬪姟澶辫触銆?

---



> **MULTI 寮€锛屽懡浠ゆ帓锛孍XEC 鎵ц涓€璧锋潵**  
**鍑洪敊涓嶅垎鍓嶅悗鎺掞紝璇硶閿欒鍏ㄥけ璐?*  
**杩愯閿欒鍗曚釜鏍斤紝鍏朵粬鍛戒护鐓ф牱鏉?*  
**WATCH 鐩戣鍋氫繚闄╋紝骞跺彂鍐茬獊灏遍噸鏉?*
>

---

甯屾湜杩欎唤绗旇瀵逛綘鏈夊府鍔╋紒濡傛灉闇€瑕?Lua 鑴氭湰鐨勮缁嗙瑪璁帮紝鎴栬€呮湁鍏朵粬鍏蜂綋闂锛岄殢鏃堕棶鎴戯綖

# jedis
## 蹇€熷紑濮?
+ 瀵煎叆渚濊禆

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

+ 閾炬帴redis

```java
public class TestPing {
    public static void main(String[] args) {
        // 1. new Jedis 瀵硅薄
        Jedis jedis = new Jedis("192.168.2.129", 6379);
        // Jedis 涓墍鏈夌殑鍛戒护閮藉湪杩欓噷闈?
        System.out.println(jedis.ping());
    }
}
```

# 鑷畾涔塕edisTemplate  springboot 3.0
## 瀵煎叆渚濊禆
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

## 鑷姩涔塕edisTemplate閰嶇疆绫?
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
 * Redis 閰嶇疆绫?
 * 鑷畾涔?RedisTemplate锛岀粺涓€搴忓垪鍖栨柟寮?
 */
@Configuration
public class RedisConfig {

    /**
     * 鑷畾涔?RedisTemplate
     * 鐢ㄤ簬瀛樺偍瀵硅薄锛屼娇鐢?JSON 搴忓垪鍖?
     */
    @Bean
    public RedisTemplate<String, Object> redisTemplate(RedisConnectionFactory connectionFactory) {
        RedisTemplate<String, Object> template = new RedisTemplate<>();
        template.setConnectionFactory(connectionFactory);
        
        // 璁剧疆 JSON 搴忓垪鍖栧櫒
        Jackson2JsonRedisSerializer<Object> jackson2JsonRedisSerializer = 
                new Jackson2JsonRedisSerializer<>(Object.class);
        
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.setVisibility(PropertyAccessor.ALL, JsonAutoDetect.Visibility.ANY);
        // 婵€娲婚粯璁ょ被鍨嬶紝瑙ｅ喅绫诲瀷杞崲闂
        objectMapper.activateDefaultTyping(
                LaissezFaireSubTypeValidator.instance,
                ObjectMapper.DefaultTyping.NON_FINAL
        );
        jackson2JsonRedisSerializer.setObjectMapper(objectMapper);
        
        // 璁剧疆 String 搴忓垪鍖栧櫒锛堢敤浜?key锛?
        StringRedisSerializer stringRedisSerializer = new StringRedisSerializer();
        
        // key 浣跨敤 String 搴忓垪鍖?
        template.setKeySerializer(stringRedisSerializer);
        template.setHashKeySerializer(stringRedisSerializer);
        
        // value 浣跨敤 JSON 搴忓垪鍖?
        template.setValueSerializer(jackson2JsonRedisSerializer);
        template.setHashValueSerializer(jackson2JsonRedisSerializer);
        
        template.afterPropertiesSet();
        return template;
    }
    
    /**
     * StringRedisTemplate
     * 鐢ㄤ簬瀛樺偍瀛楃涓诧紝key 鍜?value 閮戒娇鐢?String 搴忓垪鍖?
     */
    @Bean
    public StringRedisTemplate stringRedisTemplate(RedisConnectionFactory connectionFactory) {
        return new StringRedisTemplate(connectionFactory);
    }
}
```

## 灏佽RedisService宸ュ叿绫?
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
 * Redis 鎿嶄綔鏈嶅姟绫?
 * 灏佽甯哥敤鎿嶄綔锛屾彁渚涗究鎹风殑 API
 */
@Component
public class RedisService {

    @Autowired
    private RedisTemplate<String, Object> redisTemplate;

    @Autowired
    private StringRedisTemplate stringRedisTemplate;

    // ==================== String 鎿嶄綔锛堝璞★級 ====================

    /**
     * 璁剧疆鍊?
     */
    public void set(String key, Object value) {
        redisTemplate.opsForValue().set(key, value);
    }

    /**
     * 璁剧疆鍊煎苟鎸囧畾杩囨湡鏃堕棿
     */
    public void set(String key, Object value, long timeout, TimeUnit unit) {
        redisTemplate.opsForValue().set(key, value, timeout, unit);
    }

    /**
     * 鑾峰彇鍊?
     */
    public Object get(String key) {
        return redisTemplate.opsForValue().get(key);
    }

    /**
     * 鍒犻櫎 key
     */
    public Boolean delete(String key) {
        return redisTemplate.delete(key);
    }

    /**
     * 鎵归噺鍒犻櫎
     */
    public Long delete(Collection<String> keys) {
        return redisTemplate.delete(keys);
    }

    /**
     * 鍒ゆ柇 key 鏄惁瀛樺湪
     */
    public Boolean hasKey(String key) {
        return redisTemplate.hasKey(key);
    }

    /**
     * 璁剧疆杩囨湡鏃堕棿
     */
    public Boolean expire(String key, long timeout, TimeUnit unit) {
        return redisTemplate.expire(key, timeout, unit);
    }

    /**
     * 鑾峰彇杩囨湡鏃堕棿
     */
    public Long getExpire(String key) {
        return redisTemplate.getExpire(key);
    }

    // ==================== String 鎿嶄綔锛堝瓧绗︿覆锛?====================

    /**
     * 璁剧疆瀛楃涓插€?
     */
    public void setString(String key, String value) {
        stringRedisTemplate.opsForValue().set(key, value);
    }

    /**
     * 璁剧疆瀛楃涓插€煎苟鎸囧畾杩囨湡鏃堕棿
     */
    public void setString(String key, String value, long timeout, TimeUnit unit) {
        stringRedisTemplate.opsForValue().set(key, value, timeout, unit);
    }

    /**
     * 鑾峰彇瀛楃涓插€?
     */
    public String getString(String key) {
        return stringRedisTemplate.opsForValue().get(key);
    }

    /**
     * 鑷锛堣鏁板櫒锛?
     */
    public Long increment(String key) {
        return stringRedisTemplate.opsForValue().increment(key);
    }

    /**
     * 鑷鎸囧畾姝ラ暱
     */
    public Long increment(String key, long delta) {
        return stringRedisTemplate.opsForValue().increment(key, delta);
    }

    // ==================== Hash 鎿嶄綔 ====================

    /**
     * 璁剧疆 Hash 瀛楁鍊?
     */
    public void hset(String key, String field, Object value) {
        redisTemplate.opsForHash().put(key, field, value);
    }

    /**
     * 鎵归噺璁剧疆 Hash 瀛楁鍊?
     */
    public void hsetAll(String key, Map<String, Object> map) {
        redisTemplate.opsForHash().putAll(key, map);
    }
    
    /**
     * 鑾峰彇 Hash 瀛楁鍊?
     */
    public Object hget(String key, String field) {
        return redisTemplate.opsForHash().get(key, field);
    }
    
    /**
     * 鑾峰彇鎵€鏈?Hash 瀛楁鍊?
     */
    public Map<Object, Object> hgetAll(String key) {
        return redisTemplate.opsForHash().entries(key);
    }
    
    /**
     * 鍒犻櫎 Hash 瀛楁
     */
    public Long hdel(String key, Object... fields) {
        return redisTemplate.opsForHash().delete(key, fields);
    }
    
    // ==================== List 鎿嶄綔 ====================
    
    /**
     * 宸︿晶鎻掑叆
     */
    public Long lpush(String key, Object value) {
        return redisTemplate.opsForList().leftPush(key, value);
    }
    
    /**
     * 鍙充晶鎻掑叆
     */
    public Long rpush(String key, Object value) {
        return redisTemplate.opsForList().rightPush(key, value);
    }
    
    /**
     * 宸︿晶寮瑰嚭
     */
    public Object lpop(String key) {
        return redisTemplate.opsForList().leftPop(key);
    }
    
    /**
     * 鍙充晶寮瑰嚭
     */
    public Object rpop(String key) {
        return redisTemplate.opsForList().rightPop(key);
    }
    
    /**
     * 鑾峰彇鍒楄〃鑼冨洿
     */
    public List<Object> lrange(String key, long start, long end) {
        return redisTemplate.opsForList().range(key, start, end);
    }
    
    // ==================== Set 鎿嶄綔 ====================
    
    /**
     * 娣诲姞 Set 鍏冪礌
     */
    public Long sadd(String key, Object... values) {
        return redisTemplate.opsForSet().add(key, values);
    }
    
    /**
     * 鑾峰彇鎵€鏈?Set 鍏冪礌
     */
    public Set<Object> smembers(String key) {
        return redisTemplate.opsForSet().members(key);
    }
    
    /**
     * 鍒ゆ柇鏄惁鏄?Set 鎴愬憳
     */
    public Boolean sismember(String key, Object value) {
        return redisTemplate.opsForSet().isMember(key, value);
    }
    
    /**
     * 鍒犻櫎 Set 鍏冪礌
     */
    public Long srem(String key, Object... values) {
        return redisTemplate.opsForSet().remove(key, values);
    }
    
    // ==================== ZSet 鎿嶄綔 ====================
    
    /**
     * 娣诲姞 ZSet 鍏冪礌锛堝甫鍒嗘暟锛?
     */
    public Boolean zadd(String key, Object value, double score) {
        return redisTemplate.opsForZSet().add(key, value, score);
    }
    
    /**
     * 鎸夊垎鏁伴檷搴忚幏鍙栨寚瀹氳寖鍥达紙鎺掕姒滐級
     */
    public Set<Object> zrevrange(String key, long start, long end) {
        return redisTemplate.opsForZSet().reverseRange(key, start, end);
    }
    
    /**
     * 鑾峰彇鍏冪礌鍒嗘暟
     */
    public Double zscore(String key, Object value) {
        return redisTemplate.opsForZSet().score(key, value);
    }
    
    /**
     * 澧炲姞鍏冪礌鍒嗘暟
     */
    public Double zincrby(String key, Object value, double delta) {
        return redisTemplate.opsForZSet().incrementScore(key, value, delta);
    }
}
```

## controller娴嬭瘯
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
        // 瀛樺偍瀛楃涓?
        redisService.setString("name", "寮犱笁", 60, TimeUnit.SECONDS);
        String name = redisService.getString("name");
        
        // 瀛樺偍瀵硅薄
        User user = new User(1L, "鏉庡洓", 25);
        redisService.set("user:1", user, 60, TimeUnit.SECONDS);
        User cachedUser = (User) redisService.get("user:1");
        
        return "name: " + name + ", user: " + cachedUser;
    }
    
    @GetMapping("/incr")
    public Long incr() {
        // 璁℃暟鍣?
        return redisService.increment("page:view:2025-01-01");
    }
}
```

## 瀹炰綋绫?
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

# redis.conf鏂囦欢閰嶇疆淇℃伅
## 涓€銆佺綉缁滀笌瀹夊叏閰嶇疆
### 1.1 bind - 缁戝畾鐩戝惉鍦板潃
```nginx
# 鐢熶骇鐜锛氱粦瀹氬唴缃慖P锛屼笉瀵瑰鏆撮湶
bind 192.168.1.100   # 鏀逛负浣犵殑鍐呯綉IP

# 寮€鍙戠幆澧冿細鍏佽鎵€鏈夋帴鍙ｏ紙闇€閰嶅悎瀵嗙爜鍜岄槻鐏锛?
# bind 0.0.0.0

# 閿欒绀轰緥锛氶粯璁ゅ彧鍏佽鏈湴璁块棶
# bind 127.0.0.1
```

**鐢熶骇寤鸿**锛氱粦瀹氬唴缃?IP锛屼笉瑕佸湪鍏綉鏆撮湶 Redis 绔彛銆備簯鏈嶅姟鍣ㄩ渶閰嶅悎瀹夊叏缁勮鍒欍€?

### 1.2 protected-mode - 淇濇姢妯″紡
```nginx
protected-mode yes
```

**璇存槑**锛氫繚鎸佸紑鍚€傚綋 `bind` 鏈缃垨璁剧疆涓?`0.0.0.0` 涓旀湭璁剧疆瀵嗙爜鏃讹紝璇ユā寮忎細闃绘澶栭儴璁块棶銆?

### 1.3 requirepass - 璁剧疆瀵嗙爜
```nginx
requirepass YourStrongPassword123!
```

**閲嶈**锛氱敓浜х幆澧?*蹇呴』璁剧疆寮哄瘑鐮?*銆傛牸寮忓缓璁細澶у皬鍐欏瓧姣?+ 鏁板瓧 + 鐗规畩绗﹀彿锛岃嚦灏?16 浣嶃€?

### 1.4 rename-command - 绂佺敤鍗遍櫓鍛戒护
```nginx
# 閲嶅懡鍚嶆垨绂佺敤鍗遍櫓鍛戒护
rename-command FLUSHALL ""      # 绂佺敤
rename-command FLUSHDB ""       # 绂佺敤
rename-command CONFIG "new_config_name"  # 閲嶅懡鍚?
rename-command KEYS "new_keys_name"     # 閲嶅懡鍚?
```

**鐢熶骇寤鸿**锛氱鐢?`FLUSHALL`銆乣FLUSHDB`锛岄槻姝㈣鎿嶄綔瀵艰嚧鏁版嵁涓㈠け銆?

### 1.5 port - 淇敼榛樿绔彛
```nginx
# 涓嶆帹鑽愪娇鐢ㄩ粯璁?379
port 6380
```

**璇存槑**锛氶伩鍏嶄娇鐢ㄩ粯璁ょ鍙ｅ彲闄嶄綆琚壂鎻忔敾鍑荤殑椋庨櫓銆?



## 浜屻€佸唴瀛樼鐞嗛厤缃?
### 2.1 maxmemory - 鏈€澶у唴瀛橀檺鍒讹紙**蹇呴厤**锛?
```nginx
# 鐗╃悊鍐呭瓨鐨?0%-80%锛岄鐣欑┖闂寸粰绯荤粺鍜孉OF閲嶅啓
maxmemory 24gb   # 鍋囪鏈嶅姟鍣?2GB鍐呭瓨
```

**閲嶈**锛氬繀椤昏缃紝鍚﹀垯 Redis 浼氭寔缁垎閰嶅唴瀛樼洿鑷?OOM銆?

### 2.2 maxmemory-policy - 鍐呭瓨娣樻卑绛栫暐
```nginx
# 鎺ㄨ崘閰嶇疆锛堟牴鎹笟鍔″満鏅€夋嫨锛?
maxmemory-policy allkeys-lru     # 鐑偣鏁版嵁缂撳瓨鍦烘櫙

# 鍏朵粬鍙€夌瓥鐣?
# volatile-lru     - 浠呮窐姹拌缃簡杩囨湡鏃堕棿鐨刱ey锛堥€傜敤浜庣紦瀛?鎸佷箙鍖栨贩鍚堬級
# allkeys-random   - 闅忔満娣樻卑锛堜笉鎺ㄨ崘锛?
# volatile-ttl     - 娣樻卑鍗冲皢杩囨湡鐨刱ey
# noeviction       - 绂佹娣樻卑锛屽唴瀛樻弧鏃跺啓鍏ユ姤閿欙紙涓嶆帹鑽愶級
```

**绛栫暐閫夋嫨鎸囧崡**锛?

+ **绾紦瀛樺満鏅?*锛歚allkeys-lru` 鎴?`allkeys-lfu`锛堟帹鑽愶級
+ **缂撳瓨+鎸佷箙鍖?*锛歚volatile-lru`锛堝彧娣樻卑璁剧疆浜?TTL 鐨?key锛?
+ **璁块棶棰戠巼鏁忔劅**锛歚allkeys-lfu`锛圧edis 4.0+锛屾窐姹版渶灏戜娇鐢ㄧ殑锛?

### 2.3 maxmemory-samples - LRU 閲囨牱绮惧害
```nginx
maxmemory-samples 10
```

**璇存槑**锛氶粯璁?5锛屽€艰秺澶ф窐姹扮畻娉曡秺绮剧‘锛屼絾娑堣€?CPU 鏇村銆傜敓浜х幆澧冨缓璁?10銆?



## 涓夈€佹寔涔呭寲閰嶇疆
### 3.1 RDB 蹇収閰嶇疆
```nginx
# 瑙﹀彂鏉′欢锛氭椂闂?+ 鍙樺寲娆℃暟
save 900 1       # 15鍒嗛挓鍐呰嚦灏?涓猭ey鍙樺寲
save 300 10      # 5鍒嗛挓鍐呰嚦灏?0涓猭ey鍙樺寲
save 60 10000    # 1鍒嗛挓鍐呰嚦灏?0000涓猭ey鍙樺寲

# 閰嶇疆椤硅鏄?
stop-writes-on-bgsave-error yes   # 澶囦唤澶辫触鏃跺仠姝㈠啓鍏ワ紙鐢熶骇寤鸿寮€鍚級
rdbcompression yes                 # 寮€鍚帇缂╋紙鑺傜渷纾佺洏锛?
rdbchecksum yes                    # 鏍￠獙鍜岋紙鏁版嵁瀹夊叏锛?
dbfilename dump.rdb                # 鏂囦欢鍚?
dir /var/lib/redis/                # 瀛樺偍鐩綍
```

**鐢熶骇寤鸿**锛歊DB 閫傚悎鍋氬畾鏈熷浠斤紝鎭㈠閫熷害蹇€?

### 3.2 AOF 鎸佷箙鍖栭厤缃?
```nginx
# 寮€鍚疉OF
appendonly yes

# AOF鏂囦欢鍚?
appendfilename "appendonly.aof"

# 鍚屾绛栫暐锛氭帹鑽?everysec锛堝钩琛℃€ц兘涓庡畨鍏級
appendfsync everysec

# AOF閲嶅啓閰嶇疆
auto-aof-rewrite-percentage 100   # 鏂囦欢澧為暱100%鏃惰Е鍙戦噸鍐?
auto-aof-rewrite-min-size 64mb    # 閲嶅啓鏈€灏忔枃浠跺ぇ灏?

# AOF閲嶅啓鏃舵槸鍚﹀仠姝sync锛堝缓璁紑鍚級
no-appendfsync-on-rewrite yes

# 娣峰悎鎸佷箙鍖栵紙Redis 4.0+锛屽己鐑堟帹鑽愶級
aof-use-rdb-preamble yes
```

**鍚屾绛栫暐瀵规瘮**锛?

| 绛栫暐 | 鎬ц兘 | 鏁版嵁瀹夊叏 | 閫傜敤鍦烘櫙 |
| --- | --- | --- | --- |
| `always` | 鏈€宸?| 鏈€楂橈紙姣忔潯鍛戒护鍚屾锛?| 閲戣瀺鏀粯绫?|
| `everysec` | 濂?| 涓㈠け1绉掓暟鎹?| **鎺ㄨ崘鐢熶骇鐜** |
| `no` | 鏈€濂?| 涓嶇‘瀹?| 鍙蹇嶆暟鎹涪澶?|


**娣峰悎鎸佷箙鍖?*锛欰OF 閲嶅啓鏃跺厛鐢熸垚 RDB 鏍煎紡锛屽啀杩藉姞澧為噺鏃ュ織锛屽吋椤炬仮澶嶉€熷害鍜屾暟鎹畨鍏ㄣ€?



## 鍥涖€佷富浠庡鍒堕厤缃?
### 4.1 浠庤妭鐐归厤缃?
```nginx
# 鎸囧畾涓昏妭鐐?
replicaof 192.168.1.100 6379

# 涓昏妭鐐瑰瘑鐮侊紙濡傛灉璁剧疆浜嗭級
masterauth your_password

# 浠庤妭鐐瑰彧璇?
replica-read-only yes

# 鏃犵洏澶嶅埗锛圧edis 2.8.18+锛?
repl-diskless-sync yes

# 澶嶅埗绉帇缂撳啿鍖哄ぇ灏?
repl-backlog-size 100mb
```

### 4.2 澶嶅埗浼樺寲鍙傛暟
```nginx
# 澶嶅埗瓒呮椂鏃堕棿
repl-timeout 60

# 浠庤妭鐐瑰悜涓昏妭鐐瑰彂閫乸ing鐨勯棿闅?
repl-ping-slave-period 10

# 鏄惁绂佺敤TCP_NODELAY
repl-disable-tcp-nodelay no   # 浣庡欢杩熷満鏅繚鎸乶o
```

**璇存槑**锛歚repl-disable-tcp-nodelay no` 鍙噺灏戝欢杩燂紝閫傚悎瀵瑰疄鏃舵€ц姹傞珮鐨勫満鏅€?



## 浜斻€佹€ц兘浼樺寲閰嶇疆
### 5.1 杩炴帴涓庣綉缁?
```nginx
# 鏈€澶у鎴风杩炴帴鏁?
maxclients 10000

# TCP杩炴帴闃熷垪闀垮害
tcp-backlog 511

# 瀹㈡埛绔┖闂茶秴鏃讹紙0琛ㄧず姘镐笉瓒呮椂锛?
timeout 0

# TCP淇濇椿闂撮殧
tcp-keepalive 300
```

**璋冩暣寤鸿**锛氶珮骞跺彂鍦烘櫙鍙皟澶?`maxclients` 鍜?`tcp-backlog`锛屽悓鏃堕渶鍚屾璋冩暣鍐呮牳鍙傛暟 `net.core.somaxconn`銆?

### 5.2 鏁版嵁缁撴瀯鍐呭瓨浼樺寲
```nginx
# Redis 7.0+ 浣跨敤 listpack 缂栫爜
hash-max-listpack-entries 512
hash-max-listpack-value 64
zset-max-listpack-entries 128
zset-max-listpack-value 64
set-max-intset-entries 512

# Redis 7.2+ 鏂板
set-max-listpack-entries 128
set-max-listpack-value 64
```

**璇存槑**锛氬皬鍝堝笇銆佸皬闆嗗悎浣跨敤鍘嬬缉缂栫爜鍙妭鐪?**5-10 鍊嶅唴瀛?*銆?

### 5.3 鎱㈡煡璇㈤厤缃?
```nginx
# 鎱㈡煡璇㈤槇鍊硷紙寰锛?0000 = 10ms锛?
slowlog-log-slower-than 10000

# 鎱㈡煡璇㈡棩蹇楁渶澶ф潯鏁?
slowlog-max-len 128
```

### 5.4 鍐呭瓨纰庣墖鏁寸悊
```nginx
# 寮€鍚富鍔ㄧ鐗囨暣鐞?
activedefrag yes

# 瑙﹀彂纰庣墖鏁寸悊鐨勯槇鍊?
active-defrag-ignore-bytes 100mb
active-defrag-threshold-lower 10
active-defrag-cycle-min 5
active-defrag-cycle-max 75
```

**璇存槑**锛氬綋 `mem_fragmentation_ratio > 1.5` 鏃跺缓璁紑鍚€?



## 鍏€侀泦缇ゆā寮忛厤缃紙Redis Cluster锛?
### 6.1 闆嗙兢鏍稿績閰嶇疆
```nginx
# 寮€鍚泦缇ゆā寮?
cluster-enabled yes

# 闆嗙兢閰嶇疆鏂囦欢锛堣嚜鍔ㄧ敓鎴愶級
cluster-config-file nodes-6379.conf

# 鑺傜偣瓒呮椂鏃堕棿锛堟绉掞級
cluster-node-timeout 15000

# 鏄惁鍏佽閮ㄥ垎鑺傜偣鏁呴殰鏃舵彁渚涙湇鍔?
cluster-require-full-coverage no

# 鍓湰鏁帮紙姣忎釜涓昏妭鐐圭殑浠庤妭鐐规暟閲忥級
cluster-replicas 1
```

**鐢熶骇寤鸿**锛歚cluster-require-full-coverage no` 閬垮厤鍗曡妭鐐规晠闅滃鑷存暣涓泦缇や笉鍙敤銆?



## 涓冦€佹棩蹇椾笌鐩戞帶閰嶇疆
### 7.1 鏃ュ織閰嶇疆
```nginx
# 鏃ュ織绾у埆
loglevel notice

# 鏃ュ織鏂囦欢璺緞
logfile /var/log/redis/redis-server.log

# 鏄惁璁板綍绯荤粺鏃ュ織
syslog-enabled no
```

### 7.2 瀹炰緥杩愯妯″紡
```nginx
# 瀹堟姢杩涚▼妯″紡锛堢敓浜у繀椤讳负yes锛?
daemonize yes

# PID鏂囦欢璺緞
pidfile /var/run/redis_6379.pid

# 杩涚▼绠＄悊鏂瑰紡锛坰ystemd/upstart锛?
supervised systemd
```

**璇存槑**锛歚daemonize yes` 浣?Redis 鍚庡彴杩愯銆?



## 鍏€佺敓浜х幆澧冨畬鏁撮厤缃ず渚?
```nginx
# ===== 缃戠粶閰嶇疆 =====
bind 192.168.1.100
port 6380
tcp-backlog 2048
timeout 0
tcp-keepalive 300

# ===== 瀹夊叏閰嶇疆 =====
protected-mode yes
requirepass YourStrongPassword123!
rename-command FLUSHALL ""
rename-command FLUSHDB ""
rename-command CONFIG ""

# ===== 閫氱敤閰嶇疆 =====
daemonize yes
supervised systemd
pidfile /var/run/redis_6380.pid
loglevel notice
logfile /var/log/redis/redis-server.log
databases 16

# ===== 鍐呭瓨绠＄悊 =====
maxmemory 24gb
maxmemory-policy allkeys-lru
maxmemory-samples 10

# ===== 鎸佷箙鍖栭厤缃?=====
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

# ===== 涓讳粠澶嶅埗 =====
# replicaof 192.168.1.100 6379
# masterauth your_password
replica-read-only yes
repl-diskless-sync yes
repl-backlog-size 100mb

# ===== 鎬ц兘浼樺寲 =====
maxclients 10000
hash-max-listpack-entries 512
hash-max-listpack-value 64
set-max-intset-entries 512
slowlog-log-slower-than 10000
slowlog-max-len 128
activedefrag yes

# ===== 闆嗙兢妯″紡 =====
# cluster-enabled yes
# cluster-node-timeout 15000
# cluster-require-full-coverage no
```



## 涔濄€侀厤缃敓鏁堜笌楠岃瘉
### 9.1 浣块厤缃敓鏁?
```bash
# 閲嶅惎Redis
sudo systemctl restart redis

# 楠岃瘉閰嶇疆
redis-cli -h 127.0.0.1 -p 6380 -a your_password CONFIG GET maxmemory
redis-cli INFO memory
```

### 9.2 鐩戞帶鍛戒护
```bash
# 鏌ョ湅鍐呭瓨浣跨敤鎯呭喌
redis-cli INFO memory

# 鏌ョ湅杩炴帴鏁?
redis-cli INFO clients

# 鏌ョ湅鎸佷箙鍖栫姸鎬?
redis-cli INFO persistence

# 鏌ョ湅涓讳粠澶嶅埗鐘舵€?
redis-cli INFO replication

# 鏌ョ湅鎱㈡煡璇㈡棩蹇?
redis-cli SLOWLOG GET 10
```



## 鍗併€侀厤缃鏌ユ竻鍗?
| 妫€鏌ラ」 | 鐘舵€?| 璇存槑 |
| --- | --- | --- |
| 鉁?璁剧疆寮哄瘑鐮?| 蹇呴』 | requirepass |
| 鉁?绂佺敤鍗遍櫓鍛戒护 | 蹇呴』 | rename-command FLUSHALL/FLUSHDB |
| 鉁?璁剧疆鏈€澶у唴瀛?| 蹇呴』 | maxmemory |
| 鉁?閰嶇疆娣樻卑绛栫暐 | 蹇呴』 | maxmemory-policy |
| 鉁?缁戝畾鍐呯綉IP | 鎺ㄨ崘 | bind |
| 鉁?淇敼榛樿绔彛 | 鎺ㄨ崘 | port |
| 鉁?寮€鍚寔涔呭寲 | 鎺ㄨ崘 | AOF + RDB |
| 鉁?閰嶇疆鏃ュ織 | 鎺ㄨ崘 | logfile |
| 鉁?寮€鍚畧鎶よ繘绋?| 蹇呴』 | daemonize yes |
| 鉁?閰嶇疆鎱㈡煡璇?| 鎺ㄨ崘 | slowlog |
| 鉁?寮€鍚鐗囨暣鐞?| 鍙€?| activedefrag |


杩欎唤閰嶇疆娑电洊浜嗙敓浜х幆澧?Redis 鎵€闇€鐨勫叧閿弬鏁般€傚缓璁厛鍦ㄦ祴璇曠幆澧冮獙璇侊紝纭鏃犻棶棰樺悗鍐嶅簲鐢ㄥ埌鐢熶骇鐜銆傚闇€鏍规嵁鍏蜂綋涓氬姟鍦烘櫙锛堝绾紦瀛樸€佹秷鎭槦鍒椼€佹帓琛屾绛夛級鍋氱簿缁嗗寲閰嶇疆锛屽彲浠ヨ繘涓€姝ヨ璁猴紒

# Redis 鎸佷箙鍖?
## 涓€銆佹寔涔呭寲姒傝堪
### 浠€涔堟槸鎸佷箙鍖栵紵
Redis 鏄?*鍐呭瓨鏁版嵁搴?*锛屾暟鎹粯璁ゅ瓨鍌ㄥ湪鍐呭瓨涓€傛寔涔呭寲灏辨槸灏嗗唴瀛樹腑鐨勬暟鎹繚瀛樺埌纾佺洏锛岄槻姝㈣繘绋嬮€€鍑哄悗鏁版嵁涓㈠け銆?

### 涓轰粈涔堥渶瑕佹寔涔呭寲锛?
| 鍦烘櫙 | 璇存槑 |
| --- | --- |
| **缂撳瓨鍦烘櫙** | 鍏佽鏁版嵁涓㈠け锛屽彲涓嶅紑鍚垨鍙紑RDB |
| **鏁版嵁瀛樺偍鍦烘櫙** | 涓嶅厑璁镐涪鏁版嵁锛屽繀椤诲紑鍚疉OF鎴栨贩鍚堟ā寮?|


### Redis 鎸佷箙鍖栫殑涓夌鏂瑰紡
| 鏂瑰紡 | 璇存槑 | Redis鐗堟湰 |
| --- | --- | --- |
| **RDB** | 瀹氭椂鐢熸垚鍐呭瓨蹇収 | 鎵€鏈夌増鏈?|
| **AOF** | 璁板綍鎵€鏈夊啓鍛戒护鏃ュ織 | 1.1+ |
| **娣峰悎鎸佷箙鍖?* | RDB + AOF 缁撳悎 | 4.0+ |


## 浜屻€丷DB锛圧edis DataBase锛?
### 2.1 鏍稿績鍘熺悊
鍦ㄦ寚瀹氭椂闂撮棿闅斿唴锛屽皢鍐呭瓨涓殑鏁版嵁闆嗗揩鐓у啓鍏ョ鐩樸€傛仮澶嶆椂鐩存帴璇诲彇蹇収鏂囦欢鍒板唴瀛樸€?

**鏂囦欢鐗圭偣**锛氫簩杩涘埗鍘嬬缉鏍煎紡锛屼綋绉皬锛屾仮澶嶅揩銆?

### 2.2 瑙﹀彂鏂瑰紡
#### 鑷姩瑙﹀彂锛堥厤缃枃浠讹級
```nginx
# redis.conf
save 900 1      # 900绉掑唴鑷冲皯1涓猭ey鍙樺寲
save 300 10     # 300绉掑唴鑷冲皯10涓猭ey鍙樺寲
save 60 10000   # 60绉掑唴鑷冲皯10000涓猭ey鍙樺寲
```

#### 鎵嬪姩瑙﹀彂
```bash
# 鍚屾鐢熸垚锛堥樆濉炰富绾跨▼锛屾厧鐢級
SAVE

# 寮傛鐢熸垚锛坒ork瀛愯繘绋嬶紝鎺ㄨ崘锛?
BGSAVE

# 鏌ョ湅鐘舵€?
LASTSAVE
```

### 2.3 鏍稿績閰嶇疆
```nginx
# 鏂囦欢鍚?
dbfilename dump.rdb

# 瀛樺偍璺緞
dir /var/lib/redis/

# bgsave鍑洪敊鏃舵槸鍚﹀仠姝㈠啓鍏?
stop-writes-on-bgsave-error yes

# 鏄惁鍘嬬缉锛堟秷鑰桟PU锛?
rdbcompression yes

# 鏄惁寮€鍚牎楠屽拰
rdbchecksum yes
```

### 2.4 宸ヤ綔娴佺▼
```plain
1. 鐖惰繘绋嬪垽鏂槸鍚︽湁bgsave瀛愯繘绋嬭繍琛?
2. 鐖惰繘绋媐ork()鍒涘缓瀛愯繘绋嬶紙鐭殏闃诲锛?
3. 鐖惰繘绋嬬户缁鐞嗚姹傦紝瀛愯繘绋嬪啓涓存椂RDB鏂囦欢
4. 瀛愯繘绋嬪畬鎴愬悗鏇挎崲鏃ф枃浠?
5. 瀛愯繘绋嬮€€鍑猴紝鐖惰繘绋嬫洿鏂扮粺璁′俊鎭?
```

### 2.5 浼樼己鐐?
| 浼樼偣 | 缂虹偣 |
| --- | --- |
| 鏂囦欢绱у噾锛屼綋绉皬 | 鍙兘涓㈠け鏈€鍚庝竴娆″揩鐓у悗鐨勬暟鎹?|
| 鎭㈠澶ф暟鎹泦閫熷害蹇?| fork鏃跺唴瀛樼炕鍊嶏紝澶ф暟鎹泦浼氬崱椤?|
| 閫傚悎澶囦唤鍜屽鐏?| 棰戠箒鎵ц褰卞搷鎬ц兘 |
| 鏍煎紡鍏煎鎬уソ | 鏁版嵁閲忓ぇ鏃秄ork鑰楁椂澧炲姞 |


## 涓夈€丄OF锛圓ppend Only File锛?
### 3.1 鏍稿績鍘熺悊
璁板綍姣忔鍐欐搷浣滃埌鏃ュ織鏂囦欢锛堣拷鍔犳ā寮忥級锛岄噸鍚椂閫氳繃閲嶆斁鍛戒护鎭㈠鏁版嵁銆?

### 3.2 鏍稿績閰嶇疆
```nginx
# 寮€鍚疉OF锛堥粯璁ゅ叧闂級
appendonly yes

# 鏂囦欢鍚?
appendfilename "appendonly.aof"

# 鍚屾绛栫暐锛堥噸瑕侊級
appendfsync everysec

# 閲嶅啓鏃舵槸鍚﹀仠姝sync
no-appendfsync-on-rewrite yes

# 閲嶅啓瑙﹀彂鏉′欢
auto-aof-rewrite-percentage 100   # 鏂囦欢澧為暱100%鏃惰Е鍙?
auto-aof-rewrite-min-size 64mb    # 鏈€灏?4MB鎵嶈Е鍙?

# 鍔犺浇鏃舵槸鍚﹀拷鐣ユ渶鍚庝竴鏉′笉瀹屾暣鍛戒护
aof-load-truncated yes

# 娣峰悎鎸佷箙鍖栵紙Redis 4.0+锛?
aof-use-rdb-preamble yes
```

### 3.3 appendfsync 涓夌绛栫暐
| 绛栫暐 | 璇存槑 | 鎬ц兘 | 鏁版嵁瀹夊叏 |
| --- | --- | --- | --- |
| `always` | 姣忔鍐欏悗绔嬪嵆鍚屾 | 鏈€宸?| 鏈€楂橈紙涓竴涓懡浠わ級 |
| `everysec` | 姣忕鍚屾涓€娆?| 濂?| 涓㈠け1绉掓暟鎹?|
| `no` | 鎿嶄綔绯荤粺鍐冲畾 | 鏈€濂?| 涓嶇‘瀹?|


**鐢熶骇鎺ㄨ崘**锛歚appendfsync everysec`

### 3.4 AOF 閲嶅啓鏈哄埗
**涓轰粈涔堥渶瑕侀噸鍐欙紵** AOF鏂囦欢浼氫笉鏂闀匡紝閲嶅啓鍙紭鍖栨枃浠跺ぇ灏忋€?

**閲嶅啓鍘熺悊**锛氬皢澶氭潯鍛戒护鍚堝苟鎴愭渶缁堢姸鎬併€?

```plain
鍘熷AOF锛?
SET count 1
INCR count
INCR count
INCR count

閲嶅啓鍚庯細
SET count 4
```

**瑙﹀彂鏂瑰紡**锛?

+ 鑷姩锛氭弧瓒抽厤缃潯浠?
+ 鎵嬪姩锛歚BGREWRITEAOF`

### 3.5 浼樼己鐐?
| 浼樼偣 | 缂虹偣 |
| --- | --- |
| 鏁版嵁瀹夊叏鎬ф洿楂橈紙鏈€澶氫涪1绉掞級 | 鏂囦欢浣撶Н澶?|
| 鏃ュ織鍙鎬у己 | 鎭㈠閫熷害鎱?|
| 鏀寔閲嶅啓浼樺寲 | 鍐欐搷浣滈绻佸奖鍝嶆€ц兘 |
| 鍙墜鍔ㄤ慨澶嶆崯鍧忔枃浠?| 鏋佺鎯呭喌涓嬪彲鑳芥崯鍧?|


## 鍥涖€丷DB vs AOF 瀵规瘮
| 瀵规瘮椤?| RDB | AOF |
| --- | --- | --- |
| 榛樿寮€鍚?| 鏄?| 鍚?|
| 鏂囦欢鏍煎紡 | 浜岃繘鍒跺帇缂?| 鏂囨湰鍗忚 |
| 鏂囦欢澶у皬 | 灏?| 澶э紙5-10鍊嶏級 |
| 鎭㈠閫熷害 | 蹇?| 鎱?|
| 鏁版嵁瀹夊叏鎬?| 鍙兘涓㈠嚑鍒嗛挓 | 鏈€澶氫涪1绉?|
| CPU娑堣€?| fork鏃堕珮 | 鎸佺画鍐欏叆楂?|
| 鍐呭瓨娑堣€?| fork鏃剁炕鍊?| 鎸佺画鍗犵敤 |
| 閫傜敤鍦烘櫙 | 澶囦唤銆佸揩閫熸仮澶?| 鏁版嵁瀹夊叏瑕佹眰楂?|


## 浜斻€佹贩鍚堟寔涔呭寲锛圧edis 4.0+锛?
### 5.1 鏍稿績鍘熺悊
AOF閲嶅啓鏃讹紝鍏堢敓鎴怰DB鏍煎紡鐨勫揩鐓э紝鍐嶈拷鍔犲閲忓懡浠ゃ€?

**鏂囦欢缁撴瀯**锛歚[RDB蹇収] + [AOF澧為噺鏃ュ織]`

### 5.2 閰嶇疆
```nginx
# 寮€鍚贩鍚堟寔涔呭寲
aof-use-rdb-preamble yes
```

### 5.3 浼樺娍
| 浼樺娍 | 璇存槑 |
| --- | --- |
| 鎭㈠閫熷害蹇?| 鍏堝姞杞絉DB蹇収锛屽啀閲嶆斁灏戦噺AOF |
| 鏂囦欢浣撶Н灏?| RDB閮ㄥ垎浣撶Н灏?|
| 鏁版嵁鏇村畨鍏?| 淇濈暀AOF绉掔骇淇濇姢 |
| 鍏煎鎬уソ | 鏃х増鏈彲璺宠繃RDB閮ㄥ垎 |


**鐢熶骇鐜棣栭€?*锛歊edis 4.0+ 蹇呴』寮€鍚贩鍚堟寔涔呭寲銆?



## 鍏€佹暟鎹仮澶嶆祦绋?
### 6.1 鍚姩鏃跺姞杞介『搴?
```plain
AOF寮€鍚笖鏂囦欢瀛樺湪 鈫?鍔犺浇AOF
       鈫?鍚?
RDB鏂囦欢瀛樺湪 鈫?鍔犺浇RDB
       鈫?鍚?
鍚姩绌烘暟鎹簱
```

### 6.2 鏂囦欢淇
```bash
# 淇AOF鏂囦欢
redis-check-aof --fix appendonly.aof

# 妫€鏌DB鏂囦欢
redis-check-rdb dump.rdb
```



## 涓冦€佺敓浜х幆澧冩渶浣冲疄璺?
### 7.1 鍦烘櫙閫夋嫨
| 鍦烘櫙 | 鎺ㄨ崘鏂规 | 鐞嗙敱 |
| --- | --- | --- |
| 绾紦瀛?| 涓嶅紑鍚垨鍙紑RDB | 鏁版嵁鍙涪澶憋紝鎬ц兘浼樺厛 |
| 閲嶈鏁版嵁瀛樺偍 | AOF(everysec) + RDB | 鏈€澶氫涪1绉?|
| 楂樻€ц兘瀛樺偍 | 鍙紑RDB | 鍑忓皯纾佺洏I/O |
| 鏁版嵁瀹夊叏绗竴 | AOF(always) + RDB | 鍑犱箮涓嶄涪鏁版嵁 |
| **涓绘祦鎺ㄨ崘** | **娣峰悎鎸佷箙鍖?* | 鍏奸【鎬ц兘鍜屽畨鍏?|


### 7.2 鐢熶骇閰嶇疆妯℃澘
```nginx
# RDB閰嶇疆
save 900 1
save 300 10
save 60 10000
stop-writes-on-bgsave-error yes
rdbcompression yes
dbfilename dump.rdb
dir /data/redis/

# AOF閰嶇疆
appendonly yes
appendfilename "appendonly.aof"
appendfsync everysec
no-appendfsync-on-rewrite yes
auto-aof-rewrite-percentage 100
auto-aof-rewrite-min-size 64mb

# 娣峰悎鎸佷箙鍖栵紙蹇呴』寮€鍚級
aof-use-rdb-preamble yes
```

### 7.3 澶囦唤绛栫暐
```bash
# 瀹氭椂澶囦唤RDB锛坈rontab锛?
0 2 * * * cp /var/lib/redis/dump.rdb /backup/dump_$(date +\%Y\%m\%d).rdb

# 寮傚湴澶囦唤
0 3 * * * rsync -avz /backup/ backup-server:/backup/

# 娓呯悊30澶╁墠澶囦唤
0 4 * * * find /backup/ -name "*.rdb" -mtime +30 -delete
```

### 7.4 鐩戞帶鎸囨爣
```bash
# 鏌ョ湅鎸佷箙鍖栫姸鎬?
redis-cli INFO persistence

# 鍏抽敭鎸囨爣锛?
# rdb_last_bgsave_status      # 搴斾负ok
# rdb_last_bgsave_time_sec    # 鑰楁椂
# aof_enabled                  # 鏄惁寮€鍚?
# aof_last_bgrewrite_status   # 搴斾负ok
# aof_current_size             # 褰撳墠澶у皬
```

### 7.5 鍐呮牳浼樺寲
```bash
# /etc/sysctl.conf
vm.overcommit_memory = 1

# 绂佺敤閫忔槑澶ч〉
echo never > /sys/kernel/mm/transparent_hugepage/enabled

# 鐢熸晥
sysctl -p
```

### 7.6 甯歌闂
| 闂 | 鍘熷洜 | 瑙ｅ喅鏂规 |
| --- | --- | --- |
| 鎸佷箙鍖栧け璐?| 纾佺洏绌洪棿涓嶈冻 | 娓呯悊纾佺洏 |
| bgsave涓€鐩村け璐?| fork澶辫触 | 妫€鏌ュ唴瀛橈紝璁剧疆vm.overcommit_memory=1 |
| Redis鍙樻參 | AOF閲嶅啓鍗燙PU | 璋冩暣閲嶅啓鏃堕棿绐楀彛 |
| 鏁版嵁涓㈠け | 蹇収闂撮殧澶暱 | 璋冩暣save鍙傛暟鎴栨敼鐢ˋOF |
| AOF鏂囦欢杩囧ぇ | 鏈厤缃嚜鍔ㄩ噸鍐?| 寮€鍚痑uto-aof-rewrite-* |


## 鍏€佸揩閫熻蹇?
| 瀵规瘮缁村害 | RDB | AOF |
| --- | --- | --- |
| **鍒悕** | 蹇収 | 鏃ュ織 |
| **鏍煎紡** | 浜岃繘鍒?| 鏂囨湰 |
| **澶у皬** | 灏?| 澶?|
| **閫熷害** | 蹇?| 鎱?|
| **瀹夊叏** | 浣?| 楂?|
| **鍦烘櫙** | 澶囦唤 | 瀛樺偍 |


**鐢熶骇鍛戒护**锛?

```bash
# RDB鎵嬪姩澶囦唤
BGSAVE

# AOF鎵嬪姩閲嶅啓
BGREWRITEAOF

# 鏌ョ湅鎸佷箙鍖栦俊鎭?
INFO persistence

# 妫€鏌ユ枃浠?
redis-check-aof --fix appendonly.aof
redis-check-rdb dump.rdb
```

---

**涓€鍙ヨ瘽鎬荤粨**锛歊edis 4.0+ 鐢熶骇鐜**蹇呴』寮€鍚贩鍚堟寔涔呭寲**锛坄aof-use-rdb-preamble yes` + `appendfsync everysec`锛夛紝骞堕厤鍚堝畾鏈烺DB澶囦唤鍜屽紓鍦板鐏俱€?

# Redis 鍙戝竷璁㈤槄
## 涓€銆佹杩?
### 1.1 浠€涔堟槸鍙戝竷璁㈤槄锛?
Redis 鍙戝竷璁㈤槄锛圥ub/Sub锛夋槸涓€绉?*娑堟伅閫氫俊妯″紡**锛?

+ **鍙戝竷鑰咃紙Publisher锛?*锛氬彂閫佹秷鎭?
+ **璁㈤槄鑰咃紙Subscriber锛?*锛氭帴鏀舵秷鎭?
+ **棰戦亾锛圕hannel锛?*锛氭秷鎭殑杞戒綋

### 1.2 鏍稿績鐗圭偣
| 鐗圭偣 | 璇存槑 |
| --- | --- |
| **娑堟伅澶氭挱** | 涓€鏉℃秷鎭彲琚涓闃呰€呮帴鏀?|
| **娑堟伅鍗冲彂鍗冲純** | 娑堟伅涓嶆寔涔呭寲锛屾病鏈夎闃呰€呮椂娑堟伅涓㈠け |
| **瀹炴椂鎬ч珮** | 娑堟伅瀹炴椂鎺ㄩ€佺粰璁㈤槄鑰?|
| **杞婚噺绾?* | 鏃犻渶棰濆缁勪欢锛堝姣?Kafka銆丷abbitMQ锛?|


### 1.3 涓庢秷鎭槦鍒楃殑鍖哄埆
| 瀵规瘮椤?| Pub/Sub | 娑堟伅闃熷垪锛圠ist/Stream锛?|
| --- | --- | --- |
| 娑堟伅鎸佷箙鍖?| 鉂?涓嶆敮鎸?| 鉁?鏀寔 |
| 娑堟伅纭(ACK) | 鉂?涓嶆敮鎸?| 鉁?鏀寔 |
| 娑堟伅鍥炴函 | 鉂?涓嶆敮鎸?| 鉁?鏀寔 |
| 鍗曟挱/澶氭挱 | 澶氭挱 | 鍗曟挱锛堟秷璐硅€呯珵浜夛級 |
| 閫傜敤鍦烘櫙 | 瀹炴椂閫氱煡銆佸箍鎾?| 鍙潬娑堟伅銆佷换鍔￠槦鍒?|


> **娉ㄦ剰**锛歅ub/Sub 閫傚悎瀹炴椂骞挎挱锛屼笉閫傚悎闇€瑕佸彲闈犳姇閫掔殑鍦烘櫙銆?
>

## 浜屻€佹牳蹇冨懡浠?
### 2.1 鍙戝竷鍛戒护
#### PUBLISH - 鍙戝竷娑堟伅
```bash
# 璇硶锛歅UBLISH channel message
PUBLISH news "Hello Redis"
# 杩斿洖锛氳闃呰€呮暟閲?
(integer) 2
```

#### PUBSUB - 鏌ョ湅璁㈤槄淇℃伅
```bash
# 鏌ョ湅娲昏穬棰戦亾
PUBSUB CHANNELS [pattern]
PUBSUB CHANNELS          # 鎵€鏈夐閬?
PUBSUB CHANNELS news*    # 鍖归厤news寮€澶寸殑棰戦亾

# 鏌ョ湅棰戦亾鐨勮闃呰€呮暟閲?
PUBSUB NUMSUB channel1 channel2
PUBSUB NUMSUB news sports

# 鏌ョ湅妯″紡璁㈤槄鏁伴噺
PUBSUB NUMPAT
```

### 2.2 璁㈤槄鍛戒护
#### SUBSCRIBE - 璁㈤槄涓€涓垨澶氫釜棰戦亾
```bash
# 璇硶锛歋UBSCRIBE channel [channel ...]
SUBSCRIBE news sports
# 杩斿洖锛?
1) "subscribe"    # 璁㈤槄纭
2) "news"         # 棰戦亾鍚?
3) (integer) 1    # 褰撳墠璁㈤槄鏁?

# 姝ゆ椂浼氶樆濉炵瓑寰呮秷鎭?
```

#### UNSUBSCRIBE - 閫€璁㈤閬?
```bash
# 璇硶锛歎NSUBSCRIBE [channel ...]
UNSUBSCRIBE news        # 閫€璁㈡寚瀹氶閬?
UNSUBSCRIBE             # 閫€璁㈡墍鏈夐閬?
```

### 2.3 妯″紡璁㈤槄鍛戒护
#### PSUBSCRIBE - 妯″紡璁㈤槄锛堟敮鎸侀€氶厤绗︼級
```bash
# 璇硶锛歅SUBSCRIBE pattern [pattern ...]
PSUBSCRIBE news.*        # 璁㈤槄鎵€鏈塶ews.寮€澶寸殑棰戦亾
PSUBSCRIBE *.sports      # 璁㈤槄鎵€鏈?sports缁撳熬鐨勯閬?

# 閫氶厤绗﹁鏄庯細
# * - 鍖归厤浠绘剰瀛楃
# ? - 鍖归厤鍗曚釜瀛楃
# [] - 鍖归厤鎷彿鍐呯殑瀛楃
```

#### PUNSUBSCRIBE - 閫€璁㈡ā寮?
```bash
# 璇硶锛歅UNSUBSCRIBE [pattern ...]
PUNSUBSCRIBE news.*      # 閫€璁㈡寚瀹氭ā寮?
PUNSUBSCRIBE             # 閫€璁㈡墍鏈夋ā寮?
```

### 2.4 鍛戒护閫熸煡琛?
| 鍛戒护 | 浣滅敤 | 绀轰緥 |
| --- | --- | --- |
| `PUBLISH channel msg` | 鍙戝竷娑堟伅 | `PUBLISH news "hello"` |
| `SUBSCRIBE channel` | 璁㈤槄棰戦亾 | `SUBSCRIBE news sports` |
| `UNSUBSCRIBE channel` | 閫€璁㈤閬?| `UNSUBSCRIBE news` |
| `PSUBSCRIBE pattern` | 妯″紡璁㈤槄 | `PSUBSCRIBE news.*` |
| `PUNSUBSCRIBE pattern` | 閫€璁㈡ā寮?| `PUNSUBSCRIBE news.*` |
| `PUBSUB CHANNELS` | 鏌ョ湅娲昏穬棰戦亾 | `PUBSUB CHANNELS` |
| `PUBSUB NUMSUB ch` | 鏌ョ湅璁㈤槄鑰呮暟 | `PUBSUB NUMSUB news` |
| `PUBSUB NUMPAT` | 鏌ョ湅妯″紡璁㈤槄鏁?| `PUBSUB NUMPAT` |


## 涓夈€佹秷鎭牸寮?
### 3.1 璁㈤槄纭娑堟伅
```plain
*3              # 鏁扮粍闀垮害3
$9              # 绗竴涓瓧绗︿覆闀垮害9
subscribe       # 鍛戒护鍚?
$4              # 绗簩涓瓧绗︿覆闀垮害4
news            # 棰戦亾鍚?
:1              # 鏁存暟1锛屽綋鍓嶈闃呮暟
```

### 3.2 鏅€氭秷鎭?
```plain
*3              # 鏁扮粍闀垮害3
$5              # 绗竴涓瓧绗︿覆闀垮害5
message         # 娑堟伅绫诲瀷
$4              # 绗簩涓瓧绗︿覆闀垮害4
news            # 棰戦亾鍚?
$5              # 绗笁涓瓧绗︿覆闀垮害5
hello           # 娑堟伅鍐呭
```



## 鍥涖€佸畬鏁翠娇鐢ㄧず渚?
### 4.1 鍩虹绀轰緥
**缁堢1 - 璁㈤槄鑰?*

```bash
# 璁㈤槄鏂伴椈棰戦亾
127.0.0.1:6379> SUBSCRIBE news
Reading messages... (press Ctrl-C to quit)
1) "subscribe"
2) "news"
3) (integer) 1

# 绛夊緟娑堟伅...
```

**缁堢2 - 璁㈤槄鑰?*

```bash
# 鍚屾椂璁㈤槄鏂伴椈鍜屼綋鑲查閬?
127.0.0.1:6379> SUBSCRIBE news sports
Reading messages... (press Ctrl-C to quit)
1) "subscribe"
2) "news"
3) (integer) 1
1) "subscribe"
2) "sports"
3) (integer) 2
```

**缁堢3 - 鍙戝竷鑰?*

```bash
# 鍙戝竷娑堟伅鍒皀ews棰戦亾
127.0.0.1:6379> PUBLISH news "Redis 7.0 released!"
(integer) 2   # 2涓闃呰€呮敹鍒?

# 鍙戝竷娑堟伅鍒皊ports棰戦亾
127.0.0.1:6379> PUBLISH sports "China wins gold medal!"
(integer) 1   # 1涓闃呰€呮敹鍒?
```

**缁堢1 杈撳嚭**

```plain
1) "message"
2) "news"
3) "Redis 7.0 released!"
```

**缁堢2 杈撳嚭**

```plain
1) "message"
2) "news"
3) "Redis 7.0 released!"
1) "message"
2) "sports"
3) "China wins gold medal!"
```

### 4.2 妯″紡璁㈤槄绀轰緥
**璁㈤槄鑰?*

```bash
# 璁㈤槄鎵€鏈変互.news缁撳熬鐨勯閬?
127.0.0.1:6379> PSUBSCRIBE *.news
Reading messages... (press Ctrl-C to quit)
1) "psubscribe"
2) "*.news"
3) (integer) 1
```

**鍙戝竷鑰?*

```bash
# 鍙戝竷鍒颁笉鍚岄閬?
127.0.0.1:6379> PUBLISH tech.news "New CPU released"
(integer) 1
127.0.0.1:6379> PUBLISH sports.news "Football match today"
(integer) 1
127.0.0.1:6379> PUBLISH game.news "New game announced"
(integer) 1
```

**璁㈤槄鑰呰緭鍑?*

```plain
1) "pmessage"
2) "*.news"           # 鍖归厤鐨勬ā寮?
3) "tech.news"        # 瀹為檯棰戦亾
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



## 浜斻€丣ava 浠ｇ爜瀹炵幇锛圝edis锛?
### 5.1 Maven渚濊禆
```xml
<dependency>
    <groupId>redis.clients</groupId>
    <artifactId>jedis</artifactId>
    <version>5.2.0</version>
</dependency>

```

### 5.2 鍙戝竷鑰呭疄鐜?
```java
import redis.clients.jedis.Jedis;

public class Publisher {
    public static void main(String[] args) {
        try (Jedis jedis = new Jedis("localhost", 6379)) {
            
            // 鍙戝竷娑堟伅
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

### 5.3 璁㈤槄鑰呭疄鐜?
```java
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPubSub;

public class Subscriber {
    public static void main(String[] args) {
        try (Jedis jedis = new Jedis("localhost", 6379)) {
            
            // 鍒涘缓璁㈤槄鐩戝惉鍣?
            JedisPubSub jedisPubSub = new JedisPubSub() {
                @Override
                public void onMessage(String channel, String message) {
                    System.out.println("鏀跺埌娑堟伅 - 棰戦亾: " + channel + ", 鍐呭: " + message);
                }
                
                @Override
                public void onSubscribe(String channel, int subscribedChannels) {
                    System.out.println("璁㈤槄棰戦亾: " + channel + ", 褰撳墠璁㈤槄鏁? " + subscribedChannels);
                }
                
                @Override
                public void onUnsubscribe(String channel, int subscribedChannels) {
                    System.out.println("鍙栨秷璁㈤槄: " + channel);
                }
                
                @Override
                public void onPMessage(String pattern, String channel, String message) {
                    System.out.println("妯″紡鍖归厤 - 妯″紡: " + pattern + 
                                       ", 棰戦亾: " + channel + ", 鍐呭: " + message);
                }
                
                @Override
                public void onPSubscribe(String pattern, int subscribedChannels) {
                    System.out.println("妯″紡璁㈤槄: " + pattern);
                }
            };
            
            // 璁㈤槄棰戦亾锛堥樆濉炴柟娉曪級
            System.out.println("寮€濮嬭闃?news 棰戦亾...");
            jedis.subscribe(jedisPubSub, "news");
            
            // 妯″紡璁㈤槄锛堜細闃诲锛?
            // jedis.psubscribe(jedisPubSub, "news.*");
        }
    }
}
```

### 5.4 浣跨敤绾跨▼姹犵鐞嗚闃?
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
     * 璁㈤槄棰戦亾
     */
    public void subscribe(JedisPubSub listener, String... channels) {
        executorService.submit(() -> {
            try (Jedis jedis = jedisPool.getResource()) {
                jedis.subscribe(listener, channels);
            } catch (Exception e) {
                System.err.println("璁㈤槄澶辫触: " + e.getMessage());
            }
        });
    }
    
    /**
     * 妯″紡璁㈤槄
     */
    public void psubscribe(JedisPubSub listener, String... patterns) {
        executorService.submit(() -> {
            try (Jedis jedis = jedisPool.getResource()) {
                jedis.psubscribe(listener, patterns);
            } catch (Exception e) {
                System.err.println("妯″紡璁㈤槄澶辫触: " + e.getMessage());
            }
        });
    }
    
    /**
     * 鍙戝竷娑堟伅
     */
    public Long publish(String channel, String message) {
        try (Jedis jedis = jedisPool.getResource()) {
            return jedis.publish(channel, message);
        }
    }
    
    /**
     * 鍏抽棴鏈嶅姟
     */
    public void shutdown() {
        executorService.shutdown();
        jedisPool.close();
    }
}
```

### 5.5 浣跨敤绀轰緥
```java
import redis.clients.jedis.JedisPubSub;

public class PubSubDemo {
    public static void main(String[] args) {
        PubSubService service = new PubSubService("localhost", 6379);
        
        // 鍒涘缓璁㈤槄鐩戝惉鍣?
        JedisPubSub listener = new JedisPubSub() {
            @Override
            public void onMessage(String channel, String message) {
                System.out.println("[" + channel + "] " + message);
            }
            
            @Override
            public void onSubscribe(String channel, int subscribedChannels) {
                System.out.println("璁㈤槄鎴愬姛: " + channel);
            }
        };
        
        // 璁㈤槄棰戦亾
        service.subscribe(listener, "news", "sports");
        
        // 鍙戝竷娑堟伅
        service.publish("news", "Hello Redis");
        service.publish("sports", "Game started");
        
        // 绛夊緟涓€娈垫椂闂?
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        
        // 鍏抽棴鏈嶅姟
        service.shutdown();
    }
}
```



## 鍏€丼pring Boot 鏁村悎 Pub/Sub
### 6.1 閰嶇疆绫?
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

### 6.2 娑堟伅鎺ユ敹鍣?
```java
import org.springframework.stereotype.Component;

@Component
public class RedisMessageReceiver {
    
    public void receiveMessage(String message) {
        System.out.println("鏀跺埌娑堟伅: " + message);
        // 澶勭悊涓氬姟閫昏緫
    }
}
```

### 6.3 娑堟伅鍙戦€佹湇鍔?
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
        System.out.println("娑堟伅宸插彂閫? " + message);
    }
}
```

### 6.4 鎺у埗鍣?
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
        return "娑堟伅宸插彂閫? " + message;
    }
}
```



## 涓冦€佷娇鐢ㄥ満鏅?
### 7.1 瀹炴椂鑱婂ぉ绯荤粺
```java
// 棰戦亾璁捐锛歝hat:room:{roomId}
public class ChatService {
    
    public void sendMessage(Long roomId, String userId, String message) {
        String channel = "chat:room:" + roomId;
        String msg = userId + ": " + message;
        jedis.publish(channel, msg);
    }
}
```

### 7.2 瀹炴椂閫氱煡绯荤粺
```java
// 棰戦亾璁捐锛歯otify:user:{userId}
public class NotificationService {
    
    public void sendNotification(Long userId, String content) {
        String channel = "notify:user:" + userId;
        jedis.publish(channel, content);
    }
}
```

### 7.3 瀹炴椂鏁版嵁鎺ㄩ€?
```java
// 棰戦亾璁捐锛歴tock:{code}
public class StockService {
    
    public void pushStockPrice(String stockCode, double price) {
        String channel = "stock:" + stockCode;
        String message = String.format("{\"code\":\"%s\",\"price\":%.2f}", stockCode, price);
        jedis.publish(channel, message);
    }
}
```

### 7.4 閰嶇疆涓績
```java
// 棰戦亾璁捐锛歝onfig:update
public class ConfigService {
    
    public void updateConfig(String key, String value) {
        // 鏇存柊鏈湴閰嶇疆
        updateLocalConfig(key, value);
        // 骞挎挱閰嶇疆鍙樻洿
        jedis.publish("config:update", key + "=" + value);
    }
}
```



## 鍏€佹敞鎰忎簨椤逛笌闄愬埗
### 8.1 闄愬埗
| 闄愬埗椤?| 璇存槑 | 瑙ｅ喅鏂规 |
| --- | --- | --- |
| **娑堟伅涓嶆寔涔呭寲** | 璁㈤槄鑰呯绾挎椂娑堟伅涓㈠け | 浣跨敤 Stream 鏇夸唬 |
| **鏃犳秷鎭‘璁?* | 鏃犳硶淇濊瘉娑堟伅琚鐞?| 浣跨敤 Stream + Consumer Group |
| **鏃犳秷鎭洖婧?* | 鏃犳硶閲嶆斁鍘嗗彶娑堟伅 | 浣跨敤 Stream 鎴?List |
| **缂撳啿鍖烘弧浼氭柇寮€** | 璁㈤槄鑰呭鐞嗘參浼氭柇寮€杩炴帴 | 浣跨敤涓撲笟鐨勬秷鎭槦鍒?|
| **缃戠粶鏂紑涓㈡秷鎭?* | 缃戠粶鎭㈠鍚庝笉浼氶噸鍙?| 涓氬姟灞傚仛骞傜瓑澶勭悊 |


### 8.2 鏈€浣冲疄璺?
1. **璁㈤槄鑰呰蹇€熷鐞嗘秷鎭?*锛氶伩鍏嶉樆濉烇紝鍙紓姝ュ鐞?
2. **澶勭悊杩炴帴鏂紑**锛氬疄鐜伴噸杩炴満鍒?
3. **鐩戞帶璁㈤槄鑰呯姸鎬?*锛氬強鏃跺彂鐜伴棶棰?
4. **鍚堢悊璁捐棰戦亾**锛氶伩鍏嶈繃澶氶閬?
5. **浣跨敤杩炴帴姹?*锛氭彁楂樻€ц兘

### 8.3 閲嶈繛绀轰緥
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
                System.err.println("杩炴帴鏂紑锛?绉掑悗閲嶈瘯...");
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
        // 寮傛澶勭悊娑堟伅锛岄伩鍏嶉樆濉?
        executor.submit(() -> {
            // 涓氬姟澶勭悊
        });
    }
}
```



## 涔濄€佹€荤粨
### 9.1 鏍稿績瑕佺偣
| 瑕佺偣 | 璇存槑 |
| --- | --- |
| **鍗虫椂鎬?* | 娑堟伅瀹炴椂鎺ㄩ€侊紝寤惰繜鏋佷綆 |
| **绠€鍗曟€?* | 鏃犲鏉傞厤缃紝寮€绠卞嵆鐢?|
| **骞挎挱鎬?* | 澶╃劧鏀寔娑堟伅澶氭挱 |
| **鏄撳け鎬?* | 娑堟伅涓嶆寔涔呭寲锛岀绾垮嵆涓㈠け |
| **鏃犵‘璁?* | 鏃犳硶淇濊瘉娑堟伅涓€瀹氳澶勭悊 |


### 9.2 浣曟椂浣跨敤 Pub/Sub
| 鍦烘櫙 | 鏄惁鎺ㄨ崘 | 鍘熷洜 |
| --- | --- | --- |
| 瀹炴椂鑱婂ぉ | 鉁?鎺ㄨ崘 | 瀹炴椂鎬ч珮锛屼涪娑堟伅褰卞搷灏?|
| 瀹炴椂閫氱煡 | 鉁?鎺ㄨ崘 | 閫氱煡涓嶈姹?00%鍒拌揪 |
| 瀹炴椂鏁版嵁鎺ㄩ€?| 鉁?鎺ㄨ崘 | 鎺ㄩ€佹渶鏂版暟鎹嵆鍙?|
| 閰嶇疆鍙樻洿骞挎挱 | 鉁?鎺ㄨ崘 | 閰嶇疆鍙樻洿娆℃暟灏?|
| 鍙潬娑堟伅澶勭悊 | 鉂?涓嶆帹鑽?| 闇€瑕?ACK 鍜屾寔涔呭寲 |
| 浠诲姟闃熷垪 | 鉂?涓嶆帹鑽?| 闇€瑕佺珵浜夋秷璐?|
| 娑堟伅鍥炴函 | 鉂?涓嶆帹鑽?| 鏃犳硶鍥炴函鍘嗗彶娑堟伅 |


### 9.3 涓€鍙ヨ瘽鎬荤粨
> **Redis Pub/Sub 閫傚悎瀹炴椂骞挎挱鍦烘櫙锛屼絾娑堟伅涓嶆寔涔呭寲銆佹棤纭鏈哄埗銆傞渶瑕佸彲闈犳秷鎭椂锛岃浣跨敤 Stream 鎴栦笓涓氭秷鎭槦鍒楋紙Kafka銆丷ocketMQ锛夈€?*
>

# Redis涓讳粠澶嶅埗鍝ㄥ叺妯″紡
## 鐜閰嶇疆
```bash
127.0.0.1:6379> info replication   # 鏌ョ湅褰撳墠搴撶殑淇℃伅
# Replication
role:master    # 瑙掕壊  master 涓绘満
connected_slaves:0   # 浠庢満 涓?
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

澶嶅埗3涓厤缃枃浠讹紝鐒跺悗淇敼瀵瑰簲鐨勪俊鎭?

+ 绔彛
+ pid鍚嶅瓧
+ log鏂囦欢鍚嶅瓧
+ dump.rdb 鍚嶅瓧

鍚姩鏈嶅姟

<img src="https://cdn.nlark.com/yuque/0/2026/png/54050922/1780838106195-1e09f663-e947-4044-a39a-bb88a5ab2bbb.png" width="628" title="" crop="0,0,1,1" id="uccebdadb" class="ne-image">



## 涓€涓讳簩浠?
榛樿鎯呭喌涓嬶紝姣忓彴Redis鏈嶅姟鍣ㄩ兘鏄富鑺傜偣锛氫竴鑸儏鍐典笅鍙渶瑕侀厤缃粠鏈哄氨鍙互浜?

slaveof host 6379

<img src="https://cdn.nlark.com/yuque/0/2026/png/54050922/1780838428764-dc3f7754-9da9-48fc-8866-2f64fdc62a98.png" width="564" title="" crop="0,0,1,1" id="u49766d5f" class="ne-image">

涓绘満鏌ョ湅浠庢満淇℃伅

<img src="https://cdn.nlark.com/yuque/0/2026/png/54050922/1780839186798-c16843e9-05d8-4850-a1ca-0e60d98d5372.png" width="581.6" title="" crop="0,0,1,1" id="u8cb20f22" class="ne-image">

涔熷彲鍦ㄩ厤缃枃浠朵腑閰嶇疆

```bash
# ===== 鍩虹閰嶇疆 =====
# 绔彛锛堜粠鑺傜偣浣跨敤涓嶅悓绔彛锛?
port 6380

# 瀹堟姢杩涚▼妯″紡
daemonize yes

# PID 鏂囦欢
pidfile /var/run/redis_6380.pid

# 鏃ュ織鏂囦欢
logfile /var/log/redis/redis-6380.log

# ===== 瀹夊叏閰嶇疆 =====
# 浠庤妭鐐硅嚜宸辩殑瀵嗙爜锛堢敤浜庡鎴风杩炴帴锛?
requirepass 123456

# ===== 涓讳粠澶嶅埗閰嶇疆锛堝叧閿紒锛?====
# 鎸囧畾涓昏妭鐐?
replicaof 127.0.0.1 6379

# 涓昏妭鐐圭殑瀵嗙爜锛堝繀椤婚厤缃紒锛?
masterauth 123456

# 浠庤妭鐐瑰彧璇绘ā寮?
replica-read-only yes

# ===== 鎸佷箙鍖栭厤缃?=====
# RDB 閰嶇疆
dbfilename dump-6380.rdb
dir /var/lib/redis/

# 浠庤妭鐐瑰缓璁叧闂?AOF锛堝彲閫夛級
appendonly no

# ===== 鎬ц兘閰嶇疆 =====
# 鏈€澶у唴瀛橈紙鏍规嵁瀹為檯鎯呭喌璋冩暣锛?
maxmemory 2gb

# 鍐呭瓨娣樻卑绛栫暐
maxmemory-policy allkeys-lru

# 鏈€澶у鎴风杩炴帴鏁?
maxclients 10000

# ===== 澶嶅埗浼樺寲 =====
# 澶嶅埗绉帇缂撳啿鍖哄ぇ灏?
repl-backlog-size 10mb

# 澶嶅埗瓒呮椂鏃堕棿锛堢锛?
repl-timeout 60

# 浠庤妭鐐规槸鍚︽柇寮€杩炴帴鏃舵竻闄ょ紦鍐插尯
repl-diskless-sync yes
```

涓绘満鍙互璇诲啓

浠庢満鍙兘璇?

**<font style="color:rgb(15, 17, 21);">涓讳粠澶嶅埗鏄?Redis 楂樺彲鐢ㄧ殑鍩虹煶锛岄€氳繃 </font>**`**<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">replicaof</font>**`**<font style="color:rgb(15, 17, 21);"> 鍜?</font>**`**<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">masterauth</font>**`**<font style="color:rgb(15, 17, 21);"> 涓や釜閰嶇疆鍗冲彲鎼缓锛屼粠鑺傜偣鍙涓旀暟鎹紓姝ュ悓姝ャ€?/font>**

+ <font style="color:rgb(15, 17, 21);">鍏ㄩ噺澶嶅埗锛氫粠鑺傜偣绗竴娆￠摼鎺ヤ富鑺傜偣鏃朵細灏嗕富鑺傜偣鐨勫叏閮ㄦ暟鎹鍒跺埌浠庤妭鐐逛腑</font>
+ <font style="color:rgb(15, 17, 21);">澧為噺澶嶅埗锛氫富鑺傜偣灏嗗悗缁墍鏈夌殑鍛戒护渚濇浼犵粰浠庤妭鐐?/font>

## 灞傚眰閾捐矾
涓婁竴涓富鑺傜偣閾炬帴涓嬩竴涓粠鑺傜偣

<img src="https://cdn.nlark.com/yuque/0/2026/png/54050922/1780840591689-192fe5c6-0992-4196-81ce-37327a4b0fe1.png" width="478.4" title="" crop="0,0,1,1" id="uc3a762e4" class="ne-image">

褰撲富鏈烘柇寮€浜嗛摼鎺ワ紝鍙互浣跨敤slaveof no one 璁╄嚜宸卞彉鎴愪富鏈猴紝鍏朵粬鐨勮妭鐐规墜鍔ㄩ摼鎺ュ埌杩欎釜鑺傜偣

## 鍝ㄥ叺妯″紡
### 涓€銆佹杩?
1.1 浠€涔堟槸鍝ㄥ叺妯″紡锛?

鍝ㄥ叺锛圫entinel锛夋槸 Redis 瀹樻柟鎻愪緵鐨?*楂樺彲鐢ㄨВ鍐虫柟妗?*锛岀敤浜庣洃鎺т富浠庨泦缇や腑鐨?Master 鍜?Slave锛屽苟鍦?Master 鏁呴殰鏃惰嚜鍔ㄨ繘琛?*鏁呴殰杞Щ**锛屽皢鏌愪釜 Slave 鎻愬崌涓烘柊鐨?Master銆?

1.2 涓轰粈涔堥渶瑕佸摠鍏垫ā寮忥紵

| 闂 | 鍝ㄥ叺瑙ｅ喅鏂规 |
| --- | --- |
| 涓昏妭鐐瑰畷鏈猴紝鏈嶅姟涓嶅彲鐢?| 鑷姩鏁呴殰杞Щ锛岄€変妇鏂?Master |
| 闇€瑕佷汉宸ュ共棰勫垏鎹?| 鑷姩瀹屾垚锛屾棤闇€浜哄伐 |
| 瀹㈡埛绔笉鐭ラ亾鏂?Master 鍦板潃 | 鍝ㄥ叺閫氱煡瀹㈡埛绔柊鍦板潃 |
| 浠庤妭鐐归渶瑕侀噸鏂版寚鍚戞柊 Master | 鍝ㄥ叺鑷姩閰嶇疆浠庤妭鐐?|


1.3 鍝ㄥ叺妯″紡鐨勬牳蹇冨姛鑳?

| 鍔熻兘 | 璇存槑 |
| --- | --- |
| **鐩戞帶** | 鐩戞帶 Master 鍜?Slave 鏄惁姝ｅ父杩愯 |
| **閫氱煡** | 褰撹妭鐐规晠闅滄椂锛岄€氳繃 API 閫氱煡绯荤粺绠＄悊鍛樻垨搴旂敤绋嬪簭 |
| **鑷姩鏁呴殰杞Щ** | Master 鏁呴殰鏃讹紝灏?Slave 鎻愬崌涓?Master |
| **閰嶇疆鎻愪緵** | 瀹㈡埛绔繛鎺ュ摠鍏佃幏鍙栧綋鍓?Master 鍦板潃 |


1.4 鍝ㄥ叺妯″紡鐨勬灦鏋勫浘

```plain
                    鈹屸攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?
                    鈹?         鍝ㄥ叺闆嗙兢                鈹?
                    鈹? 鈹屸攢鈹€鈹€鈹€鈹€鈹€鈹?鈹屸攢鈹€鈹€鈹€鈹€鈹€鈹?鈹屸攢鈹€鈹€鈹€鈹€鈹€鈹?   鈹?
                    鈹? 鈹傚摠鍏礢1鈹?鈹傚摠鍏礢2鈹?鈹傚摠鍏礢3鈹?   鈹?
                    鈹? 鈹斺攢鈹€鈹攢鈹€鈹€鈹?鈹斺攢鈹€鈹攢鈹€鈹€鈹?鈹斺攢鈹€鈹攢鈹€鈹€鈹?   鈹?
                    鈹斺攢鈹€鈹€鈹€鈹€鈹尖攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹尖攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹尖攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?
                          鈹?       鈹?       鈹?
                          鈹?  鐩戞帶  鈹?  鐩戞帶  鈹?
                          鈫?       鈫?       鈫?
                    鈹屸攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?
                    鈹?         Redis 涓讳粠闆嗙兢           鈹?
                    鈹?                                 鈹?
                    鈹?    鈹屸攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?             鈹?
                    鈹?    鈹? Master M1  鈹?鈫?涓昏妭鐐?    鈹?
                    鈹?    鈹? (涓绘満A)    鈹?             鈹?
                    鈹?    鈹斺攢鈹€鈹€鈹€鈹€鈹€鈹攢鈹€鈹€鈹€鈹€鈹€鈹?             鈹?
                    鈹?           鈹?澶嶅埗                 鈹?
                    鈹?    鈹屸攢鈹€鈹€鈹€鈹€鈹€鈹粹攢鈹€鈹€鈹€鈹€鈹€鈹?             鈹?
                    鈹?    鈹?            鈹?             鈹?
                    鈹?    鈫?            鈫?             鈹?
                    鈹?鈹屸攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹? 鈹屸攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?       鈹?
                    鈹?鈹?Slave S1鈹? 鈹?Slave S2鈹?       鈹?
                    鈹?鈹?(涓绘満B) 鈹? 鈹?(涓绘満C) 鈹?       鈹?
                    鈹?鈹斺攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹? 鈹斺攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?       鈹?
                    鈹斺攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?
```



### 浜屻€佸摠鍏靛伐浣滃師鐞?
2.1 涓変釜瀹氭椂鐩戞帶浠诲姟

| 浠诲姟 | 璇存槑 | 鎵ц棰戠巼 |
| --- | --- | --- |
| **姣忕浠诲姟** | 姣忎釜鍝ㄥ叺鍚戞墍鏈夎妭鐐癸紙Master銆丼lave銆佸叾浠栧摠鍏碉級鍙戦€?PING 鍛戒护 | 姣忕1娆?|
| **姣?0绉掍换鍔?* | 鍚?Master 鍜?Slave 鍙戦€?INFO 鍛戒护锛岃幏鍙栨嫇鎵戜俊鎭?| 姣?0绉?娆?|
| **姣?绉掍换鍔?* | 鍝ㄥ叺閫氳繃 Master 鐨?`__sentinel__:hello` 棰戦亾鍙戝竷鑷繁鐨勪俊鎭?| 姣?绉?娆?|


2.2 涓昏涓嬬嚎 vs 瀹㈣涓嬬嚎

```plain
鈹屸攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?
鈹?                    涓嬬嚎鍒ゆ柇娴佺▼                                 鈹?
鈹溾攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?
鈹?                                                                鈹?
鈹? 鍝ㄥ叺 S1 鈹€鈹€PING鈹€鈹€鈫?Master                                       鈹?
鈹?      鈹?                       鈹?                               鈹?
鈹?      鈹?                   鈹屸攢鈹€鈹€鈹粹攢鈹€鈹€鈹?                           鈹?
鈹?      鈹?                   鈹傝秴鏃讹紵  鈹?                           鈹?
鈹?      鈹?                   鈹斺攢鈹€鈹€鈹攢鈹€鈹€鈹?                           鈹?
鈹?      鈹?                       鈹?                               鈹?
鈹?      鈫?                       鈫?                               鈹?
鈹? 鈹屸攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?                      鈹?
鈹? 鈹?        涓昏涓嬬嚎 (SDOWN)              鈹?                      鈹?
鈹? 鈹? 鍗曚釜鍝ㄥ叺璁や负 Master 涓嶅彲鐢?          鈹?                      鈹?
鈹? 鈹斺攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?                      鈹?
鈹?      鈹?                                                       鈹?
鈹?      鈫?                                                       鈹?
鈹? 璇㈤棶鍏朵粬鍝ㄥ叺锛歁aster 鏄惁鍙敤锛?                                鈹?
鈹?      鈹?                                                       鈹?
鈹?      鈫?                                                       鈹?
鈹? 鈹屸攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?                      鈹?
鈹? 鈹?        瀹㈣涓嬬嚎 (ODOWN)              鈹?                      鈹?
鈹? 鈹? 褰撳鏁板摠鍏碉紙quorum锛夐兘璁や负涓嶅彲鐢ㄦ椂   鈹?                      鈹?
鈹? 鈹斺攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?                      鈹?
鈹?      鈹?                                                       鈹?
鈹?      鈫?                                                       鈹?
鈹? 寮€濮嬫晠闅滆浆绉?                                                  鈹?
鈹?                                                                鈹?
鈹斺攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?
```

| 鐘舵€?| 璇存槑 | 瑙﹀彂鏉′欢 |
| --- | --- | --- |
| **涓昏涓嬬嚎 (SDOWN)** | 鍗曚釜鍝ㄥ叺璁や负 Master 涓嶅彲鐢?| 杩炵画 `down-after-milliseconds` 姣鏈搷搴?|
| **瀹㈣涓嬬嚎 (ODOWN)** | 澶氫釜鍝ㄥ叺閮借涓?Master 涓嶅彲鐢?| 杈惧埌 `quorum` 鏁伴噺鐨勫摠鍏靛悓鎰忎富瑙備笅绾?|


2.3 鏁呴殰杞Щ娴佺▼

```plain
鈹屸攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?
鈹?                    鏁呴殰杞Щ娴佺▼                                 鈹?
鈹溾攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?
鈹?                                                                鈹?
鈹? Step 1: 鍝ㄥ叺闆嗙兢杈炬垚瀹㈣涓嬬嚎                                    鈹?
鈹?      鈹?                                                       鈹?
鈹?      鈫?                                                       鈹?
鈹? Step 2: 閫変妇棰嗗鑰呭摠鍏?                                        鈹?
鈹?      鈹?                                                       鈹?
鈹?      鈫?                                                       鈹?
鈹? Step 3: 浠?Slave 涓€変妇鏂?Master                               鈹?
鈹?      鈹?                                                       鈹?
鈹?      鈫?                                                       鈹?
鈹? Step 4: 灏嗘柊 Slave 鎻愬崌涓?Master                               鈹?
鈹?      鈹?                                                       鈹?
鈹?      鈫?                                                       鈹?
鈹? Step 5: 淇敼鍏朵粬 Slave 鐨勫鍒剁洰鏍囷紙鎸囧悜鏂?Master锛?             鈹?
鈹?      鈹?                                                       鈹?
鈹?      鈫?                                                       鈹?
鈹? Step 6: 鏃?Master 鎭㈠鍚庯紝闄嶇骇涓?Slave 鎸囧悜鏂?Master           鈹?
鈹?                                                                鈹?
鈹斺攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?
```

2.4 棰嗗鑰呭摠鍏甸€変妇锛圧aft 绠楁硶锛?

1. 鍙戠幇 Master 瀹㈣涓嬬嚎鍚庯紝鍝ㄥ叺鍚戝叾浠栧摠鍏靛彂閫佽姹傦紝瑕佹眰灏嗚嚜宸辫涓洪瀵艰€?
2. 鏀跺埌璇锋眰鐨勫摠鍏靛鏋滄病鏈夊悓鎰忚繃鍏朵粬鍝ㄥ叺锛屽垯鍚屾剰璇ヨ姹?
3. 褰撳摠鍏佃幏寰?*鍗婃暟浠ヤ笂**鐨勯€夌エ鏃讹紝鎴愪负棰嗗鑰?
4. 濡傛灉娌℃湁閫夊嚭棰嗗鑰咃紝绛夊緟鍚庨噸璇?

2.5 鏂?Master 閫変妇瑙勫垯

| 浼樺厛绾?| 瑙勫垯 | 璇存槑 |
| --- | --- | --- |
| 1 | **浼樺厛绾ф渶楂?* | `slave-priority`锛坮eplica-priority锛夊€艰秺灏忎紭鍏堢骇瓒婇珮 |
| 2 | **澶嶅埗鍋忕Щ閲忔渶澶?* | 鏁版嵁鏈€鏂扮殑浠庤妭鐐?|
| 3 | **runid 鏈€灏?* | 澶氫釜浠庤妭鐐逛紭鍏堢骇鐩稿悓鏃讹紝runid 鏈€灏忕殑褰撻€?|


**閰嶇疆浠庤妭鐐逛紭鍏堢骇锛?*

```nginx
# redis.conf
replica-priority 100
```

### 涓夈€佸摠鍏垫ā寮忔惌寤?
3.1 鐜瑙勫垝

| 鑺傜偣瑙掕壊 | IP | 绔彛 | 鍝ㄥ叺绔彛 |
| --- | --- | --- | --- |
| Master | 127.0.0.1 | 6379 | - |
| Slave-1 | 127.0.0.1 | 6380 | - |
| Slave-2 | 127.0.0.1 | 6381 | - |
| Sentinel-1 | 127.0.0.1 | - | 26379 |
| Sentinel-2 | 127.0.0.1 | - | 26380 |
| Sentinel-3 | 127.0.0.1 | - | 26381 |


3.2 涓讳粠鑺傜偣閰嶇疆

**涓昏妭鐐归厤缃?(redis-6379.conf)**

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

**浠庤妭鐐?1 閰嶇疆 (redis-6380.conf)**

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

**浠庤妭鐐?2 閰嶇疆 (redis-6381.conf)**

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

3.3 鍝ㄥ叺閰嶇疆鏂囦欢璇﹁В

**鍝ㄥ叺-1 閰嶇疆 (sentinel-26379.conf)**

```nginx
# 绔彛
port 26379

# 瀹堟姢杩涚▼妯″紡
daemonize yes

# PID鏂囦欢
pidfile /var/run/sentinel_26379.pid

# 鏃ュ織鏂囦欢
logfile /var/log/redis/sentinel-26379.log

# 鐩戞帶閰嶇疆
# sentinel monitor <master-name> <ip> <port> <quorum>
sentinel monitor mymaster 127.0.0.1 6379 2

# Master 鑺傜偣瀵嗙爜
sentinel auth-pass mymaster 123456

# 鍒ゆ柇涓昏涓嬬嚎鐨勬椂闂达紙姣锛?
sentinel down-after-milliseconds mymaster 30000

# 鏁呴殰杞Щ瓒呮椂鏃堕棿锛堟绉掞級
sentinel failover-timeout mymaster 180000

# 鍚屾椂杩涜鏁呴殰杞Щ鐨勪粠鑺傜偣鏁伴噺
sentinel parallel-syncs mymaster 1

# 閫氱煡鑴氭湰锛堝彲閫夛級
# sentinel notification-script mymaster /path/to/notify.sh

# 閲嶆柊閰嶇疆鑴氭湰锛堝彲閫夛級
# sentinel client-reconfig-script mymaster /path/to/reconfig.sh
```

**鍙傛暟璇存槑锛?*

| 鍙傛暟 | 璇存槑 | 榛樿鍊?| 寤鸿鍊?|
| --- | --- | --- | --- |
| `port` | 鍝ㄥ叺绔彛 | 26379 | 26379+ |
| `sentinel monitor` | 鐩戞帶鐨?Master | 鏃?| 蹇呭～ |
| `sentinel auth-pass` | Master 瀵嗙爜 | 鏃?| 鏈夊瘑鐮佹椂蹇呭～ |
| `down-after-milliseconds` | 涓昏涓嬬嚎鍒ゆ柇鏃堕棿 | 30000ms | 30000 |
| `failover-timeout` | 鏁呴殰杞Щ瓒呮椂 | 180000ms | 180000 |
| `parallel-syncs` | 鍚屾椂鍚屾鐨勪粠鑺傜偣鏁?| 1 | 1 |


**鍝ㄥ叺-2 閰嶇疆 (sentinel-26380.conf)**

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

**鍝ㄥ叺-3 閰嶇疆 (sentinel-26381.conf)**

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

3.4 鍚姩鎵€鏈夎妭鐐?

```bash
# 鍚姩 Redis 涓讳粠鑺傜偣
redis-server /etc/redis/redis-6379.conf
redis-server /etc/redis/redis-6380.conf
redis-server /etc/redis/redis-6381.conf

# 鍚姩鍝ㄥ叺
redis-sentinel /etc/redis/sentinel-26379.conf
redis-sentinel /etc/redis/sentinel-26380.conf
redis-sentinel /etc/redis/sentinel-26381.conf

# 鎴栬€呬娇鐢?redis-server 鍚姩鍝ㄥ叺妯″紡
redis-server /etc/redis/sentinel-26379.conf --sentinel
```

3.5 楠岃瘉鍝ㄥ叺鐘舵€?

```bash
# 鏌ョ湅鍝ㄥ叺淇℃伅
redis-cli -p 26379 INFO sentinel

# 鏌ョ湅鐩戞帶鐨?Master
redis-cli -p 26379 SENTINEL masters

# 鏌ョ湅鎸囧畾 Master 鐨勪粠鑺傜偣
redis-cli -p 26379 SENTINEL slaves mymaster

# 鏌ョ湅鎸囧畾 Master 鐨勫摠鍏靛垪琛?
redis-cli -p 26379 SENTINEL sentinels mymaster

# 鑾峰彇褰撳墠 Master 鍦板潃
redis-cli -p 26379 SENTINEL get-master-addr-by-name mymaster
```

### 鍥涖€佸摠鍏靛父鐢ㄥ懡浠?
4.1 鍝ㄥ叺鍛戒护姹囨€?

| 鍛戒护 | 璇存槑 | 绀轰緥 |
| --- | --- | --- |
| `SENTINEL masters` | 鏌ョ湅鎵€鏈?Master | `SENTINEL masters` |
| `SENTINEL master <name>` | 鏌ョ湅鎸囧畾 Master 淇℃伅 | `SENTINEL master mymaster` |
| `SENTINEL slaves <name>` | 鏌ョ湅鎸囧畾 Master 鐨勪粠鑺傜偣 | `SENTINEL slaves mymaster` |
| `SENTINEL sentinels <name>` | 鏌ョ湅鍝ㄥ叺鍒楄〃 | `SENTINEL sentinels mymaster` |
| `SENTINEL get-master-addr-by-name <name>` | 鑾峰彇 Master 鍦板潃 | `SENTINEL get-master-addr-by-name mymaster` |
| `SENTINEL reset <pattern>` | 閲嶇疆鐩戞帶 | `SENTINEL reset mymaster` |
| `SENTINEL failover <name>` | 鎵嬪姩鏁呴殰杞Щ | `SENTINEL failover mymaster` |
| `SENTINEL ckquorum <name>` | 妫€鏌ュ摠鍏典徊瑁?| `SENTINEL ckquorum mymaster` |
| `SENTINEL flushconfig` | 寮哄埗鍐欏叆閰嶇疆鏂囦欢 | `SENTINEL flushconfig` |


4.2 鎵嬪姩鏁呴殰杞Щ

```bash
# 鎵嬪姩瑙﹀彂鏁呴殰杞Щ锛堝嵆浣?Master 姝ｅ父杩愯锛?
redis-cli -p 26379 SENTINEL failover mymaster
```

4.3 鏌ョ湅鍝ㄥ叺淇℃伅

```bash
# 杩炴帴浠绘剰鍝ㄥ叺
redis-cli -p 26379

# 鏌ョ湅鍝ㄥ叺淇℃伅
127.0.0.1:26379> INFO sentinel

# 鏌ョ湅鎵€鏈?Master
127.0.0.1:26379> SENTINEL masters

# 鏌ョ湅浠庤妭鐐?
127.0.0.1:26379> SENTINEL slaves mymaster

# 鏌ョ湅鍝ㄥ叺鍒楄〃
127.0.0.1:26379> SENTINEL sentinels mymaster
```

### 浜斻€丣ava 鎿嶄綔鍝ㄥ叺妯″紡
5.1 Jedis 杩炴帴鍝ㄥ叺

```java
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisSentinelPool;

import java.util.HashSet;
import java.util.Set;

public class JedisSentinelDemo {
    public static void main(String[] args) {
        // 鍝ㄥ叺鍦板潃闆嗗悎
        Set<String> sentinels = new HashSet<>();
        sentinels.add("127.0.0.1:26379");
        sentinels.add("127.0.0.1:26380");
        sentinels.add("127.0.0.1:26381");
        
        // 鍒涘缓鍝ㄥ叺杩炴帴姹?
        JedisSentinelPool pool = new JedisSentinelPool(
            "mymaster",           // Master 鍚嶇О锛堜笌鍝ㄥ叺閰嶇疆涓€鑷达級
            sentinels,            // 鍝ㄥ叺鍦板潃闆嗗悎
            "123456"              // Redis 瀵嗙爜
        );
        
        // 鑾峰彇杩炴帴
        try (Jedis jedis = pool.getResource()) {
            // 鍐欏叆鏁版嵁
            jedis.set("key", "value");
            System.out.println("鍐欏叆鎴愬姛");
            
            // 璇诲彇鏁版嵁
            String value = jedis.get("key");
            System.out.println("璇诲彇鏁版嵁: " + value);
            
            // 鏌ョ湅褰撳墠 Master 鍦板潃
            System.out.println("褰撳墠 Master: " + pool.getCurrentHostMaster());
        }
        
        // 鍏抽棴杩炴帴姹?
        pool.close();
    }
}
```

5.2 Spring Boot 闆嗘垚鍝ㄥ叺

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

**Java 閰嶇疆绫?*

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
        // 鍝ㄥ叺閰嶇疆
        RedisSentinelConfiguration sentinelConfig = new RedisSentinelConfiguration()
            .master("mymaster")
            .sentinel("127.0.0.1", 26379)
            .sentinel("127.0.0.1", 26380)
            .sentinel("127.0.0.1", 26381);
        
        // 璁剧疆瀵嗙爜
        sentinelConfig.setPassword("123456");
        
        // 杩炴帴姹犻厤缃?
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

### 鍏€佸摠鍏垫ā寮忔渶浣冲疄璺?
6.1 鍝ㄥ叺閮ㄧ讲寤鸿

| 寤鸿 | 璇存槑 |
| --- | --- |
| **鍝ㄥ叺鏁伴噺 鈮?3** | 閬垮厤鑴戣锛岀‘淇濋€変妇鑳借揪鎴愬鏁?|
| **鍝ㄥ叺鏁伴噺涓哄鏁?* | 3銆?銆?... 渚夸簬閫変妇 |
| **鍝ㄥ叺涓?Redis 鑺傜偣鍒嗙** | 閬垮厤鍚屾椂鏁呴殰 |
| **quorum 閰嶇疆** | 寤鸿涓?`ceil(鍝ㄥ叺鏁伴噺/2)` |
| **涓嶅悓鐗╃悊鏈?* | 鎻愰珮瀹圭伨鑳藉姏 |


6.2 quorum 閰嶇疆寤鸿

| 鍝ㄥ叺鎬绘暟 | 寤鸿 quorum | 璇存槑 |
| --- | --- | --- |
| 1 | 1 | 鍗曠偣椋庨櫓锛屼笉鎺ㄨ崘 |
| 2 | 2 | 闇€瑕佷袱涓兘鍚屾剰锛屼笉鎺ㄨ崘 |
| **3** | **2** | 鎺ㄨ崘閰嶇疆 |
| 5 | 3 | 楂樺彲鐢ㄨ姹?|
| 7 | 4 | 鏋侀珮鍙敤鎬?|


6.3 鏁呴殰杞Щ瓒呮椂閰嶇疆

```nginx
# 鏁呴殰杞Щ瓒呮椂鏃堕棿锛堟绉掞級
sentinel failover-timeout mymaster 180000
```

**failover-timeout 鐨勫惈涔夛細**

1. 瓒呰繃璇ユ椂闂存湭瀹屾垚鏁呴殰杞Щ锛岃涓哄け璐?
2. 鏁呴殰杞Щ瀹屾垚鍚庯紝鏃?Master 闇€瑕佸湪璇ユ椂闂村唴鎭㈠骞舵垚涓?Slave
3. 鑻ヨ秴鏃讹紝涓嬫鏁呴殰杞Щ鐨勭瓑寰呮椂闂存槸鍘熸潵鐨?2 鍊?

6.4 鍝ㄥ叺閰嶇疆鏂囦欢鑷姩閲嶅啓

鍝ㄥ叺杩愯鏃讹紝浼?*鑷姩淇敼閰嶇疆鏂囦欢**锛岃褰曡繍琛岀姸鎬併€傞厤缃枃浠朵細琚噸鍐欙紝鍥犳锛?

+ 涓嶈鎵嬪姩缂栬緫閰嶇疆鏂囦欢锛岄櫎闈炲仠姝㈠摠鍏?
+ 淇敼閰嶇疆寤鸿閫氳繃 `SENTINEL SET` 鍛戒护鍔ㄦ€佷慨鏀?

```bash
# 鍔ㄦ€佷慨鏀归厤缃?
redis-cli -p 26379 SENTINEL SET mymaster down-after-milliseconds 20000

# 鏌ョ湅褰撳墠閰嶇疆
redis-cli -p 26379 SENTINEL GET mymaster down-after-milliseconds
```

### 涓冦€佹晠闅滆浆绉绘紨绀?
7.1 妯℃嫙 Master 瀹曟満

```bash
# 1. 鏌ョ湅褰撳墠 Master
redis-cli -p 26379 SENTINEL get-master-addr-by-name mymaster
# 杈撳嚭: 1) "127.0.0.1" 2) "6379"

# 2. 鍋滄 Master 鑺傜偣
redis-cli -p 6379 -a 123456 SHUTDOWN

# 3. 鏌ョ湅鍝ㄥ叺鏃ュ織
tail -f /var/log/redis/sentinel-26379.log

# 4. 绛夊緟鏁呴殰杞Щ瀹屾垚锛堢害30绉掞級

# 5. 鏌ョ湅鏂?Master
redis-cli -p 26379 SENTINEL get-master-addr-by-name mymaster
# 鏂?Master 鍙兘鏄?6380 鎴?6381
```

7.2 鍝ㄥ叺鏃ュ織鍏抽敭淇℃伅

```plain
# 涓昏涓嬬嚎
+sdown master mymaster 127.0.0.1 6379

# 瀹㈣涓嬬嚎
+odown master mymaster 127.0.0.1 6379 #quorum 2/2

# 寮€濮嬮€変妇
+vote-for-leader <id> 1

# 閫変妇鎴愬姛
+config-update-from sentinel <id>

# 鍒囨崲閰嶇疆
+switch-master mymaster 127.0.0.1 6379 127.0.0.1 6380
```

7.3 鎭㈠鏃?Master

```bash
# 閲嶆柊鍚姩鏃?Master锛?379锛?
redis-server /etc/redis/redis-6379.conf

# 鏌ョ湅鍝ㄥ叺鐘舵€?
redis-cli -p 26379 SENTINEL slaves mymaster
# 6379 浼氫互浠庤妭鐐硅韩浠藉姞鍏?
```

### 鍏€佸父瑙侀棶棰樹笌瑙ｅ喅鏂规
| 闂 | 鍘熷洜 | 瑙ｅ喅鏂规 |
| --- | --- | --- |
| 鍝ㄥ叺鏃犳硶杩炴帴 Master | 缃戠粶闂鎴栧瘑鐮侀敊璇?| 妫€鏌?`sentinel auth-pass` |
| 鏁呴殰杞Щ澶辫触 | 鍝ㄥ叺鏁伴噺涓嶈冻 | 纭繚鍝ㄥ叺鏁伴噺 鈮?3锛宷uorum 閰嶇疆鍚堢悊 |
| 閫変妇鑴戣 | 缃戠粶鍒嗗尯 | 澧炲姞鍝ㄥ叺鏁伴噺锛岄厤缃悎鐞嗚秴鏃?|
| 瀹㈡埛绔暱鏃堕棿鏃犳硶杩炴帴 | 鏈洿鏂?Master 鍦板潃 | 浣跨敤鍝ㄥ叺鑷姩鍙戠幇鏈哄埗 |


### 涔濄€佹€荤粨
鏍稿績瑕佺偣

| 瑕佺偣 | 璇存槑 |
| --- | --- |
| **浣滅敤** | 瀹炵幇 Redis 楂樺彲鐢紝鑷姩鏁呴殰杞Щ |
| **閮ㄧ讲瑕佹眰** | 鑷冲皯 3 涓摠鍏碉紝濂囨暟涓?|
| **鍏抽敭閰嶇疆** | `monitor`銆乣quorum`銆乣auth-pass` |
| **鏁呴殰杞Щ** | 涓昏涓嬬嚎 鈫?瀹㈣涓嬬嚎 鈫?棰嗗鑰呴€変妇 鈫?鏂?Master 閫変妇 |
| **瀹㈡埛绔繛鎺?* | 閫氳繃鍝ㄥ叺鑾峰彇 Master 鍦板潃 |


**涓€鍙ヨ瘽鎬荤粨锛氬摠鍏垫ā寮忔槸 Redis 鐢熶骇鐜楂樺彲鐢ㄧ殑鏍囧噯鏂规锛岃嚦灏戦儴缃?3 涓摠鍏靛疄渚嬶紝鐩戞帶涓讳粠闆嗙兢锛屽疄鐜拌嚜鍔ㄦ晠闅滆浆绉汇€?*
', NOW());
SET @last_note_id = LAST_INSERT_ID();

INSERT INTO 
ote (uthor_id, 	itle, content, created_at)
VALUES (1001, '集合框架', '# 闆嗗悎
+ 姒傚康锛氬璞＄殑瀹瑰櫒锛屽疄鐜颁簡瀵瑰璞″父鐢ㄧ殑鎿嶄綔锛岀被浼兼暟缁勫姛鑳?
+ 闆嗗悎鍜屾暟缁勭殑鍖哄埆
    - 鏁扮粍闀垮害鍥哄畾锛岄泦鍚堥暱搴︿笉鍥哄畾
    - 鏁扮粍鍙互瀛樺偍鍩烘湰绫诲瀷鍜屽紩鐢ㄧ被鍨嬶紝闆嗗悎鍙兘瀛樺偍寮曠敤绫诲瀷
+ 浣嶇疆锛歫ava.util.*;
+ <img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1744806274150-7aba2622-05b5-45e1-86b0-16f8a3b98bdc.png" width="381.6" title="" crop="0,0,1,1" id="udf93c25d" class="ne-image">

# Collection浣撶郴闆嗗悎
## Collection鐖舵帴鍙?
### 鍩烘湰淇℃伅鍜屾柟娉?
+ 鐗圭偣锛氫唬琛ㄤ竴缁勪换鎰忕被鍨嬬殑瀵硅薄锛屾棤搴忥紝鏃犱笅鏍囷紝涓嶈兘閲嶅銆?
+ 鏂规硶
    - boolean add(Object obj) // 娣诲姞涓€涓璞?
    - boolean addAll(Collection c) // 灏嗕竴涓泦鍚堜腑鐨勬墍鏈夊璞℃坊鍔犲埌姝ら泦鍚堜腑
    - void clear() // 娓呯┖姝ら泦鍚堜腑鐨勬墍鏈夊璞?
    - boolean contains(Object o) // 妫€鏌ユ闆嗗悎涓槸鍚﹀寘鍚玱瀵硅薄
    - bollean equals(Object o) // 姣旇緝鏄惁涓庢寚瀹氬璞＄浉绛?
    - boolean remove(Object o) //鍦ㄦ闆嗗悎涓Щ闄瀵硅薄
    - int size(锛?/杩斿洖闆嗗悎涓殑鍏冪礌涓暟
    - Object[] toArray() // 灏嗘闆嗗悎杞崲鎴愭暟缁勩€?
    - Iterator<E> iterator()  //杩斿洖鍦ㄦcollection鐨勫厓绱犱笂杩涜杩唬鐨勮凯浠ｅ櫒

### 瀹炵幇1
```java
package com.jie.collection;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

// Collection 浣跨敤
public class MyCollection {
    public static void main(String[] args) {
        // 鍒涘缓闆嗗悎
        Collection collection = new ArrayList();

        // 娣诲姞鍏冪礌
        collection.add("鑻规灉");
        collection.add("瑗跨摐");
        collection.add("姒磋幉");
        System.out.println(collection.size());
        System.out.println(collection);

        // 鍒犻櫎鏁版嵁
//        collection.remove("姒磋幉");
////        collection.clear();
//        System.out.println("鍒犻櫎涔嬪悗"+collection.size());

        // 閬嶅巻鍏冪礌
        // 浣跨敤澧炲己for
        for (Object o : collection) {
            System.out.println(o);
        }
        // 浣跨敤杩唬鍣紙涓撻棬鐢ㄦ潵閬嶅巻闆嗗悎鐨勬柟寮忥級
        Iterator iterator = collection.iterator();
        while (iterator.hasNext()) {
            String s = (String) iterator.next();
            System.out.println(s);
            // collection.remove(s);
            iterator.remove();
        }

        // 鍒ゆ柇
        // 鍒ゆ柇鏄惁瀛樺湪鏌愪釜瀵硅薄
        System.out.println(collection.contains("瑗跨摐"));
        // 鍒ゆ柇鏄惁涓虹┖
        System.out.println(collection.isEmpty());
    }
}

```

### 瀹炵幇2
```java
package com.jie.collection;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public class MyCollection02 {
    public static void main(String[] args) {
        // 鏂板缓Collection瀵硅薄
        Collection collection = new ArrayList();
        Student s1 = new Student("寮犱笁", 18);
        Student s2 = new Student("鏉庡洓",20);
        Student s3 = new Student("鐜嬩簲",22);
        // 娣诲姞鍏冪礌
        collection.add(s1);
        collection.add(s2);
        collection.add(s3);
        System.out.println("鍏冪礌涓暟: " + collection.size());
        System.out.println(collection.toString());
        //鍒犻櫎
//        collection.remove(s1);
//        collection.clear(); // 鍙槸鍒犻櫎闆嗗悎涓殑鏁版嵁锛屼笉浼氬垹闄ゅ璞?
//        System.out.println("鍒犻櫎涔嬪悗闀垮害"+ collection.size());
        // 閬嶅巻
        Iterator iterator = collection.iterator();
        while (iterator.hasNext()) {
            System.out.println(iterator.next());
        }
        for (Object o : collection) {
            Student s = (Student) o;
            System.out.println(s);
        }

        //鍒ゆ柇
        System.out.println(collection.contains(s1));
        System.out.println(collection.isEmpty());
    }
}

```

## 杩唬鍣?Iterator
+ 涓撻棬鐢ㄦ潵閬嶅巻闆嗗悎鐨勪竴绉嶆柟寮?
    - 鏈変竴涓寚閽堟寚鍚憂ext
    - hasNext()锛氭湁涓嬩竴涓厓绱犲悧锛熷鏋滄湁鍒欒繑鍥瀟rue锛屽惁鍒欒繑鍥瀎alse
    - hasPrevious()锛氫粠闆嗗悎灏鹃儴寮€濮嬪垽鏂槸鍚﹀瓨鍦?
    - next() 锛氳幏鍙栦笅涓€涓厓绱?
    - remove()锛氬垹闄ゅ厓绱狅紝鍦ㄨ凯浠ｈ繃绋嬩腑涓嶈兘浣跨敤collection鍒犻櫎鏂规硶

```java
// 浣跨敤杩唬鍣紙涓撻棬鐢ㄦ潵閬嶅巻闆嗗悎鐨勬柟寮忥級
Iterator iterator = collection.iterator();
while (iterator.hasNext()) {
// while (listIterator.hasPrevious()) {
    String s = (String) iterator.next();
    System.out.println(iterator.next());
    // collection.remove(s);  //鍦ㄨ凯浠ｈ繃绋嬩腑涓嶈兘浣跨敤collection鍒犻櫎鏂规硶
    it.remove();
}
```

## 鏋氫妇鍣?<font style="color:rgb(0, 0, 0);background-color:rgb(238, 238, 238);">IEnumerator</font>
### 浠€涔堟槸鏋氫妇鍣?
瀹炵幇IEnumerator鎺ュ彛鐨勭被灏辨槸鏋氫妇鍣ㄣ€?

### 鏋氫妇鍣ㄤ綔鐢?
1銆佹灇涓惧櫒灏卞儚鏄簭鍒椾腑鐨勨€滄父鏍団€濇垨鈥滀功绛锯€濄€傚彲浠ユ湁澶氫釜鈥滀功绛锯€濓紝绉诲姩鍏朵腑浠讳綍涓€涓兘鍙互鏋氫妇闆嗗悎锛屼笌鍏朵粬鏋氫妇鍣ㄤ簰涓嶅奖鍝嶃€傜敤鏉ラ亶鍘嗘暟鎹粨鏋勶紙琛ㄩ摼銆佹暟缁勩€侀泦鍚堢被鎴愬憳绛夛級銆?

2銆佷互涓嬫渚嬫暟缁勪綔涓哄唴閮ㄦ暟鎹粨鏋勶紝鍚庢湡涔熷彲浠ユ崲鎴愭暟缁勶紝閾捐〃锛屾爲锛屽浘绛夌瓑锛岃€屼娇鐢ㄨ€呭嵈涓嶇敤鍏冲績杩欎簺鍐呴儴鏁版嵁琛ㄧず锛岃繖灏辨槸杩唬鍣ㄧ殑濡欏鎵€鍦ㄣ€?

```java
// 閬嶅巻 浣跨敤鏋氫妇鍣?
Enumeration e = v.elements();
while (e.hasMoreElements()) {
    String s = (String) e.nextElement();
    System.out.println(e.nextElement());
}
```

## 姣旇緝鍣?comparator
+ 瀹炵幇瀹氬埗姣旇緝

## LIst瀛愭帴鍙?
### 鍩烘湰淇℃伅
+ 鐗圭偣锛氭湁搴忥紝鏈変笅鏍囷紝鍏冪礌鍙互閲嶅
+ 鏂规硶
    - void add(int index, Object o)  // 鍦╥ndex浣嶇疆鎻掑叆瀵硅薄o
    - boolean addAll(int index锛孫bject o)  //灏嗕竴涓泦鍚堜腑鐨勪竴涓厓绱犳坊鍔犲埌姝ら泦鍚堜腑鐨刬ndex浣嶇疆
    - Object get(int index) //杩斿洖闆嗗悎涓寚瀹氫綅缃殑鍏冪礌
    - List subList(int formIndex, int toIndex)  //鍙戦偅浼歠ormIndex鍜宼oIndex涔嬮棿闆嗗悎鐨勫厓绱?

### 鎺ュ彛瀹炵幇
```java
package com.jie.collection;

import java.util.ArrayList;
import java.util.List;

public class MyList {
    public static void main(String[] args) {
        // 鍒涘缓闆嗗悎
        List list = new ArrayList();
        // 娣诲姞鏁版嵁
        list.add(10);
        list.add(20);
        list.add(30);
        list.add(40);
        list.add(50);
        System.out.println("鍏冪礌鏁版嵁"+list.size());
        System.out.println(list.toString());
        
        // 鍒犻櫎鎿嶄綔 鏍规嵁index锛堜笅鏍?绱㈠紩锛夊垹闄?
        list.remove(0);
        // 杞崲涓篛bject绫诲瀷鍒犻櫎
        list.remove((Object) 20);
        System.out.println(list.size());
        System.out.println(list.toString());
        
        // subList 鏂规硶 杩斿洖瀛愰泦鍚? 鍚ご涓嶅惈灏?
        list.subList(0, 2);
    }
}

```

## ArrayList
### 鏁扮粍闆嗗悎
+ 鏁扮粍缁撴瀯瀹炵幇锛屾煡璇㈠揩锛屽垹鍑忔參
+ 杩愯鏁堢巼蹇紝绾跨▼涓嶅畨鍏?
+ 瀛樺偍缁撴瀯锛氭暟缁?

### ArrayList浣跨敤
## Vector
### 鏁扮粍缁撴瀯
+ 鏁扮粍缁撴瀯瀹炵幇锛屾煡璇㈠揩锛屽垹鍑忔參
+ 杩愯鏁堢巼鎱紝绾跨▼瀹夊叏

### 瀹炵幇鏂规硶
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
        
        // 閬嶅巻 浣跨敤鏋氫妇鍣?
        Enumeration e = v.elements();
        while (e.hasMoreElements()) {
            String s = (String) e.nextElement();
            System.out.println(e.nextElement());
        }
        
        // 鑾峰彇绗竴鍏冪礌
        v.firstElement();
        // 鑾峰彇鏈€鍚庝竴涓厓绱?
        v.lastElement();
        System.out.println(v.firstElement());
        System.out.println(v.lastElement());
    }
}

```

## LinkedList
### 閾捐〃缁撴瀯瀹炵幇
+ 澧炲垹蹇紝鏌ヨ鎱?
+

### 鍩烘湰瀹炵幇
```java
package com.jie.collection;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.ListIterator;

public class MyLinkedList {
    public static void main(String[] args) {
        // 鍒涘缓闆嗗悎
        LinkedList list = new LinkedList();
        Student s1 = new Student("閮瘜鍩?, 20);
        Student s2 = new Student("鍒樺痉鍗?, 20);
        Student s3 = new Student("榛庢槑", 20);
        // 娣诲姞鏁版嵁
        list.add(s1);
        list.add(s2);
        list.add(s3);
        System.out.println(list.size());

//        // 鍒犻櫎
//        list.remove(s2);
//        list.clear();
//        System.out.println(list.size());

        // 閬嶅巻
        // for閬嶅巻
        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i));
        }
        // 澧炲己for
        for ( Object o : list ) {
            Student s = (Student) o;
            System.out.println(o);
        }
        // 杩唬鍣?Iterator
        Iterator iterator = list.iterator();
        while (iterator.hasNext()) {
            Student s = (Student) iterator.next();
            System.out.println(s);
        }
        // List杩唬鍣?ListIterator
        ListIterator listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            Student s = (Student) listIterator.next();
            System.out.println(s);
        }

        // 鍒ゆ柇鏄惁瀛樺湪锛屾槸鍚︿负绌?
        System.out.println(list.contains(s1));
        System.out.println(list.isEmpty());

        // 鑾峰彇绱㈠紩
        System.out.println(list.indexOf(s2));
    }
}

```

# 娉涘瀷
## 绠€浠?
+ 鏈川鏄弬鏁板寲绫诲瀷锛屾妸绫诲瀷浣滀负鍙傛暟浼犻€?
+ 甯歌鐨勫舰寮忔湁娉涘瀷绫?锛屾硾鍨嬫帴鍙ｏ紝娉涘瀷鏂规硶
+ 璇硶
    - <T,.....> T绉颁负绫诲瀷鍗犱綅绗︼紝琛ㄧず寮曠敤鍨嬫暟鎹被鍨?
+ 濂藉
    - 鎻愰珮浠ｇ爜鐨勯噸鐢ㄦ€?
    - 闃叉绫诲瀷杞崲寮傚父锛屾彁楂樹唬鐮佺殑瀹夊叏鎬?

## 娉涘瀷绫?
+ 璇硶锛氱被鍚?T>
+ T 锛氱被鍨嬪崰浣嶇锛岃〃绀轰竴绉嶅紩鐢ㄧ被鍨嬶紝濡傛灉缂栧啓澶氫釜鐢ㄩ€楀彿闅斿紑
+ 涓嶅悓娉涘瀷绫诲瀷瀵硅薄涔嬮棿涓嶈兘鐩镐簰璧嬪€?

```java
package com.jie.generic;
// 娉涘瀷绫?
public class Damo01<T> {
    // 浣跨敤娉涘瀷T 鍒涘缓鍙橀噺
    T t;

    // 浣跨敤娉涘瀷浣滀负鏂规硶鐨勫弬鏁?
    public void show(T t){
        System.out.println(t);
    }

    // 浣跨敤娉涘瀷浣滀负鏂规硶鐨勮繑鍥炲€?
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

## 娉涘瀷鎺ュ彛
+ 璇硶 锛氭帴鍙ｅ悕<T>
+ 涓嶈兘鍒涘缓娉涘瀷闈欐€佸父閲?
+ 鍦ㄥ疄鐜版帴鍙ｆ椂鍙互鍏堢粰瀹氬弬鏁扮被鍨嬶紝涔熷彲浠ュ湪瀹炰緥鍖栫殑鏃跺€欑粰瀹氬弬鏁扮被鍨?

```java
package com.jie.generic;

public interface Damo02<T>{
    String name = "寮犱笁";
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

## 娉涘瀷鏂规硶
+ 璇硶 锛氭柟娉?, <T> 杩斿洖鍊肩被鍨?
+ 鍙傛暟绫诲瀷鏍规嵁浼犲叆鍙傛暟鐨勭被鍨嬪喅瀹?

```java
package com.jie.generic;

public class Damo03 {
    public <T> T show(T t){
        System.out.println("娉涘瀷鏂规硶"+t);
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
# 娉涘瀷闆嗗悎
## 鍩烘湰姒傚康
+ 姒傚康 锛氬弬鏁板寲绫诲瀷锛岀被鍨嬪畨鍏ㄧ殑闆嗗悎锛屽己鍒堕泦鍚堝厓绱犵殑绫诲瀷蹇呴』涓€鑷?
+ 鐗圭偣 锛?
    - 缂栬瘧鏃跺嵆鍙鏌ワ紝鑰岄潪杩愯鏃舵姏鍑哄紓甯?
    - 璁块棶鏃讹紝涓嶅繀绫诲瀷杞崲
    - 涓嶅悓娉涘瀷涔嬮棿寮曠敤涓嶈兘鐩镐簰璧嬪€硷紝娉涘瀷涓嶅瓨鍦ㄥ鎬?

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
        students.add(new Student("鍒樺痉鍗?, 20));
        students.add(new Student("榛庢槑", 20));
        students.add(new Student("閮瘜鍩?, 20));

        for (Student s : students) {
            System.out.println(s);
        }
    }
}

```

# set瀛愭帴鍙?
## 鍩烘湰姒傚康
+ 鐗圭偣 锛氭棤搴忥紝鏃犱笅鏍囷紝鍏冪礌涓嶅彲閲嶅
+ 鏂规硶锛氬叏閮ㄧ户鎵胯嚜Collection涓殑鏂规硶

## 鍩烘湰瀹炵幇
```java
package com.jie.set;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// 娴嬭瘯set鎺ュ彛鐨勪娇鐢?
public class Damo01 {
    public static void main(String[] args) {
        // 鍒涘缓闆嗗悎
        Set<String> set = new HashSet<>();

        // 娣诲姞鏁版嵁
        set.add("鍗庝负");
        set.add("1");
        set.add("2");
        System.out.println(set.size());
        System.out.println(set.toString());

        // 鍒犻櫎鏁版嵁
        set.remove("1");
        System.out.println(set.toString());
        
        // 閬嶅巻
        // 澧炲己for
        for (String s : set) {
            System.out.println(s);
        }
        // 杩唬鍣?
        Iterator<String> iterator = set.iterator();
        while (iterator.hasNext()) {
            System.out.println(iterator.next());
        }
        
        // 鍒ゆ柇
        System.out.println(set.contains("2"));
        System.out.println(set.isEmpty());
        
    }
}

```

# HashSet绫?
## 鍩烘湰姒傚康
+ 鍩轰簬HashCode璁＄畻鍏冪礌瀛樻斁浣嶇疆
+ 褰撳瓨鍏ユ暟鎹殑鍝堝笇鐮佺浉鍚屾椂锛屼細璋冪敤equals杩涜纭锛屽鏋滀负true锛屽垯鎷掔粷鍚庤€呭瓨鍏?
+ 瀛樺偍缁撴瀯锛氬搱甯岃〃锛堟暟缁?閾捐〃+绾㈤粦鏍戯級

## 绠€鍗曞疄鐜?
```java
package com.jie.set;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// 娴嬭瘯set鎺ュ彛鐨勪娇鐢?
public class Damo01 {
    public static void main(String[] args) {
        // 鍒涘缓闆嗗悎
        Set<String> set = new HashSet<>();

        // 娣诲姞鏁版嵁
        set.add("鍗庝负");
        set.add("1");
        set.add("2");
        System.out.println(set.size());
        System.out.println(set.toString());

        // 鍒犻櫎鏁版嵁
        set.remove("1");
        System.out.println(set.toString());
        
        // 閬嶅巻
        // 澧炲己for
        for (String s : set) {
            System.out.println(s);
        }
        // 杩唬鍣?
        Iterator<String> iterator = set.iterator();
        while (iterator.hasNext()) {
            System.out.println(iterator.next());
        }
        
        // 鍒ゆ柇
        System.out.println(set.contains("2"));
        System.out.println(set.isEmpty());
        
    }
}

```

## 瀛樺偍杩囩▼
+ 鏍规嵁hashcode璁＄畻淇濆瓨鐨勪綅缃紝濡傛灉浣嶇疆涓虹┖锛屽垯鐩存帴淇濆瓨锛屽鏋?涓嶄负绌烘墽琛岀殑绗簩姝?
+ 鍐嶆墽琛宔quals鏂规硶锛屽鏋渆quals鏂规硶涓簍rue锛屽垯璁や负鏄噸澶嶏紝鍚﹀垯鍒欏舰鎴愰摼琛?

```java
package com.jie.set;

import java.util.HashSet;
import java.util.Iterator;

public class Demo03 {
    public static void main(String[] args) {
        // 鍒涘缓闆嗗悎
        HashSet<Person> set = new HashSet<>();
        // 娣诲姞鏁版嵁
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

        // 鍒犻櫎
        set.remove(new Person("lisi", 18););
        System.out.println(set.size());

        // 閬嶅巻
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

# TreeSet绫?
+ 鍩轰簬鎺掑垪椤哄簭瀹炵幇鍏冪礌涓嶉噸澶?
+ 瀹炵幇浜哠ortedSet鎺ュ彛锛屽闆嗗悎鍏冪礌鑷姩鎺掑簭
+ 鍏冪礌瀵硅薄鐨勭被鍨嬪繀椤诲疄鐜癈omparable鎺ュ彛锛屾寚瀹氭帓搴忚鍒?

```java
package com.jie.set;

import java.util.Iterator;
import java.util.TreeSet;

//
public class Damo05 {
    public static void main(String[] args) {
        // 鍒涘缓闆嗗悎
        TreeSet<Person> treeSet = new TreeSet<>();
        Person person = new Person("zhangsan", 18);
        Person person1 = new Person("lisi", 18);
        Person person2 = new Person("wangwu", 18);
        // 娣诲姞鏁版嵁
        treeSet.add(person);
        treeSet.add(person1);
        treeSet.add(person2);
        System.out.println("鍏冪礌涓暟" + treeSet.size());
        System.out.println(treeSet.toString());

        //鍒犻櫎鏁版嵁
        treeSet.remove(person);

        // 閬嶅巻
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

# Map闆嗗悎
## 鐗圭偣
+ 鐢ㄤ簬瀛樺偍浠绘剰閿€煎锛坘ey-value锛?
+ 閿細鏃犲簭锛屾棤涓嬫爣锛屼笉鑳介噸澶?
+ 鍊硷細鏃犲簭锛屾棤涓嬫爣锛屽厑璁搁噸澶?

## 甯哥敤鏂规硶
+ V put(K key, V value)  //灏嗗璞″瓨鍏ュ埌闆嗗悎涓紝鍏宠仈閿€硷紝key閲嶅锛屽垯瑕嗙洊鍘熷€?
+ Object get(Object key)  //鏍规嵁閿幏鍙栧搴旂殑鍊?
+ entrySet<K> //杩斿洖鎵€鏈夌殑棰漦ey
+ Collection<V> values()  //杩斿洖鎵€鏈夌殑鍊肩殑Collection闆嗗悎
+ Set<Map.Entry<K, V>>  //閿€煎尮閰嶇殑Set闆嗗悎

## 鍩虹瀹炵幇
```java
package com.jie.map;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class MyMap {
    public static void main(String[] args) {
        Map<String, String> map = new HashMap<String, String>();
        map.put("cn", "涓浗");
        map.put("uk", "鑻卞浗 ");
        map.put("usa", "缇庡浗");

        System.out.println(map.size());
//        map.remove("cn");
        // 閬嶅巻鏂规硶
        // 鍏堟嬁鍒版墍鏈夌殑key鐨勯泦鍚堬紝鍐嶄娇鐢ㄨ凯浠ｅ櫒閬嶅巻
        Set<String> set = map.keySet();
        Iterator<String> iterator = set.iterator();
        while (iterator.hasNext()) {
            String key = iterator.next();
            String value = map.get(key);
            System.out.println(key + "=" + value);
        }
        //浣跨敤entrySet() 鏂规硶
        Set<Map.Entry<String, String>> entrySet = map.entrySet();
        for (Map.Entry<String, String> entry : entrySet) {
            String key = entry.getKey();
            String value = entry.getValue();
            System.out.println(key + "=" + value);
        }

        // 鍒ゆ柇鏄惁瀛樺湪key 鎴?value
        System.out.println(map.containsKey("cn"));
        System.out.println(map.containsValue("涓浗"));
    }
}

```

# HashMap浣跨敤
## 鐗圭偣
+ 绾跨▼涓嶅畨鍏紝杩愯鏁堢巼蹇紝
+ 鍏佽鐢╪ull浣滀负key鎴栨槸value
+ 瀛樺偍缁撴瀯锛氬搱甯岃〃锛堟暟缁?閾捐〃+绾㈤粦鏍戯級

## 鍩烘湰瀹炵幇
```java
package com.jie.map;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class MyMap {
    public static void main(String[] args) {
        Map<String, String> map = new HashMap<String, String>();
        map.put("cn", "涓浗");
        map.put("uk", "鑻卞浗 ");
        map.put("usa", "缇庡浗");

        System.out.println(map.size());
//        map.remove("cn");
        // 閬嶅巻鏂规硶
        // 鍏堟嬁鍒版墍鏈夌殑key鐨勯泦鍚堬紝鍐嶄娇鐢ㄨ凯浠ｅ櫒閬嶅巻
        Set<String> set = map.keySet();
        Iterator<String> iterator = set.iterator();
        while (iterator.hasNext()) {
            String key = iterator.next();
            String value = map.get(key);
            System.out.println(key + "=" + value);
        }
        //浣跨敤entrySet() 鏂规硶
        Set<Map.Entry<String, String>> entrySet = map.entrySet();
        for (Map.Entry<String, String> entry : entrySet) {
            String key = entry.getKey();
            String value = entry.getValue();
            System.out.println(key + "=" + value);
        }

        // 鍒ゆ柇鏄惁瀛樺湪key 鎴?value
        System.out.println(map.containsKey("cn"));
        System.out.println(map.containsValue("涓浗"));
    }
}

```

# Hashtale
绾跨▼瀹夊叏锛岃繍琛屾晥鐜囧揩锛屼笉鍏佽key鍜寁alue鍑虹幇null

# TreeMap
鍩烘湰鍜宼reeSet鐨勬柟娉曠浉鍚?

# Collections宸ュ叿绫?
collections.sort(list)锛氬闆嗗悎杩涜鎺掑簭

binarySearch(list, i)锛氫簩鍒嗘煡鎵?

copy(bast, list)锛氬皢list澶嶅埗鍒版妸bast涓紝涓よ€呯殑澶у皬闇€瑕佷竴鑷?

reverse(list): 鍙嶈浆list鐨勪綅缃?

shuffle(list) 锛氭墦涔眑ist鐨勬暟鎹?

list.toArray(): 灏唋ist杞负鏁扮粍

Array.asList(array)锛氬皢鏁扮粍杞负list  //杞畬鍚庣殑鏁扮粍鏄彈闄愭暟缁勶紝涓嶈兘杩涜娣诲姞鍜屽垹闄?
', NOW());
SET @last_note_id = LAST_INSERT_ID();

INSERT INTO 
ote (uthor_id, 	itle, content, created_at)
VALUES (1002, 'Django', '### URL缁勬垚
`scheme://host:port/path/?query-strint=xxx#anchor`

+ scheme:浠ｈ〃鐨勬槸璁块棶鍗忚锛屼竴鑸负http鎴栬€卙ttps浠ュ強ftp绛?
+ host锛氫富鏈哄悕锛屽煙鍚嶏紝姣斿`www.baidu.com`
+ port: 绔彛鍙凤紝http鍗忚鏄?0绔彛锛宧ttps鏄?43绔彛
+ path锛氭煡璇㈣矾寰勶紝`www.jianhu.com/trending/new`涓殑`/trending/new`鏄煡璇㈣矾寰?
+ query-string锛氭煡璇㈠瓧绗︿覆锛屼紶鍙傦紝`www.baidu.com/s?wd=python`涓璥wd=python`鏄煡璇㈠瓧绗︿覆,wd鏄弬鏁板悕锛宲ython鏄弬鏁板€?
+ anchor锛氶敋鐐癸紝鍚庡彴涓€鑸笉鐢ㄧ锛屽墠娈电敤鏉ュ仛椤甸潰瀹氫綅鐨?

娉ㄦ剰锛歶rl涓殑鎵€鏈夊瓧绗﹂兘鏄疉SCII瀛楃闆?

### 绗竴涓狣jango椤圭洰
#### 1.鍒涘缓Django椤圭洰
##### 鐢ㄥ懡浠よ鍒涘缓
鍒涘缓椤圭洰锛氭墦寮€缁堢锛岃繘鍏jango椤圭洰鐨勬枃浠跺す涓娇鐢ㄥ懡浠django-admin startproject [椤圭洰鍚嶇О]`鍗冲彲鍒涘缓

##### 鍦≒yCharm涓垱寤?
<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1741868609582-50072c03-99ca-47cf-8483-a9e12c9b7eed.png" width="398.5" title="" crop="0,0,1,1" id="ub9be461b" class="ne-image">

#### 2.杩愯Django椤圭洰
鐢ㄨ繃鍛戒护杩愯锛歱ython manage.py runserver

閫氳繃pycharm杩愯锛氱洿鎺ョ偣鍑诲彸涓婅鐨勭豢鑹蹭笁瑙?

#### 椤圭洰缁撴瀯浠嬬粛
`manage.py`鍜岄」鐩氦浜掔殑鍩烘湰涓婇兘鏄熀浜庤繖涓枃浠剁殑

`settigs.py`鏈」鐩殑璁剧疆椤?

`urls.py`閰嶇疆URL璺敱

`wsgl.py`椤圭洰璇勮WSGI鍗忚鍏煎鐨剋eb鏈嶅姟鍣ㄥ叆鍙ｏ紝閮ㄧ讲鐨勬椂鍊欑敤

#### project锛堥」鐩級鍜宎pp锛堟ā鍧楋級鐨勫叧绯?
app鏄痙jango椤圭洰鐨勭粍鎴愰儴鍒嗭紝涓€涓狝PP浠ｈ〃椤圭洰涓殑涓€涓ā鍧楋紝鎵€鏈塽rl璇锋眰鐨勫搷搴旈兘鏄湁app鏉ュ鐞?

閫氳繃鍛戒护鍒涘缓app

`python manage.py startapp [app鍚峕`

#### 瀹夎app
鍦ㄩ」鐩殑settings.py鏂囦欢涓殑INSTALLEO_APPS涓姞鍏app鍚峕

```python
INSTALLEO_APPS = [
    鈥︹€︼紝
    ''app鍚?
]
```

#### url涓庤鍥惧嚱鏁扮殑鏄犲皠
```python
from django.shortcuts import HttpResponse
#鍒涘缓涓€涓鍥惧嚱鏁拌鍥惧嚱鏁版帴鏀朵竴涓狧ttpRequest瀵硅薄
#浣滀负鍙傛暟锛屽苟杩斿洖涓€涓狧ttpResponse瀵硅薄
def index(request):
    return HttpRespons("hello world!")

urlpatterns = [
    #http://lochost:8000/s
    path("s", index)
]
```

#### url涓惡甯﹀弬鏁?
1. 閫氳繃鏌ヨ瀛楃涓诧紙query string锛?https://www.baidu.com/s?wd=python&a=1

```python
#鍦╞ook鐨刟pp涓殑views.py鏂囦欢
from django.shortcuts import render, HttpResponse

def book_detail_query_string(request):
    book_id = request.GET.get(''id'')
    name = request.GET.get(''name'')
    return HttpResponse(f"鍥句功id鏄細{book_id},鍚嶇О鏄細{name}")

#鍦ㄥ垱寤虹殑椤圭洰涓殑urls.py涓?
from book views   #瀵煎叆[book]app鐨勮鍥炬枃浠秜iews.py
#http://127.0.0.1:8000/book?id=x&name=xx
urlpatterns = [
    path(''book'', views.book_detil_query_string)
]
```

2. 鍦╬ath涓惡甯︼細http://127.0.0.1:8000/book/2

```python
#鍦╞ook鐨刟pp涓殑views.py鏂囦欢
from django.shortcuts import render, HttpResponse

def book_detail_query_string(request, book_id):
    return HttpResponse(f"鍥句功id鏄細{book_id}")
    
#鍦ㄥ垱寤虹殑椤圭洰涓殑urls.py涓?
from book views   #瀵煎叆[book]app鐨勮鍥炬枃浠秜iews.py
#http://127.0.0.1:8000/book/1
urlpatterns = [
    #鍦╞ook_id鍓嶆寚瀹氬弬鏁扮被鍨嬬敤涓ょ偣濂藉锛宨nt銆乻lug銆乽uid銆乸ath绛?
    #1銆佷互鍚庡啀娴忚鍣ㄤ腑锛屽鏋渂ook_id鏄竴涓潪鏁村舰锛屼細鍑哄厛404閿欒
    #2銆佸湪瑙嗗浘鍑芥暟涓殑鍒扮殑book_id鏄暣褰紝鍚﹀垯榛樿涓簊tr
    path(''book/<int:book_id>'', views.book_detall_path)
]
```

#### path鍑芥暟
path鍑芥暟瀹氫箟涓猴細`path(route,view,name=None,kwargs=None)`

1. `route`鍙傛暟锛歶rl鐨勫尮閰嶈鍒欙紝杩欎釜鍙傛暟涓彲浠ユ寚瀹歶rl涓渶瑕佷紶閫掔殑鍙傛暟銆備紶閫掑弬鏁版槸鐢?>鏉ヨ繘琛屾寚瀹氱殑锛屽苟涓斿湪浼犻€掑弬鏁版椂鍙互鎸囧畾鍙傛暟绫诲瀷锛屽叾涓父鐢ㄧ殑绫诲瀷鏈変互涓嬪嚑绉嶏細
    - `str`闈炵┖瀛楃涓诧紝榛樿鐨勮浆鎹㈠櫒锛屼絾涓嶈兘鍖呭惈鏂滄潬`/`
    - `int`浠绘剰鐨勯浂鎴栨鏁扮殑鏁村舰锛屽埌瑙嗗浘鍑芥暟涓氨鏄竴涓猧nt绫诲瀷
    - `slug`鐢辫嫳鏂囦腑鐨勬í鏉燻-`鎴栦笅鍒掔嚎`_`杩炴帴鐨勮嫳鏂囧瓧绗︽垨鑰呮暟瀛楄€屾垚鐨勫瓧绗︿覆锛屼緥濡俙abc-def-11-233`
    - `uuid`鍖归厤`uuid`瀛楃涓?
    - `path`鍖归厤鍒嗘帶鐨勮嫳鏂囧瓧绗︿覆锛屽彲浠ュ寘鍚枩鏉燻/`
2. `view`鍙傛暟锛氬彲浠ヤ负涓€涓鍥惧嚱鏁版垨鑰呮槸`绫昏鍥?as_view()`鎴栬€呮槸`dango.urls.include()`鍑芥暟鐨勮繑鍥炲€?
3. `name`鍙傛暟锛氳繖涓弬鏁版槸缁欒繖涓猽rl鍙栦釜鍚嶅瓧鐨勶紝鍦ㄩ」鐩瘮杈冨ぇ锛寀rl姣旇緝澶氱殑鏃跺€欑敤澶勫緢澶?

#### URL涓寘鍚彟澶栦竴涓猽rls妯″潡锛?
鍦ㄩ」鐩腑涓嶅彲鑳藉彧鏈変竴涓猘pp锛屽鏋滄妸姣忎釜app鐨剉iews涓殑瑙嗗浘閮芥斁鍦╱rls.py涓繘琛屾槧灏勶紝鑲畾浼氳浠ｇ爜鏄惧緱闈炲父涔憋紝鍥犳django缁欐垜浠彁渚涗簡涓€涓柟娉曪紝鍙互鍦╝pp鍐呴儴鍖呭惈鑷繁鐨剈rl鍖归厤瑙勫垯锛岃€屽湪椤圭洰鐨剈rls.py涓啀缁熶竴鍖呭惈杩欎釜app鐨剈rls锛屼娇鐢ㄨ繖涓妧鏈渶瑕佸€熷姪`include`鍑芥暟

```python
#鍦紙movle锛塧pp涓垱寤虹殑urls.py涓殑浠ｇ爜
from diango.urls improt path
from . import views

#鎸囧畾搴旂敤鍚嶇О锛堝簲鐢ㄥ懡鍚嶇┖闂达級
app_name = "movle"

urlpatterns = [
    path(''list'', views.movle_lsit, name=''movle_list'')
    path(''detail/<int:movle_id>'', views.movle_detail, name=''movle_detail'')
]

#鍦紙movle锛塧pp涓璿iews.py鐨勪唬鐮?
from django.shortcuts import render,HttpResponse

def movle_list(request):
    return HttpResponse("鐢靛奖鍒楄〃")

def movle_detail(request, movle_id):
    return HttpResponse(f"鎮ㄨ幏鍙栫殑鐢靛奖id鏄細{movle_id}")

#鍦ㄩ」鐩腑鐨剈rls.py涓殑浠ｇ爜
from django.urls import path,include


urlpatterns = [
    path(''move/'', include(''movle.urls''))
]

```

#### url鍙嶈浆
```python
from django.urls import reverse,path
from django.shortcuts import HttpResponse

def index(request):
    reverse("book")              ")
    return HttpResponse("hello world")

```

鍙互閫氳繃reverse鏉ュ疄鐜版兂鍙嶈浆鐨剈rl

```python
reverse("list")
> /book/list/
```

濡傛灉鏈夊簲鐢ㄥ懡鍚嶇┖闂存垨鑰呮湁瀹炰緥鍛藉悕绌洪棿锛岄偅涔堝簲璇ュ湪鍙嶈浆鐨勬椂鍊欏姞涓婂懡鍚嶇┖闂?

```python
reverse(''book:list'')
> /book/list/
```

濡傛灉杩欎釜url涓渶瑕佷紶閫掑弬鏁帮紝閭ｄ箞鍙互浣跨敤kwargs鏉ヤ紶閫掑弬鏁?

```python
reverse("book:detail", kwargs={"book_id":1})
>/book/detail/1
```

濡傛灉鎯宠娣诲姞鏌ヨ瀛楃涓茬殑鍙傛暟鍙兘鎵嬪姩娣诲姞

```python
login_url = reverse(''login'') + "?next=/"
```

### 妯＄増
#### 妯＄増浠嬬粛
##### DTL涓庢櫘閫氱殑HTML鏂囦欢鐨勫尯鍒?
DTL妯＄増鏄竴绉嶅甫鏈夌壒娈婅娉曠殑HTML鏂囦欢锛岃繖涓狧TML鏂囦欢鍙互琚獶jango缂栬瘧锛屽彲浠ヤ紶閫掑弬鏁拌繘鍘伙紝瀹炵幇鏁版嵁鍔ㄦ€佸寲锛屽湪缂栬瘧瀹屾垚鍚庯紝鐢熸垚涓€涓櫘閫氱殑HTML鏂囦欢锛岀劧鍚庡彂閫佺粰瀹㈡埛绔?

##### 娓叉煋妯＄増
`render_to_string`:鎵惧埌妯＄増锛岀劧鍚庡鏈彮缂栬瘧鍚庢覆鏌撴垚python鐨勫瓧绗︿覆鏍煎紡锛屾渶鍚庨€氳繃HttpResponse绫诲寘瑁呮垚涓€涓狧ttpResponse瀵硅薄杩斿洖鍥炲幓銆?

```python
from django.template.loader import render_to_string
from django.http.import HtpResponse
def book_detail(request, book_id):
    html = render_to_string("detail.html")
    return HttpResponse(html)
```

鐩存帴灏嗘ā鐗堟覆鏌撴垚瀛楃涓插拰鍖呰鎴怘ttpResponse瀵硅薄涓€姝ュ埌浣嶅畬鎴?

```python
from django.startcuts import render
def book_list(request):
    return render(request,''list.html'')
```

##### 妯＄増鏌ユ壘璺緞閰嶇疆
鍦ㄩ」鐩殑settings.py鏂囦欢涓€傛湁涓€涓猅EMPLATES閰嶇疆锛岃繖涓厤缃寘鍚簡妯℃澘寮曟搸鐨勯厤缃紝妯℃澘鏌ユ壘璺緞鐨勯厤缃紝妯℃澘涓婁笅鏂囩殑閰嶇疆绛?

+ `DIRS`:杩欐槸涓€涓垪琛紝鍦ㄨ繖涓垪琛ㄤ腑鍙互瀛樻斁鎵€鏈夌殑妯℃澘璺緞锛屼互鍚庡湪瑙嗗浘涓娇鐢╮ender鎴栬€卹ender_to_string娓叉煋妯℃澘鐨勬椂鍊欙紝浼氬湪杩欎釜鍒楄〃鐨勮矾寰勪腑鏌ユ壘妯℃澘銆?
+ `APP_DIRS`:榛樿涓篢rue锛岃繖涓缃负True鍚庯紝浼氬湪INSTALLED_APPS鐨勫畨瑁呬簡鐨凙PP涓嬬殑templates鏂囦欢澶逛腑鏌ユ壘妯℃澘銆?
+ 鏌ユ壘椤哄簭锛氭瘮濡備唬鐮乺ender(''1ist.htm1'')銆傚厛浼氬湪DIRS杩欎釜鍒楄〃涓緷娆℃煡鎵捐矾寰勪笅鏈夋病鏈夎繖涓ā鏉匡紝濡傛灉鏈夛紝灏辫繑鍥炪€傚鏋淒IRS鍒楄〃涓墍鏈夌殑璺緞閮芥病鏈夋壘鍒帮紝閭ｄ箞浼氬厛妫€鏌ュ綋鍓嶈繖涓鍥炬墍澶勭殑app鏄惁宸茬粡瀹夎锛屽鏋滃凡缁忓畨瑁呬簡锛岄偅涔堝氨鍏堝湪褰撳墠杩欎釜app涓嬬殑templates鏂囦欢澶逛腑鏌ユ壘妯℃澘锛屽鏋滄病鏈夋壘鍒帮紝閭ｄ箞浼氬湪鍏朵粬宸茬粡瀹夎浜嗙殑app涓煡鎵俱€傚鏋滄墍鏈夎矾寰勪笅閮芥病鏈夋壘鍒帮紝閭ｄ箞浼氭姏鍑轰竴涓猅emplateDoesNotExist鐨勫紓甯搞€?

#### DTL妯℃澘璇硶
##### 鍙橀噺
鍙橀噺鐨勫懡鍚嶈鑼冨拰python绫讳技锛屽彧鑳芥槸鑻辨枃瀛楁瘝锛岄樋鎷変集鏁板瓧鍜屼笅鍒掔嚎鐨勭粍鍚堬紝涓嶈兘鍑虹幇鏍囩偣绗﹀彿鍜岀壒娈婂瓧绗︺€傚彉閲忛渶瑕侀€氳繃瑙嗗浘鍑芥暟鐨勬覆鏌擄紝瑙嗗浘鍑芥暟鍦ㄤ娇鐢╮ender鎴杛ender_to_string鐨勬椂鍊欏彲浠ヤ紶閫掍竴涓猚ontext鐨勫弬鏁帮紝杩欎釜鍙傛暟鏄竴涓瓧鍏哥被鍨嬶紝浠ュ悗鍐嶆ā鐗堜腑鐨勫彉閲忓氨浠庤繖涓瓧鍏镐腑璇诲彇鍊肩殑

```python
#profile.html妯℃澘浠ｇ爜
<p>{{ username }}</p>
<p>鍥句功鍚嶇О锛歿{ book.name }}</p>
<p>涓嬫爣涓?鍥句功鐨勫悕绉皗{ books.1.name }}</p>
<p>濮撳悕涓猴細{{ person.realname }}</p>

#views.py浠ｇ爜
def profile(request):
    #1銆佹櫘閫氬弬鏁?
    username = ''鐭ヤ簡璇惧爞''
    #2銆佸瓧鍏哥被鍨?
    book = {''name'': "姘存祾浼?,''auther'': "鏂借€愬旱"}
    #3銆佸垪琛?
    books = [
        {''name'': "姘存祾浼?,''auther'': "鏂借€愬旱"},
        {''name'': "涓夊浗婕斾箟",''auther'': "缃楄疮涓?}
    ]
    #4銆佸璞?
    class Person锛?
        def __int__(self, realname):
            self.realname = realname
    context = {
        ''username'': username锛?
        ''book'': book,
        ''books'': books,
        ''person''锛汸erson("鐭ヤ簡璇惧爞")
    }
    return render(request,''profile.html'', context=context)
```

#### 甯哥敤鐨勬ā鐗堟爣绛?
1. if鏍囩锛岀浉褰撲笌python涓殑if璇彞锛屾湁elif鍜宔lse鐩稿搴旓紝浣嗘墍鏈夌殑鏍囩閮介渶瑕佺敤鏍囩绗﹀彿{{%%}}杩涜鍖呰９锛宨f涓彲浠ヤ娇鐢?=锛?=锛?锛?=锛?锛?=锛宨n锛宯ot锛宨n锛宨s锛宨s not绛夊垽鏂繍绠楃

```python
#views.py浠ｇ爜
def if_view(request):
    age = 17 
    return render(request, ''if.html'', context={''age'':age})

#if.html妯℃澘浠ｇ爜
{% if age < 18 %}
    <p>骞撮緞鏈弧18宀?/p>
{% elif age == 18 %}
    <p>骞撮緞鍒氭弧18宀?/p>
{% else %}
    <p>骞撮緞宸叉弧18宀?/p>
{% endif %}    
```

2. for...in...鏍囩锛歠or...in...绫讳技浜巔ython涓殑for...in...銆傚彲浠ラ亶鍘嗗垪琛紝鍏冪粍锛屽瓧鍏革紝瀛楃涓诧紝瀛楀吀绛変竴鍒囧彲浠ラ亶鍘嗙殑瀵硅薄

```python
#views.py浠ｇ爜
def for_view(request):
    #1銆佸垪琛?
    books = [
        {''name'': "姘存祾浼?,''auther'': "鏂借€愬旱"},
        {''name'': "涓夊浗婕斾箟",''auther'': "缃楄疮涓?}
    ]
    #2銆佸瓧鍏?
    person = {
        "realname":"鐭ヤ簡璇惧爞",
        "age":18,
        "height": 180
    }
    context = {
        ''books''锛沚ooks,
        ''person'': person
    }
    return render(request, ''for.html'',context=context)

#for.html妯℃澘浠ｇ爜  
<table>
    <thead>
        <tr>
            <th>搴忓彿</th>
            <th>鍚嶇О</th>
            <th>浣滆€?/th>
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

鍦╢or寰幆涓璂TL鎻愪緵浜嗕竴浜涘彉閲忓彲渚涗娇鐢?

    - forloop.counter:褰撳彉閲忓惊鐜殑涓嬫爣锛屼互1鍋氫负璧峰鍊?
    - forloop.counter0:褰撳彉閲忓惊鐜殑涓嬫爣锛屼互0鍋氫负璧峰鍊?
    - forloop.revcounter:褰撳墠寰幆鐨勫弽鍚戜笅鏍囧€硷紝姣斿鍒楄〃鏈?涓厓绱狅紝閭ｄ箞绗竴娆￠亶鍘嗚繖涓睘鎬ф槸绛変簬5锛岀浜屾鏄?锛屼緷娆＄被鎺紝浠?浣滀负缁撳熬
    - forloop.revcounter0:涓巉orloop.revcounter绫讳技锛屼笉鍚岀殑鏄渶鍚庝竴涓笅鏍囨椂浠?寮€濮?
    - forloop.first:鏄惁鏄涓€娆￠亶鍘?
    - forlloop.last:鏄惁鏄渶鍚庝竴娆￠亶鍘?
3. with鏍囩锛氬湪妯＄増涓畾涔夊彉閲忥紝鏈夋椂鍊欎竴涓彉閲忚闂殑鏃跺€欐瘮杈冨鏉傦紝閭ｄ箞鍙互鍏堟妸杩欎釜澶嶆潅鐨勫彉閲忕紦瀛樺埌涓€涓彉閲忎笂锛屼互鍚庡氨鍙互鐩存帴浣跨敤杩欎釜鍙橀噺

```python
#views.py浠ｇ爜
def with_view(request): 
    context = {
        "books"锛沎
            {''name'': "姘存祾浼?,''auther'': "鏂借€愬旱"},
            {''name'': "涓夊浗婕斾箟",''auther'': "缃楄疮涓?}
        ]
    }
    return render(request, ''with.html'', context=context)

{% with book1=bools.1 %}
    <p>{{ book1.name }}/{{ book1.author }}</p>
{% endwith %}
```

4. url鏍囩锛氬湪鏍囩涓紝鎴戜滑缁忓父瑕佸啓涓€浜泆rl锛屾瘮濡傛煇涓猘鏍囩涓渶瑕佸畾涔塰ref灞炴€с€傚綋鐒跺鏋滈€氳繃纭紪鐮佺殑鏂瑰紡鐩存帴灏嗚繖涓猽rl鍐欐鍦ㄩ噷闈篃鏄彲浠ョ殑銆備絾鏄繖鏍峰浜庝互鍚庨」鐩淮鎶ゅ彲鑳戒笉鏄竴浠跺ソ浜嬨€傚洜姝ゅ缓璁娇鐢ㄨ繖绉嶅弽杞殑鏂瑰紡鏉ュ疄鐜帮紝绫讳技浜巇jango涓殑reverse涓€鏍?

```python
#views.py浠ｇ爜
def url_view(request):
    return render(request, ''url.html'', context=context)

<a href="{% url ''baidu'' %}">鐧惧害</a>
```

	濡傛灉url鍙嶈浆鐨勬椂鍊欓渶瑕佷紶閫掑弬鏁帮紝閭ｄ箞鍙互鍐嶅悗闈紶閫掞紝浣嗘槸鍙傛暟鍒嗕綅缃弬鏁板拰鍏抽敭瀛楀弬鏁帮紝涓よ€呬笉鑳藉悓鏃朵娇鐢?

```python
#path閮ㄥ垎
path(''detail/book_id/'', views.book_detail, name=''datail'')

#url鍙嶈浆锛屼娇鐢ㄤ綅缃弬鏁?
</a href="{% url ''book:datail'' 1 %}"></a>

#url鍙嶈浆锛屼娇鐢ㄥ叧閿瓧鍙傛暟
</a href="{% url ''book:datail'' book_id=1 %}"></a>

#濡傛灉瑕佷紶閫掓煡璇㈠瓧绗︿覆鍙傛暟锛屽彧鑳芥墜鍔ㄨ緭鍏?
</a href="{% url ''book:datail'' 1 %}?page=1"></a>

#濡傛灉闇€瑕佷紶閫掑涓弬鏁帮紝鍙傛暟闂寸敤绌烘牸杩涜鍒嗛殧
</a href="{% url ''book:datail'' book_id=1 page=2 %}"></a>
```

#### 妯＄増甯哥敤杩囨护鍣?
1. add

灏嗕紶杩涙潵鐨勫弬鏁版坊鍔犲埌鍘熸潵鐨勫€间笂闈€傝繖涓繃婊ゅ櫒浼氬皾璇曞皢鍊煎拰鍙傛暟杞崲鎴愭暣褰㈢劧鍚庤繘琛岀浉鍔犮€傚鏋滆浆鎹㈡垚鏁村舰杩囩▼涓け璐ヤ簡锛岄偅涔堜細灏嗗€煎拰鍙傛暟杩涜鎷兼帴銆傚鏋滄槸瀛楃涓诧紝閭ｄ箞浼氭嫾鎺ユ垚瀛楃涓诧紝濡傛灉鏄垪琛紝閭ｄ箞浼氭嫾鎺ユ垚涓€涓垪琛?

```python
{{ value|add:"2" }}
#濡傛灉value鏄?锛岀粨鏋滃皢鏄?锛屽鏋渧alue鏄痑bc锛屽垯缁撴灉鏄痑bc2
```

2. cut

绉婚櫎鍊间腑鎵€鏈夋寚瀹氱殑瀛楃涓?

```python
{{ value|cat:" "}}
#鍒囬櫎value涓墍鏈夌殑绌烘牸
```

3. data

灏嗕竴涓棩鏈熸寜鐓ф寚瀹氱殑鏍煎紡锛屾牸寮忓寲鎴愬瓧绗︿覆

```python
context = {
    "birthday": datetime.new()
}

{{ birthday|data:"Y/m/d" }}

#Y:鍥涗綅鏁板勾浠斤紝m:涓や綅鏁版湀浠斤紝n:鏈堜唤锛?-9鍓嶉潰娌℃湁0锛?
#d:涓や綅鏁扮殑澶╋紝j:澶╋紙1-9鍓嶉潰娌℃湁0锛夛紝
#h锛圚锛?12锛?4锛夊皬鏃舵牸寮忥紝g锛圙锛?12(24)灏忔椂锛?-9鍓嶉潰娌℃湁0锛?
#i:鍒嗛挓锛?-9鍓嶉潰娌℃湁0锛夛紝s锛氱锛?-9鍓嶉潰娌℃湁0锛?
```

4. default

濡傛灉鍊艰璇勪及涓篎alse锛屾瘮濡俒], "", None, ()绛夎繖浜涘湪if鍒ゆ柇涓负False鐨勫€硷紝閮戒細浣跨敤default杩囨护鍣ㄦ彁渚涚殑榛樿鍊?

```python
{{ value|default:"nothing" }}
#濡傛灉value鏄竴涓┖瀛楃涓诧紝浠ｇ爜灏变細杈撳嚭nothing
```

5. default_if_none

濡傛灉鍊兼槸None锛岄偅涔堝皢浼氫娇鐢╠efault_if_none鎻愪緵鐨勯粯璁ゅ€?

```python
{{ value|default_if_none:"notshing" }}
#濡傛灉value鏄竴涓┖瀛楃涓?",閭ｄ箞浼氳緭鍑虹┖瀛楃涓?
#鍙湁value鐨勫€兼槸None鏃讹紝浠ヤ笂浠ｇ爜鎵嶄細杈撳嚭nothing
```

6. first

杩斿洖鍒楄〃/鍏冪粍/瀛楃涓蹭腑鐨勭涓€涓厓绱?

```python
{{ value|first }}
#濡傛灉value绛変簬[''a'', ''b'', ''c''],閭ｄ箞杈撳嚭鐨勫€兼槸a
```

7. last

杩斿洖鍒楄〃/鍏冪粍/瀛楃涓蹭腑鐨勬渶鍚庝竴涓厓绱?

```python
{{ value|last }}
#濡傛灉value绛変簬[''a'', ''b'', ''c''],閭ｄ箞杈撳嚭鐨勫€兼槸c
```

8. floatformat

浣跨敤鍥涜垗浜斿叆鐨勬柟寮忔牸寮忓寲涓€涓诞鐐圭被鍨?

```python
{{ value|floatformat }}  #淇濈暀1浣嶅皬鏁?
{{ value|floatformat:3 }}  #淇濈暀3浣嶅皬鏁?

```

9. join

绫讳技浜巔ython涓殑join锛屽皢鍒楄〃/鍏冪粍/瀛楃涓茬敤鎸囧畾鐨勫瓧绗﹁繘琛屾嫾鎺?

```python
{{ value|join;"/"}}
#濡傛灉value绛変簬[''a'', ''b'', ''c''],閭ｄ箞杈撳嚭鐨勫€兼槸a/b/c
```

10. length

鑾峰彇涓€涓垪琛?鍏冪粍/瀛楃涓?瀛楀吀鐨勯暱搴?

```python
{{ value|length }}
#濡傛灉value绛変簬[''a'', ''b'', ''c''],閭ｄ箞杈撳嚭鐨勬槸3锛屽鏋渧alue浣峃one锛岄偅涔堣繑鍥?
```

11. lower

灏嗗€间腑鎵€鏈夌殑瀛楃鍏ㄩ儴杞崲鎴愬皬鍐?

```python
{{ value|lower }}
```

12. upper

灏嗗€间腑鎵€鏈夌殑瀛楃鍏ㄩ儴杞崲鎴愬ぇ鍐?

13. random

鍦ㄨ琚殑鍒楄〃/瀛楃涓?鍏冪粍涓殢鏈洪€夋嫨涓€涓€?

```python
{{ value|random }}
#濡傛灉value绛変簬[''a'', ''b'', ''c''],閭ｄ箞杈撳嚭缁撴灉鏄垪琛ㄤ腑鐨勯殢鏈轰竴涓?
```

14. safe

鏍囪涓€涓瓧绗︿覆鏄畨鍏ㄧ殑锛屼篃鍗充細鍏虫帀杩欎釜瀛楃涓茬殑鑷姩杞箟

```python
{{ value|safe }}
#濡傛灉value鏄?<h2>Hello World</h2>"
#鍦ㄨ繃婊ゅ墠鐩存帴灏?<h2>Hello World</h2>"浠ュ瓧绗︿覆鐨勬柟寮忚緭鍑?
#鍦ㄨ繃婊ゅ悗浼氫互浜岀骇鏍囬鐨勬柟寮忚緭鍑?
```

15. slice

绫讳技浜巔ython涓殑鍒囩墖鎿嶄綔

```python
{{ some_list|slice:"2:"}}
#灏嗗垪琛ㄤ粠2寮€濮嬪仛鍒囩墖鎿嶄綔
```

16. striptags

鍒犻櫎瀛楃涓蹭腑鎵€鏈夌殑HTML鏍囩

```python
{{ value|striptags }}
#濡傛灉value鏄?<h2>Hello World</h2>"
#閭ｄ箞灏嗙洿鎺ヨ緭鍑篐ello World
```

17. truncatechars

濡傛灉缁欏畾鐨勫瓧绗︿覆鐨勯暱搴﹁秴杩囦簡杩囨护鍣ㄦ寚瀹氱殑闀垮害锛岄偅涔堝氨浼氳繘琛屽垏鍓诧紝骞朵笖浼氱敤涓変釜鐐规潵鎷兼帴鍋氫负鐪佺暐鍙?

```python
{{ value|truncatechars锛? }}
#濡傛灉value鏄寳浜杩庢偍锛岃緭鍑虹粨鏋滄槸鍖椾含...
#鍥犱负...浼氬崰鐢?涓瓧绗?
```

18. truncatechars_html

绫讳技浜巘runcatechars锛屽彧涓嶈繃涓嶄細鍒囧壊html鏍囩

```python
{{ value|truncatechars锛? }}
#濡傛灉value鏄?<p>鍖椾含娆㈣繋鎮?/p>
#杈撳嚭缁撴灉鏄?</p>鍖椾含...</p>
```

#### 妯＄増缁撴瀯
##### include妯＄増
鏈夋椂鍊欎竴浜涗唬鐮佹槸鍦ㄨ澶氭ā鐗堜腑閮界敤鍒扮殑锛屽鏋滄垜浠瘡娆￠兘閲嶅鐨勫幓鎷疯礉浠ｇ爜閭ｈ偗瀹氭槸涓嶇鍚堥」鐩殑瑙勮寖锛屼竴鑸垜浠彲浠ユ妸杩欎簺閲嶅鐨勪唬鐮佹彁鍙栧嚭鏉ワ紝灏卞拰python涓殑鍑芥暟涓€鏍凤紝浠ュ悗鎯宠浣跨敤杩欎簺浠ｇ爜鐨勬椂鍊欙紝灏遍€氳繃include鍖呭惈杩涙潵杩欒偂鏍囩鏄痠nclude

```python
#header.html
<p>鎴戞槸header</p>

#footer.html
<p>鎴戞槸foorter</p>

#main.html
{% include ''header.html'' %}
<p>鎴戞槸main鍐呭</p>
{% include ''footer.html'' %}
```

includ鏍囩瀵绘壘璺緞鐨勬柟寮忥紝涔熻窡render娓叉煋妯＄増鐨勫嚱鏁版槸涓€鏍风殑

榛樿include鏍囩鍖呭惈妯＄増锛屼細鑷姩浣跨敤涓绘ā鐗堜笅鐨勬鏂囷紝涔熷彲浠ヨ嚜鍔ㄤ娇鐢ㄤ富妯＄増涓殑鍙橀噺

```python
#views.py
context = {"articles":[
    ''灏忕背U7'',
    ''ChatGPT 5 鍙戝竷''
]}
return render(request, ''main.html'', context=context)

#header.html
{% for article in artincles %}
    <li>{{ article }}</li>
{% endfor %}

#main.html
{% include ''header.html'' %}
```

##### 妯＄増缁ф壙
鍦ㄥ墠绔〉闈㈠紑鍙戜腑銆傛湁浜涗唬鐮佹槸闇€瑕侀噸澶嶄娇鐢ㄧ殑銆傝繖绉嶆儏鍐靛彲浠ヤ娇鐢╥nclude鏍囩鏉ュ疄鐜般€備篃鍙互浣跨敤鍙﹀涓€涓瘮杈冨己澶х殑鏂瑰紡鏉ュ疄鐜?閭ｅ氨鏄ā鐗堢户鎵匡紝妯＄増缁ф壙绫讳技浜巔ython涓殑绫伙紝鍦ㄧ埗绫讳腑鍙互鍏堝畾涔夊ソ涓€浜涘彉閲忓拰鏂规硶锛岀劧鍚庡湪瀛愮被涓疄鐜般€傛ā鐗堢户鎵夸篃鍙互鍦ㄧ埗妯＄増涓厛瀹氫箟濂戒竴浜涘瓙妯＄増闇€瑕佺敤鍒扮殑浠ｇ爜锛岀劧鍚庡瓙妯増鐩存帴缁ф壙灏卞彲浠ヤ簡锛屽苟涓斿洜涓哄瓙妯＄増鑲畾鏈夎嚜宸辩殑涓嶅悓浠ｇ爜锛屽洜姝ゅ彲浠ュ湪鐖舵í鐗堜腑瀹氫箟涓€涓猙lock鎺ュ彛锛岀劧鍚庡瓙妯＄増鍐嶅幓瀹炵幇锛屼互涓嬫槸鐖舵ā鐗堢殑浠ｇ爜:

```html
<!DOCTYPE html>
<html>
<hand>
  <link rel="stylesheet" href="{% static ''style.css'' %}" />
  <title>{% block title %}鎴戞槸绔欑偣{% endblock %}</title>
</hand>
<body>
  <div id="sidebar">
    {% block sidbar %}
      <ul>
        <li><a href="/">棣栭〉</a></li>
        <li><a bref="/blog/">鍗氬</a></li>
      </ul>
    {% endblock %}
  </div>
  <div id="content">
    {% block content %}{% endblock %}
  </div>
</body>
  
</html>
```

鍦ㄧ埗妯＄増涓畾涔変簡涓や釜鎺ュ彛锛屽瓙妯＄増閫氳繃extends鏍囩鏉ュ疄鐜?

```html
{% extends "baase.html" %}

{% block title %}鍗氬鍒楄〃{% endblock %}

{% block content %}
  {% for entry in blog_entries %}
    <h2>{{ entry.title }}</h2>
    <p>{{ entry.body }}</p>
  {% endfor %}
{% endblock %}
```

闇€瑕佹敞鎰忕殑鏄細extends鏍囩蹇呴』鏀惧湪妯＄増鐨勭涓€琛岋紝瀛愭ā鐗堜腑鐨勪唬鐮佸繀椤绘斁鍦╞lock涓紝鍚﹀垯涓嶄細琚覆鏌?

濡傛灉鍦ㄦ煇涓猙lock涓渶瑕佷娇鐢ㄧ埗妯＄増鐨勫唴瀹癸紝閭ｄ箞鍙互浣跨敤{{block.super}}鏉ョ户鎵匡紝姣斿涓婁緥锛寋%b1ock title%)锛屽鏋滄兂瑕佷娇鐢ㄧ埗妯＄増鐨則itle锛岄偅涔堝彲浠ュ湪瀛愭ā鐗堢殑tit1e block涓娇鐢▄{b1ock.super }} 鏉ュ疄鐜般€?

鍦ㄥ畾涔塨lock鐨勬椂鍊欙紝闄や簡鍦╞lock寮€濮嬬殑鍦版柟瀹氫箟杩欎釜block鐨勫悕瀛楋紝杩樺彲浠ュ湪b1ock缁撴潫鐨勬椂鍊欏畾涔夊悕瀛椼€傛瘮濡倇% block title %}{% endblock title %}杩欏湪澶у瀷妯＄増涓樉寰楀挨鍏舵湁鐢紝鑳借浣犲揩閫熺殑鐪嬪埌b1ock鍖呭惈鍦ㄥ摢閲?

#### 鍔犺浇闈欐€佹枃浠?
鍦ㄤ竴涓綉椤典腑锛屼笉浠呬粎鍙湁涓€涓猦tml楠ㄦ灦锛岃繕闇€瑕乧ss鏍峰紡鏂囦欢锛宩s鎵ц鏂囦欢浠ュ強涓€浜涘浘鐗囩瓑銆傚洜姝ゅ湪DTL涓姞杞介潤鎬佹枃浠舵槸涓€涓繀椤昏瑙ｅ喅鐨勯棶棰樸€傚湪DTL涓紝浣跨敤static鏍囩鏉ュ姞杞介潤鎬佹枃浠躲€傝浣跨敤static鏍囩锛岄鍏堥渶瑕?%1oad static %)銆傚姞杞介潤鎬佹枃浠剁殑姝ラ濡備笅:

1. 棣栧厛纭繚django.contrib.staticfiles宸茬粡娣诲姞鍒皊ettings.INSTALLEO_APPS涓?
2. 纭繚鍦?settings.py 涓缃簡 STATIC_URL 銆?

```python
STATIC_URL = ''static/''  
```

3. 鍦ㄥ凡缁忓畨瑁呬簡鐨?app 涓嬪垱寤轰竴涓枃浠跺す鍙仛 static 锛岀劧鍚庡啀鍦ㄨ繖涓?static 鏂囦欢澶逛笅鍒涘缓涓€涓綋鍓?app 鐨勫悕瀛楃殑鏂囦欢澶癸紝鍐嶆妸闈欐€佹枃浠舵斁鍒拌繖涓枃浠跺す涓嬨€備緥濡備綘鐨?浠跺彨鍋?app 鍙仛 book 锛屾湁涓€涓潤鎬佹枃 zhiliao.jpg 锛岄偅涔堣矾寰勪负 book/static/book/zhiliao.jpg 銆傦紙涓轰粈涔堝湪 app 涓嬪垱寤轰竴 涓猻tatic鏂囦欢澶癸紝杩橀渶瑕佸湪杩欎釜 static 涓嬪垱寤轰竴涓悓 app 鍚嶅瓧鐨勬枃浠跺す鍛紵鍘熷洜鏄鏋滅洿鎺ユ妸闈?鎬佹枃浠舵斁鍦?static 鏂囦欢澶逛笅锛岄偅涔堝湪妯＄増鍔犺浇闈欐€佹枃浠剁殑鏃跺€欏氨鏄娇鐢?涓猘pp涔嬮棿鏈夊悓鍚嶇殑闈欐€佹枃浠讹紝杩欐椂鍊欏彲鑳藉氨浼氫骇鐢熸贩娣嗐€傝€屽湪 app 鏂囦欢澶癸紝鍦ㄦā鐗堜腑鍔犺浇鐨勬椂鍊欏氨鏄娇鐢?zhiliao.jpg 锛屽鏋滃湪澶?static 鏂囦欢澶逛笅鍔犱簡涓€涓悓鍚?app/zhiliao.jpg 锛岃繖鏍峰氨鍙互閬垮厤浜х敓娣锋穯銆傦級
4. 濡傛灉鏈変竴浜涢潤鎬佹枃浠舵槸涓嶅拰浠讳綍 app 鎸傞挬鐨勩€傞偅涔堝彲浠ュ湪 settings.py 涓坊鍔?STATICFILES_DIRS 锛屼互鍚?DTL 灏变細鍦ㄨ繖涓垪琛ㄧ殑璺緞涓煡鎵鹃潤鎬佹枃浠?

```python
STATICFILES_DIRS = [
    #os.path.join(BASE_DIR,"static")
    BASE_IRS / ''static''
]
```

5.  鍦ㄦā鐗堜腑浣跨敤 load 鏍囩鍔犺浇`static`鏍囩銆傛瘮濡傝鍔犺浇鍦ㄩ」鐩殑 鏂囦欢銆傞偅涔堢ず渚嬩唬鐮佸涓?

```html
{% load static %}
<link rel="stylesheet" href="{% static ''style.css'' %}">
<script src="{% static ''js/index.js'' %}"></script>
```

6.  濡傛灉涓嶆兂姣忔鍦ㄦā鐗堜腑鍔犺浇闈欐€佹枃浠堕兘浣跨敤`load`鍔犺浇`static`鏍囩锛岄偅涔堝彲浠ュ湪`style.css`鐨刞TEMPLATES/OPTIONS`娣诲姞`settings.py`涓璥''builtins'':[''django.templatetags.static'']`锛岃繖鏍蜂互鍚庡湪妯＄増 涓氨鍙互鐩存帴浣跨敤`static`鏍囩锛岃€屼笉鐢ㄦ墜鍔ㄧ殑`load`浜嗐€?

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
        # 杩欓噷鍔犺浇
        ''builtins'':[''django.templatetags.static'']
        },
    },
]
```

7.  濡傛灉娌℃湁鍦╜settings.INSTALLED_APPS`涓坊鍔燻django.contrib.staticfiles`銆傞偅涔堟垜浠氨闇€瑕?鎵嬪姩鐨勫皢璇锋眰闈欐€佹枃浠剁殑`url`涓庨潤鎬佹枃浠剁殑璺緞杩涜鏄犲皠浜嗭紝杩欎釜鎿嶄綔閫氬父鐢ㄦ潵鍔犺浇濯掍綋鏂囦欢锛堜笂 浼犵殑鏂囦欢锛夈€傜ず渚嬩唬鐮佸涓嬶細

```python
from django.conf import settings
from django.conf.urls.static import static
urlpatterns = [
path(''admin/'', admin.site.urls),
    ...
] + static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
```

鍦╜settings.py`涓殑`MEDIA_URL`鍜宍MEDIA_ROOT`鐨勯厤缃涓?

```python
MEDIA_ROOT = BASE_DIR / ''media''
MEDIA_URL= ''/media/''
```

** 娉ㄦ剰锛氶潤鎬佹枃浠跺拰濯掍綋鏂囦欢锛屾渶濂介兘鏄€氳繃Nginx绛変笓涓氱殑web鏈嶅姟鍣ㄦ潵閮ㄧ讲锛屼互涓婃柟寮忎粎鍦ㄥ紑鍙戦樁娈?浣跨敤銆?*

### 鏁版嵁搴撴搷浣?
#### Django閰嶇疆杩炴帴鏁版嵁搴擄細
鍦ㄦ搷浣滄暟鎹簱涔嬪墠锛岄鍏堝厛瑕佽繛鎺ユ暟鎹簱銆侱jango 杩炴帴鏁版嵁搴擄紝涓?闇€瑕佸崟鐙殑鍒涘缓涓€涓繛鎺ュ璞°€傚彧闇€瑕佸湪`settings.py`鏂囦欢涓仛濂芥暟鎹簱鐩稿叧鐨勯厤缃氨鍙互浜嗐€傜ず渚嬩唬 鐮佸涓嬶細

```python
DATABASES = {
    ''default'': {
        # 鏁版嵁搴撳紩鎿?MySQL
        ''ENGINE'': ''django.db.backends.mysql'',
        # 鏁版嵁搴撳悕绉?
        ''NAME'': BASE_DIR / ''book'',
        # 杩炴帴鏁版嵁搴撶殑鐢ㄦ埛鍚?
        ''USER'': ''root'',
        # 杩炴帴MySQL鐨勫瘑鐮?
        ''PASSWORD'': ''@Root1234'',
        # MySQL涓绘満鍦板潃
        ''HOST'': ''192.168.3.33'',
        # MySQL鏁版嵁搴撶殑绔彛鍙?
        ''PORT'': ''3306'',
    }
}
```

鍏朵腑engine鐨勯€夋嫨杩樻湁浠ヤ笅锛?

`''django.db.backends.postgresql''`

`''django.db.backends.mysql''`

`''django.db.backends.sqlite3''`

`''django.db.backends.oracle''`

#### 鍦╠jango涓搷浣滄暟鎹簱
1.浣跨敤鍘熺敓鐨凷QL璇彞

鍦―jango涓娇鐢ㄥ師鐢焋sql`璇彞鎿嶄綔銆乣python db api`鐨勬帴鍙ｆ潵鎿嶄綔銆傚鏋滀綘鐨刞mysql`椹卞姩 浣跨敤鐨勬槸`pymysql`锛岄偅涔堜綘灏辨槸浣跨敤`pymysql`鏉ユ搷浣滅殑锛屽彧涓嶈繃django灏嗘暟鎹簱杩炴帴鐨勮繖涓€閮ㄥ垎灏佽濂戒簡锛屾垜浠彧瑕佸湪 `Django`濂戒簡,鎴戜滑鍙鍦╜settings.py`涓厤缃ソ浜嗘暟鎹簱杩炴帴淇℃伅鍚庣洿鎺ヤ娇鐢╜Django`灏佽濂界殑鎺ュ彛灏卞彲浠ユ搷浣滀簡銆傜ず渚嬩唬鐮佸涓?

```python
# 浣跨敤django灏佽濂界殑connection瀵硅薄锛屼細鑷姩璇诲彇settings.py涓暟鎹簱鐨勯厤缃俊鎭?
from django.db import connection
# 鑾峰彇娓告爣瀵硅薄
cursor = connection.cursor()
# 鎷垮埌娓告爣瀵硅薄鍚庢墽琛宻ql璇彞
cursor.execute("select * from book")
# 鑾峰彇鎵€鏈夌殑鏁版嵁
rows = cursor.fetchall()
# 閬嶅巻鏌ヨ鍒扮殑鏁版嵁
for row in rows:
 print(row)
```

浠ヤ笂鐨刞execute`浠ュ強`fetchall`鏂规硶閮芥槸`Python DB API`瑙勮寖涓畾涔夊ソ鐨勩€備换浣曚娇鐢≒ython鏉ユ搷浣淢ySQL鐨勯┍鍔ㄧ▼搴忛兘搴旇閬靛惊杩欎釜瑙勮寖銆傛墍浠ヤ笉绠℃槸浣跨敤`pymysql `鎴栬€呮槸`mysqlclient`鎴栬€呮槸`mysqldb`锛屼粬浠殑鎺ュ彛閮芥槸涓€鏍风殑銆傛洿澶氳鑼冭鍙傝€?https://www.python.org/dev/peps/pep-024 9/ 銆?

#### python DB API涓嬭鑼冧笅cursor瀵硅薄甯哥敤鎺ュ彛锛?
1.`description`锛氬鏋?cursor 鎵ц浜嗘煡璇㈢殑 sql 浠ｇ爜銆傞偅涔堣鍙?cursor.description 灞炴€х殑鏃?鍊欙紝灏嗚繑鍥炰竴涓垪琛紝杩欎釜鍒楄〃涓鐨勬槸鍏冪粍锛屽厓缁勪腑瑁呯殑鍒嗗埆鏄痐(name,type_code,display_size,internal_size,precision,scale,null_ok)`锛屽叾涓?琛ㄧ殑鏄煡鎵惧嚭鏉ョ殑鏁版嵁鐨勫瓧娈靛悕绉帮紝鍏朵粬鍙傛暟鏆傛椂鐢ㄥ涓嶅ぇ銆?

2.`rowcount`锛氫唬琛ㄧ殑鏄湪鎵ц浜?sql 璇彞鍚庡彈褰卞搷鐨勮鏁般€?

3.`close`锛氬叧闂父鏍囥€傚叧闂父鏍囦互鍚庡氨鍐嶄篃涓嶈兘浣跨敤浜嗭紝鍚﹀垯浼氭姏鍑哄紓甯搞€?

4.`execute(sql[,parameters])`锛氭墽琛屾煇涓?sql 璇彞銆傚鏋滃湪鎵ц name 浠?sql 璇彞鐨勬椂鍊欒繕闇€瑕佷紶閫掑弬 鏁帮紝閭ｄ箞鍙互浼犵粰 parameters 鍙傛暟銆傜ず渚嬩唬鐮佸涓嬶細

```python
cursor.execute("select * from article where id=%s",(1,))
```

5.` fetchone`锛氬湪鎵ц浜嗘煡璇㈡搷浣滀互鍚庯紝鑾峰彇绗竴鏉℃暟鎹€?

6.`fetchmany(size)`锛氬湪鎵ц鏌ヨ鎿嶄綔浠ュ悗锛岃幏鍙栧鏉℃暟鎹€傚叿浣撴槸澶氬皯鏉¤鐪嬩紶鐨?鏋滀笉浼爏ize鍙傛暟锛岄偅涔堥粯璁ゆ槸鑾峰彇绗竴鏉℃暟鎹€?

7. `fetchall`锛氳幏鍙栨墍鏈夋弧瓒?sql 璇彞鐨勬暟鎹€?

#### ORM妯″瀷浠嬬粛
##### ORM妯″瀷浠嬬粛
ORM鍏ㄧОObject Relational Mapping锛屼腑鏂囧彨鍋氬璞″叧绯绘槧灏勶紝閫氳繃 ORM 鎴戜滑鍙互閫氳繃绫荤殑鏂瑰紡鍘绘搷浣滄暟鎹簱锛岄€氳繃鎶婅〃鏄犲皠鎴愮被锛屾妸琛屼綔瀹炰緥锛屾妸瀛楁浣滀负灞炴€с€?

##### 鍒涘缓ORM妯″瀷锛?
ORM妯″瀷涓€鑸兘鏄斁鍦ㄦ兂瑕佹槧灏勫埌鏁版嵁搴撲腑锛岄偅涔堣繖涓猘pp鐨?`models.py`鏂囦欢涓€傛瘡涓猘pp閮藉彲浠ユ嫢鏈夎嚜宸辩殑妯″瀷銆傚苟涓斿鏋滆繖涓ā鍨媋pp蹇呴』瑕佹斁鍦╜settings.py`鐨刞INSTALLED_APP`涓繘琛屽畨瑁呫€備互涓嬫槸 鍐欎竴涓畝鍗曠殑涔︾睄ORM妯″瀷

```python
from django.db import models
class Book(models.Model):
    name = models.CharField(max_length=20,null=False)
    author = models.CharField(max_length=20,null=False)
    # 鑷姩鑾峰彇寰楀埌鍙傛暟鐨勬椂闂?
    pub_time = models.DateTimeField(auto_now_add=True)
    price = models.FloatField(default=0)
```

##### 鏄犲皠妯″瀷鍒版暟鎹簱涓?
1. 鍦╜settings.py`涓紝閰嶇疆濂絗DATABASES`锛屽仛濂芥暟鎹簱鐩稿叧鐨勯厤缃€?

2. 鍦╝pp涓殑`models.py`涓畾涔夊ソ妯″瀷锛岃繖涓ā鍨嬪繀椤荤户鎵胯嚜`django.db.models `

3. 灏嗚繖涓?app 娣诲姞鍒癭settings.py`鐨刞INSTALLED_APP`涓€?

4. 鍦ㄥ懡浠よ缁堢锛岃繘鍏ュ埌椤圭洰鎵€鍦ㄧ殑璺緞锛岀劧鍚庢墽琛屽懡浠?python `manage.py makemigrations`鏉ョ敓鎴愯縼绉昏剼鏈枃浠躲€?

5. 鍚屾牱鍦ㄥ懡浠よ涓紝鎵ц鍛戒护`python manage.py migrate`鏉ュ皢杩佺Щ鑴氭湰鏂囦欢鏄犲皠鍒版暟鎹簱涓€?

#### CRUD鎿嶄綔
##### 娣诲姞鏁版嵁
```python
from django.http import HttpResponse
from .models import Book

def add_book(request):
    book = Book(name="涓夊浗婕斾箟", author="缃楄疮涓?,price=100)
    book.save()
    return HttpResponse("鍒涘缓鎴愬姛")
```

##### 鏌ユ壘鏁版嵁
鏌ユ壘鏁版嵁閮芥槸閫氳繃objects瀵硅薄鏉ュ疄鐜扮殑

1. 鏌ユ壘鎵€鏈夋暟鎹?

```python
books = Book.objects.all()
    for book in books:
        print(book.id, book.name, book.author,book.pub_time, book.price)
    return HttpResponse("鏌ユ壘鎴愬姛")
```

2. 鏁版嵁杩囨护

鍦ㄦ煡鎵炬暟鎹殑鏃跺€欙紝鏈夋椂鍊欓渶瑕佸涓€浜涙暟鎹繘琛岃繃婊わ紝浣跨敤`objects`鐨刞filter`鏂规硶

```python
books = Book.objects.filter(name="涓夊浗婕斾箟")
    for book in books:
        print(book.id, book.name, book.author,book.pub_time, book.price)
    return HttpResponse("鏌ユ壘鎴愬姛")
```

3. 鑾峰彇鍗曚釜瀵硅薄

浣跨敤`filter`杩斿洖鐨勬槸鎵€鏈夋弧瓒虫潯浠剁殑缁撴灉闆嗐€傛湁鏃跺€欏鏋滃彧闇€瑕佽繑鍥炵涓€涓弧瓒虫潯浠剁殑瀵硅薄銆傞偅涔堝彲浠?浣跨敤get鏂规硶

```python
    try:
        book = Book.objects.get(name="涓夊浗婕斾箟")
        print(book.name)
    except Book.DoesNotExist:
        print("鍥句功涓嶅瓨鍦?)
```

4. 鏁版嵁鎺掑簭

鏍规嵁鏌愪釜瀛楁鏉ヨ繘琛屾帓搴忎娇鐢╜order_by`鏂规硶鏉ュ疄鐜帮紝榛樿浠庡皬鍒板ぇ鎺掑簭锛屽彲鍦ㄥ瓧娈靛墠鍔犱笂璐熷彿`-`鏉ュ疄鐜板€掑簭

```python
def order_view(request):
    books = Book.objects.order_by("-pub_time")
    for book in books:
        print(book.id, book.name, book.author,book.pub_time, book.price)
    return HttpResponse("鎺掑簭鎴愬姛")
```

##### 淇敼鏁版嵁
鍦ㄦ煡鎵惧埌鏁版嵁鍚庯紝渚垮彲浠ヨ繘琛屼慨鏀逛簡銆備慨鏀圭殑鏂瑰紡闈炲父绠€鍗曪紝鍙渶瑕佸皢鏌ユ壘鍑烘潵鐨勫璞＄殑鏌愪釜灞炴€ц繘琛?淇敼锛岀劧鍚庡啀璋冪敤杩欎釜瀵硅薄鐨?save 鏂规硶渚垮彲浠ヨ繘琛屼慨鏀?

```python
def updata_view(request):
    book = Book.objects.first()
    book.name = "瑗挎父璁?
    book.save()
    return HttpResponse("淇敼鎴愬姛")
```

##### 鍒犻櫎鏁版嵁
鍦ㄦ煡鎵惧埌鏁版嵁鍚庯紝渚垮彲浠ヨ繘琛屽垹闄や簡锛屼娇鐢ㄧ殑鏄痐delete`鏂规硶

```python
ef delete_view(request):
    book = Book.objects.filter(name="瑗挎父璁?)
    book.delete()
    return HttpResponse("鍒犻櫎鎴愬姛")
```

#### 妯″瀷甯哥敤鐨凢ield鍜屽弬鏁?
##### 甯哥敤瀛楁
1. AutoField锛?

鏄犲皠鍒版暟鎹簱涓槸`int`绫诲瀷锛屽彲浠ユ湁鑷姩澧為暱鐨勭壒鎬с€備竴鑸笉闇€瑕佷娇鐢ㄨ繖涓被鍨嬶紝濡傛灉涓嶆寚瀹氫富閿紝閭ｄ箞妯″瀷浼氳嚜鍔ㄧ殑鐢熸垚涓€涓彨鍋歚id`鐨勮嚜鍔ㄥ闀跨殑涓婚敭銆傚鏋滀綘鎯虫寚瀹氫竴涓叾浠栧悕瀛楃殑骞朵笖鍏锋湁鑷姩澧為暱鐨勪富閿紝浣跨敤`AutoField`涔熸槸鍙互鐨勩€?

2. BigAutoField:

64浣嶇殑鏁村舰锛岀被浼间簬AutoField锛岃寖鍥存槸`1- 9223372036854775807`

3. BooleanField:

鍦ㄦā鍨嬪眰闈㈡帴鏀剁殑鏄痐True/False`  銆傚湪鏁版嵁搴撳眰闈㈡槸`tinyint`绫诲瀷锛屽鏋滄病鏈夋寚瀹氶粯璁ゅ€硷紝鍒欓粯璁ゅ€兼槸None

4. CharField锛?

鍦ㄦ暟鎹簱灞傞潰鏄?varchar 绫诲瀷銆傞粯璁ゅ€兼槸 Python 灞傞潰灏辨槸鏅€氱殑瀛楃涓层€傝繖涓被鍨嬪湪浣跨敤鐨勬椂鍊欏繀椤昏鎸囧畾鏈€澶х殑闀垮害锛屼篃鍗冲繀椤昏浼犻€抈 `max_length`杩欎釜鍏抽敭瀛楀弬鏁拌繘鍘汇€?

5. DataField:

鏃ユ湡绫诲瀷銆傚湪Python涓槸`datetime.date`绫诲瀷锛屽彲浠ヨ褰曞勾鏈堟棩銆傚湪鏄犲皠鍒版暟鎹簱涓篃鏄娇鐢ㄨ繖涓狥ield`鍙互浼犻€掍互涓嬪嚑涓弬鏁帮細

1. date 绫诲瀷銆俙auto_now`锛氬湪姣忔杩欎釜鏁版嵁淇濆瓨鐨勬椂鍊欙紝閮戒娇鐢ㄥ綋鍓嶇殑鏃堕棿銆傛瘮濡備綔涓轰竴涓褰曚慨鏀规棩鏈熺殑瀛楁锛屽彲浠ュ皢杩欎釜灞炴€ц缃负`True`銆?

2.`auto_now_add`锛氬湪姣忔鏁版嵁绗竴娆¤娣诲姞杩涘幓鐨勬椂鍊欙紝閮戒娇鐢ㄥ綋鍓嶇殑鏃堕棿銆傛瘮濡備綔涓轰竴涓褰曠涓€娆″叆搴撶殑瀛楁锛屽彲浠ュ皢杩欎釜灞炴€ц缃负`True` 銆?

6. DataTimeField:

鏃ユ湡鏃堕棿绫诲瀷锛岀被浼间簬DateField銆備笉浠呬粎鍙互瀛樺偍鏃ユ湡锛岃繕鍙互瀛樺偍鏃堕棿銆傛槧灏勫埌鏁版嵁搴撲腑鏄痙atetime绫诲瀷銆傝繖涓?Field 涔熷彲浠ヤ娇鐢╜auto_now`鍜宍auto_now_add`涓や釜灞炴€с€?

7. TiemField:

鏃堕棿绫诲瀷銆傚湪鏁版嵁搴撲腑鏄痐time`绫诲瀷銆侾ython涓槸`datetime.time`绫诲瀷

8. EmailField:

绫讳技浜?CharField 銆傚湪鏁版嵁搴撳簳灞備篃鏄竴涓?`varchar`,鏈€澶ч暱搴︿负254涓瓧绗?

9. FileField锛?

鐢ㄦ潵瀛樺偍鏂囦欢鐨勩€傝繖涓鍙傝€冨悗闈㈢殑鏂囦欢涓婁紶绔犺妭閮ㄥ垎銆?

10. ImageField:

鐢ㄦ潵瀛樺偍鍥剧墖鏂囦欢鐨勩€傝繖涓鍙傝€冨悗闈㈢殑鍥剧墖涓婁紶绔犺妭閮ㄥ垎銆?

11. FloatField:

娴偣绫诲瀷銆傛槧灏勫埌鏁版嵁搴撲腑鏄?float 绫诲瀷銆?

12. IntegerField:

鏁村舰銆傚€肩殑鍖洪棿鏄?2147483648鈥斺€?147483647 銆?

13. BigIntegerField:

澶ф暣褰€傚€肩殑鍖洪棿鏄痐-9223372036854775808鈥斺€?223372036854775807`銆?

14. PositiveIntegerField:

姝ｆ暣褰€傚€肩殑鍖洪棿鏄痐0-2147483647`

15. SamllIntegerField锛?

灏忔暣褰€傚€肩殑鍖洪棿鏄痐-32768鈥斺€?2767`銆?

16. PositiveSmallIntegerField:

姝ｅ皬鏁村舰銆傚€肩殑鍖洪棿鏄痐0-32767`銆?

17. TextField:

澶ч噺鐨勬枃鏈被鍨嬨€傛槧灏勫埌鏁版嵁搴撲腑鏄痐longtext`绫诲瀷銆?

18. UUIDField:

鍙兘瀛樺偍 uuid 鏍煎紡鐨勫瓧绗︿覆.uuid 鏄竴涓?2浣嶇殑鍏ㄧ悆鍞竴鐨勫瓧绗︿覆锛屼竴鑸敤鏉ヤ綔涓轰富閿€?

19. URLFIeld锛?

绫讳技浜?CharField 锛屽彧涓嶈繃鍙兘鐢ㄦ潵瀛樺偍url鏍煎紡鐨勫瓧绗︿覆銆傚苟涓旈粯璁ょ殑 `max_length`鏄?00



##### field鐨勫父鐢ㄥ弬鏁?
1. null

濡傛灉璁剧疆涓篳True`锛孌jango灏嗕細鍦ㄦ槧灏勮〃鐨勬椂鍊欐寚瀹氭槸鍚︿负绌恒€傞粯璁ゆ槸涓篳False`銆傚湪浣跨敤瀛楃涓茬浉鍏崇殑`Field``锛圕harField/TextField锛塦鐨勬椂鍊欙紝瀹樻柟鎺ㄨ崘灏介噺涓嶈浣跨敤杩欎釜鍙傛暟锛屼篃灏辨槸淇濇寔榛樿鍊糮False`鍥犱负Django鍦ㄥ鐞嗗瓧绗︿覆鐩稿叧鐨刞Field`鐨勬椂鍊欙紝鍗充娇杩欎釜`Field`鐨?`null=True`锛屽鏋滀綘娌℃湁缁欒繖涓猔Field`浼犻€掍换浣曞€硷紝Django涔熶細浣跨敤涓€涓┖鐨勫瓧绗︿覆`""`鏉ヤ綔涓洪粯璁ゅ€煎瓨鍌ㄨ繘鍘汇€傚洜姝ゅ鏋滃啀浣跨敤`null=True`,Django浼氫骇鐢熶袱绉嶇┖鍊肩殑鎯呭舰锛圢ULL鎴栬€呯┖瀛楃涓诧級銆傚鏋滄兂瑕佸湪琛ㄥ崟楠岃瘉鐨勬椂鍊欏厑璁歌繖涓瓧绗︿覆涓虹┖锛岄偅涔堝缓璁娇鐢╜blank=True`銆侻odelForm濡傛灉浣犵殑`Field`鏄痐BooleanField`锛岄偅涔堝搴旂殑鍙┖鐨勫瓧娈靛垯涓?`NullBooleanField`銆?

2. blank

鏍囪瘑杩欎釜瀛楁鍦ㄨ〃鍗曢獙璇佺殑鏃跺€欐槸鍚﹀彲浠ヤ负绌恒€傞粯璁ゆ槸`False`杩欎釜鍜宍null`鏄湁鍖哄埆鐨?, `null`鏄竴涓函鏁版嵁搴撶骇鍒殑銆傝€宍blank`鏄〃鍗曢獙璇佺骇鍒殑銆?

3. db_column

杩欎釜瀛楁鍦ㄦ暟鎹簱涓殑鍚嶅瓧銆傚鏋滄病鏈夎缃繖涓弬鏁帮紝閭ｄ箞灏嗕細浣跨敤妯″瀷涓睘鎬х殑鍚嶅瓧銆?

4. default

榛樿鍊笺€傚彲浠ヤ负涓€涓€硷紝鎴栬€呮槸涓€涓嚱鏁帮紝浣嗘槸涓嶆敮鎸乣lambda`琛ㄨ揪寮忋€傚苟涓斾笉鏀寔鍒楄〃/瀛楀吀/闆嗗悎绛夊彲鍙樼殑鏁版嵁缁撴瀯銆?

5. primary_key

鏄惁涓轰富閿紝榛樿涓篳Fales`

6. unique:

鍦ㄨ〃涓繖涓瓧娈电殑鍊兼槸鍚﹀敮涓€锛屼竴鑸槸璁剧疆鎵嬫満鍙风爜/閭绛?

鏇村Field鍙傛暟璇峰弬鑰冨畼鏂规枃妗ｏ細[ https://docs.djangoproject.com/zh-hans/5.0/ref/models/fields/  ](https://docs.djangoproject.com/zh-hans/5.0/ref/models/fields/%20)

##### 妯″瀷涓璏eta閰嶇疆
瀵逛簬涓€浜涙ā鍨嬬骇鍒殑閰嶇疆銆傛垜浠彲浠ュ湪妯″瀷涓畾涔変竴涓被锛屽彨鍋?Meta 銆傜劧鍚庡湪杩欎釜绫讳腑娣诲姞涓€浜涚被灞炴€?鏉ユ帶鍒舵ā鍨嬬殑浣滅敤銆傛瘮濡傛垜浠兂瑕佸湪鏁版嵁搴撴槧灏勭殑鏃跺€欎娇鐢ㄨ嚜宸辨寚瀹氱殑琛ㄥ悕锛岃€屼笉鏄娇鐢ㄦā鍨嬬殑鍚嶇О銆?閭ｄ箞鎴戜滑鍙互鍦?Meta 绫讳腑娣诲姞涓€涓?db_table 鐨勫睘鎬с€?

1. db_table

杩欎釜妯″瀷鏄犲皠鍒版暟鎹簱涓殑琛ㄥ悕銆傚鏋滄病鏈夋寚瀹氳繖涓弬鏁帮紝閭ｄ箞鍦ㄦ槧灏勭殑鏃跺€欏皢浼氫娇鐢ㄦā鍨嬪悕鏉ヤ綔涓洪粯璁ょ殑琛ㄥ悕銆?

2. ordering

璁剧疆鍦ㄦ彁鍙栨暟鎹殑鎺掑簭鏂瑰紡銆傚悗闈㈢珷鑺備細璁插埌濡備綍鏌ユ壘鏁版嵁銆傛瘮濡傛垜鎯冲湪鏌ユ壘鏁版嵁鐨勬椂鍊欐牴鎹坊鍔犵殑鏃堕棿鎺掑簭

```python
class Book(models.Model):
    name = models.CharField(max_length=100)
    author = models.CharField(max_length=100)
    # 鑾峰彇鏃堕棿
    pub_time = models.DateTimeField(auto_now_add=True)
    price = models.FloatField(default=0)

    class Meta:
        db_table = ''book_table''
        ordering = [''-pub_time'',''name'']
```



#### 澶栭敭鍜岃〃鍏崇郴
##### 澶栭敭
鍦∕ySQL涓紝琛ㄦ湁涓ょ寮曟搸锛屼竴绉嶆槸`InnoDB`锛屽彟澶栦竴绉嶆槸`myisam`銆傚鏋滀娇鐢ㄧ殑鏄痐InnoDB`寮曟搸锛屾槸鏀寔澶栭敭绾︽潫鐨勩€傚閿殑瀛樺湪浣垮緱`ORM` 妗嗘灦鍦ㄥ鐞嗚〃鍏崇郴鐨勬椂鍊欏紓甯哥殑寮哄ぇ銆傚洜姝よ繖閲屾垜浠鍏堟潵浠嬬粛涓嬪閿湪`Django`涓殑浣跨敤銆?

绫诲畾涔変负`class ForeignKey(to,on_delete,**options)`銆傜涓€涓弬鏁版槸寮曠敤鐨勬槸鍝釜妯″瀷锛岀浜屼釜鍙傛暟鏄湪浣跨敤澶栭敭寮曠敤鐨勬ā鍨嬫暟鎹鍒犻櫎浜嗭紝杩欎釜瀛楁璇ュ浣曞鐞嗭紝姣斿鏈塦CASCADE`銆乣SET_NULL`绛夈€傝繖閲屼互涓€涓疄闄呮渚嬫潵璇存槑銆傛瘮濡傛湁涓€涓猔User`鍜屼竴涓猔Article`涓や釜妯″瀷銆備竴涓猔User`鍙互鍙戣〃澶氱瘒鏂囩珷锛屼竴涓猔Article`鍙兘鏈変竴涓猔Author`锛屽苟涓旈€氳繃澶栭敭杩涜寮曠敤

```python
class User(models.Model):
    username = models.CharField(max_length=20)
    password = models.CharField(max_length=100)

class Article(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField()
    
    author = models.ForeignKey("User",on_delete=models.CASCADE)
```

浠ヤ笂浣跨敤`ForeignKey`鏉ュ畾涔夋ā鍨嬩箣闂寸殑鍏崇郴銆傚嵆鍦╜Article`鐨勫疄渚嬩腑鍙互閫氳繃`author`鏁板鏉ユ搷浣滃搴旂殑`User`妯″瀷銆傝繖鏍蜂娇鐢ㄨ捣鏉ラ潪甯哥殑鏂逛究

```python
article = Article(title=''abc'',content=''123'')
author = User(username=''寮犱笁'',password=''111111'')
article.author = author
article.save()

# 淇敼article.author涓婄殑鍊?
article.author.username = ''鏉庡洓''
article.save()
```

鍦ㄥ簳灞傦紝`Django`涓篳Article`琛ㄦ坊鍔犱簡涓€涓猔灞炴€у悕_id`鐨勫瓧娈碉紙姣斿`author`鐨勫瓧娈靛悕绉版槸`author_id`锛夛紝杩欎釜瀛楁鏄竴涓閿紝璁板綍鐫€瀵瑰簲鐨勪綔鑰呯殑涓婚敭銆備互鍚庨€氳繃`article.author`璁块棶鐨勬椂鍊欙紝瀹為檯涓婃槸鍏堥€氳繃`author_id`鎵惧埌瀵瑰簲鐨勬暟鎹紝鐒跺悗鍐嶆彁鍙朻User`琛ㄤ腑鐨勮繖鏉℃暟鎹紝褰㈡垚涓€涓ā鍨嬨€?

濡傛灉鎯宠寮曠敤鍙﹀涓€涓猔app`鐨勬ā鍨嬶紝閭ｄ箞搴旇鍦ㄤ紶閫抈to`鍙傛暟鐨勬椂鍊欙紝浣跨敤`app.model_name`杩涜鎸囧畾銆備互涓婁緥涓轰緥锛屽鏋渀User`鍜宍Article`涓嶆槸鍦ㄥ悓涓€涓猘pp涓紝閭ｄ箞鍦ㄥ紩鐢ㄧ殑鏃跺€欑殑绀轰緥浠ｇ爜濡備笅锛?

```python
# User妯″瀷鍦╱ser杩欎釜app涓?
class User(models.Model):
    username = models.CharField(max_length=20)
    password = models.CharField(max_length=100)
# Article妯″瀷鍦╝rticle杩欎釜app涓?
class Article(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField()

    author = models.ForeignKey("user.User",on_delete=models.CASCADE
```

濡傛灉妯″瀷鐨勫閿紩鐢ㄧ殑鏄湰韬嚜宸辫繖涓ā鍨嬶紝閭ｄ箞to鍙傛暟鍙互涓篳''self''`锛屾垨鑰呮槸杩欎釜妯″瀷鐨勫悕瀛椼€傚湪璁哄潧寮€鍙戜腑锛屼竴鑸瘎璁洪兘鍙互杩涜浜岀骇璇勮锛屽嵆鍙互閽堝鍙﹀涓€涓瘎璁鸿繘琛岃瘎璁猴紝閭ｄ箞鍦ㄥ畾涔夋ā鍨嬬殑鏃跺€欏氨闇€瑕佷娇鐢ㄥ閿潵寮曠敤鑷韩

```python
class Comment(models.Model):
    content = models.TextField()
    origin_comment = models.ForeignKey(''self'',on_delete=models.CASCADE,null=True)
    # 鎴栬€?
    # origin_comment = 

models.ForeignKey(''Comment'',on_delete=models.CASCADE,null=True)
```

##### 澶栭敭鍒犻櫎鎿嶄綔
濡傛灉涓€涓ā鍨嬩娇鐢ㄤ簡澶栭敭銆傞偅涔堝湪瀵规柟閭ｄ釜妯″瀷琚垹鎺夊悗锛岃杩涜浠€涔堟牱鐨勬搷浣溿€傚彲浠ラ€氳繃`on_delete`鏉ユ寚瀹氾紝鍙寚瀹氱殑绫诲瀷濡備笅

1. CASCADE锛?绾ц仈鎿嶄綔銆傚鏋滃閿搴旂殑閭ｆ潯鏁版嵁琚垹闄や簡锛岄偅涔堣繖鏉℃暟鎹篃浼氳鍒犻櫎銆?
2. PROTECT锛?锛氬彈淇濇姢銆傚嵆鍙杩欐潯鏁版嵁寮曠敤浜嗗閿殑閭ｆ潯鏁版嵁锛岄偅涔堝氨涓嶈兘鍒犻櫎澶栭敭鐨勯偅鏉℃暟鎹€?
3. SET_NULL锛?璁剧疆涓虹┖銆傚鏋滃閿殑閭ｆ潯鏁版嵁琚垹闄や簡锛岄偅涔堝湪鏈潯鏁版嵁涓婂氨灏嗚繖涓瓧娈佃缃负绌恒€傚鏋滆缃繖涓€夐」锛屽墠鎻愭槸瑕佹寚瀹氳繖涓瓧娈靛彲浠ヤ负绌恒€?
4. SET_DEFAULL锛?璁剧疆榛樿鍊笺€傚鏋滃閿殑閭ｆ潯鏁版嵁琚垹闄や簡锛岄偅涔堟湰鏉℃暟鎹笂灏卞皢杩欎釜瀛楁璁剧疆涓?榛樿鍊笺€傚鏋滆缃繖涓€夐」锛屽墠鎻愭槸瑕佹寚瀹氳繖涓瓧娈典竴涓粯璁ゅ€笺€?
5. SET()锛?濡傛灉澶栭敭鐨勯偅鏉℃暟鎹鍒犻櫎浜嗐€傞偅涔堝皢浼氳幏鍙?SET 鍑芥暟涓殑鍊兼潵浣滀负杩欎釜澶栭敭鐨勫€笺€?SET 鍑芥暟鍙互鎺ユ敹涓€涓彲浠ヨ皟鐢ㄧ殑瀵硅薄锛堟瘮濡傚嚱鏁版垨鑰呮柟娉曪級锛屽鏋滄槸鍙互璋冪敤鐨勫璞★紝閭ｄ箞浼氬皢杩欎釜 瀵硅薄璋冪敤鍚庣殑缁撴灉浣滀负鍊艰繑鍥炲洖鍘汇€?
6. DO_NOTHING锛?涓嶉噰鍙栦换浣曡涓恒€備竴鍒囧叏鐪嬫暟鎹簱绾у埆鐨勭害鏉熴€?

** 浠ヤ笂杩欎簺閫夐」鍙槸Django绾у埆鐨勶紝鏁版嵁绾у埆渚濇棫鏄疪ESTRICT锛?**



##### 琛ㄥ叧绯?
琛ㄤ箣闂寸殑鍏崇郴閮芥槸閫氳繃澶栭敭鏉ヨ繘琛屽叧鑱旂殑銆傝€岃〃涔嬮棿鐨勫叧绯伙紝鏃犻潪灏辨槸涓夌鍏崇郴锛氫竴瀵逛竴銆佷竴瀵瑰锛堝 瀵逛竴锛夈€佸瀵瑰

1. 涓€瀵瑰

搴旂敤鍦烘櫙锛氭瘮濡傛枃绔犲拰浣滆€呬箣闂寸殑鍏崇郴銆備竴涓枃绔犲彧鑳界敱涓€涓綔鑰呯紪鍐欙紝浣嗘槸涓€涓綔鑰呭彲浠ュ啓澶氱瘒 鏂囩珷銆傛枃绔犲拰浣滆€呬箣闂寸殑鍏崇郴灏辨槸鍏稿瀷鐨勫瀵逛竴鐨勫叧绯汇€?

瀹炵幇鏂瑰紡锛?涓€瀵瑰鎴栬€呭瀵逛竴锛岄兘鏄€氳繃`ForeignKey`鏉ュ疄鐜扮殑銆傝繕鏄互鏂囩珷鍜屼綔鑰呯殑妗堜緥杩涜璁茶В

```python
class User(models.Model):
    username = models.CharField(max_length=20)
    password = models.CharField(max_length=100)
 
class Article(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField()
    author = models.ForeignKey("User",on_delete=models.CASCADE)
```

閭ｄ箞浠ュ悗鍐嶇粰Article瀵硅薄鎸囧畾author锛屽氨鍙互浣跨敤涓嬮潰浠ｇ爜鏉ュ疄鐜帮紝 骞朵笖浠ュ悗濡傛灉鎯宠鑾峰彇鏌愪釜鐢ㄦ埛涓嬫墍鏈夌殑鏂囩珷锛屽彲浠ラ€氳繃`article_set`鏉ュ疄鐜?

```python
def one_to_many(request):
    user = User.objects.first()
    articles = user.article_set.filter(title__contains=''Chat'').all()
    for article in articles:
        print(article.title)
    return HttpResponse("鎴愬姛锛侊紒")
```

2. 涓€瀵逛竴

搴旂敤鍦烘櫙锛氭瘮濡備竴涓敤鎴疯〃鍜屼竴涓敤鎴蜂俊鎭〃銆傚湪瀹為檯缃戠珯涓紝鍙兘闇€瑕佷繚瀛樼敤鎴风殑璁稿淇℃伅锛屼絾鏄湁浜涗俊鎭槸涓嶇粡甯哥敤鐨勩€傚鏋滄妸鎵€鏈変俊鎭兘瀛樻斁鍒颁竴寮犺〃涓彲鑳戒細褰卞搷鏌ヨ鏁堢巼锛屽洜姝ゅ彲浠ユ妸鐢ㄦ埛鐨勪竴浜涗笉甯哥敤鐨勪俊鎭瓨鏀惧埌鍙﹀涓€寮犺〃涓垜浠彨鍋歚UserExtension`銆備絾鏄敤鎴疯〃`User`鍜岀敤鎴锋伅琛╜UserExtension`灏辨槸鍏稿瀷鐨勪竴瀵逛竴浜嗐€?

瀹炵幇鏂瑰紡锛歚Django`涓轰竴瀵逛竴鎻愪緵浜嗕竴涓笓闂ㄧ殑`Field`鍙仛`OneToOneField`鏉ュ疄鐜颁竴瀵逛竴鎿嶄綔銆?

```python
class User(models.Model):
    username = models.CharField(max_length=20)
    password = models.CharField(max_length=100)

class UserExtension(models.Model):  
    birthday = models.DateTimeField(null=True)  
    school = models.CharField(blank=True,max_length=50)  
    user = models.OneToOneField("User", on_delete=models.CASCADE)
```

鍦╜UserExtension`妯″瀷涓婂鍔犱簡涓€涓竴瀵逛竴鐨勫叧绯绘槧灏勩€傚叾瀹炲簳灞傛槸鍦?`UserExtension`澧炲姞浜嗕竴涓猔user_id`锛屾潵鍜宍user`琛ㄨ繘琛屽叧鑱旓紝骞朵笖杩欎釜澶栭敭鏁版嵁鍦ㄨ〃涓繀椤绘槸鍞竴鐨勶紝鏉ヤ繚璇佷竴瀵逛竴銆?

3. 澶氬澶?

搴旂敤鍦烘櫙锛氭瘮濡傛枃绔犲拰鏍囩鐨勫叧绯汇€備竴绡囨枃绔犲彲浠ユ湁澶氫釜鏍囩锛屼竴涓爣绛惧彲浠ヨ澶氫釜鏂囩珷鎵€寮曠敤銆?鍥犳鏍囩鍜屾枃绔犵殑鍏崇郴鏄吀鍨嬬殑澶氬澶氱殑鍏崇郴銆?

瀹炵幇鏂瑰紡锛歚Django`涓鸿繖绉嶅瀵瑰鐨勫疄鐜版彁渚涗簡涓撻棬鐨刞Field`鍙仛 `ManyToManyField`杩樻槸鎷挎枃绔犲拰鏍囩涓轰緥琛岃瑙ｃ€傜ず渚嬩唬鐮佸涓嬶細

```python
class Article(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField()
    tags = models.ManyToManyField("Tag",related_name="articles")

class Tag(models.Model):
    name = models.CharField(max_length=50)
```

鍦ㄦ暟鎹簱灞傞潰锛屽疄闄呬笂`Django`鏄负杩欑澶氬澶氱殑鍏崇郴寤虹珛浜嗕竴涓腑闂磋〃銆傝繖涓腑闂磋〃鍒嗗埆瀹氫箟浜嗕袱涓閿紝寮曠敤鍒癭article`鍜宍tag`涓ゅ紶琛ㄧ殑涓婚敭銆?

#### 鏌ヨ鎿嶄綔
鏌ユ壘鏄暟鎹簱鎿嶄綔涓竴涓潪甯搁噸瑕佺殑鎶€鏈€傛煡璇竴鑸氨鏄娇鐢╜filter`銆乣exclude`浠ュ強`get`涓変釜鏂规硶瀹炵幇銆傛垜浠彲浠ュ湪璋冪敤杩欎簺鏂规硶鐨勬椂鍊欎紶閫掍笉鍚岀殑鍙傛暟鏉ュ疄鐜版煡璇㈤渶姹傘€傚湪鏉ORM`灞傞潰锛岃繖浜涙煡璇㈡潯浠堕兘鏄娇鐢╜field`+`__`+`condition`鐨勬柟寮忔潵浣跨敤鐨勩€備互涓嬪皢閭ｄ簺甯哥敤鐨勬煡璇㈡潯浠舵潵涓€涓€瑙ｉ噴銆?

##### 鏌ヨ鏉′欢
1. exact

浣跨敤绮剧‘鐨刞=`杩涜鏌ユ壘銆傚鏋滄彁渚涚殑鏄竴涓猔None`锛岄偅涔堝湪`SQL`灞傞潰灏辨槸琚В閲婁负`NULL`

```python
article = Article.objects.get(id__exact=14)
article = Article.objects.get(id__exact=None)
```

浠ヤ笂鐨勪袱涓煡鎵惧湪缈昏瘧涓篳SQL`璇彞涓哄涓嬶細

```sql
select ... from article where id=14;
select ... from article where id IS NULL;
```

2. iexact

浣跨敤`like`杩涜鏌ユ壘锛屼笌`exact`鐩告瘮蹇界暐澶у皬鍐?

```python
article = Article.objicts.filter(title__iexact=''hello world'')
```

`SQL`灞傞潰浠ｇ爜濡備笅

```sql
select * from article where title like ''hello wordl''
```

娉ㄦ剰涓婇潰杩欎釜`sql`璇彞锛屽洜涓哄湪`MySQL`涓紝娌℃湁涓€涓彨鍋歚ilike`鐨勩€傛墍浠ヤ笂灏辨槸`LIKE`鍜宍=`鐨勫尯鍒紝鍦ㄥぇ閮ㄥ垎`exact`鍜宍iexact`鐨勫尯鍒疄闄卄collation=utf8_general_ci`鎯呭喌涓嬮兘鏄竴鏍风殑锛坄collation`鏄敤鏉ュ瀛楃涓叉瘮杈冪殑锛夈€?

3.  contains

澶у皬鍐欐晱鎰燂紝鍒ゆ柇鏌愪釜瀛楁鏄惁鍖呭惈浜嗘煇涓暟鎹€?

```python
articles = Article.objects.filter(title__contains=''hello'')
```

鍦ㄧ炕璇戞垚SQL璇彞涓哄涓嬶細

```sql
select ... where title like binary ''%hello%'';
```

瑕佹敞鎰忕殑鏄紝鍦ㄤ娇鐢╜contains`鐨勬椂鍊欙紝缈昏瘧鎴愮殑`sql`璇彞宸﹀彸涓よ竟鏄湁鐧惧垎鍙风殑锛屾剰鍛崇潃浣跨敤鐨勬槸妯＄硦鏌ヨ銆傝€宍exact`缈昏瘧鎴恅sql`璇彞宸﹀彸涓よ竟鏄病鏈夌櫨鍒嗗彿鐨勶紝鎰忓懗鐫€浣跨敤鐨勬槸绮剧‘鐨勬煡璇€?

4. icontains

澶у皬鍐欎笉鏁忔劅鐨勫尮閰嶆煡璇€傜ず渚嬩唬鐮佸涓?

```python
articles = Article.objects.filter(title__icontains=''hello'')
```

鍦ㄧ炕璇戞垚`SQL`璇彞涓哄涓?

```sql
select ... where title like ''%hello%'';
```

5. in

鎻愬彇閭ｄ簺缁欏畾鐨刞field`鐨勫€兼槸鍚﹀湪缁欏畾鐨勫鍣ㄤ腑銆傚鍣ㄥ彲浠ヤ负`list`銆乣tuple`鎴栬€呬换浣曚竴涓彲浠ヨ凯浠ｇ殑瀵硅薄锛屽寘 `QuerySet`瀵硅薄銆傜ず渚嬩唬鐮佸涓嬶細

```python
articles = Article.objects.filter(id__in=[1,2,3])
```

缈昏瘧鎴恅sql`璇彞濡備笅

```sql
select ... where id in (1,3,4)
```

褰撶劧涔熷彲浠ヤ紶閫掍竴涓猔QuerySet`瀵硅薄杩涘幓銆?

```python
inner_qs = Article.objects.filter(title__contains=''hello'')
categories = Category.objects.filter(article__in=inner_qs)
```

浠ヤ笂浠ｇ爜鐨勬剰鎬濇槸鑾峰彇閭ｄ簺鏂囩珷鏍囬鍖呭惈`hello`鐨勬墍鏈夊垎绫汇€?

灏嗙炕璇戞垚浠ヤ笅`SQL`璇彞

```sql
select ...from category where article.id in (select id from article where title 
like ''%hello%'');
```

6. gt(澶т簬)锛実te(澶т簬绛変簬)锛宭t(灏忎簬)锛宭te(灏忎簬绛変簬)

```python
articles = Article.objects.filter(id__gt=4)
```

浠ヤ笂浠ｇ爜鐨勬剰鎬濇槸灏嗘墍鏈塦id`澶т簬4鐨勬枃绔犲叏閮ㄦ壘鍑烘潵

灏嗙炕璇戞垚浠ヤ笅鐨刞sql`璇彞

```sql
select ... where id > 4;
```

7. startswith锛宨startswith

鍒ゆ柇鏌愪釜瀛楁鐨勫€兼槸鍚︿簨瀹滄煇涓€煎紑濮嬬殑锛?

`startswith`:澶у皬鍐欐晱鎰?

`istartswith`:澶у皬鍐欎笉鏁忔劅

```python
articles = Article.objects.filter(title__startswith=''hello'')
```

浠ヤ笂浠ｇ爜鐨勬剰鎬濇槸鎻愬彇鎵€鏈夋爣棰樹互`hello`瀛楃涓插紑澶寸殑鏂囩珷銆傚皢缈昏瘧鎴愪互涓媊SQL`璇彞锛?

```sql
select ... where title like ''hello%''
```

8. endswith,iendswith

鍒ゆ柇鏌愪釜瀛楁鐨勫€兼槸鍚︿互鏌愪釜鍊肩粨鏉?

`endswith`澶у皬鍐欐晱鎰?

`iendswith`澶у皬鍐欎笉鏁忔劅

```python
articles = Article.objects.filter(title__endswith=''world'')
```

浠ヤ笂浠ｇ爜鐨勬剰鎬濇槸鎻愬彇鎵€鏈夋爣棰樹互`world`缁撳熬鐨勬枃绔犮€?灏嗙炕璇戞垚浠ヤ笅`SQL`璇彞

```sql
select ... where title like ''%world'';
```

9. range

鍒ゆ柇鏌愪釜 field 鐨勫€兼槸鍚﹀湪缁欏畾鐨勫尯闂翠腑

```python
from django.utils.timezone import make_aware
from datetime import datetime

start_date = make_aware(datetime(year=2018,month=1,day=1))
end_date = make_aware(datetime(year=2018,month=3,day=29,hour=16))
articles = Article.objects.filter(pub_date__range=(start_date,end_date))
```

浠ヤ笂浠ｇ爜鐨勬剰鎬濇槸鎻愬彇鎵€鏈夊彂甯冩椂闂村湪`2018/1/1`鍒癭2018/12/12`涔嬮棿鐨勬枃绔犮€傚皢缈昏瘧鎴愪互涓嬬殑`SQL`璇彞

```sql
 select ... from article where pub_time between ''2018-01-01'' and ''2018-12-12''銆?
```

10.  data

閽堝鏌愪簺`date`鎴栬€卄datetime`绫诲瀷鐨勫瓧娈点€傚彲浠ユ寚瀹歚date`鐨勮寖鍥淬€傚苟涓旇繖涓椂闂磋繃婊わ紝杩樺彲浠ヤ娇鐢ㄩ摼寮忚皟鐢ㄣ€傜ず渚嬩唬鐮佸涓?

```python
articles = Article.objects.filter(pub_date__date=date(2018,3,29))
```

浠ヤ笂浠ｇ爜鐨勬剰鎬濇槸鏌ユ壘鏃堕棿涓篳2018/3/29`杩欎竴澶╁彂琛ㄧ殑鎵€鏈夋枃绔犮€傚皢缈昏瘧鎴愪互涓嬬殑`sql`璇彞锛?

```sql
select ... WHERE DATE(CONVERT_TZ(`front_article`.`pub_date`, ''UTC'', 
''Asia/Shanghai'')) = 2018-03-29
```

11. year,month,day,week_day

鏍规嵁骞达紝鏈堬紝鏃ワ紝鏄熸湡(1锛氬懆澶╋紝2锛氬懆涓€锛屸€︹€?鏌ユ壘

```python
articles = Article.objects.filter(pub_date__year=2018)
articles = Article.objects.filter(pub_date__year__gte=2017)
```

浠ヤ笂鐨勪唬鐮佸湪缈昏瘧鎴恅SQL`璇彞涓哄涓?

```sql
select ... where pub_date between ''2018-01-01'' and ''2018-12-31'';
select ... where pub_date >= ''2017-01-01'';
```

12. time

鏍规嵁鏃堕棿杩涜鏌ユ壘

```python
articles = Article.objects.filter(pub_date__time=datetime.time(12,12,12));
```

浠ヤ笂浠ｇ爜鏄幏鍙栨瘡涓€澶╀腑12鐐?2鍒?2绉掑彂甯冪殑鎵€鏈夋枃绔?

13. isnull

鏍规嵁鍊兼槸鍚︿负绌鸿繘琛屾煡鎵?

```python
articles = Article.objects.filter(pub_date__isnull=False)
```

浠ヤ笂鐨勪唬鐮佺殑鎰忔€濇槸鑾峰彇鎵€鏈夊彂甯冩棩鏈熶笉涓虹┖鐨勬枃绔犮€?灏嗙炕璇戞垚SQL璇彞濡備笅锛?

```sql
select ... where pub_date is not null
```

14. regex鍜宨regex

澶у皬鍐欐晱鎰熷拰澶у皬鍐欎笉鏁忔劅鐨勬鍒欒〃杈惧紡

```python
articles = Article.objects.filter(title__regex=r''^hello'')
```

浠ヤ笂浠ｇ爜鐨勬剰鎬濇槸鎻愬彇鎵€鏈夋爣棰樹互`hello`瀛楃涓插紑澶寸殑鏂囩珷銆?灏嗙炕璇戞垚浠ヤ笅鐨刞SQL`璇彞锛?

```sql
select ... where title regexp binary ''^hello'';
```

15. 鏍规嵁鍏宠仈鐨勮〃杩涜鏌ヨ

鍋囧鐜板湪鏈変袱涓猔ORM`妯″瀷锛屼竴涓槸`Article`锛屼竴涓槸`Category`銆備唬鐮佸涓嬶細

```python
class Category(models.Model):
    """鏂囩珷鍒嗙被琛?""
    name = models.CharField(max_length=100)

class Article(models.Model):
    """鏂囩珷琛?""
    title = models.CharField(max_length=100,null=True)
    category = models.ForeignKey("Category",on_delete=models.CASCADE)
```

姣斿鎯宠鑾峰彇鏂囩珷鏍囬涓寘鍚?hello"鐨勬墍鏈夌殑鍒嗙被銆傞偅涔堝彲浠ラ€氳繃浠ヤ笅浠ｇ爜鏉ュ疄鐜帮細

```python
categories = Category.object.filter(article__title__contains("hello"))
```

##### 鑱氬悎鍑芥暟
濡傛灉浣犵敤鍘熺敓`SQL`锛屽垯鍙互浣跨敤鑱氬悎鍑芥暟鏉ユ彁鍙栨暟鎹€傛瘮濡傛彁鍙栨煇涓晢鍝侀攢鍞殑鏁伴噺锛岄偅涔堝彲浠ヤ娇鐢╜Count`锛屽鏋滄兂瑕佺煡閬撳晢鍝侀攢鍞殑骞冲潎浠锋牸锛岄偅涔堝彲浠ヤ娇鐢╜Avg`銆?

鑱氬悎鍑芥暟鏄€氳繃`aggregate`鏂规硶鏉ュ疄鐜扮殑銆傚湪璁茶В杩欎簺鑱氬悎鍑芥暟鐨勭敤娉曠殑鏃跺€欙紝閮芥槸鍩轰簬浠ヤ笅鐨勬ā鍨嬪 璞℃潵瀹炵幇鐨?

```python
from django.db import models
class Author(models.Model):
    """浣滆€呮ā鍨?""
    name = models.CharField(max_length=100)
    age = models.IntegerField()
    email = models.EmailField()

    class Meta:
        db_table = ''author''

class Publisher(models.Model):
    """鍑虹増绀炬ā鍨?""
    name = models.CharField(max_length=300)

    class Meta:
        db_table = ''publisher''
 
class Book(models.Model):	
    """鍥句功妯″瀷"""
    name = models.CharField(max_length=300)
    pages = models.IntegerField()
    price = models.FloatField()
    rating = models.FloatField()
    author = models.ForeignKey(Author,on_delete=models.CASCADE)
    publisher = models.ForeignKey(Publisher, on_delete=models.CASCADE)

     class Meta:
         db_table = ''book''

class BookOrder(models.Model):
    """鍥句功璁㈠崟妯″瀷"""
    book = models.ForeignKey("Book",on_delete=models.CASCADE)
    price = models.FloatField()
    
    class Meta:
        db_table = ''book_order''
```

1. Avg锛氭眰骞冲潎鍊?

姣斿鎯宠鑾峰彇鎵€鏈夊浘涔︾殑浠锋牸骞冲潎鍊笺€傞偅涔堝彲浠ヤ娇鐢ㄤ互涓嬩唬鐮佸疄鐜般€?

```python
from django.db.models import Avg
result = Book.objects.aggregate(Avg(''price''))
print(result)
```

鍏朵腑`price__avg`鐨勭粨鏋勬槸鏍规嵁`field__avg`瑙勫垯鏋勬垚鐨勩€傚鏋滄兂瑕佷慨鏀归粯璁ょ殑鍚嶅瓧锛岄偅涔堝彲浠ュ皢`Avg`璧嬪€肩粰涓€涓叧閿瓧鍙傛暟

```python
from django.db.models import Avg
result = Book.objects.aggregate(my_avg=Avg(''price''))
print(result)
```

2. Count锛氳幏鍙栨寚瀹氬璞＄殑涓暟

```python
from django.db.models import Count
result = Book.objects.aggregate(book_num=Count(''id''))
```

浠ヤ笂鐨刞result`灏嗚繑鍥瀈Book`琛ㄤ腑鎬诲叡鏈夊灏戞湰鍥句功

`Count`绫讳腑锛岃繕鏈夊彟澶栦竴涓弬鏁板彨鍋歚distinct`锛岄粯璁ゆ槸绛変簬`False`锛屽鏋滄槸绛変簬`True`锛岄偅涔堝皢鍘绘帀閭ｄ簺閲嶅鐨勫€笺€傛瘮濡傝鑾峰彇浣滆€呰〃涓墍鏈夌殑涓嶉噸澶嶇殑閭鎬诲叡鏈夊灏戜釜锛岄偅涔堝彲浠ラ€氳繃浠ヤ笅浠ｇ爜鏉ュ疄鐜帮細

```python
from djang.db.models import Count
result = Author.objects.aggregate(count=Count(''email'',distinct=True))
```

3. Max鍜孧in锛氳幏鍙栨寚瀹氬璞＄殑鏈€澶у€煎拰鏈€灏忓€?

姣斿鎯宠鑾峰彇`Author`琛ㄤ腑锛屾渶澶х殑骞撮緞鍜屾渶灏忕殑骞撮緞鍒嗗埆鏄灏戙€傞偅涔堝彲浠ラ€氳繃浠ヤ笅浠ｇ爜鏉ュ疄鐜帮細

```python
from django.db.models import Max,Min
result = Author.objects.aggregate(Max(''age''),Min(''age''))
```

4. Sum锛氭眰鎸囧畾瀵硅薄鐨勬€诲拰

姣斿瑕佹眰鍥句功鐨勯攢鍞€婚

```python
from djang.db.models import Sum
result = Book.objects.annotate(total=Sum("bookstore__price")).values("name","total")
```

浠ヤ笂鐨勪唬鐮乣annotate`鐨勬剰鎬濇槸缁檂Book`琛ㄥ湪鏌ヨ鐨勬椂鍊欐坊鍔犱竴涓瓧娈靛彨鍋歚total`锛岃繖涓瓧娈电殑鏁版嵁鏉ユ簮鏄粠`BookStore`妯″瀷鐨刞price`鐨勬€诲拰鑰屾潵銆俙values`鏂规硶鏄彧鎻愬彇`name`鍜宍total`涓や釜瀛楁鐨勫€笺€?

鏇村鐨勮仛鍚堝嚱鏁拌鍙傝€冨畼鏂规枃妗?

##### aggregate鍜宎nnotate鐨勫尯鍒?
+ `aggregate`

杩斿洖浣跨敤鑱氬悎鍑芥暟鍚庣殑瀛楁鍜屽€笺€?

+ `annotate`

鍦ㄥ師鏉ユā鍨嬪瓧娈电殑鍩虹涔嬩笂娣诲姞涓€涓娇鐢ㄤ簡鑱氬悎鍑芥暟鐨勫瓧娈碉紝骞朵笖鍦ㄤ娇鐢ㄨ仛鍚堝嚱鏁扮殑 鏃跺€欙紝浼氫娇鐢ㄥ綋鍓嶈繖涓ā鍨嬬殑涓婚敭杩涜鍒嗙粍锛坓roup by锛?

##### F琛ㄨ揪寮忓拰Q琛ㄨ揪寮?
1. F琛ㄨ揪寮?

F琛ㄨ揪寮忔槸鐢ㄦ潵浼樺寲 ORM 鎿嶄綔鏁版嵁搴撶殑

```python
from djang.db.models import F
# 姣斿灏咮ook妯″瀷涓殑''price''瀛楁鐨勫€奸兘+10锛?
# 鍙娇鐢‵琛ㄨ揪鏄潵浼樺寲浠ｇ爜
Book.object.update(price=F("price")+10)
```

F琛ㄨ揪寮忓苟涓嶄細椹笂浠庢暟鎹簱涓幏鍙栨暟鎹紝鑰屾槸鍦ㄧ敓鎴恅SQL`璇彞鐨勬椂鍊欙紝鍔ㄦ€佺殑鑾峰彇浼犵粰F琛ㄨ揪寮忕殑鍊笺€?

```python
from django.db.models import F
# 鑾峰彇Author妯″瀷涓璶ame鍜宔mail鐩稿悓鐨勬暟鎹?
authors = Author.objects.filter(name=F("email"))
```

2. Q琛ㄨ揪寮?

Q琛ㄨ揪寮忓彲浠ヨ繘琛屾垨锛坄|`锛夈€佷笖锛坄&`锛夈€侀潪锛坄~`锛夎繍绠?

```python
from django.db.models import Q
# 鑾峰彇id绛変簬3鐨勫浘涔?
books = Book.objects.filter(Q(id=3))
# 鑾峰彇id绛変簬3锛屾垨鑰呭悕瀛椾腑鍖呭惈鏂囧瓧"璁?鐨勫浘涔?
books = Book.objects.filter(Q(id=3)|Q(name__contains("璁?)))
# 鑾峰彇浠锋牸澶т簬100锛屽苟涓斾功鍚嶄腑鍖呭惈"璁?鐨勫浘涔?
books = Book.objects.filter(Q(price__gte=100)&Q(name__contains("璁?)))
# 鑾峰彇涔﹀悕鍖呭惈鈥滆鈥濓紝浣嗘槸id涓嶇瓑浜?鐨勫浘涔?
books = Book.objects.filter(Q(name__contains=''璁?) & ~Q(id=3))
```

#### 琛ㄥ崟
##### HTML涓殑琛ㄥ崟
鍗曠函浠庡墠绔殑`html`鏉ヨ锛岃〃鍗曟槸鐢ㄦ潵鎻愪氦鏁版嵁缁欐湇鍔″櫒鐨?涓嶇鍚庡彴鐨勬湇鍔″櫒鐢ㄧ殑鏄痐Django`杩樻槸`PHP`璇█杩樻槸鍏朵粬璇█銆傚彧瑕佹妸`input`鏍囩鏀惧湪`form`鏍囩涓紝鐒跺悗鍐嶆坊鍔犱竴涓彁浜ゆ寜閽紝閭ｄ箞浠ュ悗鐐瑰嚮鎻愪氦鎸夐挳锛屽氨鍙互灏哷input`鏍囩涓搴旂殑鍊兼彁浜ょ粰鏈嶅姟鍣ㄤ簡

##### Django涓殑琛ㄥ崟
`Django`涓殑琛ㄥ崟涓板瘜浜嗕紶缁熺殑`HTML`璇█涓殑琛ㄥ崟銆傚湪`Django`涓殑琛ㄥ崟涓昏鍋氫互涓嬩袱浠朵簨

1. 娓叉煋琛ㄥ崟妯℃澘銆?

2. 琛ㄥ崟楠岃瘉鏁版嵁鏄惁鍚堟硶銆?

##### Django涓〃鍗曚娇鐢ㄦ祦绋?
鍦ㄨ瑙Django`琛ㄥ崟鐨勫叿浣撴瘡閮ㄥ垎鐨勭粏鑺備箣鍓嶃€傛垜浠鍏堝厛鏉ョ湅涓嬫暣浣撶殑浣跨敤娴佺▼銆傝繖閲屼互涓€涓仛涓€涓暀瑷€鏉夸负渚嬨€傞鍏堟垜浠湪鍚庡彴鏈嶅姟鍣ㄥ畾涔変竴涓〃鍗曠被锛岀户鎵胯嚜 `django.forms.Form`銆?

```python
# forms.py
class MessageBoardForm(forms.Form):
    title = forms.CharField(max_length=3,label=''鏍囬'',min_length=2,error_messages={"min_length":''鏍囬瀛楃娈典笉绗﹀悎瑕佹眰锛?})
    content = forms.CharField(widget=forms.Textarea,label=''鍐呭'')
    email = forms.EmailField(label=''閭'')
    reply = forms.BooleanField(required=False,label=''鍥炲'')
```

鐒跺悗鍦ㄨ鍥句腑锛屾牴鎹槸`GET`杩樻槸`POST`璇锋眰鏉ュ仛鐩稿簲鐨勬搷浣溿€傚鏋滄槸`GET`璇锋眰锛岄偅涔堣繑鍥炰竴涓┖鐨勮〃鍗曪紝 濡傛灉鏄痐POST`璇锋眰锛岄偅涔堝皢鎻愪氦涓婃潵鐨勬暟鎹繘琛屾牎楠屻€傜ず渚嬩唬鐮佸涓?

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

鍦ㄤ娇鐢╜GET`璇锋眰鐨勬椂鍊欙紝鎴戜滑浼犱簡涓€涓猔form`缁欐ā鏉匡紝閭ｄ箞浠ュ悗妯℃澘灏卞彲浠ヤ娇鐢╜form`鏉ョ敓鎴愪竴涓〃鍗曠殑`html`浠ｇ爜銆傚湪浣跨敤`POST`璇锋眰鐨勬椂鍊欙紝鎴戜滑鏍规嵁鍓嶇涓婁紶涓婃潵鐨勬暟鎹紝鏋勫缓涓€涓柊鐨勮〃鍗曪紝杩欎釜琛ㄥ崟鏄敤鏉ラ獙璇佹暟鎹槸鍚﹀悎娉曠殑锛屽鏋滄暟鎹兘楠岃瘉閫氳繃浜嗭紝閭ｄ箞鎴戜滑鍙互閫氳繃`cleaned_data`鏉ヨ幏鍙栫浉搴旂殑鏁版嵁 鍦ㄦā鏉夸腑娓叉煋琛ㄥ崟鐨刞HTML`浠ｇ爜濡備笅

```html
<form action="" method="post">
  <table>
    <tr>
      <td></td>
      <td><input type="submit" value="鎻愪氦"></td>
    </tr>
  </table>
</form>
```

鎴戜滑鍦ㄦ渶澶栭潰缁欎簡涓€涓猔form`鏍囩锛岀劧鍚庡湪閲岄潰浣跨敤浜哷table`鏍囩鏉ヨ繘琛岀編鍖栵紝鍦ㄤ娇鐢╜form`瀵硅薄娓叉煋鐨勬椂鍊欙紝浣跨敤鐨勬槸`table`鐨勬柟寮忥紝褰撶劧杩樺彲浠ヤ娇鐢╜ul`鐨勬柟寮忥紙`as_ul`)锛屼篃鍙互浣跨敤p鏍囩鐨勬柟寮忥紙`as_p`锛夛紝骞朵笖鍦ㄥ悗闈㈡垜浠繕鍔犱笂浜嗕竴涓彁浜ゆ寜閽€傝繖鏍峰氨鍙互鐢熸垚涓€涓〃鍗曚簡銆?

#### 琛ㄥ崟楠岃瘉
##### 甯哥敤鐨凢ield
浣跨敤`Field`鍙互鏄鏁版嵁楠岃瘉鐨勭涓€姝ャ€備綘鏈熸湜杩欎釜鎻愪氦涓婃潵鐨勬暟鎹槸浠€涔堢被鍨嬶紝閭ｄ箞灏变娇鐢ㄤ粈涔堢被鍨嬬殑`Field`銆?

1. CharField

鐢ㄦ潵鎺ュ彈鏂囨湰

鍙傛暟锛?

`max_length`锛氳繖涓瓧娈靛€肩殑鏈€澶ч暱搴︺€?

`min_length`锛氳繖涓瓧娈靛€肩殑鏈€灏忛暱搴︺€?

`required`锛氳繖涓瓧娈垫槸鍚︽槸蹇呴』鐨勩€傞粯璁ゆ槸蹇呴』鐨勩€?

`error_messages`锛氬湪鏌愪釜鏉′欢楠岃瘉澶辫触鐨勬椂鍊欙紝缁欏嚭閿欒淇℃伅銆?

2. EmailField

鐢ㄦ潵鎺ユ敹閭欢锛屼細鑷姩楠岃瘉閭欢鏄惁鍚堟硶銆?

閿欒淇℃伅鐨刞key`锛歚required`銆乣invalid`

3. FloatField

鐢ㄦ潵鎺ユ敹娴偣绫诲瀷锛屽苟涓斿鏋滈獙璇侀€氳繃鍚庯紝浼氬皢杩欎釜瀛楁鐨勫€艰浆鎹负娴偣绫诲瀷銆?鍙傛暟锛?

`max_value`:鏈€澶х殑鍊?

`min_value`:鏈€灏忕殑鍊?

閿欒淇℃伅鐨刞key`锛歚required`銆乣invalid` 銆乣max_value`銆乣min-value`

4. IntegerField

鐢ㄦ潵鎺ユ敹鏁村舰锛屽苟涓旈獙璇侀€氳繃鍚庯紝浼氬皢杩欎釜瀛楁鐨勫€艰浆鎹负鏁村舰銆?鍙傛暟锛?

`max_value`:鏈€澶х殑鍊?

`min_value`:鏈€灏忕殑鍊?

閿欒淇℃伅鐨刞key`锛歚required`銆乣invalid` 銆乣max_value`銆乣min-value`

5. URLField

鐢ㄦ潵鎺ユ敹`url`鏍煎紡鐨勫瓧绗︿覆銆?

閿欒淇℃伅鐨刞key`锛歚required`銆乣invalid`銆?

##### 甯哥敤鐨勯獙璇佸櫒
鍦ㄩ獙璇佹煇涓瓧娈电殑鏃跺€欙紝鍙互浼犻€掍竴涓猔validators`鍙傛暟鐢ㄦ潵鎸囧畾楠岃瘉鍣紝杩涗竴姝ュ鏁版嵁杩涜杩囨护銆傞獙璇佸櫒鏈夊緢澶氾紝浣嗘槸寰堝楠岃瘉鍣ㄦ垜浠叾瀹炲凡缁忛€氳繃杩欎釜`Field`鎴栬€呬竴浜涘弬鏁板氨鍙互鎸囧畾浜嗐€傛瘮濡俙EmailValidator`锛屾垜浠彲浠ラ€氳繃`EmailField`鏉ユ寚瀹氾紝姣斿`MaxValueValidator`锛屾垜浠彲浠ラ€氳繃`max_value`鍙傛暟鏉ユ寚瀹氾紝浠ヤ笅鏄竴浜涘父鐢ㄧ殑楠岃瘉鍣?

1.`EmailField`锛氶獙璇佹渶澶у€笺€?

2.`MinValueValidator`锛氶獙璇佹渶灏忓€笺€?

3.`MinLengthValidator`锛氶獙璇佹渶灏忛暱搴︺€?

4.`MaxLengthValidator`锛氶獙璇佹渶澶ч暱搴︺€?

5.`EmailValidator`锛氶獙璇佹槸鍚︽槸閭鏍煎紡銆?

6.`URLValidator`锛氶獙璇佹槸鍚︽槸 URL 鏍煎紡銆?

7. `RegexValidotro`锛氬鏋滆繕闇€瑕佹洿鍔犲鏉傜殑楠岃瘉锛岄偅涔堟垜浠彲浠ラ€氳繃姝ｅ垯琛ㄨ揪寮忕殑楠岃瘉鍣╜RegexValidator`銆傛瘮濡傜幇鍦ㄨ楠岃瘉鎵嬫満鍙风爜鏄惁鍚堟牸锛岄偅涔堟垜浠彲浠ラ€氳繃浠ヤ笅浠ｇ爜瀹炵幇

```python
class MyForm(forms.Form):
    telephone = forms.CharField(
        validators=[validators.RegexValidator("1[345678]\d{9}",
        message=''璇疯緭鍏ユ纭牸寮忕殑鎵嬫満鍙风爜锛?)])
```

##### 鑷畾涔夐獙璇?
鏈夋椂鍊欏涓€涓瓧娈甸獙璇侊紝涓嶆槸涓€涓暱搴︼紝涓€涓鍒欒〃杈惧紡鑳藉鍐欐竻妤氱殑锛岃繕闇€瑕佷竴浜涘叾浠栧鏉傜殑閫昏緫锛岄偅涔堟垜浠彲浠ュ鏌愪釜瀛楁锛岃繘琛岃嚜瀹氫箟鐨勯獙璇併€傛瘮濡傚湪娉ㄥ唽鐨勮〃鍗曢獙璇佷腑锛屾垜浠兂瑕侀獙璇佹墜鏈哄彿鐮佹槸鍚﹀凡缁忚娉ㄥ唽杩囦簡锛岄偅涔堣繖鏃跺€欏氨闇€瑕佸湪鏁版嵁搴撲腑杩涜鍒ゆ柇鎵嶇煡閬撱€傚鏌愪釜瀛楁杩涜鑷畾涔夌殑楠岃瘉鏂瑰紡鏄紝瀹氫箟涓€涓柟娉曪紝杩欎釜鏂规硶鐨勫悕瀛楀畾涔夎鍒欐槸锛?`clean_fieldname`銆傚鏋滈獙璇佸け璐ワ紝閭ｄ箞灏辨姏鍑轰竴涓?楠岃瘉閿欒銆傛瘮濡傝楠岃瘉鐢ㄦ埛琛ㄤ腑鎵嬫満鍙风爜涔嬪墠鏄惁鍦ㄦ暟鎹簱涓瓨鍦紝閭ｄ箞鍙互閫氳繃浠ヤ笅浠ｇ爜瀹炵幇锛?

```python
class MyForm(forms.Form):
    telephone = forms.CharField(validators=
    [validators.RegexValidator("1[345678]\d{9}",message=''璇疯緭鍏ユ纭牸寮忕殑鎵嬫満鍙风爜锛?)])
    def clean_telephone(self):
        telephone = self.cleaned_data.get(''telephone'')
        exists = User.objects.filter(telephone=telephone).exists()
        if exists:
            raise forms.ValidationError("鎵嬫満鍙风爜宸茬粡瀛樺湪锛?)
        return telephone
```

浠ヤ笂鏄鏌愪釜瀛楁杩涜楠岃瘉锛屽鏋滈獙璇佹暟鎹殑鏃跺€欙紝闇€瑕侀拡瀵瑰涓瓧娈佃繘琛岄獙璇侊紝閭ｄ箞鍙互閲嶅啓鏂规硶`clean`銆傛瘮濡傝鍦ㄦ敞鍐岀殑鏃跺€欙紝瑕佸垽鏂彁浜ょ殑涓や釜瀵嗙爜鏄惁鐩哥瓑銆傞偅涔堝彲浠ヤ娇鐢ㄤ互涓嬩唬鐮佹潵瀹屾垚锛?

```python
class MyForm(forms.Form):
    telephone = forms.CharField(validators=
    [validators.RegexValidator("1[345678]\d{9}",message=''璇疯緭鍏ユ纭牸寮忕殑鎵嬫満鍙风爜锛?)])
    pwd1 = forms.CharField(max_length=12)
    pwd2 = forms.CharField(max_length=12)
    
    def clean(self):
        cleaned_data = super().clean()
        pwd1 = cleaned_data.get(''pwd1'')
        pwd2 = cleaned_data.get(''pwd2'')
        if pwd1 != pwd2:
        raise forms.ValidationError(''涓や釜瀵嗙爜涓嶄竴鑷达紒'')
```

##### 鎻愬彇閿欒淇℃伅
濡傛灉楠岃瘉澶辫触浜嗭紝閭ｄ箞鏈変竴浜涢敊璇俊鎭槸鎴戜滑闇€瑕佷紶缁欏墠绔殑銆傝繖鏃跺€欐垜浠彲浠ラ€氳繃浠ヤ笅灞炴€ф潵鑾峰彇

1. `form.errors` 杩欎釜灞炴€ц幏鍙栫殑閿欒淇℃伅鏄竴涓寘鍚簡`html`鏍囩鐨勯敊璇俊鎭€?
2. `form.errors.get_json_data()`杩欎釜鏂规硶鑾峰彇鍒扮殑鏄竴涓瓧鍏哥被鍨嬬殑閿欒淇℃伅锛屽皢鏌愪釜瀛楁鐨勫悕瀛椾綔涓篳key`閿欒淇℃伅浣滀负鍊肩殑涓€涓瓧鍏?
3. `form.errorsd.as_json()`  杩欎釜鏂规硶鏄皢`form.get_json_data()`杩斿洖鐨勫瓧鍏竊dump`鎴恅json`鏍煎紡鐨勫瓧绗︿覆锛屾柟渚胯繘琛屼紶杈撱€?
4.  涓婅堪鏂规硶鑾峰彇鐨勫瓧娈电殑閿欒鍊硷紝閮芥槸涓€涓瘮杈冨鏉傜殑鏁版嵁銆傛瘮濡備互涓嬶細

```python
{''username'': [{''message'': ''Enter a valid URL.'', ''code'': ''invalid''}, {''message'': 
''Ensure this value has at most 4 characters (it has 22).'', ''code'': 
''max_length''}]}
```

閭ｄ箞濡傛灉鎴戝彧鎯虫妸閿欒淇℃伅鏀惧湪涓€涓垪琛ㄤ腑锛岃€屼笉瑕佸啀鏀惧湪涓€涓瓧鍏镐腑銆傝繖鏃跺€欐垜浠彲浠ュ畾涔変竴涓柟 娉曪紝鎶婅繖涓暟鎹噸鏂版暣鐞嗕竴浠姐€傚疄渚嬩唬鐮佸涓嬶細

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

杩欐牱灏卞彲浠ユ妸鏌愪釜瀛楁鎵€鏈夌殑閿欒淇℃伅鐩存帴鏀惧湪杩欎釜鍒楄〃涓€?

#### ModelForm
##### 鍩烘湰浣跨敤
澶у鍦ㄥ啓琛ㄥ崟鐨勬椂鍊欙紝浼氬彂鐜拌〃鍗曚腑鐨刞Field`鍜屾ā鍨嬩腑鐨刞Field`鍩烘湰涓婃槸涓€妯′竴鏍风殑锛岃€屼笖琛ㄥ崟涓渶瑕侀獙璇佺殑鏁版嵁锛屼篃灏辨槸鎴戜滑妯″瀷涓渶瑕佷繚瀛樼殑銆傞偅涔堣繖鏃跺€欐垜浠氨鍙互灏嗘ā鍨嬩腑鐨勫瓧娈靛拰琛ㄥ崟涓殑瀛楁杩涜缁戝畾銆?

姣斿鐜板湪鏈変釜`Article`鐨勬ā鍨?

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

閭ｄ箞鍦ㄥ啓琛ㄥ崟鐨勬椂鍊欙紝灏变笉闇€瑕佹妸`Article`妯″瀷涓墍鏈夌殑瀛楁閮戒竴涓釜閲嶅鍐欎竴閬嶄簡

```python
from django import forms
class MyForm(forms.ModelForm):
    class Meta:
        model = Article
        fields = "__all__"
```

`MyForm`鏄户鎵胯嚜`forms.ModelForm`锛岀劧鍚庡湪琛ㄥ崟涓畾涔変簡涓€涓猔Meta`绫伙紝鍦╜Meta`绫讳腑鎸囧畾浜哷model=Article`锛屼互鍙奰fields="__all__"`锛岃繖鏍峰氨鍙互灏哷Article`妯″瀷涓墍鏈夌殑瀛楁閮藉鍒惰繃鏉ワ紝杩涜楠岃瘉銆傚鏋滃彧鎯抽拡瀵瑰叾涓嚑涓瓧娈佃繘琛岄獙璇侊紝閭ｄ箞鍙互缁檂fields`鎸囧畾涓€涓垪琛紝灏嗛渶瑕佺殑瀛楁鍐欒繘鍘汇€傛瘮濡傚彧鎯抽獙璇乣title`鍜宍content`锛岄偅涔堝彲浠ヤ娇鐢ㄤ互涓嬩唬鐮佸疄鐜帮細

```python
from django import forms
class MyForm(forms.ModelForm):
    class Meta:
        model = Article
        fields = [''title'',''content'']
```

濡傛灉瑕侀獙璇佺殑瀛楁姣旇緝澶氾紝鍙槸闄や簡灏戞暟鍑犱釜瀛楁涓嶉渶瑕侀獙璇侊紝閭ｄ箞鍙互浣跨敤`exclued`鏉ヤ唬鏇縛fields`銆傛瘮濡傛垜涓嶆兂楠岃瘉`category`锛岄偅涔堢ず渚嬩唬鐮佸涓嬶細

```python
class MyForm(forms.ModelForm):
    class Meta:
        model = Article
        exclude = [''category'']
```

##### 鑷畾涔夐敊璇秷鎭?
浣跨敤`ModelForm`锛屽洜涓哄瓧娈甸兘涓嶆槸鍦ㄨ〃鍗曚腑瀹氫箟鐨勶紝鑰屾槸鍦ㄦā鍨嬩腑瀹氫箟鐨勶紝鍥犳涓€浜涢敊璇秷鎭棤娉曞湪瀛楁涓畾涔夈€傞偅涔堣繖鏃跺€欏彲浠ュ湪`Meta`绫讳腑锛屽畾涔塦error_messages`锛岀劧鍚庢妸鐩稿簲鐨勯敊璇秷鎭啓鍒伴噷闈㈠幓銆?绀轰緥浠ｇ爜濡備笅锛?

```python
class MyForm(forms.ModelForm):
    class Meta:
        model = Article
        exclude = [''category'']
        error_messages  ={
            ''title'':{
            ''max_length'': ''鏈€澶氫笉鑳借秴杩?0涓瓧绗︼紒'',
            ''min_length'': ''鏈€灏戜笉鑳藉皯浜?涓瓧绗︼紒''
            },
            ''content'': {
            ''required'': ''蹇呴』杈撳叆content锛?,
            }
        }
```

##### save鏂规硶
`ModelForm`杩樻湁`save`鏂规硶锛屽彲浠ュ湪楠岃瘉瀹屾垚涔嬪悗鐩存帴璋冪敤`save`鏂规硶锛屽氨鍙互灏嗚繖涓暟鎹繚瀛樺埌鏁版嵁搴撲腑浜嗭紝绀轰緥浠ｇ爜濡備笅

```python
form = MyForm(request.POST)
    if form.is_valid():
        form.save()
        return HttpResponse(''succes'')
    else:
        print(form.get_errors())
        return HttpResponse(''fail'')
```

杩欎釜鏂规硶蹇呴』瑕佸湪`clean`娌℃湁闂鍚庢墠鑳戒娇鐢紝濡傛灉鍦╜clean`涔嬪墠浣跨敤锛屼細鎶涘嚭寮傚父銆傚彟澶栵紝鎴戜滑鍦ㄨ皟鐢╜save`鏂规硶鐨勬椂鍊欙紝濡傛灉浼犲叆涓€涓猔commit=False`锛岄偅涔堝彧浼氱敓鎴愯繖涓ā鍨嬬殑瀵硅薄锛岃€屼笉浼氭妸杩欎釜瀵硅薄鐪熸鐨勬彃鍏ュ埌鏁版嵁搴撲腑銆傛瘮濡傝〃鍗曚笂楠岃瘉鐨勫瓧娈垫病鏈夊寘鍚ā鍨嬩腑鎵€鏈夌殑瀛楁锛岃繖鏃跺€欏氨鍙互鍏堝垱寤哄璞★紝鍐嶆牴鎹～鍏呭叾浠栧瓧娈碉紝鎶婃墍鏈夊瓧娈电殑鍊奸兘琛ュ厖瀹屾垚鍚庯紝鍐嶄繚瀛樺埌鏁版嵁搴撲腑銆傜ず渚嬩唬鐮佸涓嬶細

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
#### cookie鍜宻ession銆?
##### Cookie浠嬬粛
1. cookie锛氬湪缃戠珯涓紝`http`璇锋眰鏄棤鐘舵€佺殑銆備篃灏辨槸璇村嵆浣跨涓€娆″拰鏈嶅姟鍣ㄨ繛鎺ュ悗骞朵笖鐧诲綍鎴愬姛鍚庯紝 绗簩娆¤姹傛湇鍔″櫒渚濈劧涓嶈兘鐭ラ亾褰撳墠璇锋眰鏄摢涓敤鎴枫€俙cookie`鐨勫嚭鐜板氨鏄负浜嗚В鍐宠繖涓棶棰橈紝绗?涓€娆＄櫥褰曞悗鏈嶅姟鍣ㄨ繑鍥炰竴浜涙暟鎹紙cookie锛夌粰娴忚鍣紝鐒跺悗娴忚鍣ㄤ繚瀛樺湪鏈湴锛屽綋璇ョ敤鎴峰彂閫佺浜屾璇锋眰鐨勬椂鍊欙紝灏变細鑷姩鐨勬妸涓婃璇锋眰瀛樺偍鐨刞cookie`鏁版嵁鑷姩鐨勬惡甯︾粰鏈嶅姟鍣紝鏈嶅姟鍣ㄩ€氳繃娴忚鍣ㄦ惡甯︾殑鏁版嵁灏辫兘鍒ゆ柇褰撳墠鐢ㄦ埛鏄摢涓簡銆俙cookie`瀛樺偍鐨勬暟鎹噺鏈夐檺锛屼笉鍚岀殑娴忚鍣ㄦ湁涓嶅悓鐨勫瓨鍌ㄥぇ灏忥紝浣嗕竴鑸笉瓒呰繃4KB銆傚洜姝や娇鐢╟ookie鍙兘瀛樺偍涓€浜涘皬閲忕殑鏁版嵁銆?
2. session锛?`session`鍜宍cookie`鐨勪綔鐢ㄦ湁鐐圭被浼硷紝閮芥槸涓轰簡瀛樺偍鐢ㄦ埛鐩稿叧鐨勪俊鎭€備笉鍚岀殑鏄紝`cookie`鏄瓨鍌ㄥ湪鏈湴娴忚鍣紝session鏄竴涓€濊矾銆佷竴涓蹇点€佷竴涓湇鍔″櫒瀛樺偍鎺堟潈淇℃伅鐨勮В鍐虫柟妗堬紝涓嶅悓鐨勬湇鍔″櫒锛屼笉鍚岀殑妗嗘灦锛屼笉鍚岀殑璇█鏈変笉鍚岀殑瀹炵幇銆傝櫧鐒跺疄鐜颁笉涓€鏍凤紝浣嗘槸浠栦滑鐨勭洰鐨勯兘鏄湇鍔″櫒涓轰簡鏂逛究瀛樺偍鏁版嵁鐨勩€俙session`鐨勫嚭鐜帮紝鏄负浜嗚В鍐砢cookie`瀛樺偍鏁版嵁涓嶅畨鍏ㄧ殑闂鐨勩€?
3. `cookie`鍜宍session`浣跨敤锛歸eb寮€鍙戝彂灞曡嚦浠婏紝`cookie`鍜宍session`鐨勪娇鐢ㄥ凡缁忓嚭鐜颁簡涓€浜涢潪甯告垚鐔熺殑鏂规銆傚湪濡備粖鐨勫競鍦烘垨鑰呬紒涓氶噷锛屼竴鑸湁涓ょ瀛樺偍鏂瑰紡锛?
    -  瀛樺偍鍦ㄦ湇鍔＄锛氶€氳繃`cookie`瀛樺偍涓€涓猔sessionid`锛岀劧鍚庡叿浣撶殑鏁版嵁鍒欐槸淇濆瓨鍦╜session`涓€傚鏋滅敤鎴峰凡缁忕櫥褰曪紝鍒欐湇鍔″櫒浼氬湪`cookie`涓繚瀛樹竴涓猔sessionid`锛屼笅娆″啀娆¤姹傜殑鏃跺€欙紝浼氭妸璇sessionid`鎼哄甫涓婃潵锛屾湇鍔″櫒鏍规嵁`sessionid`鍦╜session`搴撲腑鑾峰彇鐢ㄦ埛鐨刞session`鏁版嵁銆傚氨鑳界煡閬撹鐢ㄦ埛鍒板簳鏄皝锛屼互鍙婁箣鍓嶄繚瀛樼殑涓€浜涚姸鎬佷俊鎭€傝繖绉嶄笓涓氭湳璇彨鍋歚server side session` 銆俙Django`鎶奰session`淇℃伅榛樿瀛樺偍鍒版暟鎹簱涓紝褰撶劧涔熷彲浠ュ瓨鍌ㄥ埌鍏朵粬鍦版柟锛屾瘮濡傜紦瀛樹腑锛屾枃浠剁郴缁熶腑绛夈€傚瓨鍌ㄥ湪鏈嶅姟鍣ㄧ殑鏁版嵁浼氭洿鍔犵殑瀹夊叏锛屼笉瀹规槗琚獌鍙栥€?浣嗗瓨鍌ㄥ湪鏈嶅姟鍣ㄤ篃鏈変竴瀹氱殑寮婄锛屽氨鏄細鍗犵敤鏈嶅姟鍣ㄧ殑璧勬簮锛屼絾鐜板湪鏈嶅姟鍣ㄥ凡缁忓彂灞曡嚦浠婏紝涓€浜沗session`淇℃伅杩樻槸缁扮话鏈変綑鐨勩€?
    -   灏哷session`鏁版嵁鍔犲瘑锛岀劧鍚庡瓨鍌ㄥ湪`cookie`涓€傝繖绉嶄笓涓氭湳璇彨鍋歚client side session`銆俙flask`妗嗘灦榛樿閲囩敤鐨勫氨鏄繖绉嶆柟寮忥紝浣嗘槸涔熷彲浠ユ浛鎹㈡垚鍏朵粬褰㈠紡銆?

##### 鍦―jango涓搷浣渃ookie
1. **璁剧疆cookie**

璁剧疆`cookie`鏄缃€肩粰娴忚鍣ㄧ殑銆傚洜姝ゆ垜浠渶瑕侀€氳繃`respose`鐨勫璞℃潵璁剧疆锛岃缃甡cookie`鍙互閫氳繃`response.set_cookie`鏉ヨ缃紝杩欎釜鏂规硶鐨勭浉鍏冲弬鏁板涓?

    1. `key`锛氳繖涓猔cookie`鐨刞key`
    2. `ualue`:杩欎釜`cookie`鐨刞value`
    3. `max_age`锛氭渶闀跨殑鐢熷懡鍛ㄦ湡
    4. `expires`锛?杩囨湡鏃堕棿銆傝窡`max_age`鏄被浼肩殑锛屽彧涓嶈繃杩欎釜鍙傛暟闇€瑕佷紶閫掍竴涓叿浣撶殑鏃ユ湡锛屾瘮濡俙datetime`鎴栬€呮槸绗﹀悎鏃ユ湡鏍煎紡鐨勫瓧绗︿覆銆傚鏋滃悓鏃惰缃簡`expires`鍜宍max_age`锛岄偅涔堝皢浼氫娇鐢╜expires`鐨勫€间綔涓鸿繃鏈熸椂闂淬€? 
    5. `path`锛氬鍩熷悕涓嬪摢涓矾寰勬湁鏁堛€傞粯璁ゆ槸瀵瑰煙鍚嶄笅鎵€鏈夎矾寰勯兘鏈夋晥
    6. `domain`锛氶拡瀵瑰摢涓煙鍚嶆湁鏁堛€傞粯璁ゆ槸鐪熷涓诲煙鍚嶄笅閮芥湁鏁堬紝濡傛灉鍊兼湁閽堝鏌愪釜瀛愬煙鍚嶆墠鏈夋晥锛岄偅涔堝彲浠ヨ缃繖涓睘鎬?
    7. `secure`锛氭槸鍚︽槸瀹夊叏鐨勶紝濡傛灉璁剧疆涓篳True`閭ｄ箞鍙兘鍦╜https`鍗忚涓嬫墠鍙敤
    8. `httponly`锛氶粯璁ゅ€间负`False`濡傛灉涓篳True`锛岄偅涔堝湪瀹㈡埛绔笉鑳介€氳繃`JavaScript`杩涜鎿嶄綔
2. **鍒犻櫎cookie**

閫氳繃`delete_cookie`鍗冲彲鍒犻櫎`cookie`銆傚疄闄呬笂鍒犻櫎`cookie`灏辨槸灏嗘寚瀹氱殑`cookie`鐨勫€艰缃负绌虹殑瀛楃涓诧紝鐒跺悗浣跨敤灏嗕粬鐨勮繃鏈熸椂闂磋缃负0锛屼篃灏辨槸娴忚鍣ㄥ叧闂悗灏辫繃鏈熴€?

3. **鑾峰彇cookie**

鑾峰彇娴忚鍣ㄥ彂閫佽繃鏉ョ殑`cookie`淇℃伅銆傚彲浠ラ€氳繃`request.COOKIES`鏉ユ垨鑰呫€傝繖涓璞℃槸涓€涓瓧鍏哥被鍨嬨€?姣斿鑾峰彇鎵€鏈夌殑`cookie`锛岄偅涔堢ず渚嬩唬鐮佸涓嬶細



```python
cookies = request.COOKIES
for cookie_key,cookie_value in cookies.items():
    print(cookie_key,cookie_value)
```

##### 鍦―jango涓搷浣渟ession
`django`涓殑`session`榛樿鎯呭喌涓嬫槸瀛樺偍鍦ㄦ湇鍔″櫒鐨勬暟鎹簱涓殑锛屽湪琛ㄤ腑浼氭牴鎹甡sessionid`鏉ユ彁鍙栨寚瀹氱殑`session`鏁版嵁锛岀劧鍚庡啀鎶婅繖涓猔sessionid`鏀惧埌`cookie`涓彂閫佺粰娴忚鍣ㄥ瓨鍌紝娴忚鍣ㄤ笅娆″湪鍚戞湇鍔″櫒 鍙戦€佽姹傜殑鏃跺€欎細鑷姩鐨勬妸鎵€鏈塦cookie`淇℃伅閮藉彂閫佺粰鏈嶅姟鍣紝鏈嶅姟鍣ㄥ啀浠巂cookie`涓幏鍙朻sessionid`锛?鐒跺悗鍐嶄粠鏁版嵁搴撲腑鑾峰彇`session`鏁版嵁銆備絾鏄垜浠湪鎿嶄綔`session`鐨勬椂鍊欙紝杩欎簺缁嗚妭鍘嬫牴灏变笉鐢ㄧ銆傛垜浠彧闇€瑕侀€氳繃`request.session`鍗冲彲鎿嶄綔銆傜ず渚嬩唬鐮佸涓嬶細

```python
def index(resquest):
    request.session.get(''username'')
    return HttpResponse(''index'')
```

`session`甯哥敤鐨勬柟娉曞涓?

1. `get`锛氱敤鏉ヤ粠`session`涓幏鍙栨寚瀹氬€笺€?
2. `pop`锛氫粠`session`涓垹闄や竴涓€笺€?
3. `keys`锛氫粠`session`涓幏鍙栨墍鏈夌殑閿€?
4. `items`锛氫粠`session`涓幏鍙栨墍鏈夌殑鍊笺€?
5. `clear`锛氭竻闄ゅ綋鍓嶈繖涓敤鎴风殑`session`鏁版嵁銆?
6. `flush`锛氬垹闄session`骞朵笖鍒犻櫎鍦ㄦ祻瑙堝櫒涓瓨鍌ㄧ殑`session_id`锛屼竴鑸湪娉ㄩ攢鐨勬椂鍊欑敤寰楁瘮杈冨銆?
7. `set_expiry(value)`锛氳缃繃鏈熸椂闂淬€?
    - 鏁村舰锛氫唬琛ㄧ鏁帮紝琛ㄧず澶氬皯绉掑悗杩囨湡銆?
    - 0锛氫唬琛ㄥ彧瑕佹祻瑙堝櫒鍏抽棴锛宍session`灏变細杩囨湡銆?
    - None锛氫細浣跨敤鍏ㄥ眬鐨刞session`閰嶇疆銆傚湪`settings.py`涓彲浠ヨ缃甡SESSION_COOKIE_AGE`鏉ラ厤缃叏灞€鐨勮繃鏈熸椂闂淬€傞粯璁ゆ槸1209600绉掞紝涔熷氨鏄?鍛ㄧ殑鏃堕棿銆?
8. `clear_expired`锛氭竻闄よ繃鏈熺殑`session`銆俙Django`骞朵笉浼氭竻闄よ繃鏈熺殑`session`锛岄渶瑕佸畾鏈熸墜鍔ㄧ殑娓呯悊锛屾垨鑰呮槸鍦ㄧ粓绔紝浣跨敤鍛戒护琛宍python manage.py clearsessions`鏉ユ竻闄よ繃鏈熺殑`session`銆?

##### 淇敼session鐨勫偍瀛樻満鍒?
榛樿鎯呭喌涓嬶紝`session`鏁版嵁鏄瓨鍌ㄥ埌鏁版嵁搴撲腑鐨勩€傚綋鐒朵篃鍙互灏哷session`鏁版嵁瀛樺偍鍒板叾浠栧湴鏂广€傚彲浠ラ€?杩囪缃甡SESSION_ENGINE`鏉ユ洿鏀筦session`鐨勫瓨鍌ㄤ綅缃紝杩欎釜鍙互閰嶇疆涓轰互涓嬪嚑绉嶆柟妗堬細

1. `django.contrib.sessions.backends.db`锛氫娇鐢ㄦ暟鎹簱銆傞粯璁ゅ氨鏄繖绉嶆柟妗堛€?
2. `django.contrib.sessions.backends.file`锛氫娇鐢ㄦ枃浠舵潵瀛樺偍`session`銆?
3. `django.contrib.sessions.backends.cache`锛氫娇鐢ㄧ紦瀛樻潵瀛樺偍`session`銆傛兂瑕佸皢鏁版嵁瀛樺偍鍒扮紦瀛樹腑锛屽墠鎻愭槸浣犲繀椤昏鍦╜settings.py`涓厤缃ソ`CACHES`锛屽苟涓旀槸闇€瑕佷娇鐢╜Memcached`锛岃€屼笉鑳戒娇鐢ㄧ函鍐呭瓨浣滀负缂撳瓨銆?
4. `django.contrib.sessions.backends.cached_db `锛氬湪瀛樺偍鏁版嵁鐨勬椂鍊欙紝浼氬皢鏁版嵁鍏堝瓨鍒扮紦瀛樹腑锛屽啀瀛樺埌鏁版嵁搴撲腑銆傝繖鏍峰氨鍙互淇濊瘉涓囦竴缂撳瓨绯荤粺鍑虹幇闂锛宍session`鏁版嵁涔熶笉浼氫涪澶便€傚湪鑾峰彇鏁版嵁鐨勬椂鍊欙紝浼氬厛浠庣紦瀛樹腑鑾峰彇锛屽鏋滅紦瀛樹腑娌℃湁锛岄偅涔堝氨浼氫粠鏁版嵁搴撲腑鑾峰彇銆?
5. `django.contrib.sessions.backends.signed_cookies`锛氬皢`session`淇℃伅鍔犲瘑鍚庡瓨鍌ㄥ埌娴忚鍣ㄧ殑`cookie`涓€傝繖绉嶆柟寮忚娉ㄦ剰瀹夊叏锛屽缓璁缃甡SESSION_COOKIE_HTTPONLY=True`锛岄偅涔堝湪娴忚鍣?涓笉鑳介€氳繃js鏉ユ搷浣渀session`鏁版嵁锛屽苟涓旇繕闇€瑕佸`settings.py`涓殑`SECRET_KEY`杩涜淇濆瘑锛屽洜涓轰竴鏃﹀埆浜虹煡閬撹繖涓猔SECRET_KEY`閭ｄ箞灏卞彲浠ヨ繘琛岃В瀵嗐€傚彟澶栬繕鏈夊氨鏄湪`cookie`涓紝瀛樺偍鐨勬暟鎹笉鑳借秴杩?k銆?

#### 闃插尽CSRF鏀诲嚮
鏈嶅姟鍣ㄤ唬鐮?

```python
MIDDLEWARE = [
    ''django.middleware.csrf.csrfviewMiddleware''
]
```

妯＄増浠ｇ爜

```html
<input type="hidden" name="csrfmiddlewaretoken" value={{ csrf_token }}
```

鎴栬€呮槸鐩存帴浣跨敤csrf_token鏍囩锛屽湪鑷姩鐢熸垚涓€涓甫鏈塩srf_token鐨刬nput鏍囩

/bg
', NOW());
SET @last_note_id = LAST_INSERT_ID();

INSERT INTO 
ote (uthor_id, 	itle, content, created_at)
VALUES (1002, 'MySql', '# 鍩烘湰鍛戒护
```sql
show databases;  #鏌ョ湅鎵€鏈夋暟鎹簱

use mysql;   # 鍒囨崲鏁版嵁搴?

show tables;   # 鏌ョ湅鏁版嵁搴撲腑鎵€鏈夌殑琛?

describe student;  # 鏌ョ湅琛ㄧ殑淇℃伅

create database newdb;  # 鍒涘缓鏁版嵁搴?

exit;   # 鏂紑杩炴帴
```

# 鎿嶄綔鏁版嵁搴?
+ 鍒涘缓鏁版嵁搴?
    - create database [if not exists] new_db;
+ 鍒犻櫎鏁版嵁搴?
    - drop database [if exists] new_db;
+ 浣跨敤鏁版嵁搴?
    - use new_db;
+ 鏌ョ湅鎵€鏈夋暟鎹簱
    - show databases;

# 鏁版嵁搴撹〃鎿嶄綔
## 鍒楃被鍨?
+ 鏁板€?
    - tinyint  鍗佸垎灏忕殑鏁版嵁   1涓瓧鑺?
    - smallint  杈冨皬鐨勬暟鎹? 2涓瓧鑺?
    - mediumint  涓瓑澶у皬鐨勬暟鎹?  3涓瓧鑺?
    - **int   鏍囧噯鐨勬暣鏁?      4涓瓧鑺?*
    - big  杈冨ぇ鐨勬暟鎹?    8涓瓧鑺?
    - float   娴偣鏁?   4涓瓧鑺?
    - double  娴偣鏁? 8涓瓧鑺?
    - decimal  瀛楃涓插舰寮忕殑娴偣鏁? 閲戣瀺璁＄畻鐨勪娇鐢紝涓€鑸娇鐢?
+ 瀛楃涓?
    - char 瀛楃涓插浐瀹氬ぇ灏?  0~255
    - **varchar 鍙彉闀垮瓧绗︿覆  0~65535**
    - tinytext  寰瀷鏂囨湰  2^8 - 1
    - text  鏂囨湰涓?     2^16 - 1    淇濆瓨澶ф枃鏈?
+ 鏃堕棿鏃ユ湡
    - java.util.Date
    - date   YYY-MM-DD 鏃ユ湡鏍煎紡
    - time   HH: mm: ss  鏃堕棿鏍煎紡
    - **datetime  YYY-MM-DD HH: mm: ss  鏈€甯哥敤**
    - **timestamp  鏃堕棿鎴?  姣旇緝甯哥敤锛?*
    - year  骞翠唤琛ㄧず
+ null
    - 娌℃湁鍊硷紝鏈煡
    - 涓嶈浣跨敤NULL杩涜杩愮畻锛岀粨鏋滀竴瀹氫负NULL

## 瀛楁灞炴€?
+ Unsigned锛?
    - 鏃犵鍙风殑鏁存暟
    - 澹版槑浜嗚鍒椾笉鑳藉０鏄庝负璐熸暟
+ zerofill锛?
    - 0濉厖鐨?
    - 涓嶈冻鐨勪綅鏁帮紝浣跨敤0鏉ュ～鍏?  int锛堬級锛?5  ....  005
+ 鑷
    - 閫氬父鐞嗚В涓鸿嚜澧烇紝鑷姩瀛椾竴鏉¤褰曠殑鍩虹涓?1锛堥粯璁わ級
    - 閫氬父鐢ㄦ潵璁捐鍞竴鐨勪富閿畘  index锛?蹇呴』鏄暣鏁扮被鍨?
    - 鍙互鑷畾涔夎璁′富閿嚜澧炵殑璧峰鍊煎拰姝ラ暱
+ 闈炵┖
    - 鍋囪璁剧疆涓?not null , 濡傛灉涓嶇粰浠栬祴鍊硷紝灏变細鎶ラ敊
    - NULL锛屽鏋滀笉濉啓鍊硷紝榛樿灏辨槸null锛?
+ 榛樿锛?
    - 璁剧疆榛樿鐨勫€硷紒
    -

## 鍒涘缓鏁版嵁搴撹〃
auto_increment 鑷

瀛楃涓蹭娇鐢?鍗曞紩鍙锋嫭璧锋潵

鎵€鏈夌殑璇彞鍚庨潰鍔犻€楀彿

primary key 涓婚敭

```sql
create table if not exists `student`(
  `id` int(4) not null auto_increment comment ''瀛﹀彿'',
  `name` varchar(30) not null default ''鍖垮悕'' comment ''濮撳悕'',
  `pwd` varchar(20) not null default ''123456'' comment ''瀵嗙爜'',
  `sex` varchar(2) not null default ''濂? comment ''鎬у埆'',
  `birthday` datetime default null comment ''鐢熸棩'',
  `address` varchar(100) default null comment ''瀹跺涵鍦板潃'',
  `email` varchar(50) default null comment ''閭'',
  primary key(`id`)
)engine=innoob default charset=utf8;
```

鏍煎紡

```sql
create table [if not exists] `琛ㄥ悕`(
  `瀛楁鍚峘 鍒楃被鍨?灞炴€?绱㈠紩 娉ㄩ噴锛?
  `瀛楁鍚峘 鍒楃被鍨?灞炴€?绱㈠紩 娉ㄩ噴锛?
  .......
  `瀛楁鍚峘 鍒楃被鍨?灞炴€?绱㈠紩 娉ㄩ噴锛?
)[琛ㄧ被鍨媇[瀛楃闆嗚缃甝[娉ㄩ噴]
```

+ show create database ''鏁版嵁搴?
    - 鏌ョ湅鍒涘缓鏁版嵁搴撶殑鍛戒护
+ show create table ''琛ㄥ悕''
    - 鏌ョ湅鍒涘缓琛ㄧ殑璇彞
+ desc ''琛ㄥ悕''
    - 鏄剧ず琛ㄧ殑缁撴瀯

## 淇敼鍒犻櫎琛?
+ 淇敼琛ㄥ悕
    - ALTER TABLE  鍘熸姤鍚?rename 鏂拌〃鍚?
+ 澧炲姞琛ㄧ殑瀛楁
    - ALTER TABLE 琛ㄥ悕 add 瀛楁 绫诲瀷
+ 淇敼琛ㄧ殑瀛楁
    - ALTER TABLE 琛ㄥ悕 modify 瀛楁 绫诲瀷
        * 淇敼绾︽潫
    - ALTER TABLE 琛ㄥ悕 change 鍘熷瓧娈?鏂板瓧娈?绫诲瀷
        * 閲嶅懡鍚嶅瓧娈?
+ 鍒犻櫎琛ㄧ殑瀛楁
    - ALTER TABLE 琛ㄥ悕 DROP 瀛楁
+ 鍒犻櫎琛?
    - DROP TABLE [if exists] 琛ㄥ悕



# MySQL鏁版嵁搴撶鐞?
## 澶栭敭
+ 鏂瑰紡涓€锛屽湪鍒涘缓琛ㄧ殑鏃跺€欐坊鍔犲閿?

```sql
key `fk_gradeid` (`gradeid`),
constranint `FK_gradeid` 
foreign key(`gradeid`)
references `grade`(`gradeid`)銆?
```

+ 鏂瑰紡浜岋紝鍦ㄥ垱寤哄畬琛ㄥ悗娣诲姞澶栭敭

```sql
ALTER TABLE `student`
add constranint `FK_gradeid`  # 绾︽潫
foreign key(`gradeid`)        # 浣滀负澶栭敭鐨勫垪
references `grade`(`gradeid`) # 鍝釜琛ㄧ殑鍝釜瀛楁
```

## DML璇█
+ 鎻掑叆
    - insert into 琛ㄥ悕锛堝瓧娈?锛屽瓧娈?锛屽瓧娈?锛塿alues (''鍊?'', ''鍊?'', ''鍊?'')

```sql
insert into student(`id`, `name`, `sex`, `age`)
values(''1'', ''zhangsan'', ''鐢?, ''18''),
(''2'', ''lisi'', ''鐢?, ''18'');
```

+ 淇敼
    - update 琛ㄥ悕 set  瀛楁=value  where 鏉′欢
    - 涓嶆坊鍔犳潯浠剁殑璇濅細鏀瑰姩琛ㄧ殑鎵€鏈夋暟鎹?
    - value鍙互鏄€?涔熷彲浠ユ槸鍙橀噺
    - 澶氫釜璁剧疆鐨勫睘鎬т箣闂达紝浣跨敤鑻辨枃閫楀彿闅斿紑

```sql
update `student` set `name`=''寮犱笁'' where `id`=''1'' and `id`=''3'';
```

+ 鍒犻櫎
    - delete from 琛ㄥ悕 where 鏉′欢
    - truncate 鍛戒护 鍒犻櫎琛ㄤ腑鐨勫叏閮ㄦ暟鎹紝浣嗚〃缁撴瀯鍜岀储寮曠害鏉熶笉浼氬彉
        * delete 涓嶄細鍒犻櫎鑷   truncate 浼氫娇鑷褰掗浂

```sql
delete from `student` where `id`=''1'';
```

    - 

# DQL鏌ヨ鏁版嵁
## select瀹屾暣璇硶
<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1747035055729-d45778a6-7a78-4c38-a123-427fc863e4d6.png" width="570.6666666666666" title="" crop="0,0,1,1" id="u729b1fbf" class="ne-image">

## 鎸囧畾鏌ヨ瀛楁
璇硶锛?select 瀛楁...  from  琛ㄥ悕

```sql
-- 鏌ヨ鍏ㄩ儴瀛楁 
select * from student

-- 鏌ヨ鎸囧畾瀛楁
select id,name from student;

-- 鍒悕
select id as 瀛﹀彿, name as 濮撳悕, from student as s;

-- 鍑芥暟 concat(a, b) 杩炴帴瀛楃涓?
select concat(''濮撳悕锛?, name) as 濮撳悕 from student;
```

鏁版嵁搴撶殑鍒楋紙琛ㄨ揪寮忥級

```sql
select VERSION()  -- 鏌ヨ绯荤粺鐗堟湰锛堝嚱鏁帮級
select 100*3-1 as 璁＄畻楗ョ粨鏋? -- 鐢ㄦ潵璁＄畻锛堣〃杈惧紡锛?
select @@auto_increment_increment -- 鏌ヨ鑷鐨勬闀匡紙鍙橀噺锛?

-- 鏄煡璇㈢粨鏋?1
select 	`studentNO`, `studnetResult`+1 as ''鎻愬垎鍚? from result
```

鏁版嵁搴撲腑鐨勮〃杈惧紡锛氭枃鏈€硷紝鍒楋紝null锛?鍑芥暟锛岃绠楄〃杈惧紡锛?绯荤粺鍙橀噺...

select 琛ㄨ揪寮?from 琛ㄥ悕

## where瀛愬彞
浣滅敤锛氭绱㈡暟鎹腑绗﹀悎鏉′欢鐨勫€?

鎼滅储鐨勬潯浠剁敱涓€涓垨澶氫釜琛ㄨ揪寮忕粍鎴愶紒缁撴灉 甯冨皵鍊?

---

閫昏緫杩愮畻绗?

| 杩愮畻绗?| 璇硶 | 鎻忚堪 |
| --- | --- | --- |
| and && | a and b      a&&b | 閫昏緫涓庯紝涓や釜閮戒负鐪燂紝缁撴灉涓虹湡 |
| or || | a or b         a||b | 閫昏緫鎴栵紝鍏朵腑涓€涓负鐪燂紝缁撴灉涓虹湡 |
| not ! | not a        !a | 閫昏緫闈烇紝鐪熶负鍋囷紝鍋囦负鐪?|


```sql
-- 鏌ヨ鑰冭瘯鎴愮哗鍦?5~100 涔嬮棿鐨?
select id, result from result
where result>=95 and result<=100;

-- 妯＄硦鏌ヨ锛堝尯闂达級
select id, result from result
where between 95 and 100;

-- 鎴愮哗涓嶇瓑浜?5鐨?
select id, result from result
where not result=95;
-- where result!=95;
```

---

妯＄硦鏌ヨ: 姣旇緝杩愮畻绗?

| 杩愮畻绗?| 璇硶 | 鎻忚堪 |
| --- | --- | --- |
| IS NULL | a is null | 濡傛灉鎿嶄綔绗︿负null锛岀粨鏋滀负鐪?|
| IS NOT NULL | a is not null | 濡傛灉鎿嶄綔绗︿负not null锛岀粨鏋滀负鐪?|
| between | a between b and c | 鑻鍦╞鍜宑涔嬮棿锛屽垯缁撴灉涓虹湡 |
| LIKE | a like b | SQL鍖归厤锛屽鏋渁鍖归厤b锛屽垯缁撴灉涓虹湡 |
| IN | a in (a1, a2,a3...) | 鍋囪a鏄痑1锛宎2... 涓殑涓€涓紝鍒欑粨鏋滀负鐪?|


```sql
-- 鏌ヨ濮撳垬鐨勫悓瀛?
-- LIKE缁撳悎 %(0涓瓧绗﹀埌浠绘剰涓瓧绗? _(涓€涓瓧绗?
select id, name from student
where name like ''鍒?''
-- where name like ''鍒榑'';
-- where name like ''鍒榑_'';

-- 鏌ヨ鍚嶅瓧涓甫鏈?浣?瀛楃殑鍚屽
select id, name from student 
where name like ''%浣?'';

-- ==========in锛堝叿浣撶殑鍊硷級=========
-- 鏌ヨ
select * from student
where id in(1001, 1002, 1003);

-- =======null  not null======
-- 鏌ヨ娌℃湁鍑虹敓鏃ユ湡鐨勫悓瀛? 涓虹┖ 
select * from student
where birthday is null;
-- 鏌ヨ鏈夊嚭鐢熸棩鏈熺殑鍚屽  涓嶄负绌?
select * from student
where birthday is not null;
```

## 鑱旇〃鏌ヨ join on
璇硶锛?join 杩炴帴鐨勮〃 on 鏉′欢

join 瀵规瘮

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

| 鎿嶄綔 | 鎻忚堪 |
| --- | --- |
| inner join | 濡傛灉鑷冲皯鏈変竴涓尮閰嶏紝灏辫繑鍥炶 |
| left join | 浼氫粠宸﹁〃杩斿洖鎵€鏈夌殑鍊硷紝鍗充娇鍙宠〃娌℃湁鍖归厤 |
| right join | 浼氫粠鍙宠〃杩斿洖鎵€鏈夌殑鍊硷紝鍗充娇宸﹁〃娌℃湁鍖归厤 |


```sql
-- 鏌ヨ瀛﹀彿锛坰tudent锛? 濮撳悕锛坰tudent锛?瀛︾锛坰ubject锛?
-- 鎴愮哗锛坮esult锛?
select s.id, s.name, subjectName, result
from student s
right join result r
on s.id=r.id
inner join subject sub
on r.subjectId = sub.subjectId
```

鎬濊矾

+ 瑕佹煡璇㈢殑鍝簺鏁版嵁  select ......
+ 浠庡摢鍑犱釜琛ㄤ腑鏌ヨ from 琛? xxx join 杩炴帴鐨勮〃 on 浜ゅ弶鏉′欢
+ 鍋囪瀛樺湪澶氬琛ㄦ煡璇紝鍏堜粠涓ゅ紶琛ㄥ紑濮嬫煡璇?

---

**鑷繛鎺?*

鑷繁鐨勮〃鍜岃嚜宸辩殑琛ㄨ繛鎺ワ紝

```sql
-- 鏌ヨ鐖跺瓙淇℃伅锛?鎶婁竴寮犺〃鐪嬩负涓ゅ紶涓€妯′竴鏍风殑琛?

select a.categoryName, b.categoryName 
from category a, category b
where a.categoryid=b.pid
```

## 鍒嗛〉鍜屾帓搴?
**order by  鎺掑簭**

璇硶锛歰rder by 鎺掑簭瀛楁 鎺掑簭鏂规硶

+ desc 闄嶅簭
+ asc  鍗囧簭

```sql
select s.id, s.name, sub.subName, r.result
from student s
inner join result r
on s.id=r.id
inner join subject sub
on r.name = sub.name
where sub.name=''鏁版嵁搴?
order by r.result asc/desc
```

---

**鍒嗛〉**

璇硶 limit 璧峰鍊硷紝椤甸潰鐨勫ぇ灏?

+ pageSize: 椤甸潰澶у皬
+ 锛坣-1锛?pageSize 锛氬綋鍓嶉〉璧峰鍊?
+ n 涓哄綋鍓嶉〉

```sql
select s.id, s.name, sub.subName, r.result
from student s
inner join result r
on s.id=r.id
inner join subject sub
on r.name = sub.name
where sub.name=''鏁版嵁搴?
order by r.result asc/desc
limit 0,5;
```

## 瀛愭煡璇?
```sql
-- 鏌ヨ 瀛︾敓id锛宯ame  鎴愮哗澶т簬80  绉戠洰鏄珮绛夋暟瀛?
select id,name from student where id in(
  select id from result where result>80 and subjectId =(
    select subjectId from subject where subjectName=''楂樼瓑鏁板''
  )
)
```

## 鍒嗙粍鍜岃繃婊?
```sql
select 
 avg(result) as 骞冲潎鍒?
 max(result) as 鏈€楂樺垎
 min(result) as 鏈€浣庡垎
 subjectName as 璇剧▼鍚?
From result r
inner join subject sub
on sub.subjectid = r.subjectid 
group by sub.subjectName
having 骞冲潎 >= 80
```

# MySQL鍑芥暟
## 甯哥敤鍑芥暟
鏁板杩愮畻

+ abs(-8)   缁濆鍊?
+ celing(9.4)  鍚戜笂鍙栨暣
+ floor(9.6)   鍚戜笅鍙栨暣
+ rand()   杩斿洖涓€涓?~1涔嬮棿鐨勯殢鏈烘暟
+ sign(-10)  杩斿洖涓€涓暟鐨勭鍙?  璐熸暟 杩斿洖-1  姝ｆ暟杩斿洖1

瀛楃涓插嚱鏁?

+ char_length(''abcdefghijk'')    瀛楃涓茬殑闀垮害
+ concat(''5'',''2'',''0'')   鎷兼帴瀛楃涓?
+ insert(''1314'',1,2 ,''14'')     鎻掑叆鏇挎崲 浠?寮€濮嬬殑2涓暱搴︽浛鎹负14
+ lower(''KuangShen'')   鍏ㄩ儴杞负灏忓啓
+ upper(''KuangShen'')    鍏ㄩ儴杞负澶у啓
+ instr(''kuangshen'', ''h'')    杩斿洖绗竴娆″嚭鐜扮殑浣嶇疆
+ replace(''1314'', ''13'', ''14'')   鏇挎崲鍑虹幇鐨勬寚瀹氬瓧绗︿覆
+ substr(''鎴彇瀛楃涓?, 2, 3)   浠庝綅缃?寮€濮嬫埅鍙栭暱搴︿负3鐨勫瓧绗︿覆
+ reverse(''鍙嶈浆瀛楃涓?)   鍙嶈浆瀛楃涓?

鏃堕棿鍜屾棩鏈熷嚱鏁?

+ current_date()   鑾峰彇褰撳墠鏃ユ湡
+ curday()    鑾峰彇褰撳墠鏃ユ湡
+ now()   鑾峰彇褰撳墠鏃堕棿
+ localtime()  鏈湴鏃堕棿
+ sysdate()   绯荤粺鏃堕棿
+ year(now())    骞?
+ month(now())  鏈?
+ day(now())  鏃?
+ hour(now())  鏃?
+ minute(now()) 鍒?
+ second(now())  绉?

绯荤粺

+ systeem_user()  绯荤粺鐢ㄦ埛鍚?
+ version()   鐗堟湰

## 鑱氬悎鍑芥暟
count()     璁℃暟

sum()   姹傚拰

avg()    骞冲潎鏁?

max()   鏈€澶у€?

min()   鏈€灏忓€?

```sql
select count(name) from student;   -- 鎸囧畾鍒? 浼氬拷鐣?null 鍊?
select count(*) from student;  -- 涓嶄細蹇界暐 null 鍊?
select count(1) from student;

select sum(result) as 鎬诲悎 From result
select avg(result) as 骞冲潎 From result
select max(result) as 鏈€澶у€?From result
select min(result) as 鏈€灏忓€?from result

select 
 avg(result) as 骞冲潎鍒?
 max(result) as 鏈€楂樺垎
 min(result) as 鏈€浣庡垎
 subjectName as 璇剧▼鍚?
From result r
inner join subject sub
on sub.subjectid = r.subjectid 
group by sub.subjectName
having 骞冲潎 >= 80
```

## 鏁版嵁搴撶骇鍒殑md5鍔犲瘑
# 浜嬪姟
## 浜嬪姟ACID鍘熷垯
+ 鍘熷瓙鎬?
    - 瑕佷箞閮芥垚鍔燂紝瑕佷箞閮藉け璐?
+ 涓€鑷存€?
    - 浜嬪姟鍓嶅悗鐨勬暟鎹畬鏁存€т繚璇佷竴鑷?
+ 鎸佺画鎬?
    - 浜嬪姟涓€鏃︽彁浜ゅ氨涓嶅彲閫嗭紝琚寔涔呭寲鍒版暟鎹簱涓?
+ 闅旂鎬?
    - 浜嬪姟鐨勯殧绂绘€ф槸澶氫釜鐢ㄦ埛骞跺彂璁块棶鏁版嵁搴撴椂锛屾暟鎹簱涓烘瘡涓敤鎴峰紑鍚殑浜嬬墿锛屼笉鑳借鍏朵粬浜嬪姟鐨勬搷浣滄暟鎹墍灞炰簬鐨勪簨鐗╀箣闂磋鐩镐簰闅旂
+ 闅旂鎵€瀵艰嚧鐨勯棶棰?
    - 鑴忚
    - 涓嶅彲閲嶅璇?
    - 铏氳(骞昏)

## MySQL灞傞潰鐨勪簨鐗?
```sql
-- MySQL鏄粯璁ゅ紑鍚簨鍔¤嚜鍔ㄦ彁浜ょ殑
set autocommit = 0   -- 鍏抽棴
set autocommit = 1   -- 寮€鍚?

-- 鎵嬪姩澶勭悊浜嬪姟
set autocommit = 0  -- 鍏抽棴鑷姩鎻愪氦

-- 浜嬪姟寮€鍚?
start transaction -- 鏍囪涓€涓簨鍔＄殑寮€濮嬶紝浠庤繖涓箣鍚庣殑sql閮藉湪鍚屼竴涓簨鍔″唴
insert xx
insert xx

-- 鎻愪氦锛氭寔涔呭寲
commit
-- 鍥炴粴锛氬洖鍒颁簨鍔′箣鍓嶇殑鏍峰瓙
rollback

-- 浜嬪姟缁撴潫
set autocommit = 1  -- 寮€鍚嚜鍔ㄦ彁浜?

-- 浜嗚В
savepoint 淇濆瓨鐐瑰悕  -- 璁剧疆涓€涓簨鍔＄殑淇濆瓨鐐?
rollback to savepoint 淇濆瓨鐐瑰悕   -- 鍥炴粴鍒颁繚瀛樼偣
release savepoint 淇濆瓨鐐瑰悕  -- 鎾ら攢淇濆瓨鐐?
```

# 绱㈠紩
## 绱㈠紩鐨勫垎绫?
MySQL瀹樻柟瀵圭储寮曠殑瀹氫箟涓猴細绱㈠紩锛坕ndex锛夋槸甯姪MySQL楂樻晥鑾峰彇鏁版嵁鐨勬暟鎹粨鏋勶紝鎻愬彇鍙ュ瓙鐨勪富骞诧紝灏卞彲浠ュ緱鍒扮储寮曠殑鏈川锛氱储寮曟槸鏁版嵁缁撴瀯

+ 涓婚敭绱㈠紩   primary key
    - 鍞竴鐨勬爣璇嗭紝涓嶅彲閲嶅锛屽彧鑳芥湁涓€涓垪浣滀负绱㈠紩
+ 鍞竴绱㈠紩  unique  key
    - 閬垮厤閲嶅鍑虹幇鐨勫垪锛屽敮涓€鎵€寮曞彲浠ラ噸澶嶏紝澶氫釜鍒楅兘鍙互鏍囪瘑浣?鍞竴绱㈠紩
+ 甯歌绱㈠紩  key/index
    - 榛樿鐨勶紝 index锛?key鍏抽敭瀛楁潵璁剧疆
+ 鍏ㄦ枃绱㈠紩  FullText
    - 鍦ㄧ壒瀹氱殑鏁版嵁搴撳紩鎿庝笅鎵嶆湁
    - 蹇€熷畾浣嶆暟鎹?

```sql
-- 鏄剧ず鎵€鏈夌储寮曚俊鎭?
show index from student

-- 澧炲姞涓€涓储寮?
alter TABLE student add fulltext studentname(studentname)

-- explain 鍒嗘瀽sql鎵ц鐨勭姸鎬?
explain select * From student; -- 闈炲叏鏂囩储寮?
select * From student where match(studentname) against(''鍒?)锛?
```

## 鍒涘缓绱㈠紩
```sql
-- id_琛ㄥ悕_瀛楁鍚?
-- create index 绱㈠紩鍚?on 琛ㄥ悕(瀛楁)
create index id_student_name on student(name);
```

鏁版嵁鍦ㄥ皬鏁版嵁鐨勬椂鍊欙紝鐢ㄥ涓嶅ぇ锛屼絾鍦ㄦ暟鎹噺澶х殑鏃跺€欙紝鏁堟灉姣旇緝鏄庢樉

## 绱㈠紩瑙勫垯
+ 绱㈠紩涓嶆槸瓒婂瓒婂ソ
+ 涓嶈瀵圭粡甯稿彉鍔ㄧ殑鏁版嵁鍔犵储寮?
+ 灏忔暟鎹噺鐨勮〃涓嶇敤娣诲姞绱㈠紩
+ 绱㈠紩涓€鑸姞鍦ㄥ父鐢ㄦ潵鏌ヨ鐨勫瓧娈典笂

绱㈠紩鐨勬暟鎹粨鏋?

Hash绫诲瀷鐨勭储寮?

btree锛歩nnoDB鐨勯粯璁ゆ暟鎹粨鏋?

# 鏉冮檺绠＄悊鍜屽浠?
## 鐢ㄦ埛绠＄悊
```sql
-- 鍒涘缓鐢ㄦ埛
-- create user 鐢ㄦ埛鍚?identified by ''瀵嗙爜''
create user kuangshen identified by ''123456''

-- 淇敼瀵嗙爜 锛堜慨鏀瑰綋鍓嶇敤鎴风殑瀵嗙爜锛?
set password = password(''1111111'')
-- 淇敼瀵嗙爜 锛堜慨鏀规寚瀹氱敤鎴峰瘑鐮侊級
set password for kuangshen = password(''111111'')

-- 閲嶅懡鍚?
-- rename user 鍘熷悕 to 鏂板悕瀛?
rename user kuangshen to kuangshen2

-- 鐢ㄦ埛鏉冮檺 
-- grant all privileges on 鍏ㄩ儴鐨勬潈闄?to 搴?琛?
-- all privileges 涓嶈兘缁欏埆浜烘巿鏉冿紝鍏朵粬鏉冮檺閮芥湁
grant all privileges on *.* to kuangshen2

-- 鏌ョ湅鏉冮檺
show grants for kuangshen2  -- 鏌ョ湅鎸囧畾鐢ㄦ埛鐨勬潈闄?
show greats for root@localhost

-- 鎾ら攢鏉冮檺
-- revoke 鍝簺鏉冮檺锛屽湪鍝釜搴撴挙閿€锛岀粰璋佹挙閿€
revoke all privileges on *.*  from kuangshen2
```

## 澶囦唤
+ 淇濊瘉閲嶈鐨勬暟鎹笉涓㈠け
+ 鏁版嵁杞Щ

MySQL澶囦唤鐨勬柟寮?

+ 鐩存帴鎷疯礉鐗╃悊鏂囦欢
+ 鍦ㄥ彲瑙嗗寲宸ュ叿涓墜鍔ㄥ鍑?
+ 浣跨敤鍛戒护琛屽鍑?mysqldump
    - mysqldump -hlocalhost -uroot -p123456 school student >D:/a.sql
    - mysqldump -h涓绘満 -u鐢ㄦ埛鍚?-p瀵嗙爜 鏁版嵁搴?[琛ㄥ悕1 琛ㄥ悕2] >鐗╃悊鍦板潃
+ 鍛戒护琛屽鍏ユ暟鎹?
    - 鐧诲綍鐨勬儏鍐典笅锛屽垏鎹㈠埌鎸囧畾鏁版嵁搴?
    - source 鐗╃悊鍦板潃

# 瑙勮寖鏁版嵁搴撹璁?
## 璁捐鏁版嵁搴?
**绯熺硶鐨勬暟鎹簱**

+ 鏁版嵁鍐椾綑锛屾氮璐圭┖闂?
+ 鏁版嵁搴撴彃鍏ュ拰鍒犻櫎閮戒細楹荤儲锛屽紓甯搞€愬睆钄戒娇鐢ㄧ墿鐞嗗閿€?
+ 绋嬪簭鐨勬€ц兘宸?

**鑹ソ鐨勬暟鎹簱**

+ 鑺傜渷鏁版嵁绌洪棿
+ 淇濊瘉鏁版嵁搴撶殑瀹屾暣鎬?
+ 鏂逛究鎴戜滑寮€鍙戠郴缁?

杞欢鍗℃硶涓紝鍏充簬鏁版嵁搴撹璁?

+ 鍒嗘瀽闇€姹傦細鍒嗘瀽涓氬姟鍜岄渶瑕佸鐞嗙殑鏁版嵁搴撶殑闇€姹?
+ 姒傝璁捐锛氳璁″叧绯诲浘E-R鍥?

**璁捐鏁版嵁搴撶殑姝ラ锛堜釜浜哄崥瀹級**

+ 鏀堕泦鏁版嵁锛岄渶姹傚垎鏋?
    - 鐢ㄦ埛琛紙鐢ㄦ埛鐧诲綍淇℃伅锛岀敤鎴风殑涓汉淇℃伅锛屽啓鍗氬锛屽垱寤哄垎绫伙級
    - 鍒嗙被琛紙鏂囩珷鍒嗙被锛岃皝鍒涘缓鐨勶級
    - 鏂囩珷琛紙鏂囩珷鐨勪俊鎭級
    - 璇勮琛?
    - 鍙嬭仈琛紙鍙嬮摼淇℃伅锛?
    - 鑷畾涔夎〃锛堢郴缁熶俊鎭紝鏌愪釜鍏抽敭鐨勫瓧锛屾垨鑰呬竴浜涗富瀛楁锛?key锛歷alue
+ 鏍囪瘑瀹炰綋锛堟妸闇€姹傝惤鍦板埌姣忎釜瀛楁锛?
+ 鏍囪瘑瀹炰綋涔嬮棿鐨勫叧绯?
    - 鍐欏崥瀹細user -> blog
    - 鍒涘缓鍒嗙被锛歶ser -> category
    - 鍏虫敞锛歶ser -> user
    - 鍙嬮摼锛?links
    - 璇勮锛歶ser -> user -> blog

## 涓夊ぇ鑼冨紡
+ 绗竴鑼冨紡锛?NF锛?
    - 淇濊瘉鍘熷瓙鎬?
    - 鎵€鏈夊垪閮芥槸涓嶅彲鍐嶅垎鐨?
+ 绗簩鑼冨紡锛?NF锛?
    - 蹇呴』婊¤冻绗竴鑼冨紡
    - 姣忓紶琛ㄥ彧鎻忚堪涓€浠朵簨鎯?
+ 绗笁鑼冨紡锛?NF锛?
    - 蹇呴』婊¤冻绗簩鑼冨紡
    - 鏁版嵁琛ㄤ腑鐨勬瘡涓€鍒楁暟鎹兘鍜屼富閿洿鎺ョ浉鍏筹紝鑰屼笉鏄棿鎺ョ浉鍏?

瑙勮寖鎬у拰鎬ц兘

+ 鍏宠仈鏌ヨ鐨勮〃涓嶈兘瓒呰繃3寮犺〃
    - 鍟嗕笟鍖栫殑闇€姹傚拰鐩爣锛岋紙鎴愭湰锛岀敤鎴蜂綋楠岋級鏁版嵁搴撶殑鎬ц兘鏇村姞閲嶈
    - 鍦ㄨ鑼冩€ц兘鐨勯棶棰樼殑鏃跺€欙紝闇€瑕侀€傚綋鐨勮€冭檻涓€涓嬭鑼冩€?
    - 鏁呮剰缁欐煇浜涜〃澧炲姞涓€浜涘啑浣欑殑瀛楁锛岋紙浠庡琛ㄦ煡璇腑鍙樹负鍗曡〃鏌ヨ锛?
    - 鏁呮剰澧炲姞涓€浜涜绠楀垪锛堜粠澶ф暟鎹噺闄嶄綆涓哄皬鏁版嵁閲忕殑鏌ヨ锛氱储寮曪級

# JDBC
## 鏁版嵁搴撻┍鍔?
瀵煎叆涓€涓猰ysql鐨勬暟鎹簱椹卞姩鍖?

+ 鍒涘缓涓€涓櫘閫氱殑java椤圭洰
+ 鍒涘缓lib鏂囦欢澶?
+ 瀵煎叆涓€涓暟鎹簱椹卞姩鍖?mysql-connector-java-鐗堟湰鍙?jar

## 绗竴涓猨dbc绋嬪簭
娴佺▼

+ 鍔犺浇椹卞姩
+ 杩炴帴鏁版嵁搴? DriverManager
+ 鑾峰緱鎵цsql鐨勫璞?  Statement
+ 鑾峰緱杩斿洖鐨勭粨鏋滈泦
+ 閲婃斁杩炴帴

```sql
package jie.com.damo;

import java.sql.*;

// 绗竴涓猨dbc绋嬪簭
public class JdbcTest {
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        // 1. 鍔犺浇椹卞姩
        Class.forName("com.mysql.jdbc.Driver");  // 鍥哄畾鍐欐硶锛屽姞杞介┍鍔?

        // 2. 鐢ㄦ埛淇℃伅
        // useUnicode=true  鏀寔涓枃缂栫爜
        // characterEncoding=utf8  璁剧疆涓枃缂栫爜utf8
        // useSSL=false  浣跨敤瀹夊叏杩炴帴
        String url = "jdbc:mysql://192.168.204.131:3306/jdbcStudy?useUnicode=true&characterEncoding=utf8&useSSL=false";
        String username = "root";
        String password = "@Root1234";

        //3. 杩炴帴鎴愬姛,鏁版嵁搴撳璞?Connection 浠ｈ〃鏁版嵁搴?
        Connection connection = DriverManager.getConnection(url, username, password);

        //4. 鎵цsql璇彞
        Statement statement = connection.createStatement();

        //5. 鎵цsql鐨勫璞?鍘绘墽琛宻ql锛屽彲鑳藉瓨鍦ㄧ粨鏋滐紝鏌ョ湅杩斿洖缁撴灉
        String sql = "select * from usera;";
        ResultSet resultSet = statement.executeQuery(sql);  // 杩斿洖鐨勬暟鎹泦

        while (resultSet.next()) {
            System.out.println("id="+resultSet.getObject("id"));
            System.out.println("name="+resultSet.getObject("name"));
            System.out.println("password="+resultSet.getObject("password"));
            System.out.println("email="+resultSet.getObject("email"));
            System.out.println("birthday="+resultSet.getObject("birthday"));
            System.out.println("====================================================");
        }

        //6, 閲婃斁杩炴帴
        resultSet.close();
        statement.close();
        connection.close();
    }
}

```

## jdbc涓殑瀵硅薄
+ 鍔犺浇椹卞姩  DriverManager

```java
// DriverManager.registerDriver(new com.mysql.jdbc.Driver());   // 鍘熺敓鏂规硶
Class.forName("com.mysql.jdbc.Driver");     // 寤鸿浣跨敤

```

+ URL

```java
String url = "jdbc:mysql://192.168.204.131:3306/jdbcStudy?useUnicode=true&characterEncoding=utf8&useSSL=false";
String username = "root";
String password = "@Root1234";

// mysql:3306
// oracle:1521
```

+ 杩炴帴鏁版嵁搴?

```java
Connection connection = DriverManager.getConnection(url, username, password);
// connection 浠ｈ〃鏁版嵁搴?
// 鏁版嵁搴撹缃嚜鍔ㄦ彁浜?
// 浜嬪姟鎻愪氦
// 浜嬪姟鍥炴粴
connection.rollback();  // 璁剧疆鍙
connection.commit();   // 鎻愪氦
connection.setAutoCommit(false);  // 鑷姩鎻愪氦
```

+ Statement 鎵цSQL 鐨勫璞? PreparedStatement 鎵цsql鐨勫璞?

```java
// 缂栧啓sql
String sql = "select * from usera";

statement.executeQuery();  // 鏌ヨ鎿嶄綔杩斿洖 resultSet
statement.execute();  // 鎵ц浠讳綍sql
statement.executeUpdate() // 鏇存柊锛屾彃鍏ワ紝鍒犻櫎锛岃繑鍥炰竴涓彈褰卞搷鐨勮鏁?
```

+ ResultSet 鏌ヨ鐨勭粨鏋滈泦锛氬皝瑁呬簡鎵€鏈夌殑鏌ヨ缁撴灉

```java
// 鑾峰彇鏁版嵁鐨勬暟鎹被鍨?
resultSet.getString();
resultSet.getInt();
resultSet.getFloat();
resultSet.getDate();
resultSet.getObject()

// 绉诲姩鍏夋爣
resultSet.beforeFirst();  // 绉诲姩鍒版渶鍓嶉潰
resultSet.afterLast();   // 绉诲姩鍒版渶鍚庨潰
resultSet.next();  // 绉诲姩鍒颁笅涓€涓?
resultSet.previous();  // 绉诲姩鍒颁笅涓€琛?
resultSet.absolute()  // 绉诲姩鍒版寚瀹氳
```

+ 閲婃斁璧勬簮

```java
//6, 閲婃斁杩炴帴
resultSet.close();
statement.close();
connection.close();
```



## 浣跨敤宸ュ叿绫荤殑姝ラ
+ 閰嶇疆鏂囦欢锛孧aven椤圭洰鏀惧湪resources鏂囦欢涓紝鏅€氶」鐩斁鍦╯rc鐩綍涓?

```java
driver=com.mysql.jdbc.Driver
url=jdbc:mysql://192.168.204.131:3306/jdbcStudy
username=root
password=@Root1234
```

+ 缂栧啓宸ュ叿绫?

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
                System.out.println("娌¤鍙栧埌鏂囦欢");
            }

            driver = prop.getProperty("driver");
            url = prop.getProperty("url");
            username = prop.getProperty("username");
            password = prop.getProperty("password");

            // 椹卞姩鍙敤鍔犺浇涓€娆?
            Class.forName(driver);

        } catch (Exception e){
            e.printStackTrace();
        }

    }

    // 鑾峰彇杩炴帴
    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url, username, password);
    }

    // 閲婃斁杩炴帴璧勬簮
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

+ 娴嬭瘯鏂囦欢

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
            conn = JdbcUtils.getConnection();   // 鑾峰彇鏁版嵁搴撹繛鎺?
            stmt = conn.createStatement();      // 鑾峰緱sql鐨勬墽琛屽璞?

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
                System.out.println(i+"鏇存敼鎴愬姛");
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

## SQL娉ㄥ叆闂
sql瀛樺湪婕忔礊锛屼細琚敾鍑诲鑷存暟鎹硠闇诧紝

```java
package jie.com.damo02;

import jie.com.damo02.utils.JdbcUtils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Sql娉ㄥ叆 {
    public static void main(String[] args) {

        login(" ''or'' 1=1", "''or'' 2=2");  // 娉ㄥ叆sql浠ｇ爜

    }

    public static void login(String username, String password) {

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            conn = JdbcUtils.getConnection();   // 鑾峰彇鏁版嵁搴撹繛鎺?
            stmt = conn.createStatement();      // 鑾峰緱sql鐨勬墽琛屽璞?


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

## PreparedStatement瀵硅薄闃叉sql娉ㄥ叆
鍙互闃叉sql娉ㄥ叆锛屽垏鏁堢巼鏇撮珮

鏈川锛氬皢浼犻€掕繘鏉ョ殑鍙傛暟褰撳仛瀛楃

鍋囪鍏朵腑瀛樺湪杞箟瀛楃浼氱洿鎺ュ拷鐣ユ帀

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

            // 浣跨敤锛?鍗犱綅绗︿唬鏇垮弬鏁?
            String sql = "insert into usera(id, name, password, email, birthday) values(?,?,?,?,?)";

            // 棰勭紪璇?
            pst = conn.prepareStatement(sql);

            // 鎵嬪姩缁欏弬鏁拌祴鍊?

            pst.setInt(1, 5); // id
            pst.setString(2, "suibian");
            pst.setString(3, "123456");
            pst.setString(4, "suibian@gmail.com");
            pst.setDate(5, new java.sql.Date(new Date().getTime()));


            int i = pst.executeUpdate();
            if(i > 0){
                System.out.println("鎻掑叆鎴愬姛");
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

## 浜嬪姟
ACID鍘熷垯

+ 鍘熷垯鎬э細瑕佷箞鍏ㄩ儴瀹屾垚锛岃涔堥兘涓嶅畬鎴?
+ 涓€鑷存€э細鎬绘暟涓嶅彉
+ 闅旂鎬э細澶氫釜杩涚▼浜掍笉骞叉壈
+ 鎸佷箙鎬э細涓€鏃︽彁浜わ紝鎸佷箙鍖栧埌鏁版嵁搴?

闅旂鎬х殑闂

+ 鑴忚锛氫竴涓簨鍔¤鍙栦簡鍙︿竴涓病鏈夋彁浜ょ殑浜嬪姟
+ 涓嶅彲閲嶅搴︼細鍦ㄥ悓涓€涓簨鍔″唴锛岄噸澶嶈鍙栬〃涓殑鏁版嵁锛岃〃鏁版嵁鍙戠敓浜嗘敼鍙?
+ 铏氬害锛堝够璇伙級锛氬湪涓€涓簨鍔″唴锛岃鍙栧埌浜嗗埆浜烘彃鍏ョ殑鏁版嵁锛屽鑷村墠鍚庤鍑烘潵鐨勭粨鏋滀笉涓€鑷?

浠ｇ爜瀹炵幇

+ 寮€鍚簨鍔? conn.setAutoCommit(false)
+ 涓€缁勪笟鍔℃墽琛屽畬姣曪紝鎻愪氦浜嬪姟
+ 鍙互鍦╟atch璇彞涓樉绀哄畾涔夊洖婊氳鍙ワ紝榛樿澶辫触鑷姩鍥炴粴

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
            // 鍏抽棴鏁版嵁搴撶殑鑷姩鎻愪氦锛岃嚜鍔ㄥ紑鍚簨鍔?
            conn.setAutoCommit(false);  // 寮€鍚簨鍔?

            String sql = "UPDATE money set money = money-100 where name = ''A''";
            pst = conn.prepareStatement(sql);
            pst.executeUpdate();

            int i = 1/0;

            String sql2 = "UPDATE money SET money = money+100 where name = ''B''";
            pst = conn.prepareStatement(sql2);
            pst.executeUpdate();

            // 涓氬姟瀹屾瘯锛屾彁浜や簨鍔?
            conn.commit();
            System.out.println("鎴愬姛锛?);

        } catch (SQLException e) {
            // 濡傛灉澶辫触锛岃嚜鍔ㄥ洖婊?

            // 杩欐槸鎵嬪姩娣诲姞鍥炴粴
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

## 鏁版嵁搴撹繛鎺ユ睜
#### 姹犲寲鎶€鏈?
鏁版嵁搴撹繛鎺?--鎵ц瀹屾瘯--閲婃斁璧勬簮   杩炴帴--閲婃斁   鍗佸垎娴垂绯荤粺璧勬簮

姹犲寲鎶€鏈細鍑嗗涓€浜涢鍏堢殑璧勬簮锛岃繃鏉ュ氨杩炴帴棰勫厛鍑嗗濂界殑

甯哥敤杩炴帴鏁帮細100   鍗虫渶灏忚繛鎺ユ暟100

鏈€澶ц繛鎺ユ暟锛氫笟鍔℃渶楂樻壙杞戒笂闄?

鎺掗槦绛夊緟

绛夊緟瓒呮椂

缂栧啓杩炴帴姹狅細瀹炵幇涓€涓帴鍙ｏ紝DataSource

#### 寮€婧愮殑鏁版嵁瀹炵幇
寮€婧愭暟鎹疄鐜?

DBCP

C3P0

Druld锛氶樋閲屽反宸?

浣跨敤杩炴帴姹犱箣鍚庯紝鍦ㄩ」鐩紑鍙戜腑灏变笉闇€瑕佺紪鍐欒繛鎺ユ暟鎹簱鐨勪唬鐮佷簡

#### DBCP
闇€瑕佺殑jar鍖?

commons-dpcp-鐗堟湰鍙?jar

commons-pool-鐗堟湰鍙?jar

閰嶇疆鏂囦欢

#### C3P0
闇€瑕佺殑jar鍖?

c3p0-鐗堟湰鍙?jar

mchange-commons-java-鐗堟湰鍙?jar

閰嶇疆鏂囦欢
', NOW());
SET @last_note_id = LAST_INSERT_ID();

INSERT INTO 
ote (uthor_id, 	itle, content, created_at)
VALUES (1002, 'python基础', '### 鏁版嵁绫诲瀷
int:鏁存暟锛?23锛沠loat锛氬皬鏁帮紝1.2锛宑omplex锛氬鏁?1+2i锛泂tr锛氬瓧绗︿覆锛屸€渁bc鈥濓紱list锛氬垪琛紝[1,''ok];tuple锛氬厓绁栵紝(1,3,''ok'');bool锛氬竷灏旓紝True.False;dict锛氬瓧鍏革紝{"tom":20,"jack":30};set锛氶泦鍚? {"tom".16,20}

### 杈撳叆杈撳嚭
```python
#涓嶆崲琛岃緭鍑猴細end=""
print(1, 2, 3, end="")
print("ok")
#杈撳叆 
x = input(y)
```

鍗犱綅绗︼細%s(瀛楃涓?锛?d(鏁存暟)锛?f(灏忔暟)锛?.nf(淇濈暀n浣嶇殑灏忔暟)

### 杩愮畻绗?
绠楁暟杩愮畻绗︼細 +(鍔?,-(鍑?, *(涔?, /(闄?float), %(鍙栨ā), //(姹傚晢,int), **(姹傚箓) 浼樺厛绾?1锛?*锛?锛?, /, //, %锛?) + -

鍏崇郴杩愮畻绗?==  !=  >  <  >=  <=

閫昏緫杩愮畻绗︼細and   or    not     浼樺厛绾?not>and>or

bool绫诲瀷锛?True, False

### 鏉′欢鍒嗘敮璇彞
`if` 閫昏緫琛ㄨ揪寮?锛?

       璇彞缁?  
`else`    锛?

       璇彞缁?

### 寰幆璇彞
#### for寰幆璇彞
`for`鍙橀噺 `in`鍙凯浠ｅ璞?

          #寰幆浣撲唬鐮?

`<font style="color:rgb(6, 6, 7);">鍙凯浠ｅ璞?/font>`<font style="color:rgb(6, 6, 7);">锛氬彲浠ユ槸鍒楄〃銆佸厓缁勩€佸瓧绗︿覆銆佸瓧鍏搞€侀泦鍚堢瓑锛屼篃鍙互鏄叾浠栨敮鎸佽凯浠ｇ殑瀵硅薄锛堝鏂囦欢瀵硅薄銆佺敓鎴愬櫒绛夛級</font>

`<font style="color:rgb(6, 6, 7);">range()</font>`<font style="color:rgb(6, 6, 7);"> 鍑芥暟鍙互鐢熸垚涓€涓暣鏁板簭鍒楋紝甯哥敤浜庢帶鍒跺惊鐜鏁般€?/font>

```python
for i in range(1, 10, 2)    #浠?鍒? 姝ラ暱涓?
    pirnt(i)
```

`break`<font style="color:rgb(6, 6, 7);">锛氶€€鍑哄惊鐜€?/font>

`continue`<font style="color:rgb(6, 6, 7);">锛氳烦杩囧綋鍓嶅惊鐜紝杩涘叆涓嬩竴娆″惊鐜€?/font>

#### while 寰幆
`while` 鏉′欢锛?

       #寰幆浣撲唬鐮?

`else`:

      #璇彞缁?

鏉′欢锛氫竴涓竷灏旇〃杈惧紡 濡傛灉鏉′欢涓篢rue鍒欐墽琛屽惊鐜€傚弽涔嬪垯閫€鍑哄惊鐜?

### 寮傚父澶勭悊
`try` :

 	<璇彞缁?>

`except`:

<璇彞缁?>

### 鍑芥暟
**<font style="color:rgb(6, 6, 7);">鍑芥暟</font>**<font style="color:rgb(6, 6, 7);">鏄竴绉嶅皝瑁呬簡涓€娈典唬鐮佺殑閫昏緫缁撴瀯锛岀敤浜庢墽琛岀壒瀹氫换鍔★紝鐢ㄥ叧閿瓧</font>`<font style="color:rgb(6, 6, 7);">def</font>`<font style="color:rgb(6, 6, 7);">鑷畾涔夊嚱鏁?/font>

```python
def function_name(parameters):
    # 鍑芥暟浣?
    # 鎵ц浠ｇ爜
    return value  # 鍙€夛紝杩斿洖鍊?
```

+ `**def**`<font style="color:rgb(6, 6, 7);">锛氬畾涔夊嚱鏁扮殑鍏抽敭瀛椼€?/font>
+ `**function_name**`<font style="color:rgb(6, 6, 7);">锛氬嚱鏁板悕绉帮紝搴旂鍚堝彉閲忓懡鍚嶈鍒欍€?/font>
+ `**parameters**`<font style="color:rgb(6, 6, 7);">锛氬弬鏁板垪琛紝鐢ㄤ簬浼犻€掑€煎埌鍑芥暟鍐呴儴锛堝彲閫夛級銆?/font>
+ `**return**`<font style="color:rgb(6, 6, 7);">锛氳繑鍥炲€硷紝鍑芥暟鎵ц瀹屾瘯鍚庤繑鍥炵殑缁撴灉锛堝彲閫夛級銆?/font>

#### 鍙傛暟绫诲瀷
<font style="color:rgb(6, 6, 7);">浣嶇疆鍙傛暟锛氭寜椤哄簭浼犻€掑弬鏁般€?/font>

<font style="color:rgb(6, 6, 7);">鍏抽敭瀛楀弬鏁帮細閫氳繃鍙傛暟鍚嶄紶閫掑弬鏁般€?/font>

<font style="color:rgb(6, 6, 7);">榛樿鍙傛暟锛氬弬鏁版湁榛樿鍊硷紝璋冪敤鏃跺彲鐪佺暐銆?/font>

**<font style="color:rgb(6, 6, 7);">鍙彉鍙傛暟</font>**<font style="color:rgb(6, 6, 7);">锛?/font>

`*args`<font style="color:rgb(6, 6, 7);">锛氭帴鏀跺涓綅缃弬鏁帮紝杩斿洖鍏冪粍銆?/font>

`**kwargs`<font style="color:rgb(6, 6, 7);">锛氭帴鏀跺涓叧閿瓧鍙傛暟锛岃繑鍥炲瓧鍏?/font>

##### <font style="color:rgb(6, 6, 7);">浣滅敤鍩?/font>
<font style="color:rgb(6, 6, 7);">鍏ㄥ眬鍙橀噺锛氬湪鍑芥暟澶栭儴瀹氫箟锛屽彲鍦ㄦ暣涓▼搴忎腑璁块棶銆?/font>

<font style="color:rgb(6, 6, 7);">灞€閮ㄥ彉閲忥細鍦ㄥ嚱鏁板唴閮ㄥ畾涔夛紝浠呭湪鍑芥暟鍐呴儴鏈夋晥銆?/font>

#### <font style="color:rgb(6, 6, 7);">鍐呯疆閫氱敤鍑芥暟</font>
<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">print()</font>`<font style="color:rgb(6, 6, 7);"> 鎵撳嵃杈撳嚭鍐呭鍒版帶鍒跺彴</font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">len()</font>`<font style="color:rgb(6, 6, 7);">杩斿洖瀵硅薄锛堝瀛楃涓层€佸垪琛ㄣ€佸厓缁勭瓑锛夌殑闀垮害銆?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">type()</font>`<font style="color:rgb(6, 6, 7);">杩斿洖瀵硅薄鐨勭被鍨嬨€?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">str()</font>`<font style="color:rgb(6, 6, 7);">, </font>`<font style="color:rgb(6, 6, 7);">int()</font>`<font style="color:rgb(6, 6, 7);">, </font>`<font style="color:rgb(6, 6, 7);">float()</font>`<font style="color:rgb(6, 6, 7);">灏嗗璞¤浆鎹负瀛楃涓层€佹暣鏁版垨娴偣鏁般€?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">range()</font>`<font style="color:rgb(6, 6, 7);">鐢熸垚涓€涓暣鏁板簭鍒楋紝甯哥敤浜庡惊鐜€?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">input()</font>`<font style="color:rgb(6, 6, 7);">浠庣敤鎴疯幏鍙栬緭鍏ャ€?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">sum()</font>`<font style="color:rgb(6, 6, 7);">, </font>`<font style="color:rgb(6, 6, 7);">min()</font>`<font style="color:rgb(6, 6, 7);">, </font>`<font style="color:rgb(6, 6, 7);">max()</font>`<font style="color:rgb(6, 6, 7);">璁＄畻搴忓垪鐨勬€诲拰銆佹渶灏忓€煎拰鏈€澶у€笺€?/font>

<font style="color:rgb(6, 6, 7);">2.</font>**<font style="color:rgb(6, 6, 7);">鍒楄〃鐩稿叧鍑芥暟</font>**<font style="color:rgb(6, 6, 7);"></font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">list()</font>`<font style="color:rgb(6, 6, 7);">灏嗗叾浠栧彲杩唬瀵硅薄锛堝瀛楃涓层€佸厓缁勶級杞崲涓哄垪琛ㄣ€?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">append()</font>`<font style="color:rgb(6, 6, 7);">鍚戝垪琛ㄦ湯灏炬坊鍔犱竴涓厓绱犮€?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">extend()</font>`<font style="color:rgb(6, 6, 7);">灏嗕竴涓垪琛ㄧ殑鍏冪礌娣诲姞鍒板彟涓€涓垪琛ㄣ€?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">sort()</font>`<font style="color:rgb(6, 6, 7);">瀵瑰垪琛ㄨ繘琛屾帓搴忋€?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">pop()</font>`<font style="color:rgb(6, 6, 7);">绉婚櫎鍒楄〃涓殑涓€涓厓绱狅紝骞惰繑鍥炶鍏冪礌銆?/font>

<font style="color:rgb(6, 6, 7);">3. </font>**<font style="color:rgb(6, 6, 7);">瀛楃涓茬浉鍏冲嚱鏁?/font>**<font style="color:rgb(6, 6, 7);"></font>

<font style="color:rgb(6, 6, 7);">瀛楃涓叉槸Python涓渶甯哥敤鐨勬暟鎹被鍨嬩箣涓€锛屼互涓嬫槸涓€浜涘父鐢ㄧ殑瀛楃涓插鐞嗗嚱鏁般€?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">upper()</font>`<font style="color:rgb(6, 6, 7);"> 鍜?</font>`<font style="color:rgb(6, 6, 7);">lower()</font>`<font style="color:rgb(6, 6, 7);">灏嗗瓧绗︿覆杞崲涓哄ぇ鍐欐垨灏忓啓銆?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">strip()</font>`<font style="color:rgb(6, 6, 7);">鍘婚櫎瀛楃涓蹭袱绔殑绌虹櫧瀛楃銆?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">split()</font>`<font style="color:rgb(6, 6, 7);">灏嗗瓧绗︿覆鍒嗗壊涓哄垪琛ㄣ€?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">join()</font>`<font style="color:rgb(6, 6, 7);">灏嗗垪琛ㄤ腑鐨勫瓧绗︿覆鍏冪礌杩炴帴涓轰竴涓瓧绗︿覆銆?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">replace()</font>`<font style="color:rgb(6, 6, 7);">鏇挎崲瀛楃涓蹭腑鐨勬煇浜涘唴瀹广€?/font>

<font style="color:rgb(6, 6, 7);">- 4. </font>**<font style="color:rgb(6, 6, 7);">鏁板鐩稿叧鍑芥暟</font>**<font style="color:rgb(6, 6, 7);"></font>

<font style="color:rgb(6, 6, 7);">Python鐨刞math`妯″潡鎻愪緵浜嗚澶氭暟瀛︾浉鍏崇殑鍑芥暟銆?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">math.sqrt()</font>`<font style="color:rgb(6, 6, 7);">璁＄畻骞虫柟鏍广€?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">math.ceil()</font>`<font style="color:rgb(6, 6, 7);"> 鍜?</font>`<font style="color:rgb(6, 6, 7);">math.floor()</font>`<font style="color:rgb(6, 6, 7);">鍚戜笂鍙栨暣鍜屽悜涓嬪彇鏁淬€?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">math.pow()</font>`<font style="color:rgb(6, 6, 7);">璁＄畻骞傘€?/font>

<font style="color:rgb(6, 6, 7);"> 5. </font>**<font style="color:rgb(6, 6, 7);">鍏朵粬閫氱敤鍑芥暟</font>**<font style="color:rgb(6, 6, 7);"></font>

<font style="color:rgb(6, 6, 7);">浠ヤ笅鏄竴浜涘湪Python涓潪甯搁€氱敤鐨勫嚱鏁帮紝鐢ㄤ簬澶勭悊鍚勭鍦烘櫙銆?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">enumerate()</font>`<font style="color:rgb(6, 6, 7);">鍦ㄥ惊鐜腑鍚屾椂鑾峰彇绱㈠紩鍜屽€笺€?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">zip()</font>`<font style="color:rgb(6, 6, 7);">灏嗗涓彲杩唬瀵硅薄鎵撳寘涓哄厓缁勫垪琛ㄣ€?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">map()</font>`<font style="color:rgb(6, 6, 7);">瀵瑰彲杩唬瀵硅薄涓殑姣忎釜鍏冪礌搴旂敤鍑芥暟銆?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">filter()</font>`<font style="color:rgb(6, 6, 7);">杩囨护鍙凯浠ｅ璞′腑鐨勫厓绱犮€?/font>

### 鍏冪粍
涓€涓厓缁勬槸鐢卞涓€楀彿鍒嗛殧鐨勫€肩粍鎴愶紝鍓嶅悗鍙姞鎷彿

鍏冪粍涓嶈兘淇敼锛屽嵆涓嶈兘鍒犻櫎锛岃祴鍊硷紝淇敼锛屾帓搴忥紝浣嗗厓缁勪腑鏁扮粍鍐呯殑鍊煎彲浠ユ敼鍙?

#### 鍏冪粍鐨勫垏鐗?
`[1:6]`閫夋嫨涓嬫爣涓?鍒?鐨勫厓绱?

`[1:6:2]`閫夋嫨涓嬫爣涓?鍒?鐨勫厓绱?锛屾闀夸负2

`[::-1]`灏嗗厓缁勭殑椤哄簭鍊掔疆

### <font style="color:rgb(6, 6, 7);">.鍒楄〃锛坙ist锛?/font>
鍒楄〃鍙互瀵瑰厓绱犺繘琛屽銆佸垹銆佹敼銆佹煡锛屽垪琛ㄥ厓绱犲彲浠ユ槸浠讳綍绫诲瀷

#### <font style="color:rgb(6, 6, 7);">鍒楄〃鐩稿叧鍑芥暟</font>
<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">list()</font>`<font style="color:rgb(6, 6, 7);">灏嗗叾浠栧彲杩唬瀵硅薄锛堝瀛楃涓层€佸厓缁勶級杞崲涓哄垪琛ㄣ€?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">append()</font>`<font style="color:rgb(6, 6, 7);">鍚戝垪琛ㄦ湯灏炬坊鍔犱竴涓厓绱犮€?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">extend()</font>`<font style="color:rgb(6, 6, 7);">灏嗕竴涓垪琛ㄧ殑鍏冪礌娣诲姞鍒板彟涓€涓垪琛ㄣ€?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">sort()</font>`<font style="color:rgb(6, 6, 7);">瀵瑰垪琛ㄨ繘琛屾帓搴忋€?/font>

<font style="color:rgb(6, 6, 7);">锛?锛?/font>`<font style="color:rgb(6, 6, 7);">pop()</font>`<font style="color:rgb(6, 6, 7);">绉婚櫎鍒楄〃涓殑涓€涓厓绱狅紝骞惰繑鍥炶鍏冪礌銆?/font>

```python
emty = []   #绌鸿〃
list = [''Google'', ''Runoob'', 1992, 2222]
list[2] = 2000   #灏嗕笅鏍囦负2鐨勫€兼洿鎹负2000
#鐢╥n鏉ュ垽鏂垪琛ㄦ槸鍚﹀寘鍚煇涓厓绱?缁撴灉涓篎alse锛堜笉瀛樺湪锛夋垨True(瀛樺湪)
print(''Google'' in list)  #>>True
#鑻鏄瓧绗︿覆锛屽垯x.split()鐨勫€兼槸涓€涓垪琛?
#鍖呭惈瀛楃涓瞲缁忕┖鏍硷紝鍒惰〃绗︼紝鎹㈣绗﹀垎闅斿緱鍒扮殑鎵€鏈夊瓙涓?
print("34\t\t45\n7".split()) #>>[''34'', ''45''. ''''7]
```

### <font style="color:rgb(6, 6, 7);">瀛楀吀锛坉ict锛?/font>
姣忎釜鍏冪礌閮芥槸鐢扁€滈敭锛氬€尖€濅袱閮ㄥ垎缁勬垚

#### 瀛楀吀鐨勭浉鍏冲嚱鏁?
`cher()`娓呯┖瀛楀吀

`keys()`鍙栧瓧鍏哥殑閿殑搴忓垪

`items()`鍙栧瓧鍏哥殑鍏冪礌鐨勫簭鍒楋紝鍙敤浜庨亶鍘嗗瓧鍏?

`values()`鍙栧瓧鍏哥殑鍊肩殑搴忓垪

`pop(x)`鍒犻櫎閿綅x鐨勫厓绱狅紝濡傛灉涓嶅瓨鍦紝浜х敓寮傚父

涓婅堪搴忓垪涓嶆槸list锛宼uple鎴杝et

`copy()`娴呮嫹璐?

### 闆嗗悎锛坰et锛?
鍏冪礌绫诲瀷鍙互涓嶅悓锛屾病閲嶅鍏冪礌锛屽彲浠ュ鍒犲厓绱狅紝鍒楄〃銆佸瓧鍏搞€侀泦鍚堢瓑涓嶅彲鍙樼殑鏁版嵁绫诲瀷涓嶅彲浣滀负闆嗗悎鐨勫厓绱?

#### 闆嗗悎甯哥敤鍑芥暟
`add(x)`娣诲姞鍏冪礌x

`clear()`娓呯┖闆嗗悎

`remove(x)`鍒犻櫎鍏冪礌x

`updata(x)`灏嗗簭鍒梮涓殑鍏冪礌鍔犲叆鍒伴泦鍚?

#### 闆嗗悎鐨勮繍绠?
`x in a`x鏄惁鍦ㄩ泦鍚?

`a | b`姹俛鍜宐鐨勫苟

`a & b`姹俛鍜宐鐨勪氦

`a - b`姹俛鍜宐鐨勫樊锛屽嵆鍦╝涓€屼笉鍦╞涓殑鍏冪礌

`a ^ b`姹俛鍜宐鐨勫绉板樊锛岀瓑浠蜂簬`(a | b)- (a & b)`

`a == b`a鏄惁鍏冪礌鍜宐涓€鏍?

`a !=b`a鏄惁鍏冪礌鍜宐涓嶄竴鏍?

`a <= b`a鏄惁鏄痓鐨勫瓙闆嗭紙a鏈夌殑鍏冪礌锛宐閮芥湁锛?

`<font style="color:rgb(6, 6, 7);">a < b</font>`<font style="color:rgb(6, 6, 7);">a鏄惁鏄痓鐨勭湡瀛愰泦锛坅鏈夌殑鍏冪礌锛宐閮芥湁锛屼笖b杩樺寘鍚玜涓病鏈夌殑鍏冪礌锛?/font>

### 鏂囨湰鏂囦欢璇诲啓
`open("鏂囦欢缁濆璺粡", "W", encoding="utf=8")`鍑芥暟鎵撳紑锛堝垱寤猴級鏂囦欢锛屽皢杩斿洖鍊兼斁鍏ヤ竴涓彉閲忥紝渚嬪f.鈥渨鈥濆啓鍏ワ紝鈥渞鈥濊鍙栵紝 鈥渁鈥濇坊鍔犲啓鍏?

鐢╜f.write`鍑芥暟鍐欏叆鏂囦欢

鐢╜f.readlines`鍑芥暟璇诲彇鏂囦欢鍏ㄩ儴鍐呭

鐢╜f.reandline`鍑芥暟璇诲彇鏂囦欢涓€琛?

鐢╜f.xlose()`鍏抽棴鏂囦欢

鐢╜f.read()`璇诲彇鏂囦欢鍏ㄩ儴鍐呭銆傝繑鍥炰竴涓瓧绗︿覆锛屽寘鍚枃浠跺叏閮ㄥ唴瀹?

### 鏂囦欢澶规搷浣滃嚱鏁?
os搴撳拰shutil搴撲腑鏈変竴浜涘嚱鏁板彲浠ョ敤鏉ユ搷浣滄枃浠跺拰鏂囦欢澶?

`os.chdir(x)`灏嗙▼搴忕殑褰撳墠鏂囦欢澶逛綅缃涓簒

`os.getcwd()`姹傜▼搴忕殑褰撳墠鏂囦欢澶?

`os.listdir(x)`杩斿洖涓€涓垪琛紝浣犻潰鏄枃浠跺すx涓殑鎵€鏈夋枃浠跺拰瀛愭枃浠跺す鐨勫悕瀛?

`os.mkdir(x)`鍒涘缓鏂囦欢澶箈

`os.path.getsize(x)`鑾峰彇鏂囦欢z鐨勫ぇ灏?

`os.path.isfile(x)`鍒ゆ柇x鏄笉鏄枃浠?

`os.remove(x)`鍒犻櫎鏂囦欢x

`os.rmdir(x)`鍒犻櫎鏂囦欢澶箈

`os.rename(x, y)`灏嗘枃浠舵垨鏂囦欢澶箈鏀瑰悕涓簓銆傝繕鍙互绉诲姩鏂囦欢鎴栨枃浠跺す

`shutil.copyfile(x, y)`鎷疯礉鏂囦欢x鍒版枃浠秠锛岃嫢y瀛樺湪锛屼細琚壇楂?

### Python鏁版嵁搴撶紪绋?
鏁版嵁搴撳彲浠ョ敤鏉ュ瓨鏀惧ぇ閲忔暟鎹紝涓€涓暟鎹簱鍙互鏄竴涓枃浠讹紝涓€涓暟鎹彲浠ユ湁澶氬紶琛?

#### 瀛楁鐨勬暟鎹被鍨?
`text`瀛楃涓诧紝`real`灏忔暟锛?`integer`鏁存暟锛宍blob`浜岃繘鍒舵暟鎹紙濡傚浘鐗囷級锛宍date`鏃ユ湡锛堟湰璐ㄤ笂鏄痶ext锛夛紝`datetime`鏃堕棿+鏃ユ湡锛堟湰璐ㄤ笂鏄痶ext锛?

#### SQL鏁版嵁搴撴煡璇㈣鍙?sqlite3)
`CREATE TABLE`  鍒涘缓琛?

`INSERT INTO`  `VALUES`  鍦ㄨ〃涓彃鍏ヨ褰?

`UPDATE`             鍦ㄨ〃涓洿鏂拌褰?

`SELECT`             鍦ㄨ〃涓繘琛屾煡璇?

`DELETE`             鍦ㄨ〃涓垹闄よ褰?

### 姝ｅ垯琛ㄨ揪寮?
#### 姝ｅ垯琛ㄨ揪寮忎腑鐨勫姛鑳藉瓧绗?
| 瀛楃/缁勫悎 | 鍖归厤鐨勬ā寮?| 姝ｅ垯琛ㄨ揪寮?| 鍖归厤鐨勫瓧绗︿覆 |
| --- | --- | --- | --- |
| `.` | 闄も€榎n鈥欏鐨勪换鎰忎竴涓瓧绗︼紝鍖呮嫭姹夊瓧 | ''a.b''<br/> | ''acb''<br/>''adb'' |
| `*` | 閲忚瘝锛岃〃绀哄乏杈圭殑瀛楃鍙互鍑虹幇0娆℃垨浠绘剰澶氭 | ''a*b'' | ''b''<br/>''aaaaab'' |
| `?` | 閲忚瘝锛岃〃绀哄乏杈圭殑瀛楃鍙互鍑虹幇0娆℃垨1娆?| ''ka?b'' | ''kb''<br/>''kab'' |
| `+` | 閲忚瘝锛岃〃绀哄乏杈圭殑瀛楃蹇呴』鍑虹幇1娆℃垨鏇村娆?| ''ka+b'' | ''kab''<br/>''kaaaab'' |
| `{m, n}` | 閲忚瘝锛宮,n鏄暣鏁帮紝琛ㄧず宸﹁竟鐨勫瓧绗﹀繀椤诲嚭鐜拌嚦灏憁娆★紝鏈€澶歯娆°€俷涔熷彲浠ヤ笉鍐欙紝琛ㄧず娌℃湁娆℃暟涓婄嚎 | ''ka{1}b''<br/>''ka{2,4}b''<br/>''ka{2,}b'' | ''kab''<br/>''kaaaab''<br/>''kaaaaaaaaaab'' |
| `\d` | 涓€涓暟瀛楀瓧绗︼紝绛変环浜嶽0-9] | ''a\db'' | ''a3b''<br/>''a2b'' |
| `\D` | 涓€涓潪鏁板瓧瀛楃锛岀瓑浠蜂簬[^\d],[0-9] | ''a\Db'' | ''acb'' |
| `\s` | 涓€涓┖鐧藉瓧绗︼紝濡傜┖鏍硷紝\r\t\d | ''a\sb'' | ''a b''<br/>''a\nb'' |
| `\S` | 涓€涓潪绌虹櫧瀛楃 | ''a\Sb'' | ''akb'' |
| `\w` | 涓€涓崟璇嶅瓧绗︼細鍖呮嫭姹夊瓧鎴栧ぇ灏忓啓鑻辨枃瀛楁瘝锛屾暟瀛楋紝涓嬪垝绾匡紝鎴栧叾浠栬瑷€鐨勬枃瀛?| ''a\wb'' | ''a_b''<br/>''a涓璪'' |
| `\W` | 涓€涓笉鏄崟璇嶇殑瀛楃 | ''a\Wb'' | ''a?b'' |
| `|` | A|B琛ㄧず鑳藉尮閰岮鎴栬兘鍖归厤B鍧囩畻鍖归厤 | ''ab|c'' | ''ab''<br/>''c'' |
| `\` | 姝ｅ垯琛ㄨ揪寮忎腑甯歌鐨勭壒娈婂瓧绗? + ? * ^ $ [] (锛墈} \ 鍦ㄦ鍒欒〃杈惧紡涓〃绀哄瓧绗︽湰韬氨鍦ㄥ瓧绗﹀墠鍔犱笂`\` | ''a\\''<br/>''a\$b''<br/>''a\[\]b'' | ''a\''<br/>''a$b''<br/>''a[]b'' |


#### 姝ｅ垯琛ㄨ揪寮忎腑鑼冨洿绗﹀彿[]鍜岄噺璇?
[XXX]:姝ゅ蹇呴』鍑虹幇鏌愭煇鑼冨洿鍐呯殑瀛楃 鎴?姝ゅ蹇呴』鍑虹幇涓€涓瓧绗︼紝浣嗕笉鍙互鏄煇鏌愯寖鍥村唴鐨勫瓧绗?

`[a2c]`鍖归厤 ''a'' ''2'' ''c'' 涔嬩竴

`[a-zA-z]`鍖归厤浠讳竴鑻辨枃瀛楁瘝

`[\da-z\?]`鍖归厤涓€涓?鏁板瓧 鎴?灏忓啓鑻辨枃瀛楁瘝 鎴?''?''

`[^abc]`鍖归厤涓€涓潪''a'' '' b'' ''c''鐨勫瓧绗?

`[^a-f0-3]`鍖归厤涓€涓潪a-f鐨勮嫳鏂囧瓧姣嶏紝涔熼潪0-3鐨勬暟瀛楃殑瀛楃

`[\ue00-\9fa5]`琛ㄧず涓€涓眽瀛?

#### 姝ｅ垯琛ㄨ揪寮忎腑鐨勫嚱鏁?
`re.match(pattern, string, flag=0)`

浠庡瓧绗︿覆string鐨勮捣濮嬩綅缃尮閰嶄竴涓ā寮弍attern锛屾垚鍔熷垯杩斿洖涓€涓尮閰嶅璞★紝鍚﹀垯杩斿洖None

`re.search(pattern, string, flags = 0)`

鏌ユ壘瀛楃涓蹭腑鍙互鍖归厤鎴愬姛鐨勫瓙涓诧紝鎴愬姛鍒欒繑鍥炰竴涓尮閰嶅璞★紝鑻ユ棤娉曞尮閰嶏紝鍒欒繑鍥濶one

`re.findall(pattern, string, flags = 0)`

鏌ユ壘瀛楃涓蹭腑鎵€鏈夋ā寮忓尮閰嶇殑瀛愪覆锛堜笉閲嶅彔锛夋斁鍏ュ垪琛紝娌℃湁鍒欒繑鍥炵┖琛╗]

`re.finditer(pattenr, stringm flags = 0)`

鏌ユ壘瀛楃涓蹭腑鎵€鏈夋ā寮忓尮閰嶇殑瀛愪覆锛堜笉閲嶅彔锛?姣忎釜瀛愪覆瀵瑰簲浜庝竴涓尮閰嶅璞★紝杩斿洖鍖归厤瀵硅薄鐨勫簭鍒?

`re.sub(妯″紡涓诧紝鏇挎崲涓诧紝姣嶄覆)`

鐢ㄤ簬鏇挎崲鍖归厤鐨勫瓙涓?

#### 杈圭晫绗﹀彿
`\A`瀛楃涓茬殑宸﹁竟鐣?

`\Z`瀛楃涓茬殑鏈夎竟鐣?

`^`涓巂\A`鍚岋紝浣嗗湪澶氳鍖归厤妯″紡涓嬭繕鍙互琛ㄧず涓€琛屾枃瀛楃殑宸﹁竟鐣?

`$`涓巂\Z`鍚岋紝浣嗗湪澶氳鍖归厤妯″紡涓嬭繕鍙互琛ㄧず涓€琛屾枃瀛楃殑鍙宠竟鐣?

`\b`琛ㄧず姝ゅ搴斾负鍗曡瘝鐨勫乏杈圭晫鎴栨湁杈圭晫锛屽嵆涓嶅彲鏄崟璇嶅瓧绗?

`\B`琛ㄧず姝ゅ涓嶅厑璁稿崟璇嶇殑宸﹁竟鐣屾垨鏈夎竟鐣岋紝鍗冲繀椤绘槸鍗曡瘝瀛楃

#### 鍒嗙粍(....)
鎷彿涓殑琛ㄨ揪寮忔槸涓€涓垎缁勩€傚涓垎缁勬寜宸︽嫭鍙蜂粠宸﹀埌鍙充粠1寮€濮嬩緷娆＄紪鍙?

鍦ㄥ垎缁勭殑鍙宠竟鍙互閫氳繃鍒嗙粍鐨勭紪鍙峰紩鐢ㄨ鍒嗙粍鎵€鍖归厤鐨勫瓙涓?

鍒嗙粍浣滀负涓€涓暣浣擄紝鍚庨潰鍙互璺熼噺璇?

#### `re.findall`鍜屽垎缁?
鏈変笖鍙湁涓€涓垎缁勬椂锛宺e.findall杩斿洖鐨勬槸涓€涓瓙涓茬殑鍒楄〃锛屾瘡涓厓绱犳槸涓€涓尮閰嶅瓙涓插搴旂殑鍐呭

瓒呰繃涓€涓垎缁勬椂锛宺e.findall杩斿洖鐨勬槸涓€涓厓缁勭殑鍒楄〃锛屾瘡涓厓缁勫搴斾簬涓€涓尮閰嶇殑瀛愪覆锛屼緷娆℃槸1鍙峰垎缁勶紝浜屽彿鍒嗙粍锛屼笁鍙峰垎缁勨€︹€﹀尮閰嶇殑鍐呭

#### 鍖归厤瀵硅薄
鍖归厤鎴愬姛鏃剁殑杩斿洖缁撴灉

灞炴€э細

`string`鍖归厤鏃朵娇鐢ㄧ殑姣嶄覆

`lastindex`鏈€鍚庝竴涓尮閰嶇殑鍒嗙粍鐨勭紪鍙枫€傛病鏈夎鍖归厤鐨勫垎缁勶紝灏嗕负None

`group([n1, n2, ......])`鑾峰緱涓€涓垨澶氫釜鍒嗙粍鍖归厤鐨勫瓧绗︿覆锛涙寚瀹氬涓弬鏁版椂灏嗕互鍏冪粍褰㈠紡杩斿洖銆?

`groups([default])`浠ュ厓缁勫舰寮忚繑鍥炲叏閮ㄥ垎缁勫尮閰嶇殑瀛楃涓?

`groupdict([default])`杩斿洖鎸囧畾鐨勭粍鍖归厤鐨勫瓙涓插湪string涓殑浣嶇疆銆?

### `<font style="color:rgb(64, 64, 64);">datetime</font>`<font style="color:rgb(64, 64, 64);">妯″潡</font>
#### <font style="color:rgb(64, 64, 64);">1. </font>`<font style="color:rgb(64, 64, 64);">datetime</font>` 绫?
`<font style="color:rgb(64, 64, 64);">datetime</font>`<font style="color:rgb(64, 64, 64);"> 绫绘槸 </font>`<font style="color:rgb(64, 64, 64);">datetime</font>`<font style="color:rgb(64, 64, 64);"> 妯″潡涓渶鏍稿績鐨勭被锛岀敤浜庤〃绀烘棩鏈熷拰鏃堕棿銆?/font>

+ `<font style="color:rgb(64, 64, 64);">datetime.now()</font>`<font style="color:rgb(64, 64, 64);">锛氳繑鍥炲綋鍓嶆棩鏈熷拰鏃堕棿銆?/font>
+ `<font style="color:rgb(64, 64, 64);">datetime.today()</font>`<font style="color:rgb(64, 64, 64);">锛氳繑鍥炲綋鍓嶆棩鏈熷拰鏃堕棿锛堜笌 </font>`<font style="color:rgb(64, 64, 64);">now()</font>`<font style="color:rgb(64, 64, 64);"> 绫讳技锛屼絾涓嶅寘鍚椂鍖轰俊鎭級銆?/font>
+ `<font style="color:rgb(64, 64, 64);">datetime.combine(date, time)</font>`<font style="color:rgb(64, 64, 64);">锛氬皢 </font>`<font style="color:rgb(64, 64, 64);">date</font>`<font style="color:rgb(64, 64, 64);"> 鍜?</font>`<font style="color:rgb(64, 64, 64);">time</font>`<font style="color:rgb(64, 64, 64);"> 鍚堝苟涓轰竴涓?</font>`<font style="color:rgb(64, 64, 64);">datetime</font>`<font style="color:rgb(64, 64, 64);"> 瀵硅薄銆?/font>
+ `<font style="color:rgb(64, 64, 64);">datetime.strptime(string, format)</font>`<font style="color:rgb(64, 64, 64);">锛氬皢瀛楃涓叉寜鐓ф寚瀹氭牸寮忚В鏋愪负 </font>`<font style="color:rgb(64, 64, 64);">datetime</font>`<font style="color:rgb(64, 64, 64);"> 瀵硅薄銆?/font>
+ `<font style="color:rgb(64, 64, 64);">strftime(format)</font>`<font style="color:rgb(64, 64, 64);">锛氬皢 </font>`<font style="color:rgb(64, 64, 64);">datetime</font>`<font style="color:rgb(64, 64, 64);"> 瀵硅薄鏍煎紡鍖栦负瀛楃涓层€?/font>
+ `<font style="color:rgb(64, 64, 64);">timestamp()</font>`<font style="color:rgb(64, 64, 64);">锛氬皢 </font>`<font style="color:rgb(64, 64, 64);">datetime</font>`<font style="color:rgb(64, 64, 64);"> 瀵硅薄杞崲涓烘椂闂存埑锛圲nix 鏃堕棿锛夈€?/font>
+ `<font style="color:rgb(64, 64, 64);">fromtimestamp(timestamp)</font>`<font style="color:rgb(64, 64, 64);">锛氬皢鏃堕棿鎴宠浆鎹负 </font>`<font style="color:rgb(64, 64, 64);">datetime</font>`<font style="color:rgb(64, 64, 64);"> 瀵硅薄銆?/font>

#### <font style="color:rgb(64, 64, 64);">2. </font>`<font style="color:rgb(64, 64, 64);">date</font>` 绫?
`<font style="color:rgb(64, 64, 64);">date</font>`<font style="color:rgb(64, 64, 64);"> 绫荤敤浜庤〃绀烘棩鏈燂紙骞淬€佹湀銆佹棩锛夈€?/font>

+ `<font style="color:rgb(64, 64, 64);">date.today()</font>`<font style="color:rgb(64, 64, 64);">锛氳繑鍥炲綋鍓嶆棩鏈熴€?/font>
+ `<font style="color:rgb(64, 64, 64);">strftime(format)</font>`<font style="color:rgb(64, 64, 64);">锛氬皢 </font>`<font style="color:rgb(64, 64, 64);">date</font>`<font style="color:rgb(64, 64, 64);"> 瀵硅薄鏍煎紡鍖栦负瀛楃涓层€?/font>
+ `<font style="color:rgb(64, 64, 64);">date.fromtimestamp(timestamp)</font>`<font style="color:rgb(64, 64, 64);">锛氬皢鏃堕棿鎴宠浆鎹负 </font>`<font style="color:rgb(64, 64, 64);">date</font>`<font style="color:rgb(64, 64, 64);"> 瀵硅薄銆?/font>
+ `<font style="color:rgb(64, 64, 64);">date.replace(year, month, day)</font>`<font style="color:rgb(64, 64, 64);">锛氭浛鎹㈡棩鏈熶腑鐨勫勾銆佹湀銆佹棩銆?/font>
+ `<font style="color:rgb(64, 64, 64);">weekday()</font>`<font style="color:rgb(64, 64, 64);">锛氳繑鍥炴槦鏈熷嚑锛? 琛ㄧず鍛ㄤ竴锛? 琛ㄧず鍛ㄦ棩锛夈€?/font>
+ `<font style="color:rgb(64, 64, 64);">isoweekday()</font>`<font style="color:rgb(64, 64, 64);">锛氳繑鍥炴槦鏈熷嚑锛? 琛ㄧず鍛ㄤ竴锛? 琛ㄧず鍛ㄦ棩锛夈€?/font>

#### <font style="color:rgb(64, 64, 64);">3. </font>`<font style="color:rgb(64, 64, 64);">time</font>` 绫?
`<font style="color:rgb(64, 64, 64);">time</font>`<font style="color:rgb(64, 64, 64);"> 绫荤敤浜庤〃绀烘椂闂达紙鏃躲€佸垎銆佺銆佸井绉掞級銆?/font>

+ `<font style="color:rgb(64, 64, 64);">strftime(format)</font>`<font style="color:rgb(64, 64, 64);">锛氬皢 </font>`<font style="color:rgb(64, 64, 64);">time</font>`<font style="color:rgb(64, 64, 64);"> 瀵硅薄鏍煎紡鍖栦负瀛楃涓层€?/font>
+ `<font style="color:rgb(64, 64, 64);">time.replace(hour, minute, second, microsecond)</font>`<font style="color:rgb(64, 64, 64);">锛氭浛鎹㈡椂闂翠腑鐨勬椂銆佸垎銆佺銆佸井绉掋€?/font>

#### <font style="color:rgb(64, 64, 64);">4. </font>`<font style="color:rgb(64, 64, 64);">timedelta</font>` 绫?
`<font style="color:rgb(64, 64, 64);">timedelta</font>`<font style="color:rgb(64, 64, 64);"> 绫荤敤浜庤〃绀烘椂闂撮棿闅旓紙澶┿€佺銆佸井绉掔瓑锛夛紝甯哥敤浜庢棩鏈熷拰鏃堕棿鐨勫姞鍑忚繍绠椼€?/font>

+ `<font style="color:rgb(64, 64, 64);">timedelta(days, seconds, microseconds, milliseconds, minutes, hours, weeks)</font>`<font style="color:rgb(64, 64, 64);">锛氬垱寤烘椂闂撮棿闅斻€?/font>
+ `<font style="color:rgb(64, 64, 64);">total_seconds()</font>`<font style="color:rgb(64, 64, 64);">锛氳繑鍥炴椂闂撮棿闅旂殑鎬荤鏁般€?/font>

---

#### <font style="color:rgb(64, 64, 64);">5. </font>`<font style="color:rgb(64, 64, 64);">tzinfo</font>` 绫?
`<font style="color:rgb(64, 64, 64);">tzinfo</font>`<font style="color:rgb(64, 64, 64);"> 鏄竴涓娊璞″熀绫伙紝鐢ㄤ簬琛ㄧず鏃跺尯淇℃伅銆侾ython 3.9+ 鎺ㄨ崘浣跨敤 </font>`<font style="color:rgb(64, 64, 64);">zoneinfo</font>`<font style="color:rgb(64, 64, 64);"> 妯″潡鏉ュ鐞嗘椂鍖恒€?/font>

##### 绀轰緥锛氫娇鐢?`<font style="color:rgb(64, 64, 64);">zoneinfo</font>`
```python
from zoneinfo import ZoneInfo
from datetime import datetime

# 鍒涘缓甯︽椂鍖虹殑 datetime 瀵硅薄
now_utc = datetime.now(ZoneInfo("UTC"))
now_shanghai = datetime.now(ZoneInfo("Asia/Shanghai"))

print("UTC 鏃堕棿:", now_utc)
print("涓婃捣鏃堕棿:", now_shanghai)
```

### random搴撳鐞嗛殢鏈轰簨鍔?
Python 鐨?`random` 妯″潡鎻愪緵浜嗗绉嶇敓鎴愪吉闅忔満鏁扮殑鍑芥暟锛屽箍娉涚敤浜庢ā鎷熴€佹父鎴忓紑鍙戝拰闇€瑕侀殢鏈烘€х殑鍦版柟銆備互涓嬫槸 `random` 妯″潡涓父鐢ㄧ被鍜屽嚱鏁扮殑鐢ㄦ硶锛?

#### 1. 鐢熸垚闅忔満娴偣鏁?
+ `random.random()`锛氱敓鎴愪竴涓寖鍥村湪 `[0.0, 1.0)` 鐨勯殢鏈烘诞鐐规暟銆?
+ `random.uniform(a, b)`锛氱敓鎴愪竴涓寖鍥村湪 `[a, b]` 鐨勯殢鏈烘诞鐐规暟銆?

#### 2. 鐢熸垚闅忔満鏁存暟
+ `random.randint(a, b)`锛氱敓鎴愪竴涓寖鍥村湪 `[a, b]` 鐨勯殢鏈烘暣鏁般€?
+ `random.randrange(start, stop[, step])`锛氫粠 `range(start, stop, step)` 涓殢鏈洪€夋嫨涓€涓厓绱犮€?

#### 3. 浠庡簭鍒椾腑闅忔満閫夋嫨
+ `random.choice(seq)`锛氫粠闈炵┖搴忓垪 `seq` 涓殢鏈洪€夋嫨涓€涓厓绱犮€?
+ `random.choices(population, weights=None, k=1)`锛氫粠 `population` 涓殢鏈洪€夋嫨 `k` 涓厓绱狅紝鍙寚瀹氭潈閲嶃€?

#### 4. 闅忔満鎵撲贡搴忓垪
+ `random.shuffle(x)`锛氶殢鏈烘墦涔卞簭鍒?`x`銆?

#### 5. 鐢熸垚闅忔満鏍锋湰
+ `random.sample(population, k)`锛氫粠 `population` 涓殢鏈洪€夋嫨 `k` 涓笉閲嶅鐨勫厓绱犮€?

#### 6. 璁剧疆闅忔満绉嶅瓙
+ `random.seed(a=None)`锛氳缃殢鏈烘暟鐢熸垚鍣ㄧ殑绉嶅瓙銆傚鏋滄湭鎸囧畾 `a`锛屽垯浣跨敤绯荤粺鏃堕棿銆?

#### 7. 鍏朵粬闅忔満鍒嗗竷
+ `random.gauss(mu, sigma)`锛氱敓鎴愭鎬佸垎甯冪殑闅忔満鏁般€?
+ `random.expovariate(lambd)`锛氱敓鎴愭寚鏁板垎甯冪殑闅忔満鏁般€?

### jieba搴撹繘琛屽垎璇?
`jieba` 鏄竴涓姛鑳藉己澶х殑涓枃鍒嗚瘝搴擄紝骞挎硾鐢ㄤ簬鑷劧璇█澶勭悊銆佹枃鏈寲鎺樼瓑棰嗗煙銆備互涓嬫槸 `jieba` 搴撶殑涓昏绫汇€佸嚱鏁板強鍏剁敤娉曠殑璇︾粏浠嬬粛锛?

#### 1. 瀹夎鍜屽鍏?
鍦ㄤ娇鐢?`jieba` 搴撲箣鍓嶏紝闇€瑕佸厛瀹夎锛?

```bash
pip install jieba
```

瀹夎瀹屾垚鍚庯紝鍙互鍦?Python 涓鍏ワ細

```python
import jieba
```

#### 2. 鍒嗚瘝妯″紡
`jieba` 鎻愪緵浜嗕笁绉嶄富瑕佺殑鍒嗚瘝妯″紡锛?

##### 锛?锛夌簿纭ā寮忥紙榛樿妯″紡锛?
绮剧‘妯″紡浼氬皢鏂囨湰灏藉彲鑳界簿纭湴鍒囧垎鎴愬崟涓瘝璇紝閫傚悎鏂囨湰鍒嗘瀽銆?

```python
text = "鎴戝枩娆ython缂栫▼"
words = jieba.cut(text, cut_all=False)  # 鎴栫洿鎺?jieba.cut(text)
print("绮剧‘妯″紡锛?, "/ ".join(words))
```

杈撳嚭锛?

```plain
绮剧‘妯″紡锛氭垜/ 鍠滄/ Python/ 缂栫▼
```

##### 锛?锛夊叏妯″紡
鍏ㄦā寮忎細灏嗘枃鏈腑鎵€鏈夊彲鑳界殑璇嶈閮芥壂鎻忓嚭鏉ワ紝閫熷害闈炲父蹇紝浣嗗彲鑳藉瓨鍦ㄥ啑浣欍€?

```python
words = jieba.cut(text, cut_all=True)
print("鍏ㄦā寮忥細", "/ ".join(words))
```

杈撳嚭锛?

```plain
鍏ㄦā寮忥細鎴? 鍠滄/ Python/ 缂栫▼
```

##### 锛?锛夋悳绱㈠紩鎿庢ā寮?
鎼滅储寮曟搸妯″紡鍦ㄧ簿纭ā寮忕殑鍩虹涓婏紝瀵归暱璇嶅啀娆″垏鍒嗭紝鎻愰珮鍙洖鐜囷紝閫傚悎鐢ㄤ簬鎼滅储寮曟搸鍒嗚瘝銆?

```python
words = jieba.cut_for_search(text)
print("鎼滅储寮曟搸妯″紡锛?, "/ ".join(words))
```

杈撳嚭锛?

```plain
鎼滅储寮曟搸妯″紡锛氭垜/ 鍠滄/ Python/ 缂栫▼
```

#### 3. 鑷畾涔夎瘝鍏?
`jieba` 鏀寔鍔犺浇鑷畾涔夎瘝鍏革紝浠ユ彁楂樺垎璇嶇殑鍑嗙‘鎬с€傝嚜瀹氫箟璇嶅吀鏄竴涓枃鏈枃浠讹紝姣忚鍖呭惈涓€涓瘝鍜屽叾璇嶉锛堝彲閫夛級锛屾牸寮忓涓嬶細

```plain
鑷畾涔夎瘝 璇嶉
```

渚嬪锛屽垱寤轰竴涓悕涓?`custom_dict.txt` 鐨勮嚜瀹氫箟璇嶅吀锛?

```plain
鍗庝负绗旇鏈?10
```

鍔犺浇鑷畾涔夎瘝鍏革細

```python
jieba.load_userdict("custom_dict.txt")
text = "鍗庝负绗旇鏈€ц兘鍑鸿壊"
words = jieba.cut(text, cut_all=False)
print("鑷畾涔夎瘝鍏革細", "/ ".join(words))
```

杈撳嚭锛?

```plain
鑷畾涔夎瘝鍏革細鍗庝负绗旇鏈? 鎬ц兘/ 鍑鸿壊
```

#### 4. 璇嶆€ф爣娉?
`jieba` 鏀寔瀵瑰垎璇嶇粨鏋滆繘琛岃瘝鎬ф爣娉紝鍙互鐢ㄤ簬璇嶆€у垎鏋愬拰淇℃伅鎻愬彇銆?

```python
import jieba.posseg as pseg
text = "鎴戝枩娆ython缂栫▼"
words = pseg.cut(text)
for word, flag in words:
    print(f"{word} -> {flag}")
```

杈撳嚭锛?

```plain
鎴?-> r
鍠滄 -> v
Python -> eng
缂栫▼ -> vn
```

#### 5. 鍏抽敭璇嶆彁鍙?
`jieba` 鎻愪緵浜嗗叧閿瘝鎻愬彇鍔熻兘锛屼富瑕佹湁 TF-IDF 鍜?TextRank 涓ょ绠楁硶銆?

##### 锛?锛塗F-IDF 鍏抽敭璇嶆彁鍙?
```python
import jieba.analyse
text = "鎴戞潵鍒板寳浜竻鍗庡ぇ瀛︼紝娓呭崕澶у鏄腑鍥借憲鍚嶇殑楂樼瓑瀛﹀簻銆?
keywords = jieba.analyse.extract_tags(text, topK=5, withWeight=False)
print("鍏抽敭璇嶏紙TF-IDF锛夛細", keywords)
```

##### 锛?锛塗extRank 鍏抽敭璇嶆彁鍙?
```python
keywords = jieba.analyse.textrank(text, topK=5, withWeight=False)
print("鍏抽敭璇嶏紙TextRank锛夛細", keywords)
```

#### 6. 骞惰鍒嗚瘝
瀵逛簬杈冨ぇ鐨勬枃鏈紝鍙互浣跨敤骞惰鍒嗚瘝鏉ユ彁楂樺垎璇嶉€熷害銆?

```python
jieba.enable_parallel(4)  # 寮€鍚苟琛屽垎璇嶏紝鎸囧畾绾跨▼鏁?
text = "Python鏄竴绉嶆祦琛岀殑缂栫▼璇█锛屽箍娉涚敤浜嶹eb寮€鍙戝拰鏁版嵁绉戝銆? * 1000
words = jieba.cut(text, cut_all=False)
print("骞惰鍒嗚瘝缁撴灉锛?, " ".join(words))
```

#### 7. 璋冩暣鍒嗚瘝缁撴灉
鍙互閫氳繃璋冩暣璇嶉鎴栨坊鍔犳柊璇嶆潵浼樺寲鍒嗚瘝缁撴灉銆?

##### 锛?锛夎皟鏁磋瘝棰?
```python
jieba.suggest_freq((''鍖椾含'', ''澶у''), True)  # 璋冩暣璇嶉
```

##### 锛?锛夋坊鍔犳柊璇?
```python
jieba.add_word(''娓呭崕澶у'', freq=10, tag=''n'')  # 娣诲姞鏂拌瘝骞舵寚瀹氳瘝鎬?
```

#### 8. 搴旂敤鍦烘櫙
`jieba` 鍙互搴旂敤浜庡绉嶈嚜鐒惰瑷€澶勭悊浠诲姟锛屽鏂囨湰鍒嗙被銆佹儏鎰熷垎鏋愩€佹悳绱㈠紩鎿庝紭鍖栫瓑銆?

##### 锛?锛夋枃鏈垎绫?
閫氳繃鍒嗚瘝鎻愬彇鏂囨湰鐗瑰緛锛岀粨鍚堟満鍣ㄥ涔犵畻娉曡繘琛屽垎绫汇€?

##### 锛?锛夋儏鎰熷垎鏋?
缁撳悎鍒嗚瘝鍜屾儏鎰熷垎鏋愭ā鍨嬶紝鍒嗘瀽鏂囨湰涓殑鎯呮劅鍊惧悜銆?

##### 锛?锛夋悳绱㈠紩鎿庝紭鍖?
鎻愬彇鍏抽敭璇嶏紝鎻愰珮鎼滅储寮曟搸鐨勫彫鍥炵巼鍜岀簿纭害銆?











### openpyxl鐨勭敤娉?
`openpyxl` 鏄竴涓己澶х殑 Python 搴擄紝鐢ㄤ簬璇诲彇銆佸啓鍏ュ拰鎿嶄綔 Excel 鏂囦欢锛坄.xlsx` 鏍煎紡锛夈€備互涓嬫槸 `openpyxl` 涓父鐢ㄧ被鍜屽嚱鏁扮殑鐢ㄦ硶

#### 1. 瀹夎 `openpyxl`
鍦ㄤ娇鐢?`openpyxl` 涔嬪墠锛岄渶瑕侀€氳繃浠ヤ笅鍛戒护瀹夎锛?

```bash
pip install openpyxl
```

2. 鍒涘缓鍜屼繚瀛樺伐浣滅翱

##### 鍒涘缓鏂板伐浣滅翱
```python
from openpyxl import Workbook

wb = Workbook()  # 鍒涘缓涓€涓柊宸ヤ綔绨?
ws = wb.active  # 鑾峰彇榛樿宸ヤ綔琛?
ws.title = "MySheet"  # 璁剧疆宸ヤ綔琛ㄦ爣棰?
ws[''A1''] = "Hello"  # 鍐欏叆鍗曞厓鏍兼暟鎹?
ws[''B1''] = "World"
wb.save("new_file.xlsx")  # 淇濆瓨宸ヤ綔绨?
```

##### 鎵撳紑鐜版湁宸ヤ綔绨?
```python
from openpyxl import load_workbook

wb = load_workbook("existing_file.xlsx")  # 鍔犺浇鐜版湁宸ヤ綔绨?
ws = wb["Sheet1"]  # 鑾峰彇鎸囧畾宸ヤ綔琛?
cell_value = ws[''A1''].value  # 璇诲彇鍗曞厓鏍兼暟鎹?
print(cell_value)
```

#### 3. 宸ヤ綔绨垮拰宸ヤ綔琛ㄧ殑鎿嶄綔
##### 鑾峰彇宸ヤ綔琛?
```python
ws = wb.active  # 鑾峰彇褰撳墠娲诲姩宸ヤ綔琛?
ws = wb["Sheet1"]  # 閫氳繃鍚嶇О鑾峰彇宸ヤ綔琛?
```

##### 鍒涘缓鏂板伐浣滆〃
```python
new_sheet = wb.create_sheet(title="NewSheet")  # 鍒涘缓鏂板伐浣滆〃
```

##### 鍒犻櫎宸ヤ綔琛?
```python
del wb["Sheet2"]  # 鍒犻櫎宸ヤ綔琛?
```

###### 澶嶅埗宸ヤ綔琛?
```python
copied_sheet = wb.copy_worksheet(wb["Sheet1"])  # 澶嶅埗宸ヤ綔琛?
copied_sheet.title = "Copy of Sheet1"
```

#### 4. 鍗曞厓鏍兼搷浣?
##### 鍐欏叆鏁版嵁
```python
ws[''A1''] = "Hello"  # 閫氳繃鍗曞厓鏍间綅缃啓鍏ユ暟鎹?
ws.cell(row=2, column=2, value="World")  # 閫氳繃琛屽垪绱㈠紩鍐欏叆鏁版嵁
```

##### 璇诲彇鏁版嵁
```python
cell_value = ws[''A1''].value  # 閫氳繃鍗曞厓鏍间綅缃鍙栨暟鎹?
cell_value = ws.cell(row=2, column=2).value  # 閫氳繃琛屽垪绱㈠紩璇诲彇鏁版嵁
print(cell_value)
```

##### 杩唬鍗曞厓鏍?
```python
for row in ws.iter_rows(min_row=1, max_row=5, min_col=1, max_col=3, values_only=True):
    print(row)  # 鎸夎杩唬

for col in ws.iter_cols(min_row=1, max_row=5, min_col=1, max_col=3, values_only=True):
    print(col)  # 鎸夊垪杩唬
```

#### 5.鏁版嵁杩藉姞
```python
data = [(1, 2, 3), (4, 5, 6)]
for row in data:
    ws.append(row)  # 灏嗘暟鎹拷鍔犲埌宸ヤ綔琛?
wb.save("appended_file.xlsx")
```

#### 6. 鏍煎紡鍖栧拰鏍峰紡
```python
from openpyxl.styles import Font, Alignment

cell = ws[''A1'']
cell.font = Font(bold=True, size=14)  # 璁剧疆瀛椾綋鏍峰紡
cell.alignment = Alignment(horizontal=''center'', vertical=''center'')  # 璁剧疆瀵归綈鏂瑰紡
```

#### 7. 鍚堝苟鍜屾媶鍒嗗崟鍏冩牸
```python
ws.merge_cells(''A1:B2'')  # 鍚堝苟鍗曞厓鏍?
ws.unmerge_cells(''A1:B2'')  # 鎷嗗垎鍗曞厓鏍?
```

#### 8. 娣诲姞鍥捐〃
```python
from openpyxl.chart import BarChart, Reference

data = Reference(ws, min_row=1, max_row=5, min_col=1, max_col=3)
chart = BarChart()
chart.add_data(data, titles_from_data=True)
ws.add_chart(chart, "E2")
wb.save("chart_file.xlsx")
```

#### 9. 宸ヤ綔绨垮睘鎬?
```python
print(wb.sheetnames)  # 鑾峰彇鎵€鏈夊伐浣滆〃鍚嶇О
print(wb.active)  # 鑾峰彇褰撳墠娲诲姩宸ヤ綔琛?
print(wb.read_only)  # 妫€鏌ユ槸鍚︿互鍙妯″紡鎵撳紑
```





### numpy搴撶殑鐢ㄦ硶
澶氱淮鏁扮粍搴?

#### numpy鍒涘缓鏁扮粍
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
a = np.zeros((2,3),dtype=int)  #鍒涘缓涓€涓?琛?鍒楃殑鍏冪礌閮芥槸鏁存暟0鐨勬暟缁?
```

#### numpy鏁扮粍甯哥敤鐨勫睘鎬у拰鍑芥暟
| 灞炴€ф垨鍑芥暟 | 鍚箟鎴栧姛鑳?|
| --- | --- |
| dtype | 鏁扮粍鍏冪礌鐨勭被鍨?|
| ndim | 鏁扮粍鏄嚑缁寸殑 |
| shape | 鏁扮粍姣忎竴缁寸殑闀垮害 |
| size | 鏁扮粍鍏冪礌涓暟 |
| argwhere(...) | 鏌ユ壘鍏冪礌浣嶇疆 |
| tolist() | 杞崲涓簂ist |
| min() | 鏈€灏忓厓绱?|
| max() | 鏈€澶у厓绱?|
| reshape(...) | 鏀瑰彉鏁扮粍鐨勫舰鐘?|
| hlatten() | 杞崲鎴愪竴缁存暟缁?|


#### numpy娣诲姞鏁扮粍鍏冪礌
numpy鏁扮粍涓€鏃︾敓鎴愶紝鍒欎笉鑳藉鍒狅紝鍙兘杩斿洖涓€涓柊鐨勬暟缁?

| append(x, y锛?| 鑻鏄暟缁勶紝鍒楄〃鎴栧厓缁勶紝灏唝鐨勫厓绱犳坊鍔犺繘鏁扮粍x寰楁柊鐨勬暟缁勶紝鍚﹀垯灏唝鏈韩娣诲姞杩涙暟缁剎寰楁柊鏁扮粍 |
| --- | --- |
| concatenate(...) | 鎷兼帴澶氫釜鏁扮粍鎴栧垪琛?|
| delete(...) | 鍒犻櫎鏁扮粍鍏冪礌鐨勫緱鏂扮殑鏁扮粍 |


#### numpy鏁扮粍鐨勬暟瀛﹁繍绠?
```python
import numpy as np
a = np.array((1,2,3,4))
b = a + 1
print(b)           #>>[2 3 4 5]
print(a*b)         #>>[2 6 12 20]   a,b瀵瑰簲鍏冪礌鐩镐箻
print(a + b)       #>>[3 5 7 9]     a,b瀵瑰簲鍏冪礌鐩稿姞
c = np.sqrt(a*10)  #>>姹俛*10鐨勫钩鏂硅窡
```

#### numpy鏁扮粍鐨勫垏鐗?
numpy鏁扮粍鐨勫垏鐗囨槸鈥樿鍥锯€?

鏄師鏁扮粍鐨勪竴閮ㄥ垎锛岃€岄潪涓€閮ㄥ垎鐨勬嫹璐?

`1:6]`閫夋嫨涓嬫爣涓?鍒?鐨勫厓绱?

`[1:6:2]`閫夋嫨涓嬫爣涓?鍒?鐨勫厓绱?锛屾闀夸负2

`c = np.copy(a[3:6])`c鏄痑鐨勪竴閮ㄥ垎鎷疯礉

鍒囩墖鍚庣殑鏁扮粍鍏冪礌鍊兼敼鍙樻椂锛屽師鏁扮粍鐨勫€艰鏀瑰彉锛岃€屾嫹璐濈殑涓嶄細

### pandas
#### pandas涓殑绫伙細Series
Series鏄竴缁磋〃鏍硷紝姣忎釜鍏冪礌甯︽爣绛句笖鏈変笅鏍囷紝鍏煎叿鍒楄〃鍜屽瓧鍏哥殑璁块棶褰㈠紡

`pandas.Series(data,index)`

`data`鏁版嵁椤?

`index`鏁版嵁鐨勬爣绛?

#### DataFrame鐨勬瀯閫犲拰璁块棶
DataFrame鏄甫琛屽垪鏍囩鐨勪簩缁磋〃鏍硷紝姣忎竴鍒楅兘鏄竴涓猄eries

`df = pandas.DataFrame(data,index,columns)`

`data`鏁版嵁鍒楄〃

`index`琛屾爣绛?

`columns`鍒楁爣绛?

`df.valus`璁块棶鏁版嵁椤?

#### DataFrame鐨勫垏鐗?
iloc[琛岄€夋嫨鍣紝鍒楅€夋嫨鍣╙      鐢ㄤ笅鏍囧仛鍒囩墖    iloc[1:3,2:3]

loc[琛岄€夋嫨鍣紝鍒楅€夋嫨鍣╙        鐢ㄦ爣绛惧仛鍒囩墖   loc[''index1'':index2, columns1:columns2]

DataFrame鐨勫垏鐗囨槸瑙嗗浘

DataFrame鐨勫垎鏋愮粺璁?

#### DataFrame鐨勭殑淇敼鍜屽鍒?
鍙互鍦ㄥ垏鐗囩殑鍩虹涓婅繘琛屼慨鏀?

`df[''column1''] = data`涓哄垪娣诲姞鏁版嵁

`df.insert(琛屾爣绛撅紝鍒楁爣绛撅紝data)`鍦ㄦ煇琛屾坊鍔犳煇鍒楁暟鎹?

`df.columns = [columns1, columns2,......]`鏀瑰垪鏍囩鍚?

`df.drop(琛屾垨鍒楋紝axis = 1, implace=True)`axis=0琛ㄧず鎸夎鍒犻櫎锛宎xis=1琛ㄧず鎸夊垪鍒犻櫎

#### pandas璇籈xcel鏂囨。
闇€瑕佸簱openpyxl锛堝.xlsx锛夋垨xlrd鎴杧lwt鏀寔锛堣€佺殑.xls锛?

璇诲彇鐨勬瘡涓伐浣滆〃閮芥槸涓€涓狣ataFrame
', NOW());
SET @last_note_id = LAST_INSERT_ID();

INSERT INTO 
ote (uthor_id, 	itle, content, created_at)
VALUES (1002, 'Spring', '# 绠€浠?
+ 瀵煎寘

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
  DataSource : 浣跨敤Spring鐨勬暟鎹簮鏇挎崲Mybatis鐨勯厤缃?
  杩欓噷浣跨敤Spring鎻愪緵鐨凧DBC锛歰rg.springframework.jdbc.datasource
  -->

</beans>
```

+ 浼樼偣
+ Spring鏄竴涓紑婧愮殑鍏嶈垂鐨勫鍣?
+ 杞婚噺绾ч潪鍏ヤ镜寮忕殑
+ 鎺у埗鍙嶈浆锛圛OC锛夛紝闈㈠悜鍒囬潰鍙樻垚锛圓OP锛?
+ 鏀寔浜嬪姟鐨勫鐞嗭紝瀵规鏋舵暣鍚堢殑鏀寔
+ 缁勬垚

<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1749645254430-a64a9a2c-1839-4f2a-b7a6-d2458775f02f.png" width="487" title="" crop="0,0,1,1" id="uee35a4f0" class="ne-image">

+ 鎵╁睍
+ Spring Boot
    - 涓€涓揩閫熷紑鍙戠殑鑴氭墜鏋?
    - 鍩轰簬SpringBoot鍙互蹇€熷紑鍙戝崟涓井鏈嶅姟
    - 棰勫畾澶т簬閰嶇疆
+ Spring Cloud
    - Spring Cloud 鏄熀浜嶴pringBoot瀹炵幇鐨?
+

# beans
## ioc鍒涘缓瀵硅薄鐨勬柟寮?
鏃犲弬鏋勯€狅細property

+ 鏍规嵁灞炴€у悕璧嬪€?
+ name: 灞炴€у悕   value锛氬睘鎬у€?

鏈夊弬鏋勯€狅細constructor-arg

+ 鏍规嵁涓嬫爣绱㈠紩璧嬪€硷細index="0" value="闅忎究"
+ 鏍规嵁灞炴€у悕璧嬪€硷細name="name" value="鐫″彉"
+ 鏍规嵁灞炴€х被鍨嬭祴鍊硷細type="java.lang.String" value="鏄殑"    绫诲瀷锛氬寘鍚?绫诲悕

```xml
<bean id="user" class="com.jie.pojo.User" name="user3 user4, user5; user6">
<!--        <property name="name" value="suibian"/>-->
<!--        <constructor-arg index="0" value="闅忎究"/>-->
<!--        <constructor-arg name="name" value="鐫″彉"/>-->
    <constructor-arg type="java.lang.String" value="鏄殑"/>
</bean>
```

## Spring閰嶇疆
+ 鍒悕锛歛lias

```xml
<!--鍒悕锛屽鏋滄坊鍔犱簡鍒悕锛屼篃鍙互浣跨敤鍒悕鑾峰彇杩欎釜瀵硅薄-->
<alias name="user" alias="user2"/>
```

+ bean锛氱殑閰嶇疆

```xml
<!--
    id:  bean鐨勫敮涓€鏍囪瘑绗︼紝涔熷氨鏄浉褰撲簬瀵硅薄鍚?
    class: bean 瀵硅薄璇村搴旂殑鍏ㄩ檺瀹氬悕 锛?鍖呭悕 + 绫诲悕
    name: 涔熸槸鍒悕锛屼笖name鍙互鍙栧涓埆鍚嶏紝鍙敤閫楀彿锛岀┖鏍硷紝鍒嗗彿浣滀负鍒嗛殧绗?
-->
<bean id="user" class="com.jie.pojo.User" name="user3 user4, user5; user6">
    <property name="name" value="suibian"/>
</bean>
```

+ import
+ 涓€鑸敤浜庡洟闃熷紑鍙戜娇鐢紝浠栧彲浠ュ皢澶氫釜閰嶇疆鏂囦欢锛屽鍏ュ悎骞朵负涓€涓?
+ 浠栦細鑷姩鍚堝苟鐩稿悓鐨勫唴瀹?

```xml
<import resource="beans.xml"/>
<import resource="beans1.xml"/>
<import resource="beans2.xml"/>
```



# DI渚濊禆娉ㄥ叆
## 鏋勯€犲櫒娉ㄥ叆
鏃犲弬鏋勯€狅細property

鏈夊弬鏋勯€狅細constructor-arg

## 澶嶆潅绫诲瀷娉ㄥ叆
+ name锛氱畝鍗曠被鍨嬫敞鍏?

```xml
<bean id="student" class="com.jie.pojo.Student">
```

+ ref : 寮曠敤娉ㄥ叆

```xml
<bean id="address" class="com.jie.pojo.Address">
    <property name="address" value="鍥涘窛"/>
</bean>

<!--ref-->
<property name="address" ref="address"/>

```

+ array锛氭暟缁勬敞鍏?

```xml
<!--array-->
<property name="books">
  <array>
    <value>涓夊浗</value>
    <value>瑗挎父</value>
    <value>绾㈡ゼ</value>
    <value>姘存祾</value>
  </array>
</property>
```

+ list锛氬垪琛ㄦ敞鍏?

```xml
<!--list-->
<property name="hobbys">
  <list>
    <value>缇芥瘺鐞?/value>
    <value>绡悆</value>
    <value>涔掍箵鐞?/value>
  </list>
</property>
```

+ map锛氶敭鍊煎

```xml
<!--map-->
<property name="card">
  <map>
    <entry key="鏀挎不闈㈣矊" value="缇や紬"/>
    <entry key="瑙掕壊" value="瀛︾敓"/>
  </map>
</property>
```

+ set锛氶泦鍚?

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

+ null锛氱┖

```xml
<!--null-->
<!--        <property name="wife" value=""/>-->
<property name="wife">
  <null/>
</property>
```

+ properties锛氶厤缃唴瀹?

```xml
<!--properties-->
<property name="info">
  <props>
    <prop key="url">www.baidu.com</prop>
    <prop key="name">鐧惧害</prop>
    <prop key="post">3306</prop>
  </props>
</property>
```



## 浣跨敤鍛藉悕绌洪棿娉ㄥ叆
```xml
<!--浣跨敤杩噋鍛藉悕绌洪棿娉ㄥ叆锛屽彲浠ョ洿鎺ユ敞鍏ュ睘鎬х殑鍊硷細property-->
<bean id="user" class="com.jie.pojo.User" p:name="寮犱笁" p:age="12"/>
<!--浣跨敤杩嘽鍛藉悕绌洪棿娉ㄥ叆锛屾敞鍏ュ睘鎬х殑鍊硷細constructor-->
<bean id="user2" class="com.jie.pojo.User" c:name="鏉? c:age="12"/>
```

## bean鐨勪綔鐢ㄥ煙
+ 鍗曚緥妯″紡锛圫pring榛樿鏈哄埗锛?

```xml
<bean id="user" class="com.jie.pojo.User" 
  p:name="寮犱笁" p:age="12" scope="singleton"/>
```

+ 鍘熷瀷妯″紡锛氭瘡娆′粠瀹瑰櫒涓璯et鐨勬椂鍊欙紝閮戒細浜х敓涓€涓瀵硅薄

```xml
<bean id="user2" class="com.jie.pojo.User" 
  c:_0="鏉? c:_1="12" scope="prototype"/>
```

+ 鍏朵綑鐨剅equesr, session, applicatiioin, 杩欎簺閮藉彧鑳藉湪web寮€鍙戜腑浣跨敤

# Bean鐨勮嚜鍔ㄨ閰?
## autowier锛?
+ byName:浼氳嚜鍔ㄥ湪瀹瑰櫒涓婁笅鏂囦腑鏌ユ壘锛屽拰鑷繁瀵硅薄set鏂规硶鍚庨潰鐨勫€煎搴旂殑bean id
+ byType:浼氳嚜鍔ㄥ湪瀹瑰櫒涓婁笅鏂囦腑鏌ユ壘锛屽拰鑷繁瀵硅薄灞炴€х被鍨嬬浉鍚岀殑bean 蹇呴』淇濊瘉绫诲瀷鍏ㄥ眬鍞竴

```xml
<bean id="cat" class="com.jie.pojo.Cat"/>
<bean id="dog" class="com.jie.pojo.Dog"/>

<bean id="people" class="com.jie.pojo.People" autowire="byType">
  <property name="name" value="寮犱笁"/>
</bean>
```

```java
private Cat cat;
private Dog dog;
private String name;
```

## 浣跨敤娉ㄨВ鑷姩瑁呴厤
瑕佷娇鐢ㄦ敞瑙ｉ』鐭ワ細

+ 瀵煎叆绾︽潫
+ 閰嶇疆娉ㄨВ鏀寔  <context:annotation-config/>

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

+ 鐩存帴鍦ㄥ睘鎬т笂浣跨敤鍗冲彲锛佷篃鍙互鍦╯et鏂规硶涓婁娇鐢?
+ 浣跨敤Autowired鍙互涓嶇敤缂栧啓set鏂规硶浜嗭紝鍓嶆彁鏄繖涓嚜鍔ㄨ閰嶇殑灞炴€у湪IOC瀹瑰櫒涓瓨鍦紝涓旂鍚堝悕瀛梑yName
+ 濡傛灉鏄剧ず瀹氫箟浜咥utowired鐨剅equired灞炴€т负false锛岃鏄庤繖涓璞″彲浠ヤ负null

```java
@Autowired(required=false)
private Cat cat;
```

+ 濡傛灉@Autowired鑷姩瑁呴厤鐨勭幆澧冩瘮杈冨鏉傦紝鑷姩瑁呴厤鏃犳硶閫氳繃涓€涓敞瑙ｃ€怈Autowired銆戝畬鎴愮殑鏃跺€欙紝鍙互浣跨敤@Qualifier(value="xxx")鍘婚厤鍚園Autowired鐨勪娇鐢紝鎸囧畾涓€涓敮涓€鐨刡ean瀵硅薄娉ㄥ叆

```java
@Autowired
@Qualifier(value = "cat")
private Cat cat;
```

+

# 浣跨敤娉ㄨВ寮€鍙?
+ 鍦⊿pring4涔嬪悗锛岃浣跨敤娉ㄨВ寮€鍙戯紝蹇呴』瑕佷繚閲峚op鐨勫寘瀵煎叆浜?
+ 浣跨敤娉ㄨВ闇€瑕佸鍏ontext鐨勭害鏉燂紝澧炲姞娉ㄨВ鐨勬敮鎸?

```xml
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:context="http://www.springframework.org/schema/context"
  xsi:schemaLocation="http://www.springframework.org/schema/beans
  http://www.springframework.org/schema/beans/spring-beans.xsd
  http://www.springframework.org/schema/context
  http://www.springframework.org/schema/context/spring-context.xsd">
  <!--鎸囧畾瑕佹壂鎻忕殑鍖咃紝杩欎釜鍖呬笅鐨勬敞瑙ｅ氨浼氱敓鏁?->
  <context:component-scan base-package="com.jie"/>
  <context:annotation-config/>

</beans>
```

+ bean
+ 灞炴€т娇鐢ㄦ敞瑙ｆ敞鍏?

```java
// 鐩稿綋浜?<bean id="user" class="com.jie.pojo.User"/>
@Component
public class User {
    // 鐩稿綋浜?<property name="name" value="寮犱笁"/>
    @Value("寮犱笁")
    public String name;
}

```

+ 琛嶇敓鐨勬敞瑙?
    - @Component鏈夊嚑涓鐢熺殑娉ㄨВ锛屽湪web寮€鍙戜腑锛屼細鎸夌収mvc涓夋鏋舵瀯鍒嗗眰锛?
    - dao 銆怈Repository銆?
    - service 銆怈Service
    - controller 銆怈Controller銆?
    - 杩欏洓涓敞瑙ｅ姛鑳介兘鏄竴鏍风殑锛岄兘鏄唬琛ㄥ皢鏌愪釜绫荤鐨勫埌Spring涓紝瑁呴厤bean锛?
+ 鑷姩瑁呴厤鐨勬敞瑙?
    - @Autowired锛?
    - @Nullable
    - @Resource
+ 浣滅敤鍩?
    - @Scope("singleton")
+ 灏忕粨
    - xml鐢ㄦ潵绠＄悊bean
    - 娉ㄨВ鍙礋璐ｅ畬鎴愬睘鎬х殑娉ㄥ叆
    - 鍦ㄤ娇鐢ㄧ殑杩囩▼涓紝蹇呴』璁╂敞瑙ｇ敓鏁?

# 浣跨敤Java鐨勬柟寮忛厤缃甋pring
+ comfig閰嶇疆绫?

```java
// 杩欎釜浼氳Spring瀹瑰櫒鎵樼锛屾敞鍐屽埌瀹瑰櫒涓紝鍥犱负瀹冩湰韬氨鏄竴涓狜Component
// @Configuration 浠ｈ〃杩欐槸涓€涓厤缃被锛屽氨鍜宐eans.xml涓€鏍?
@Configuration
@ComponentScan("com.jie.pojo")
public class JieConfig {

    // 娉ㄥ唽涓€涓猙ean锛?
    // 杩欎釜鏂规硶鐨勫悕瀛楀氨鐩稿綋浜?id
    // 杩欎釜鏀惧洖鍙氨鐩稿綋浜?class
    @Bean
    public User user() {
        return new User();  // 杩斿洖瑕佹敞鍏ュ埌bean鐨勫璞?
    }

}
```

+ 瀹炰綋绫?

```java
@Component
public class User {

    @Value("闅忎究")
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
```

+ 娴嬭瘯绫?

```java
public class MyTest {

    @Test
    public void test() {
        // 濡傛灉瀹屽叏浣跨敤浜嗛厤缃被鐨勬柟寮忓幓鍋氾紝鍙兘閫氳繃 AnnotationConfigApplicationContext 鏉ヨ幏鍙栧鍣?
        // 鍕囨暍閰嶇疆绫荤殑class瀵硅薄鍔犺浇
        ApplicationContext context = new AnnotationConfigApplicationContext(JieConfig.class);
        User user = context.getBean("user", User.class);
        System.out.println(user.getName());
    }
}
```

# 浠ｇ悊妯″紡
## 闈欐€佷唬鐞嗘ā寮?
瑙掕壊鍒嗘瀽锛?

+ 鎶借薄瑙掕壊锛氫竴鑸細浣跨敤鎺ュ彛鎴栬€呮娊璞＄被鏉ヨВ鍐?
+ 鐪熷疄瑙掕壊锛氳浠ｇ悊鐨勮鑹?
+ 浠ｇ悊瑙掕壊锛氫唬鐞嗙湡瀹炶鑹诧紝浠ｇ悊鐪熷疄瑙掕壊鍚庯紝涓€鑸細鍋氫竴浜涢檮灞炴搷浣?
+ 瀹㈡埛锛氳闂唬鐞嗗璞＄殑浜?

浠ｇ爜娴嬭瘯锛?

+ 鎶借薄瑙掕壊锛屾帴鍙?

```java
// 鎶借薄锛屽叕鍏辩殑鏂规硶
public interface Rent {
    public void rent();
}
```

+ 鐪熷疄瑙掕壊锛屾埧涓?

```java
// 鐪熷疄瑙掕壊 锛?瀹炵幇鍏叡鏂规硶
public class Host implements Rent {
    public void rent() {
        System.out.println("鎴夸笢鍑虹鎴垮瓙");
    }
}
```

+ 浠ｇ悊瑙掕壊锛屼腑浠?

```java
// 浠ｇ悊瑙掕壊锛屽彲浠ュ疄鐜颁竴浜涢檮灞炴搷浣?
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

    // 鐪嬫埧
    public void seeHouse() {
        System.out.println("涓粙甯︿綘鐪嬫埧");
    }

    // 鏀朵腑浠嬭垂
    public void fare() {
        System.out.println("鏀朵腑浠嬭垂");
    }
}
```

+ 瀹㈡埛锛氱鎴跨殑浜?

```java
public class Client {

    public static void main(String[] args) {
        Host host = new Host();
        // 浠ｇ悊
        Proxy proxy = new Proxy(host);
        proxy.rent();
    }
}
```

## 鍔ㄦ€佷唬鐞?
+ 鍔ㄦ€佷唬鐞嗗拰闈欐€佷唬鐞嗚鑹蹭竴鏍?
+ 鍔ㄦ€佷唬鐞嗙殑浠ｇ悊绫诲瀷鏄姩鎬佺敓鎴愮殑锛屼笉鏄垜浠洿鎺ュ啓濂界殑锛?
+ 鍔ㄦ€佷唬鐞嗗垎涓轰袱澶х被锛氬熀浜庢帴鍙ｇ殑鍔ㄦ€佷唬鐞嗭紝鍩轰簬绫荤殑鍔ㄦ€佷唬鐞?
    - 鍩轰簬鎺ュ彛 --- JDK 鍔ㄦ€佷唬鐞?
    - 鍩轰簬绫伙細cglib
    - Java瀛楄妭鐮佸疄鐜帮細javasist

闇€瑕佷簡瑙ｄ袱涓被锛歅roxy锛氫唬鐞嗭紝InvocationHandler锛氳皟鐢ㄥ鐞嗙▼搴?

娴嬭瘯锛?

+ 鎶借薄瑙掕壊锛?

```java
// 鎶借薄瑙掕壊
public interface UserService {
    public void add();
    public void delete();
    public void query();
    public void update();
}
```

+ 鐪熷疄瑙掕壊

```java
// 鐪熷疄瑙掕壊
public class UserServiceImpl implements UserService{
    @Override
    public void add() {
        System.out.println("娣诲姞浜嗕竴涓敤鎴?);
    }
    @Override
    public void delete() {
        System.out.println("鍒犻櫎浜嗕竴涓敤鎴?);
    }
    @Override
    public void query() {
        System.out.println("鏌ヨ浜嗕竴涓敤鎴?);
    }
    @Override
    public void update() {
        System.out.println("淇敼浜嗕竴涓敤鎴?);
    }
}
```

+ 瀹炵幇鍔ㄦ€佷唬鐞嗙被InvocationHandler鎺ュ彛

```java
// 鍔ㄦ€佷唬鐞嗙被 鍏敤
public class ProxyInvocationHandler implements InvocationHandler {
    // 琚唬鐞嗙殑鎺ュ彛
    private Object target;
    public void setTarget(Object target) {
        this.target = target;
    }
    // 鐢熸垚寰楀埌浠ｇ悊绫?
    public Object getProxy() {
        return Proxy.newProxyInstance(target.getClass().getClassLoader(), target.getClass().getInterfaces(), this);
    }
    // 澶勭悊浠ｇ悊瀹炰緥锛屽苟杩斿洖缁撴灉
    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        log(method.getName());
        Object result = method.invoke(target, args);
        return result;
    }
    // 璁剧疆鏃ュ織
    public void log(String msg) {
        System.out.println("鎵ц浜? + msg + "鏂规硶");
    }
}
```

+ 瀹㈡埛绔?

```java
// 鐢ㄦ埛
public class Client {
    public static void main(String[] args) {
        // 鐪熷疄瑙掕壊
        UserServiceImpl userService = new UserServiceImpl();
        // 浠ｇ悊瑙掕壊
        ProxyInvocationHandler pih = new ProxyInvocationHandler();
        // 璁剧疆瑕佷唬鐞嗙殑瀵硅薄
        pih.setTarget(userService);
        // 鍔ㄦ€佺敓鎴愪唬鐞嗙被
        UserService proxy = (UserService) pih.getProxy();
        // 鎵ц鐪熷疄瑙掕壊涓殑鏂规硶
        proxy.add();
    }
}
```

鍔ㄦ€佷唬鐞嗙殑濂藉锛?

+ 涓€涓姩鎬佷唬鐞嗙被浠ｇ悊鐨勬槸鎺ュ彛锛屼竴鑸唬鐞嗙殑鏄竴绫绘帴鍙?
+ 涓€涓姩鎬佷唬鐞嗙被锛屽彲浠ヤ唬鐞嗗涓被锛屽彧瑕佸疄鐜颁簡鍚屼竴涓帴鍙ｅ嵆鍙?

# AOP
## 鐢⊿pring瀹炵幇AOP
## 鎺ュ彛鍜屽疄鐜扮被
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
        System.out.println("娣诲姞浜嗕竴涓敤鎴?);
    }

    @Override
    public void delete() {
        System.out.println("鍒犻櫎浜嗕竴涓敤鎴?);
    }

    @Override
    public void update() {
        System.out.println("淇敼浜嗕竴涓敤鎴?);
    }

    @Override
    public void query() {
        System.out.println("鏌ヨ浜嗕竴涓敤鎴?);
    }
}
```

## 鏂瑰紡涓€
浣跨敤Spring鐨凙PI鎺ュ彛

+ 閰嶇疆applicationContext.xml

```java
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xmlns:aop="http://www.springframework.org/schema/aop"
       xsi:schemaLocation="http://www.springframework.org/schema/beans
                           http://www.springframework.org/schema/beans/spring-beans.xsd
                           http://www.springframework.org/schema/aop
                           http://www.springframework.org/schema/aop/spring-aop.xsd">

    <!--娉ㄥ唽bean-->
    <bean id="userService" class="com.jie.service.UserServiceImpl"/>
    <bean id="log" class="com.jie.log.Log"/>
    <bean id="afterLog" class="com.jie.log.AfterLog"/>

    <!--閰嶇疆aop:闇€瑕佸鍏op鐨勭害鏉?->
    <aop:config>
        <!--鍒囧叆鐐癸細expression锛氳〃杈惧紡, execution(瑕佹墽琛岀殑浣嶇疆锛?* * * * )-->
        <aop:pointcut id="pointcut" expression="execution(* com.jie.service.UserServiceImpl.*(..))"/>

        <!-- 鎵ц鐜粫澧炲姞锛乤dvisor -->
        <aop:advisor advice-ref="log" pointcut-ref="pointcut"/>
        <aop:advisor advice-ref="afterLog" pointcut-ref="pointcut"/>
    </aop:config>

</beans>
```

## 鏂瑰紡浜?
鑷畾涔夋潵瀹炵幇AOP

+ 鑷畾涔塂iy绫?

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

+ 閰嶇疆applicationContext.xml

```java
<bean id="diy" class="com.jie.diy.DiyPointCat"/>

<aop:config>
    <aop:aspect ref="diy">
        <!--璁剧疆鍒囧叆鐐?鍗冲皢瑕佽繍琛岃繖涓嚱鏁颁箣鍓?->
        <aop:pointcut id="point" expression="execution(* com.jie.service.UserServiceImpl.*(..))"/>
        <!--鍦ㄤ箣鍓峬ethod 鍑芥暟 锛?pointcut-ref 锛?鍒囧叆璺緞-->
        <aop:before method="before" pointcut-ref="point"/>
        <!--鍦ㄤ箣鍚巑ethod 鍑芥暟 锛?pointcut-ref 锛?鍒囧叆璺緞-->
        <aop:after method="after" pointcut-ref="point"/>
    </aop:aspect>
</aop:config>
```

## 娴嬭瘯
```java
public class MyTest {
    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        // 鍔ㄦ€佷唬鐞嗕唬鐞嗙殑鏄帴鍙?
        UserService service = (UserService) context.getBean("userService");
        service.update();
    }
}
```

## 浣跨敤娉ㄨВ瀹炵幇
+ 娉ㄨВ鍒囬潰绫?

```java
@Aspect // 浣跨敤娉ㄨВ鏍囧織杩欐槸涓€涓垏闈㈢被
public class AnnotationPointCut {

    @Before("execution(* com.jie.service.UserServiceImpl.*(..))")
    public void before() {
        System.out.println("=========鏂规硶鎵ц鍓?=========");
    }

    @After("execution(* com.jie.service.UserServiceImpl.*(..))")
    public void after() {
        System.out.println("=========after==========");
    }

    @Around("execution(* com.jie.service.UserServiceImpl.*(..))")
    public void around(ProceedingJoinPoint joinPoint) throws Throwable {
        System.out.println("鐜粫鍓?);
        System.out.println(joinPoint.getSignature().getDeclaringType().getName());
        Object proceed = joinPoint.proceed();
        System.out.println("鐜粫鍚?);
    }

}
```

+ applicantionContext.xml閰嶇疆

```xml
<!--娉ㄥ唽bean-->
<bean id="userService" class="com.jie.service.UserServiceImpl"/>
<bean id="log" class="com.jie.log.Log"/>
<bean id="afterLog" class="com.jie.log.AfterLog"/>
<bean id="annotationPointCut" class="com.jie.diy.AnnotationPointCut"/>

<!--浣跨敤aop瀹炵幇娉ㄨВ浠ｇ悊-->
<aop:aspectj-autoproxy/>
```

# Mybatis-Spring
鏂规硶涓€

+ UserMapper 鎺ュ彛锛?

```java
public interface UserMapper {
    public List<User> selectUsers();
}
```

+ UserMapper.xml, 鍐橲QL璇彞

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

+ mybatis-config.xml 涓昏閰嶇疆鏄痵ettings锛宼ypeAliases(鍒悕)

```xml
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE configuration
        PUBLIC "-//mybatis.org//DTD Config 3.0//EN"
        "https://mybatis.org/dtd/mybatis-3-config.dtd">
<!--configuration 鏍稿績閰嶇疆鏂囦欢-->
<configuration>
    <settings>
        <setting name="logImpl" value="STDOUT_LOGGING"/>
        <!--鏄惧紡寮€鍚粯璁ょ紦瀛?->
        <setting name="cacheEnabled" value="true"/>
    </settings>

    <typeAliases>
        <package name="com.jie.pojo"/>
    </typeAliases>
</configuration>
```

+ spring-mapper.xml, 鏁版嵁婧愶紝SqlSessionFactory锛孲qlSessionTemplate

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
        DataSource : 浣跨敤Spring鐨勬暟鎹簮鏇挎崲Mybatis鐨勯厤缃?
        杩欓噷浣跨敤Spring鎻愪緵鐨凧DBC锛歰rg.springframework.jdbc.datasource
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
        <!--缁戝畾Mybatis閰嶇疆鏂囦欢-->
        <property name="configLocation" value="classpath:mybatis-config.xml"/>
        <property name="mapperLocations" value="com/jie/mapper/UserMapper.xml"/>
     </bean>

    <!--SqlSessionTemplate: 鍗硊tils涓殑SqlSession-->
    <bean id="sqlSession" class="org.mybatis.spring.SqlSessionTemplate">
        <constructor-arg index="0" ref="sqlSessionFactory"/>
    </bean>

</beans>
```

+ UserMapperImpl, 缁欐帴鍙ｆ坊鍔犲疄鐜扮被

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

+ applicationContext.xml锛屽皢瀹炵幇绫绘敞鍏ュ埌Spring涓?

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

+ 娴嬭瘯浣跨敤

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

鏂规硶浜?

+ 鏇存敼鎺ュ彛瀹炵幇绫伙紝闇€瑕佺户鎵縎qlSessionDaoSupport绫?

```java
public class UserMapperImpl2 extends SqlSessionDaoSupport implements UserMapper {

    @Override
    public List<User> selectUsers() {
        return getSqlSession().getMapper(UserMapper.class).selectUsers();
    }
}
```

+ 灏嗗疄鐜扮被娉ㄥ叆鍒癝pring涓?

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

+ 娴嬭瘯瀹炵幇

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

# 澹版槑寮忎簨鍔?
+ 澹版槑寮忎簨鍔★紝鐢ˋOP瀹炵幇

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

    <!--閰嶇疆澹版槑寮忎簨鍔?->
    <bean id="transactionManager" class="org.springframework.jdbc.datasource.DataSourceTransactionManager">
        <property name="dataSource" ref="dataSource"/>
    </bean>

    <!--缁撳悎aop瀹炵幇浜嬪姟鐨勭粐鍏?->
    <!-- 閰嶇疆浜嬪姟閫氱煡 -->
    <tx:advice id="txAdvice" transaction-manager="transactionManager">
        <tx:attributes>
            <tx:method name="add" propagation="REQUIRED"/>
            <tx:method name="delete" propagation="REQUIRED"/>
            <tx:method name="insert" propagation="REQUIRED"/>
            <tx:method name="query" read-only="true"/>
            <tx:method name="*" propagation="REQUIRED"/>
        </tx:attributes>
    </tx:advice>

    <!--閰嶇疆浜嬪姟鍒囧叆-->
    <aop:config>
        <aop:pointcut id="txPointCat" expression="execution(* com.jie.mapper.*.*(..))"/>
        <aop:advisor advice-ref="txAdvice" pointcut-ref="txPointCat"/>
    </aop:config>

</beans>
```
', NOW());
SET @last_note_id = LAST_INSERT_ID();

INSERT INTO 
ote (uthor_id, 	itle, content, created_at)
VALUES (1003, 'HTML', '## 缃戦〉鐨勫熀鏈爣绛?
+ 鏍囬鏍囩

```html
<h1>涓€绾ф爣绛?/h1>
<h2>浜岀骇鏍囩</h2>
<h3>涓夌骇鏍囩</h3>
<h4>鍥涚骇鏍囩</h4>
<h5>浜旂骇鏍囩</h5>
<h6>鍏骇鏍囩</h6>
```

+ 娈佃惤鏍囩

```html
<p>鏂囨湰鍐呭</p>
<p>鏂囨湰鍐呭2</p>
```

+ 鎹㈣鏍囩

```html
<p>鏂囨湰鍐呭<br/></p>
```

+ 姘村钩绾挎爣绛?

```html
<hr/>
```

+ 瀛椾綋鏍峰紡鏍囩

```html
<strong>绮椾綋</strong>
<em>鏂滀綋</em>
```

+ 鐗规畩绗﹀彿 &;

```html
<h3>绌?nbsk;鏍?/h3>
<p>澶т簬鍙?gt;</p>
<p>灏忎簬鍙?lt;</p>
<p>鐗堟潈绗﹀彿&copy;</p>
```

+ 娉ㄩ噴

```html
<-- 
  
  
  -->
```

## 缃戦〉缁撴瀯鍒嗘瀽
+ **header锛氭爣棰樺ご閮ㄥ尯鍩熺殑鍐呭锛堢敤浜庨〉闈㈡垨椤甸潰涓殑涓€鍧楀尯鍩燂級**
+ **footer锛氭爣璁拌剼閮ㄥ尯鍩熺殑鍐呭锛堢敤浜庢鐗归〉闈㈡垨椤甸潰鐨勪竴鍧楀尯鍩燂級**
+ section锛歐eb宸蹭拱浣犱腑鐨勪竴鍧楃嫭绔嬪尯鍩?
+ article锛氱嫭绔嬬殑鏂囩珷鍐呭
+ aside锛氱浉鍏冲唴瀹圭殑搴旂敤锛堢敤浜庝晶杈规爮锛?
+ **nav锛氬鑸被杈呭姪鍐呭**

## 鍥惧儚锛岃秴閾炬帴锛岀綉椤靛竷灞€
### 鍥惧儚鏍囩
```html
<img src="path" alt="text" title="tesx" width="x" height="y"/>
```

灞炴€?

+ src = "path" :鍥惧儚鍦板潃   蹇呭～
+ alt = "text" 鍥捐薄鐨勪唬鏇挎枃瀛?蹇呭～
+ title = "text" 榧犳爣鎮仠鏂囧瓧
+ width = "x" 锛氬浘鍍忕殑瀹藉害
+ height = "y"锛氬浘璞￠珮搴?

甯哥敤鐨勫浘鍍忔牸寮?JPG GIF PNG BMP

### 閾炬帴鏍囩
#### 椤甸潰闂撮摼鎺?
```html
<a href="path" target="鐩爣绐楀彛浣嶇疆">杩炴帴鏂囨湰鎴栧浘鍍?/a>
```

灞炴€э細

+ href="path"锛氳繛鎺ヨ矾寰? 蹇呭～
+ target="杩炴帴鍦ㄥ摢涓獥鍙?
    - _bank 锛氬湪鏂版爣绛句腑鎵撳紑
    - _self锛氬湪鑷繁鐨勭綉椤典腑鎵撳紑  榛樿

#### 閿氶摼鎺?
1. 闇€瑕佷竴涓敋鏍囪
2. 璺宠浆鍒版爣璁?

```html
<a name="tep">椤堕儴</a>
<a herf="#tep">鍥炲埌椤堕儴</a>
```

3. 鍙互璺冲埌鍏朵粬椤甸潰鐨勬寚瀹氫綅缃?

```html
<a herf="涓婁竴涓〉闈?html#tep">璺宠浆</a>
```

#### 鍔熻兘鎬ч摼鎺?
+ 閭欢閾炬帴锛歮ailto

```html
<a href="mailto:閭鍦板潃"></a>
```

+ QQ閾炬帴锛?

#### 琛屽唴鍏冪礌鍜屽潡鍏冪礌
+ 鍧楀厓绱狅細
    - 鏃犺鍐呭澶氬皯锛岃鍏冪礌鐙崰涓€琛?
    - 锛坧锛?h1~h6...锛?
+ 琛屽唴鍏冪礌
    - 鍐呭鎾戝紑瀹藉害锛屽乏鍙抽兘鏄鍐呭厓绱犵殑鍙互鍦ㄦ帓鍦ㄤ竴琛?
    - 锛坅锛宻trong锛宔n...锛?

## 鍒楄〃锛岃〃鏍硷紝濯掍綋鍏冪礌
### 鍒楄〃
#### 浠€涔堟槸鍒楄〃
鍒楄〃鏄俊鎭祫婧愮殑涓€绉嶈〃绀哄舰寮忥紝浠栧彲浠ユ槸淇℃伅缁撴瀯鍖栧拰鏉＄悊鍖栵紝骞朵互鍒楄〃鐨勬牱寮忔樉绀哄嚭鏉ワ紝浠ヤ究娴忚鑰呰兘鏇村揩鎹风殑鑾峰緱鐩稿簲鐨勪俊鎭?

#### 鏈夊簭鍒楄〃
```html
<ol>
  <li>java</li>
  <li>python</li>
  <li>杩愮淮</li>
</ol>
```

搴旂敤鑼冨洿锛氳瘯鍗凤紝闂嵎鈥︹€?

#### 鏃犲簭鍒楄〃
```html
<ul>
  <li>java</li>
  <li>python</li>
  <li>杩愮淮</li> 
</ul>
```

搴旂敤鑼冨洿锛氬鑸爮锛屼晶杈规爮鈥︹€?

#### 鑷畾涔夊垪琛?
```html
<dl>  鏍囩
  <dt></dt>  鍒楄〃鍚嶇О
  <dd></dd>  鍒楄〃鍐呭
  <dd></dd>  
  <dd></dd>
</dl>
```

搴旂敤鑼冨洿锛氬叕鍙哥綉绔欏簳閮?

### 琛ㄦ牸
+ 鏍囩 table
+ 琛? tr
+ 鍒? td
+ 璺ㄨ rowspan="2"   璺ㄤ袱琛?
+ 璺ㄥ垪 colspan="2"    璺ㄤ袱鍒?

```html
<table >
  
</table>
```

### 濯掍綋鍏冪礌
#### 瑙嗛鍏冪礌 video
```html
<video src="path" controls autoplay></video>
```

+ src="path"锛氳祫婧愯矾寰?
+ controls 锛氳缃挱鏀鹃€夐」
+ autoplay  鎵撳紑缃戦〉鑷姩鎾斁

#### 濯掍綋鍏冪礌 audio
```html
<aduio src="path" controls autoplay></aduio>
```

## iframe鍐呰仈鏍囩
src锛氬紩鐢ㄩ〉闈㈠湴鍧€

name锛氭鏋舵爣璇嗗悕

```tcl
<iframe src="https://www.baidu.com" frameborder="0", height="800", width="1000"></iframe>
```

## 琛ㄥ崟
### 绠€浠?
```tcl
action: 琛ㄥ崟鎻愪氦浣嶇疆锛屽彲浠ユ槸缃戠珯锛屼篃鍙互鏄竴涓姹傚鐞嗗湴鍧€
method锛歱ost锛実et 鎻愪氦鏂瑰紡
  get鏂规硶锛氬彲浠ュ湪url涓湅鍒版彁浜ょ殑淇℃伅锛屼笉瀹夊叏锛岄珮鏁?
  post锛氭瘮杈冨畨鍏紝浼犺緭澶ф枃浠?
value="闅忎究" 榛樿鍒濆鍊?
maxlength="8" 鏈€闀胯兘鍐欏嚑涓瓧绗?
size="30" 鏂囨湰妗嗙殑闀垮害
```

method锛氳瀹氬浣曞彂閫佽〃鍗曟暟鎹?甯哥敤鍊?get|post

action锛氳〃绀哄悜浣曞鍙戦€佽〃鍗曟暟鎹?

### 甯哥敤鎸夐挳
#### 涓嬫媺妗嗭細
```tcl
<select name="鍒楄〃鍚嶅崟" id="">
  <option value="chain" aria-checked="true">涓浗</option>
  <option value="us">缇庡浗</option>
  <option value="eth">鐟炲＋</option>
  <option value="yindu">鍗板害</option>
</select>
```

#### 鐢ㄦ埛鍚嶅瘑鐮侊細
```tcl
<p>鍚嶅瓧锛?input type="text" name="username" value="闅忎究" maxlength="8" size="30"/></p>
<p>瀵嗙爜锛?input type="password" name="pwd"/></p>
```

#### 鏂囨湰鍩?
```html
<!--
鏂囨湰鍩?
cols : 琛?
rows 锛?鍒?
-->

<p>鍙嶉锛?
  <textarea name="testarea" id="" cols="30" rows="10">鏂囨湰鍐呭</textarea>
</p>
```

#### 鍗曢€夋鏍囩
```html
  <!--
  鍗曢€夋鏍囩
  input type="radio"
  value : 鍗曢€夋鐨勫€?
  name : 琛ㄧず缁?
  -->
  <p>鎬у埆:
    <input type="radio" value="boy" name="sex"/>鐢?
    <input type="radio" value="girl" name="sex"/>濂?
  </p>
```

#### 澶氶€夋
```html
  <!--
  澶氶€夋
  input type="checkbox"
  -->
  <p>鐖卞ソ锛?
    <input type="checkbox" value="sleep" name="hobby">鐫¤
    <input type="checkbox" value="code" name="hobby">鏁蹭唬鐮?
    <input type="checkbox" value="chat" name="hobby">鑱婂ぉ
    <input type="checkbox" value="game" name="hobby">娓告垙
    <input type="checkbox" value="girl" name="hobby">鎭嬬埍
  </p>
```

#### 鏂囦欢鍩?
```html
  <p>鏂囦欢
    <input type="file" name="files">
    <input type="button" value="涓婁紶" name="upload">
  </p>
```

#### 閲嶇疆锛屾彁浜わ紝鍥惧儚锛屾櫘閫氭寜閽?
```html
  <!--
  澶氶€夋
  input type="button"  鏅€氭寜閽?
  input type="image"   鍥惧儚鎸夐挳
  input type="submit"  鎻愪氦鎸夐挳
  input type="reset"   閲嶇疆
  -->
  <p>鎸夐挳
    <input type="button" name="btn1" value="鐐瑰嚮鍙橀暱">
    <input type="image" >
  </p>


  <input type="submit">
  <input type="reset" value="娓呯┖琛ㄥ崟">
```

#### 閭锛寀rl锛屾暟瀛?
```html
  <!--
  閭欢
  -->
  <p>閭锛?
    <input type="email"name="email">
  </p>
  <!--url-->
  <p>url:
    <input type="url" name="url">
  </p>
  <!--鏁板瓧-->
  <p>鏁板瓧锛?
    <input type="number" name="number" max="100" min="0" step="10">
  </p>
```

#### 婊戝潡锛屾悳绱?
```html
  <!--婊戝潡-->
  <p>闊抽噺锛?
    <input type="range" max="100" min="0" name=鈥渧oice" step="2">
  </p>

  <!--鎼滅储-->
  <p>鎼滅储
    <input type="search" name="search">
  </p>

```

## 琛ㄥ崟搴旂敤
+ 鍙锛歳eadonly
+ 绂佺敤锛歞isabled
+ 闅愯棌鍩燂細hidden
+ 榛樿鍊硷細value
+ 澧炲己榧犳爣鍙敤鎬?

```html
  <!--
  澧炲己榧犳爣鍙敤鎬?
  -->

  <q>
    <label for="mark">鐐规垜璇曡瘯</label>
    <input type="text" id="mark">
  </q>
```

## 琛ㄥ崟鐨勫垵绾ч獙璇?
placeholder锛氭彁绀轰俊鎭?

required锛氶潪绌哄瓧娈?

pattern锛氭鍒欒〃杈惧紡

[https://www.jb51.net/tools/regexsc.htm](https://www.jb51.net/tools/regexsc.htm)


', NOW());
SET @last_note_id = LAST_INSERT_ID();

INSERT INTO 
ote (uthor_id, 	itle, content, created_at)
VALUES (1003, 'Mybatis', '# 绠€浠?
## 浠€涔堟槸Mybatis
1. Mybatis 鐧惧害鐧剧
+ MyBatis 鏄竴娆句紭绉€鐨勬寔涔呭眰妗嗘灦锛屽畠鏀寔鑷畾涔?SQL銆佸瓨鍌ㄨ繃绋嬩互鍙婇珮绾ф槧灏勩€?
+ MyBatis 閬垮厤浜嗗嚑涔庢墍鏈夌殑 JDBC 浠ｇ爜鍜屾墜鍔ㄨ缃弬鏁颁互鍙婅幏鍙栫粨鏋滈泦鐨勫伐浣溿€?
+ 浣跨敤 MyBatis 鍙互灏嗘暟鎹眰鍜屼笟鍔″眰涔嬮棿鐨勪唬鐮佸垎绂伙紝鏋佸ぇ鍦版彁楂樹簡寮€鍙戞晥鐜囷紝骞朵笖鍑忓皯浜嗕唬鐮佺殑缁存姢閲忋€?
+ 瀹氫箟锛歁yBatis 鏄竴涓紭绉€鐨勬寔涔呭眰妗嗘灦锛屽畠鏀寔鑷畾涔?SQL銆佸瓨鍌ㄨ繃绋嬩互鍙婇珮绾ф槧灏勩€?
+ 鑳屾櫙锛歁yBatis 鏈€鍒濈敱 MyBatis.org 绀惧尯寮€鍙戯紝鍚庢潵鎴愪负 Apache 鐨勪竴涓《绾ч」鐩€?
2. 鏍稿績鐗规€?
   + SQL 鏄犲皠锛氶€氳繃 XML 鎴栨敞瑙ｆ柟寮忓皢 Java 瀵硅薄涓?SQL 璇彞杩涜鏄犲皠銆?
   + 鍔ㄦ€?SQL锛氭彁渚涘己澶х殑鍔ㄦ€?SQL 鍔熻兘锛屾敮鎸佸鏉傜殑 SQL 璇彞鏋勯€犮€?
   + 楂樼骇鏄犲皠锛氭敮鎸佷竴瀵逛竴銆佷竴瀵瑰绛夊鏉傚叧绯荤殑鏄犲皠銆?
   + 绫诲瀷澶勭悊锛氳嚜鍔ㄥ鐞?Java 绫诲瀷鍒版暟鎹簱绫诲瀷鐨勮浆鎹€?
   + 缂撳瓨鏀寔锛氭彁渚涗竴绾у拰浜岀骇缂撳瓨鏈哄埗锛屾彁楂樻煡璇㈡晥鐜囥€?
3. 浣跨敤鏂规硶
   + 閰嶇疆鏂囦欢锛氶€氳繃 MyBatis 鐨勯厤缃枃浠讹紙mybatis-config.xml锛夐厤缃暟鎹簮銆佷簨鍔＄鐞嗗櫒绛夈€?
   + Mapper 鎺ュ彛锛氬畾涔夋暟鎹闂眰鎺ュ彛锛屽苟閫氳繃 XML 鎴栨敞瑙ｆ柟寮忛厤缃?SQL 璇彞銆?
   + 浼氳瘽宸ュ巶锛氫娇鐢?SqlSessionFactoryBuilder 鏋勫缓 SqlSessionFactory銆?
   + 浼氳瘽鎿嶄綔锛氶€氳繃 SqlSession 杩涜鏁版嵁搴撴搷浣溿€?
4. 浼樺娍
   + 绠€鍗曟槗鐢細瀛︿範鎴愭湰浣庯紝鏄撲簬涓婃墜銆?
   + 鐏垫椿鎬у己锛氭敮鎸侀珮搴﹁嚜瀹氫箟鐨?SQL 鍜屾槧灏勮鍒欍€?
   + 鎬ц兘浼樺寲锛氶€氳繃缂撳瓨鏈哄埗鍜屽姩鎬?SQL 鎻愰珮鎬ц兘銆?
   + 绀惧尯鏀寔锛氫綔涓?Apache 椤圭洰锛屾嫢鏈夋椿璺冪殑绀惧尯鏀寔銆?
5. 鍔ｅ娍
   + 杩囧害閰嶇疆锛氬浜庣畝鍗曠殑搴旂敤鏉ヨ锛屽彲鑳介渶瑕佽繃澶氱殑閰嶇疆宸ヤ綔銆?
   + 渚靛叆鎬э細铏界劧鍑忓皯浜嗕唬鐮侀噺锛屼絾鍦ㄦ煇浜涙儏鍐典笅鍙兘浼氬鍔犱唬鐮佷笌鏁版嵁搴撶殑鑰﹀悎搴︺€?
   + 鐗堟湰鍏煎鎬э細闅忕潃 Java 鍜屾暟鎹簱鎶€鏈殑鏇存柊锛孧yBatis 闇€瑕佷笉鏂洿鏂颁互淇濇寔鍏煎鎬с€?
## 濡備綍鑾峰緱Mybatis
+ Maven浠撳簱
+ GitHub锛歨ttps://github.com/mybatis/mybatis-3/releases
+ 涓枃鏂囨。锛歨ttps://mybatis.org/mybatis-3/zh/index.html

## 鎸佷箙鍖?
鏁版嵁鎸佷箙鍖?

+ 鎸佷箙灞傚氨鏄皢绋嬪簭鐨勬暟鎹湪鎸佷箙鐘舵€佸拰鐬椂鐘舵€佽浆鍖栫殑杩囩▼
+ 鍐呭瓨锛氭柇鐢靛嵆澶?
+ 鏁版嵁搴擄紙JDBC锛夛紝io鏂囦欢鎸佷箙鍖?

涓轰粈涔堥渶瑕佹寔涔呭寲

+ 鏈変竴浜涘璞★紝涓嶈兘璁╀粬涓㈡帀
+ 鍐呭瓨澶吹浜?

## 鎸佷箙灞?
Dao灞傦紝Servlet灞傦紝controller灞?

+ 瀹屾垚鎸佷箙鍖栧伐浣滅殑浠ｇ爜鍧?
+ 灞傜晫闄愬崄鍒嗘槑鏄?

## 涓轰粈涔堥渶瑕丮ybatis
+ 甯姪绋嬪簭鍛樺皢鏁版嵁瀛樺叆鍒版暟鎹簱涓?
+ 鏂逛究
+ 浼犵粺鐨凧DBC浠ｇ爜姣旇緝澶嶆潅锛岀畝鍖栥€傛鏋躲€傝嚜鍔ㄥ寲
+

# 绗竴涓狹ybatis绋嬪簭
## 鎼缓鐜
+ 鎼缓鏁版嵁搴?

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
    (1, "寮犱笁", "123456"),
    (2, "鏉庡洓", "123456"),
    (3,"鐜嬩簲", "123456");
```

+ 鏂板缓椤圭洰
    - 鏂板缓涓€涓櫘閫氱殑maven椤圭洰
    - 鍒犻櫎src鐩綍
    - 瀵煎叆maven渚濊禆

```xml
<dependencies>
  <!-- mysql椹卞姩 -->
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

## 鍒涘缓涓€涓ā鍧?
+ 缂栧啓Mybatis鐨勬牳蹇冩枃浠?

```xml
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE configuration
        PUBLIC "-//mybatis.org//DTD Config 3.0//EN"
        "https://mybatis.org/dtd/mybatis-3-config.dtd">
<!--configuration 鏍稿績閰嶇疆鏂囦欢-->
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
    <!--姣忎竴涓狹apper.xml閮介渶瑕佸湪mybatis鏍稿績閰嶇疆鏂囦欢涓敞鍐?->
    <mappers>
        <mapper resource="com/jie/dao/UserMapper.xml"/>
    </mappers>
</configuration>
```

+ 缂栧啓Mybatis鐨勫伐鍏风被

```java
// sqlSessionFactory
public class MybatisUtils {

    private static SqlSessionFactory sqlSessionFactory;

    static {
        try {
            // 浣跨敤mybatis蹇呴』鑾峰彇sqlSessionFactory瀵硅薄
            String resource = "mybatis-config.xml";
            InputStream inputStream = Resources.getResourceAsStream(resource);
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    // 鏃㈢劧鏈変簡 SqlSessionFactory锛岄【鍚嶆€濅箟锛屾垜浠彲浠ヤ粠涓幏寰?SqlSession 鐨勫疄渚嬨€?
    // SqlSession 鎻愪緵浜嗗湪鏁版嵁搴撴墽琛?SQL 鍛戒护鎵€闇€鐨勬墍鏈夋柟娉曘€?

    public static SqlSession getSqlSession() {
        return sqlSessionFactory.openSession();
    }
}
```

+



## 缂栧啓浠ｇ爜
+ 瀹炰綋绫?

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

+ Dao鎺ュ彛

```java
public interface UserDao {
    List<User> getUserList();
}
```

+ 鎺ュ彛瀹炵幇绫伙紝鐢卞師鏉ョ殑UserDaoImpl杞崲涓轰竴涓狹apper閰嶇疆鏂囦欢

```xml
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper
        PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
        "https://mybatis.org/dtd/mybatis-3-mapper.dtd">

<!--namespace: 缁戝畾涓€涓搴旂殑Dao/Mapper鎺ュ彛-->
<mapper namespace="com.jie.dao.UserDao">
    <!-- select锛氭煡璇㈣鍙? id锛氭柟娉曞悕 resultType锛氬疄浣撶被/杩斿洖鍊肩被鍨?->
    <select id="getUserList()" resultType="com.jie.pojo.User">
        select * from mybatis.user;
    </select>
</mapper>
```

+

## 娴嬭瘯
娉ㄦ剰鐐癸細

+ 姣忎竴涓狹apper.xml閮介渶瑕佸湪mybatis鏍稿績閰嶇疆鏂囦欢涓厤缃?
+ <font style="color:rgba(0, 0, 0, 0.9);background-color:rgb(245, 245, 245);">org.apache.ibatis.binding.BindingException: Invalid bound statement (not found)</font>

```xml
<!--姣忎竴涓狹apper.xml閮介渶瑕佸湪mybatis鏍稿績閰嶇疆鏂囦欢涓厤缃?->
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

junit娴嬭瘯

```xml
public class UserDaoTest {

    @Test
    public void test() {
        SqlSession sqlSession = null;

        try{
            // 鑾峰緱sqlSession瀵硅薄
            sqlSession = MybatisUtils.getSqlSession();
            // 鎵цsql
            // 鏂瑰紡1.  getMapper
            UserDao userDao = sqlSession.getMapper(UserDao.class);
            List<User> userList = userDao.getUserList();

            // 鏂瑰紡2
            // sqlSession.selectList(("com.jie.dao.UserDao.getUserList"));

            for (User user : userList) {
                System.out.println(user);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 鍏抽棴sqlSession
            sqlSession.close();
        }

    }
}
```

## namespace
namespace涓殑鍖呭悕瑕佸拰Mapper鎺ュ彛涓殑鍖呭悕涓€鑷达紒

## select
閫夋嫨锛屾煡璇㈣鍙ワ紱

+ id锛氬氨鏄搴攏amespace涓殑鏂规硶鍚?
+ resultType锛歋ql璇彞鎵ц鐨勮繑鍥炲€肩被鍨?
+ parameterType锛氬弬鏁扮被鍨?
1. 缂栧啓Mapper鐨勬帴鍙?

```java
// 鎻掑彊鍏ㄩ儴鐢ㄦ埛
List<User> getUserList();

// 鏍规嵁id鏌ヨ鐢ㄦ埛
User getUserById(int id);
```

2. 缂栧啓sql璇彞

```xml
<!--    select锛氭煡璇㈣鍙? id锛氭柟娉曞悕   resultType锛氭煡璇㈢粨鏋滄槧灏勭殑瀵硅薄绫诲瀷-->
<select id="getUserList" resultType="com.jie.pojo.User">
    select * from user
</select>

<!--    鏍规嵁id鏌ヨ淇℃伅-->
<select id="getUserById" resultType="com.jie.pojo.User" parameterType="int">
    select *  from user where id = #{id}
</select>
```

3. 娴嬭瘯

```java
    @Test
    public void test() {
        SqlSession sqlSession = null;

        try{
            // 鑾峰緱sqlSession瀵硅薄
            sqlSession = MybatisUtils.getSqlSession();
            // 鎵цsql
            // 鏂瑰紡1.  getMapper
            UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
            List<User> userList = userMapper.getUserList();

            // 鏂瑰紡2
            // sqlSession.selectList(("com.jie.dao.UserDao.getUserList"));

            for (User user : userList) {
                System.out.println(user);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 鍏抽棴sqlSession
            sqlSession.close();
        }

    }

    @Test
    public void test2() {
        SqlSession sqlSession = null;

        try{
            // 鑾峰緱sqlSession瀵硅薄
            sqlSession = MybatisUtils.getSqlSession();
            // 鎵цsql
            // 鏂瑰紡1.  getMapper
            UserMapper mapper = sqlSession.getMapper(UserMapper.class);
            User user = mapper.getUserById(1);

            // 鏂瑰紡2
            // sqlSession.selectList(("com.jie.dao.UserDao.getUserList"));

            System.out.println(user);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 鍏抽棴sqlSession
            sqlSession.close();
        }
    }
```

## 鍦ㄨ繘琛屽鍒犳敼鐨勬椂鍊欏繀椤绘彁浜や簨鍔?
```java
sqlSession.commit();
sqlSession.close();
```

### insert
### update
### delete
## 閿欒鍒嗘瀽
+ 鏍囩涓嶈鍖归厤閿?
+ resources 缁戝畾 Mapper锛岄渶瑕佷娇鐢ㄨ矾寰?
+ 绋嬪簭閰嶇疆鏂囦欢蹇呴』绗﹀悎瑙勮寖
+ 娌℃湁娉ㄥ唽鍒拌祫婧?
+ 杈撳嚭鐨剎ml鏂囦欢瀛樺湪涔辩爜闂
+ maven璧勬簮娌℃湁瀵煎嚭闂

## 涓囪兘Map
鍋囪瀹炰綋绫荤殑瀛楁鎴栧弬鏁版瘮杈冨锛屽彲浠ヨ€冭檻浣跨敤Map

```java
// 涓囪兘鐨凪ap
int getUserById2(Map<String, Object> map);
```

```xml
<!-- 鍗犱綅绗﹀弬鏁扮殑鍚嶅瓧瑕佸拰Map涓殑瀵瑰簲 -->
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
    map.put("name", "鑻忎竷");
    map.put("password", "123456");
    mapper.getUserById2(map);
    sqlSession.commit();
    sqlSession.close();
}
```

Map浼犻€掑弬鏁帮紝鐩存帴鍦╯ql涓彇鍑簁ey鍗冲彲    parameterType="map"

瀵硅薄浼犻€掑弬鏁帮紝鐩存帴鍦╯ql涓彇鍑哄璞＄殑灞炴€у嵆鍙?     parameterType="com.jie.pojo.User"

鍙湁涓€涓熀鏈被鍨嬬殑鎯呭喌涓嬶紝鍙互鐩存帴鍦╯ql涓彇鍒?

澶氫釜鍙傛暟鐢∕ap锛屾垨鑰呮敞瑙?

## 妯＄硦鏌ヨ
+ java浠ｇ爜鎵ц鐨勬椂鍊欙紝浼犻€掗€氶厤绗? %

```java
List<User> userList = userMapper.getUserLike("%鏉?");
```

+ 鍦╯ql鎷兼帴涓娇鐢ㄩ€氶厤绗?

```sql
select * from user where name like "%"#{value}"%"
```

# 閰嶇疆瑙ｆ瀽
## 鏍稿績閰嶇疆鏂囦欢
+ mybatis-config.xml
+ Mybatis 鐨勯厤缃枃浠跺寘鍚簡浼氭繁娣卞奖鍝峂ybatis琛屼负鐨勮缃拰灞炴€т俊鎭?
+ 蹇呴』鎸夌収濡備笅椤哄簭鏀剧疆閰嶇疆淇℃伅

```sql
configuration锛堥厤缃級
properties锛堝睘鎬э級
settings锛堣缃級
typeAliases锛堢被鍨嬪埆鍚嶏級
typeHandlers锛堢被鍨嬪鐞嗗櫒锛?
objectFactory锛堝璞″伐鍘傦級
plugins锛堟彃浠讹級
environments锛堢幆澧冮厤缃級
  environment锛堢幆澧冨彉閲忥級
  transactionManager锛堜簨鍔＄鐞嗗櫒锛?
  dataSource锛堟暟鎹簮锛?
databaseIdProvider锛堟暟鎹簱鍘傚晢鏍囪瘑锛?
mappers锛堟槧灏勫櫒锛?
```

+

## <font style="color:rgb(51, 51, 51);">鐜閰嶇疆锛坋nvironments锛?/font>
+ <font style="color:rgb(51, 51, 51);">MyBatis 鍙互閰嶇疆鎴愰€傚簲澶氱鐜</font>
+ <font style="color:rgb(51, 51, 51);">涓嶈繃瑕佽浣忥細灏界鍙互閰嶇疆澶氫釜鐜锛屼絾姣忎釜 SqlSessionFactory 瀹炰緥鍙兘閫夋嫨涓€绉嶇幆澧?/font>
+ <font style="color:rgb(51, 51, 51);">瀛︿細浣跨敤閰嶇疆澶氬閰嶇疆鐜</font>
+ <font style="color:rgb(51, 51, 51);">Mybatis榛樿鐨勪簨鐗╃鐞嗗櫒鏄疛DBC锛岃繛鎺ユ睜锛歅OOLED</font>

## <font style="color:rgb(51, 51, 51);">灞炴€э紙properties锛?/font>
<font style="color:rgb(51, 51, 51);">鎴戜滑鍙互閫氳繃properties灞炴€ф潵瀹炵幇寮曠敤閰嶇疆鏂囦欢</font>

<font style="color:rgb(51, 51, 51);">杩欎簺灞炴€у彲浠ュ湪澶栭儴杩涜閰嶇疆锛屽苟鍙互杩涜鍔ㄦ€佹浛鎹€備綘鏃㈠彲浠ュ湪鍏稿瀷鐨?Java 灞炴€ф枃浠朵腑閰嶇疆杩欎簺灞炴€э紝涔熷彲浠ュ湪 properties 鍏冪礌鐨勫瓙鍏冪礌涓缃?銆恉b.properties銆?/font>

<font style="color:rgb(51, 51, 51);">缂栧啓涓€涓猟b.properties </font>

```sql
driver=com.mysql.jdbc.Driver
url=jdbc:mysql://192.168.204.131:3306/mybatis?useSSL=true&useUnicode=true&characterEncoding=UTF-8
username=root
password=@Root1234
```

寮曞叆澶栭儴閰嶇疆鏂囦欢

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

+ 鍙互鐩存帴寮曞叆澶栭儴鏂囦欢
+ 鍙互鍦ㄥ叾涓鍔犱竴浜涘睘鎬ч厤缃?
+ 濡傛灉涓や釜鏂囦欢鏈夊悓涓€涓瓧娈碉紝鏈夐檺浣跨敤澶栭儴閰嶇疆鏂囦欢

## 绫诲瀷鍒悕锛坱ypeAliases锛?
+ 绫诲瀷鍒悕鏄负java绫诲瀷璁剧疆鐨勪竴涓煭鐨勫悕瀛?
+ 瀛樺湪鐨勬剰涔変粎鍦ㄧ敤浜庢潵鍑忓皯绫诲畬鍏ㄩ檺瀹氬悕鐨勫啑浣?

```xml
<!-- 鍙互缁欏疄浣撶被鍙栧埆鍚?->
<typeAliases>
    <typeAlias type="com.jie.pojo.User" alias="User"/>
    <package name="com.jie.pojo"/>  <!-- user -->
</typeAliases>
```

+ 涔熷彲浠ユ寚瀹氫竴涓寘鍚嶏紝Mybatis浼氬湪鍖呭悕涓嬮潰鎼滅储闇€瑕佺殑Java Bean锛?
+ 鎵弿瀹炰綋绫荤殑鍖咃紝瀹冪殑榛樿鍒悕灏变负杩欎釜浜嗙殑绫诲悕锛岄瀛楁瘝灏忓啓
+ 鍦ㄥ疄浣撶被姣旇緝灏戠殑鏃跺€欙紝浣跨敤绗竴绉嶆柟寮?
+ 濡傛灉瀹炰綋绫昏緝澶氱殑鏃跺€欙紝寤鸿浣跨敤绗簩绉?
+ 涔熷彲浠ュ湪瀹炰綋绫讳笂澧炲姞娉ㄨВ鏉ュ彇鍒悕锛屽苟涓斾紭鍏堜娇鐢ㄦ敞瑙ｅ悕

```xml
@Alias("user")
```



## 璁剧疆锛圫ettings锛?
logImpl锛?font style="color:rgb(51, 51, 51);">鎸囧畾 MyBatis 鎵€鐢ㄦ棩蹇楃殑鍏蜂綋瀹炵幇锛屾湭鎸囧畾鏃跺皢鑷姩鏌ユ壘銆?/font>

+ <font style="color:rgb(51, 51, 51);">SLF4J | LOG4J锛?.5.9 璧峰簾寮冿級 |</font>
+ <font style="color:rgb(51, 51, 51);">LOG4J2 |</font>
+ <font style="color:rgb(51, 51, 51);">JDK_LOGGING |</font>
+ <font style="color:rgb(51, 51, 51);">COMMONS_LOGGING </font>
+ <font style="color:rgb(51, 51, 51);"> STDOUT_LOGGING |</font>
+ <font style="color:rgb(51, 51, 51);">NO_LOGGING</font>

<font style="color:rgb(51, 51, 51);background-color:rgb(249, 249, 249);">cacheEnabled锛氬叏灞€鎬у湴寮€鍚垨鍏抽棴鎵€鏈夋槧灏勫櫒閰嶇疆鏂囦欢涓凡閰嶇疆鐨勪换浣曠紦瀛樸€?/font>

<font style="color:rgb(51, 51, 51);">lazyLoadingEnabled锛氬欢杩熷姞杞界殑鍏ㄥ眬寮€鍏炽€傚綋寮€鍚椂锛屾墍鏈夊叧鑱斿璞￠兘浼氬欢杩熷姞杞姐€?鐗瑰畾鍏宠仈鍏崇郴涓彲閫氳繃璁剧疆 </font>`<font style="color:rgb(221, 17, 68);background-color:rgb(247, 247, 249);">fetchType</font>`<font style="color:rgb(51, 51, 51);"> 灞炴€ф潵瑕嗙洊璇ラ」鐨勫紑鍏崇姸鎬併€?/font>

```xml
<settings>
  <setting name=""  value="" />
</settings>
```

## 褰辫鍣紙mappers锛?
+ 鏂瑰紡1锛氫娇鐢ㄧ浉瀵逛簬绫昏矾寰勭殑璧勬簮寮曠敤

```xml
<mappers>
  <mapper resource="org/mybatis/builder/AuthorMapper.xml"/>
  <mapper resource="org/mybatis/builder/BlogMapper.xml"/>
  <mapper resource="org/mybatis/builder/PostMapper.xml"/>
</mappers>
```

+ 鏂瑰紡2锛氫娇鐢ㄦ槧灏勫櫒鎺ュ彛瀹炵幇绫荤殑瀹屽叏闄愬畾绫诲悕

```xml
<mappers>
  <mapper class="org.mybatis.builder.AuthorMapper"/>
  <mapper class="org.mybatis.builder.BlogMapper"/>
  <mapper class="org.mybatis.builder.PostMapper"/>
</mappers>
```

    - 娉ㄦ剰锛?
        * 鎺ュ彛鍜屼粬鐨凪apper閰嶇疆鏂囦欢蹇呴』鍚屽悕
        * 鎺ュ彛鍜屽畠鐨凪apper閰嶇疆鏂囦欢蹇呴』鍦ㄥ悓涓€涓寘涓?
+ 鏂瑰紡3

```xml
<mappers>
    <package name="com.jie.mapper"/>
</mappers>
```

    - 娉ㄦ剰鐐瑰拰鏂瑰紡2涓€鏍?

## 浣滅敤鍩熷拰鐢熷懡鍛ㄦ湡
# 瑙ｅ喅灞炴€у悕鍜屽瓧娈靛悕涓嶄竴鑷撮棶棰?
1. 缁欏睘鎬у悕鎹㈠埆鍚?

```xml
select id,name,password as pwd from user
```

2. 浣跨敤缁撴灉闆嗘槧灏?

```xml
<!--缁撴灉闆嗘槧灏?->
<resultMap id="UserMap" type="User">
  <!--column锛氭暟鎹簱涓殑瀛楁锛宲roperty锛氬疄浣撶被涓殑灞炴€?->
  <result column="id" property="id"/>
  <result column="name" property="name"/>
  <result column="password" property="pwd"/>
</resultMap>
<!--    select锛氭煡璇㈣鍙? id锛氭柟娉曞悕   resultType锛氭煡璇㈢粨鏋滄槧灏勭殑瀵硅薄绫诲瀷-->
<select id="getUserList" resultMap="UserMap">
  select id,name,password as pwd from user
</select>
```

+ resultMap鍏冪礌鏄疢ybatis涓渶閲嶈鏈€寮哄ぇ鐨勫厓绱?
+ ResultMap鐨勮璁℃€濇兂鏄紝瀵逛簬绠€鍗曠殑璇彞鏍规湰涓嶉渶瑕佹樉寮忕殑缁撴灉鏄犲皠锛岃€屾槸瀵逛簬澶嶆潅涓€鐐圭殑璇彞鍙渶瑕佹弿杩板畠浠殑鍏崇郴灏卞ソ浜?
+ 鍙渶瑕佽缃瓧娈靛拰灞炴€т笉涓€鑷寸殑鍗冲彲



# 鏃ュ織
## 鏍囧噯鏃ュ織宸ュ巶
濡傛灉涓€涓暟鎹簱鎿嶄綔锛屽嚭鐜颁簡寮傚父锛屾垜浠渶瑕佹帓閿欙紝鏃ュ織灏辨槸鏈€濂界殑鍔╂墜-->鏃ュ織宸ュ巶

logImpl锛?font style="color:rgb(51, 51, 51);">鎸囧畾 MyBatis 鎵€鐢ㄦ棩蹇楃殑鍏蜂綋瀹炵幇锛屾湭鎸囧畾鏃跺皢鑷姩鏌ユ壘銆?/font>

+ <font style="color:rgb(51, 51, 51);">SLF4J </font>
+ <font style="color:rgb(51, 51, 51);"> LOG4J锛?.5.9 璧峰簾寮冿級 </font>
+ <font style="color:rgb(51, 51, 51);">LOG4J2</font>
+ <font style="color:rgb(51, 51, 51);">JDK_LOGGING </font>
+ <font style="color:rgb(51, 51, 51);">COMMONS_LOGGING </font>
+ <font style="color:rgb(51, 51, 51);"> STDOUT_LOGGING    銆愩€?/font>
+ <font style="color:rgb(51, 51, 51);">NO_LOGGING</font>

鍦∕ybatis涓叿浣撲娇鐢ㄥ摢涓棩蹇楀疄鐜帮紝鍦ㄨ缃腑璁惧畾

<font style="color:rgb(51, 51, 51);">STDOUT_LOGGING 锛氭爣鍑嗘棩蹇楄緭鍑?/font>

```xml
<settings>
    <!-- 鏍囧噯鏃ュ織杈撳嚭 -->
    <setting name="logImpl" value="STDOUT_LOGGING"/>
</settings>
```

<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1749185466196-49861eed-f54c-425c-a672-49cb70fbb79e.png" width="550.4" title="" crop="0,0,1,1" id="u956aaeae" class="ne-image">

## Log4j
浠€涔堟槸Log4j锛?

+ Log4jApache鐨勪竴涓紑婧愰」鐩紝鍙互鎺у埗鏃ュ織淇℃伅杈撻€佺殑鐩殑鍦版槸鎺у埗鍙帮紝鏂囦欢锛孏UI缁勪欢锛?
+ 涔熷彲浠ユ帶鍒舵瘡涓€鏉℃棩蹇楃殑杈撳嚭鏍煎紡
+ 閫氳繃瀹氫箟姣忎竴鏉℃棩蹇椾俊鎭殑绾у埆锛岃兘澶熸洿鍔犵粏鑷寸殑鎺у埗鏃ュ織鐨勭敓鎴愯繃绋?
+ 閫氳繃涓€涓厤缃枃浠舵潵鐏垫椿鐨勮繘琛岄厤缃紝鑰屼笉鏄淇敼搴旂敤鐨勪唬鐮?

濡備綍浣跨敤

1. 鍏堝鍏og4j鐨勫寘

```xml
<!-- 瀵煎叆log4j閰嶇疆鏂囦欢 -->
<dependency>
    <groupId>log4j</groupId>
    <artifactId>log4j</artifactId>
    <version>1.2.12</version>
</dependency>
```

2. log4j.properties

```xml
#鏍筁ogger閰嶇疆
log4j.rootLogger=debug, console, file

# 鎺у埗鍙拌緭鍑?
log4j.appender.console=org.apache.log4j.ConsoleAppender
log4j.appender.console.Target=System.out
log4j.appender.console.Threshold=DEBUG
log4j.appender.console.layout=org.apache.log4j.PatternLayout
log4j.appender.console.layout.ConversionPattern=%d{ISO8601} [%t] %-5p %c{2}:%L - %m%n

# 婊氬姩鏂囦欢杈撳嚭
log4j.appender.file=org.apache.log4j.RollingFileAppender
log4j.appender.file.File=./log/jie.log
log4j.appender.file.MaxFileSize=10MB
log4j.appender.file.Threshold=debug
log4j.appender.file.layout=org.apache.log4j.PatternLayout
log4j.appender.file.layout.ConversionPattern=%d{yyyy-MM-dd HH:mm:ss} %p %t %c - %m%n

# 鐗瑰畾鍖呮棩蹇楃骇鍒帶鍒?
log4j.logger.org.mybatis=debug
log4j.logger.java.sql=debug
log4j.logger.java.sql.Statement=debug
log4j.logger.java.sql.ResultSet=debug
log4j.logger.java.sql.PreparedStatement=debug

```

3. 閰嶇疆log4j鏃ュ織鐨勫疄鐜?

```xml
<settings>
    <!-- 鏍囧噯鏃ュ織杈撳嚭 -->
    <setting name="logImpl" value="LOG4J"/>
</settings>
```

4. 娴嬭瘯杩愯

绠€鍗曚娇鐢?

1. 鍦ㄤ娇鐢↙og4j鐨勭被涓紝瀵煎叆鍖?import org.apache.log4j.Logger;
2. 鏃ュ織瀵硅薄锛屽弬鏁颁负褰撳墠绫荤殑class

```java
static Logger logger = Logger.getLogger(UserMapperTest.class);
```

3. 鏃ュ織绾у埆

```java
logger.info();
logger.debug();
logger.error();
```

4.

# 鍒嗛〉
## Mybatis鍒嗛〉鐢╯ql鏌ヨ
1. 鎺ュ彛

```java
// 鍒嗛〉鏌ヨ
List<User> getUserLimitList(Map<String, Integer> map);
```

2. sql璇彞

```xml
<!-- 鍒嗛〉鏌ヨ -->
<select id="getUserLimitList" resultType="com.jie.pojo.User">
    select * from user limit #{startIndex},#{pageSize}
</select>
```

3. 娴嬭瘯

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

## RowBounds绫?
1. 鎺ュ彛

```java
// 鍒嗛〉鏌ヨ
List<User> getUserRowBounds();
```

2. sql璇彞

```xml
<!-- 鍒嗛〉鏌ヨ -->
<select id="getUserRowBounds" resultType="com.jie.pojo.User">
    select * from user
</select>
```

3. 娴嬭瘯

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

## 鍒嗛〉鎻掍欢
Mybatis PageHelper

# 浣跨敤娉ㄨВ寮€鍙?
## 浣跨敤娉ㄨВ寮€鍙戠殑杩囩▼
1. 娉ㄨВ鍦ㄦ帴鍙ｄ笂瀹炵幇

```java
// 鎻掑彊鍏ㄩ儴鐢ㄦ埛
@Select("select * from user")
List<User> getUserList();
```

2. 鍦ㄦ牳蹇冮厤缃枃浠朵腑缁戝畾鎺ュ彛

```xml
<!--缁戝畾鎺ュ彛-->
<mappers>
  <mapper class="com.jie.mapper.UserMapper"/>
</mappers>
```

3. 娴嬭瘯

```java
@Test
public void test() {
    SqlSession sqlSession = MybatisUtils.getSqlSession();
    // 椤跺眰涓昏搴旂敤鍙嶅皠
    UserMapper mapper = sqlSession.getMapper(UserMapper.class);
    List<User> users = mapper.getUserList();
    for (User user : users) {
        System.out.println(user);
    }
    sqlSession.close();
}
```

+ 鏈川锛氬弽灏勬満鍒跺疄鐜?
+ 搴曞眰锛氬姩鎬佷唬鐞嗭紒

## Mybatis鎵ц杩囩▼
## CRUD
璁剧疆鑷姩鎻愪氦浜嬪姟

```java
// 鍦ㄧ紪鍐欑殑宸ュ叿绫讳腑 璁剧疆鍙傛暟涓簍rue
public static SqlSession getSqlSession() {
    return sqlSessionFactory.openSession(true);
}
```

鍦ㄨ缃熀鏈被鍨嬬殑鍙傛暟鏃跺姞涓婃敞瑙param()

+ 鎺ュ彛

```java
// 鏍规嵁id鏌ョ敤鎴?
@Select("select * from user where id=#{id}")
List<User> getUserById(@Param("id") int id);
```

+ 娴嬭瘯

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

鍏?*浜嶡Param()**

+ 鍩烘湰绫诲瀷鐨勯槓杩版垨鑰匰tring绫诲瀷锛岄渶瑕佸姞涓?
+ 寮曠敤绫诲瀷涓嶉渶瑕佸姞
+ 濡傛瓕鍙湁涓€涓熀鏈被鍨嬬殑璇濓紝鍙互蹇界暐锛屼絾寤鸿鍔犱笂
+ 鎴戜滑鍦⊿QL涓紩鐢ㄧ殑灏辨槸@Param()涓殑灞炴€у悕

#{}   鍜?  ${} 鐨勫尯鍒?

+ #{} 鍙互闃叉SQL娉ㄥ叆

# Lombok
浣跨敤姝ラ

+ 鍦↖DEA涓畨瑁匧ombok鎻掍欢
+ 鍦ㄩ」鐩腑瀵煎叆lombok鐨刯ar鍖?

```xml
<dependency>
  <groupId>org.projiectlombok</groupId>
  <artifactId>lombok</artifactId>
  <version>1.18.10</version>
</dependency>
```

+ 鍦ㄥ疄浣撶被涓婂姞娉ㄨВ

```xml
@Getter 
@Setter
@FieldNameComstants
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Data
```

# 澶氬涓€鍜屼竴瀵瑰澶勭悊
## 澶氬涓€澶勭悊
+ 鎸夌収鏌ヨ宓屽澶勭悊

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

+ 鎸夌収缁撴灉宓屽澶勭悊

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

## 涓€瀵瑰澶勭悊
+ 鏍规嵁缁撴灉宓屽鏌ヨ

```xml
<!-- 鎸夌収缁撴灉宓屽鏌ヨ-->
<select id="getTeacher" resultMap="TeacherMap">
    select t.id tid, t.name tname, s.name sname, s.id sid
    from teacher t, student s
    where t.id=s.tid and t.id=#{id};
</select>

<resultMap id="TeacherMap" type="com.jie.pojo.Teacher">
    <result property="id" column="tid"/>
    <result property="name" column="tname"/>
    <!-- collection: 涓€瀵瑰澶勭悊锛堥泦鍚堬級 association: 澶氬涓€澶勭悊锛堝璞★級 -->
    <!-- javaType: 鎸囧畾灞炴€х殑绫诲瀷
         闆嗗悎涓殑娉涘瀷淇℃伅锛岀敤ofType鑾峰彇
    -->
    <collection property="students" ofType="com.jie.pojo.Student">
        <result property="id" column="sit"/>
        <result property="name" column="sname"/>
    </collection>
</resultMap>
```

+ 鏍规嵁瀛愭煡璇㈠祵濂楀鐞?

```xml
<!--鏍规嵁瀛愭煡璇㈠祵濂楀鐞?->
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

## 灏忕粨
+ 鍏宠仈锛歛ssociation  銆愬瀵逛竴銆?
+ 闆嗗悎锛歝ollection   銆愪竴瀵瑰銆?
+ javaType    &     ofType
    - javaType锛氱敤鏉ュ埗瀹氬疄浣撶被涓睘鎬х殑绫诲瀷
    - ofType锛氱敤鏉ュ埗瀹氭槧灏勫埌List鎴栬€呴泦鍚堜腑鐨刾ojo绫诲瀷锛屾硾鍨嬩腑鐨勭害鏉熺被鍨?
+ 娉ㄦ剰鐐癸細
    - 淇濊瘉sql鐨勫彲璇绘€э紝灏介噺淇濊瘉閫氫織鏄撴噦
    - 娉ㄦ剰涓€瀵瑰鍜屽瀵逛竴涓紝灞炴€у悕鍜屽瓧娈电殑闂
    - 濡傛灉闂涓嶅ソ鎺掓煡閿欒锛屽彲浠ヤ娇鐢ㄦ棩蹇楋紝

# 鍔ㄦ€丼QL锛氭嫾鎺ql璇彞
## 鍩虹
+ 鏍规嵁涓嶅悓鐨勬潯浠惰拷鍔爏ql璇彞
+ <font style="color:rgb(51, 51, 51);">鍊熷姪鍔熻兘寮哄ぇ鐨勫熀浜?OGNL 鐨勮〃杈惧紡锛孧yBatis 3 鏇挎崲浜嗕箣鍓嶇殑澶ч儴鍒嗗厓绱狅紝澶уぇ绮剧畝浜嗗厓绱犵绫伙紝鐜板湪瑕佸涔犵殑鍏冪礌绉嶇被姣斿師鏉ョ殑涓€鍗婅繕瑕佸皯銆?/font>
    - <font style="color:rgb(64, 64, 64);">if</font>
    - <font style="color:rgb(64, 64, 64);">choose (when, otherwise)</font>
    - <font style="color:rgb(64, 64, 64);">trim (where, set)</font>
    - <font style="color:rgb(64, 64, 64);">foreach</font>



## If
+ 鎺ュ彛

```java
// if鏌ヨ
List<Blog> queryBlogIf(Map map);
```

+ sql璇彞
    - where鏍囩锛氬彧鏈夊湪婊¤冻涓€涓垨澶氫釜鏉′欢涓嬫墠浼氬嚭鐜帮紝濡傛灉绗竴涓猧f涓嶆弧瓒虫潯浠朵細鑷姩鑸嶅純绗簩涓猧f鐨刟nd

```xml
<!-- 閫夋嫨鏌ヨ -->
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

+ 娴嬭瘯

```java
@Test
public void test3() {
    SqlSession sqlSession = MybatisUtils.getSqlSession();
    BlogMapper mapper = sqlSession.getMapper(BlogMapper.class);
    HashMap map = new HashMap<>();
    map.put("title", "java濡傛绠€鍗?);
    map.put("author", "浣滆€?);
    List<Blog> blogs = mapper.queryBlogIf(map);
    for (Blog blog : blogs) {
        System.out.println(blog);
    }
    sqlSession.close();
}
```

## choose锛坵hen锛宱therwise锛?閫夋嫨涓€涓?
+ 鎺ュ彛

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

+ 娴嬭瘯

```java
@Test
public void test4() {
    SqlSession sqlSession = MybatisUtils.getSqlSession();
    BlogMapper mapper = sqlSession.getMapper(BlogMapper.class);
    HashMap map = new HashMap<>();
    map.put("author", "浣滆€?);
    map.put("views", 9999);
    List<Blog> blogs = mapper.queryBlogChoose(map);
    for (Blog blog : blogs) {
        System.out.println(blog);
    }
    sqlSession.close();
}

```

## trim锛坵here锛宻et锛?
+ 鎺ュ彛

```xml
// 鏇存柊鍗氬
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

+ 娴嬭瘯

```java
@Test
public void test5() {
    SqlSession sqlSession = MybatisUtils.getSqlSession();
    BlogMapper mapper = sqlSession.getMapper(BlogMapper.class);
    HashMap map = new HashMap<>();
    map.put("title", "瑗挎父璁?");
    map.put("author", "缃楄疮涓?);
    map.put("id", "27c41929a2334b7591dcf159b7b8a81c");

    int i = mapper.updateBlog(map);
    System.out.println(i);
    sqlSession.commit();
}
```

## SQL鐗囨
+ 鎺ュ彛

```xml
// if鏌ヨ
List<Blog> queryBlogIf(Map map);
```

+ SQL 瀹炵幇sql澶嶇敤

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

+ 娴嬭瘯

```xml
@Test
public void test3() {
    SqlSession sqlSession = MybatisUtils.getSqlSession();
    BlogMapper mapper = sqlSession.getMapper(BlogMapper.class);
    HashMap map = new HashMap<>();
    map.put("title", "java濡傛绠€鍗?);
    map.put("author", "浣滆€?);
    List<Blog> blogs = mapper.queryBlogIf(map);
    for (Blog blog : blogs) {
        System.out.println(blog);
    }
    sqlSession.close();
}
```

娉ㄦ剰浜嬮」锛?

+ 鏈€濂藉熀浜庡崟琛ㄦ潵瀹氫箟SQL鐗囨
+ 涓嶈瀛樺湪where鏍囩

## foreach
+ 鎺ュ彛

```xml
// 鏌ヨ绗?-2-3鍙疯褰曠殑鍗氬
List<Blog> queryBlogForeach(Map map);
```

+ sql
    - `collection="ids"`锛氶泦鍚堝悕锛?
    -  `item="id"`锛氬彇闆嗗悎鐨勫€?
    - `open="and (" ` 锛氳捣濮?
    - `close=")"` 锛氱粨灏?
    - `separator="or"`锛氬垎闅旂

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

+ 娴嬭瘯

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

# 缂撳瓨[Cache]
## 绠€浠?
+ 浠€涔堟槸缂撳瓨
    - 鏀惧湪鍐呭瓨涓殑涓存椂鏁版嵁
    - 灏嗙敤鎴风粡甯告煡璇㈢殑鏁版嵁鏀惧湪缂撳瓨锛堝唴瀛橈級涓紝鐢ㄦ埛鍘绘煡璇㈡暟鎹氨涓嶇敤浠庣鐩橈紙鍏崇郴鍨嬫暟鎹簱鏁版嵁鏂囦欢锛夋煡璇紝浠庣紦瀛樹腑鏌ヨ锛屼粠鑰屾彁楂樻煡璇㈡晥鐜囷紝瑙ｅ喅浜嗛珮骞跺彂绯荤粺鐨勬€ц兘闂
+ 涓轰粈涔堣浣跨敤缂撳瓨
    - 鍑忓皯鍜屾暟鎹簱鐨勪氦浜掓鏁帮紝鍑忓皯绯荤粺寮€閿€锛屾彁楂樿タ瀹晥鐜?
+ 浠€涔堟牱鐨勯鏁版嵁鑳戒娇鐢ㄧ紦瀛?
    - 缁忓父鏌ヨ骞朵笖涓嶇粡甯告敼鍙樼殑鏁版嵁

## Mybatis缂撳瓨
+ Mybatis鍖呭惈涓€涓潪甯稿己澶х殑鏌ヨ缂撳瓨鐗规€э紝瀹冨彲浠ラ潪甯告柟渚垮湴瀹氬埗鍜岄厤缃紦銆傜紦瀛樺彲浠ユ瀬澶х殑鎻愬崌鏌ヨ鏁堢巼
+ Mybatis绯荤粺涓粯璁ゅ畾涔変簡涓ょ骇缂撳瓨锛?*涓€绾х紦瀛?*鍜?*浜岀骇缂撳瓨**
    - 榛樿鎯呭喌涓嬶紝鍙湁涓€绾х紦瀛樺紑鍚紝锛圫qlSession绾у埆鐨勭紦瀛橈紝涔熺О涓烘湰鍦扮紦瀛橈級
    - 浜岀骇缂撳瓨闇€瑕佹墜鍔ㄥ紑鍚拰閰嶇疆锛屽畠鏄熀浜巒amespace绾у埆鐨勭紦瀛?
    - 涓轰簡鎻愰珮鎵╁睍鎬э紝Mybatis瀹氫箟浜嗙紦瀛樻帴鍙ache锛屽彲浠ラ€氳繃瀹炵幇Cache鎺ュ彛鏉ヨ嚜瀹氫箟浜岀骇缂撳瓨

## 涓€绾х紦瀛?
+ 涓€绾х紦瀛樹篃绉颁负鏈湴缂撳瓨锛圫qlSession绾у埆鐨勭紦瀛橈級
    - 涓庢暟鎹簱鍚屼竴娆′細璇濇湡闂存煡璇㈠埌鐨勬暟鎹細鏀惧湪鏈湴缂撳瓨涓?
    - 浠ュ悗濡傛灉闇€瑕佽幏鍙栫浉鍚岀殑鏁版嵁锛岀洿鎺ヤ粠缂撳瓨涓嬁锛屾病蹇呰鍐嶆鏌ヨ鏁版嵁搴擄紱
+ 娴嬭瘯娴佺▼
    - 寮€鍚棩蹇?
    - 娴嬭瘯鍦ㄤ竴涓猄ession涓煡璇袱娆＄浉鍚岀殑缁撴灉
    - 鏌ョ湅鏃ュ織
+ 缂撳瓨澶辨晥鐨勬儏鍐碉細
    - 鏌ヨ涓嶅悓鐨勪俊鎭?
    - 澧炲垹鏀规搷浣滐紝鍙兘浼氫慨鏀瑰師鏉ョ殑鏁版嵁锛屾墍浠ュ繀瀹氫細鍒锋柊缂撳瓨锛?
    - 鏌ヨ涓嶅悓鐨刴apper.xml
    - 鎵嬪姩娓呯悊缂撳瓨

## 浜岀骇缂撳瓨
+ 浜岀骇缂撳瓨涔熷彨鍏ㄥ眬缂撳瓨锛屼竴绾х紦瀛樹綔鐢ㄥ煙澶綆浜嗭紝鎵€浠ヨ癁鐢熶簡浜岀骇缂撳瓨
+ 鍩轰簬namespace绾у埆鐨勭紦瀛橈紝涓€涓悕绉扮┖闂达紝瀵瑰簲涓€涓簩绾х紦瀛?
+ 宸ヤ綔鏈哄埗
    - 涓€涓細璇濇煡璇竴鏉℃暟鎹紝杩欎釜鏁版嵁灏变細琚斁鍦ㄥ綋鍓嶄細璇濈殑涓€绾х紦瀛樹腑锛?
    - 濡傛灉褰撳墠浼氳瘽鍏抽棴浜嗭紝杩欎釜浼氳瘽瀵瑰簲鐨勪竴绾х紦瀛樺氨娌′簡锛屼絾鏄垜浠兂瑕佺殑鏄紝浼氳瘽鍏抽棴浜嗭紝涓€绾х紦瀛樹腑鐨勬暟鎹淇濇寔鍒颁簩绾х紦瀛樹腑
    - 鏂扮殑浼氳瘽鏌ヨ淇℃伅锛屽氨鍙互浠庝簩绾х紦瀛樹腑鑾峰彇鍐呭
    - 涓嶅悓鐨刴apper鏌ュ嚭鐨勬暟鎹細鏀惧湪鑷繁瀵瑰簲鐨勭紦瀛橈紙map锛変腑锛?
+ 娴嬭瘯姝ラ
    - 寮€鍚叏灞€缂撳瓨

```xml
<settings>
    <setting name="logImpl" value="STDOUT_LOGGING"/>
    <!--鏄惧紡寮€鍚粯璁ょ紦瀛?->
    <setting name="cacheEnabled" value="true"/>
</settings>
```

    - 鍦ㄨ浣跨敤浜岀骇缂撳瓨鐨刴apper涓紑鍚細鍙嚜瀹氫箟缂撳瓨

```xml
<!--鍦ㄥ綋鍓峬apper.xml涓娇鐢ㄤ簩绾х紦瀛?->
<cache eviction="FIFO"
flushInterval="60000"
size="512"
readOnly="true"/>
```

    - 娴嬭瘯
        * 闇€瑕佸皢瀹炰綋绫诲簭鍒楀寲锛佸惁鍒欎細鎶ラ敊

```xml
Caused by: java.io.NotSerializableException:com.jie.pojo.User
```

+ 灏忕粨
    - 鍙寮€鍚簡浜岀骇缂撳瓨锛屽湪鍚屼竴涓狹apper涓嬪氨鏈夋晥
    - 鎵€鏈夌殑鏁版嵁閮戒細鍏堟斁鍦ㄤ竴绾х紦瀛樹腑锛?
    - 鍙湁褰撲細璇濇彁浜わ紝鎴栬€呭叧闂殑鏃跺€欙紝鎵嶄細鎻愪氦鍒颁簩绾х紦瀛樹腑

## 鑷畾涔夌紦瀛?
浣跨敤鑷畾涔夌紦瀛?

+ 鍦∕aven涓鍖?
+ 鍦∕apper涓寚瀹歟hcache缂撳瓨
+ 鍐欓厤缃枃浠秂hcache.xml
', NOW());
SET @last_note_id = LAST_INSERT_ID();

INSERT INTO 
ote (uthor_id, 	itle, content, created_at)
VALUES (1003, 'Springboot', '# 閰嶇疆鏂囦欢
SpringBoot浣跨敤涓€涓叏灞€鐨勯厤缃枃浠讹紝閰嶇疆鏂囦欢鍚嶇О鏄浐瀹氱殑

+ application.properties
    - 璇硶缁撴瀯锛歬ey=value
+ application.yaml
    - 璇硶缁撴瀯锛歬ey锛氱┖鏍?value

閰嶇疆鏂囦欢鐨勪綔鐢細淇敼springBoot鍒跺畾閰嶇疆鐨勯粯璁ゅ€硷紝鍥犱负SpringBoot鍐嶄綆灞傜粰鎴戜滑閰嶇疆濂戒簡

# ymal
+ yaml:<font style="color:rgb(15, 17, 21);">YAML锛圷AML Ain''t Markup Language锛夋槸涓€绉?/font>**<font style="color:rgb(15, 17, 21);">鏁版嵁搴忓垪鍖栨牸寮?/font>**<font style="color:rgb(15, 17, 21);">锛屾瘮浼犵粺鐨?</font>`<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">properties</font>`<font style="color:rgb(15, 17, 21);"> 鏂囦欢鏇村叿鍙鎬э紝閫傚悎鐢ㄦ潵琛ㄨ揪灞傛鍖栭厤缃暟鎹?/font>
+ <font style="color:rgb(15, 17, 21);">鍩虹璇硶瑙勫垯</font>
    - <font style="color:rgb(15, 17, 21);">澶у皬鍐欐晱鎰?/font>
    - <font style="color:rgb(15, 17, 21);">浣跨敤缂╄繘琛ㄧず灞傜骇</font><font style="color:rgb(15, 17, 21);">锛堝繀椤荤敤绌烘牸锛屼笉鑳界敤 Tab锛?/font>
    - <font style="color:rgb(15, 17, 21);">鍚岀骇鍏冪礌宸﹀榻?/font>
    - <font style="color:rgb(15, 17, 21);">浣跨敤 </font>`<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">#</font>`<font style="color:rgb(15, 17, 21);"> 娉ㄩ噴</font>

```yaml
# 姝ｇ‘绀轰緥
server:
  port: 8080
  servlet:
    context-path: /api
```

+ 鏁版嵁绫诲瀷鍐欐硶

```yaml
# 瀛楃涓诧紝鏁板€硷紝甯冨皵
name: zhangsan
age: 25
enabled: true
# 瀛楃涓插彲浠ヤ笉鍔犲紩鍙凤紝鐗规畩瀛楃鎴栬浆涔夋椂鐢ㄥ弻寮曞彿
description: "hello \n world"   # 浼氳浆涔?\n
simple: hello world              # 鏅€氬瓧绗︿覆


# 瀵硅薄/Map
person:
  name: lisi
  age: 30

# 琛屽唴鍐欐硶
person: {name: lisi, age: 30}

# 鏁扮粍/list/set
hobbies:
  - reading
  - coding
  - gaming

# 琛屽唴鍐欐硶
hobbies: [reading, coding, gaming]
```

+ SpringBoot璇诲彇yaml鍊?
    - @Value璇诲彇鍗曚釜鍊?

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

    - `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">@ConfigurationProperties</font>`<font style="color:rgb(15, 17, 21);">锛堟帹鑽愶紝绫诲瀷瀹夊叏锛?/font>

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
    
    // getter / setter 锛堝繀椤伙級
}
```

    - `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">@ConfigurationProperties</font>`<font style="color:rgb(15, 17, 21);"> 缁戝畾澶嶆潅缁撴瀯</font>

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

    - 鍗犱綅绗︿笌闅忔満鍊?

```yaml
app:
  name: MyApp
  description: ${app.name} is a Spring Boot app
  version: 1.0.${random.int(100)}
  secret: ${random.uuid}
  port: ${random.int(8080,9090)}
```

+ 澶氱幆澧冮厤缃?

```yaml
# 榛樿閰嶇疆
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

+ 鏉炬暎缁戝畾

```yaml
myapp:
  access-key-id: 12345
```

```java
@ConfigurationProperties(prefix = "myapp")
public class MyProperties {
    private String accessKeyId;  // 鑷姩鍖归厤 access-key-id
}
```

+ 浣跨敤@Validdated鏍￠獙閰嶇疆鍊?

```java
@Validated
@ConfigurationProperties(prefix = "app")
public class AppConfig {
    @NotNull  // 涓嶄负绌?
    private String name;
    @Min(1)   // 鏈€灏忓€间负1
    private Integer timeout;
}
```

# 鑷姩瑁呴厤鍘熺悊
1. SpringBoot鍚姩浼氬姞杞藉ぇ閲忕殑鑷姩閰嶇疆绫?
2. 鎴戜滑鐪嬫垜浠渶瑕佺殑鍔熻兘鏈夋病鏈夊湪SpringBoot榛樿鍐欏ソ鐨勮嚜鍔ㄩ厤缃被涓?
3. 鍐嶆潵鐪嬭繖涓惎鍔ㄩ厤缃被涓埌搴曢厤缃簡鍝簺缁勪欢锛涳紙鍙闇€瑕佺殑缁勪欢瀛樺湪鍏朵腑锛屽氨涓嶉渶瑕佹墜鍔ㄩ厤缃級
4. 缁欏鍣ㄤ腑鑷姩閰嶇疆绫绘坊鍔犵粍浠剁殑鏃跺€欙紝浼氫粠properties绫讳腑鑾峰彇鏌愪簺绫伙紝鍙渶瑕佸湪閰嶇疆鏂囦欢涓嚜鍔ㄨ繖浜涘睘鎬х殑鍊煎嵆鍙細
    - xxxxAutoConfiguration锛氳嚜鍔ㄩ厤缃被锛涚粰瀹瑰櫒涓坊鍔犵粍浠?
    - xxxxProperties锛氬皝瑁呴厤缃枃浠朵腑鍥界浉鍏冲睘鎬?
5. 鍙互閫氳繃鍦ㄩ厤缃枃浠朵腑璁剧疆debug=true锛屽彲浠ユ煡璇㈠摢浜涢厤缃被鏄惁鐢熸晥

# 妯＄増寮曟搸thymeleaf
## 蹇€熷叆闂?
+ 寮曞叆渚濊禆

```xml
<dependency>
  <groupId>org.springframework.boot</groupId>
  <artifactId>spring-boot-starter-thymeleaf</artifactId>
</dependency>
```

+ 鍩烘湰閰嶇疆

```yaml
# application.yml
spring:
  thymeleaf:
    prefix: classpath:/templates/   # 妯℃澘瀛樻斁鐩綍锛堥粯璁わ級
    suffix: .html                     # 鍚庣紑锛堥粯璁わ級
    cache: false                      # 寮€鍙戞椂鍏抽棴缂撳瓨
    mode: HTML                        # 妯℃澘妯″紡
    encoding: UTF-8
```

+ 绗竴涓緥瀛?

```java
@Controller
public class HelloController {

    @GetMapping("/hello")
    public String hello(Model model) {
        model.addAttribute("message", "Hello Thymeleaf!");
        return "hello";  // 瀵瑰簲 templates/hello.html
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
    <p th:text="${message}">鍗犱綅绗︽枃鏈?/p>
  </body>
</html>
```

## 鏍稿績璇硶
### 鏍囧噯琛ㄨ揪寮?
| <font style="color:rgb(15, 17, 21);">琛ㄨ揪寮?/font> | <font style="color:rgb(15, 17, 21);">浣滅敤</font> | <font style="color:rgb(15, 17, 21);">绀轰緥</font> |
| --- | --- | --- |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">${...}</font>` | <font style="color:rgb(15, 17, 21);">鍙橀噺琛ㄨ揪寮忥紙浠嶮odel/Spring瀹瑰櫒鑾峰彇锛?/font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">${user.name}</font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">*{...}</font>` | <font style="color:rgb(15, 17, 21);">閫夋嫨琛ㄨ揪寮忥紙閰嶅悎</font>`<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:object</font>`<br/><font style="color:rgb(15, 17, 21);">浣跨敤锛?/font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">*{name}</font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">#{...}</font>` | <font style="color:rgb(15, 17, 21);">娑堟伅琛ㄨ揪寮忥紙鍥介檯鍖栵級</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">#{home.title}</font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">@{...}</font>` | <font style="color:rgb(15, 17, 21);">閾炬帴琛ㄨ揪寮忥紙URL锛?/font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">@{/user/profile}</font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">~{...}</font>` | <font style="color:rgb(15, 17, 21);">鐗囨琛ㄨ揪寮忥紙寮曞叆鍏叡鐗囨锛?/font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">~{common/header :: nav}</font>` |


### 甯哥敤灞炴€?
| <font style="color:rgb(15, 17, 21);">灞炴€?/font> | <font style="color:rgb(15, 17, 21);">浣滅敤</font> | <font style="color:rgb(15, 17, 21);">绀轰緥</font> |
| --- | --- | --- |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:text</font>` | <font style="color:rgb(15, 17, 21);">璁剧疆鏂囨湰鍐呭</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);"><span th:text="${name}">榛樿</span></font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:utext</font>` | <font style="color:rgb(15, 17, 21);">璁剧疆HTML鍐呭锛堜笉杞箟锛?/font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);"><div th:utext="${htmlContent}"></div></font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:value</font>` | <font style="color:rgb(15, 17, 21);">璁剧疆value灞炴€?/font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);"><input th:value="${user.name}"></font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:href</font>` | <font style="color:rgb(15, 17, 21);">璁剧疆閾炬帴</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);"><a th:href="@{/user/{id}(id=${user.id})}"></font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:src</font>` | <font style="color:rgb(15, 17, 21);">璁剧疆鍥剧墖婧?/font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);"><img th:src="@{/images/logo.png}"></font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:if</font>`<br/><font style="color:rgb(15, 17, 21);"> </font><font style="color:rgb(15, 17, 21);">/</font><font style="color:rgb(15, 17, 21);"> </font>`<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:unless</font>` | <font style="color:rgb(15, 17, 21);">鏉′欢鍒ゆ柇</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);"><div th:if="${user != null}"></font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:each</font>` | <font style="color:rgb(15, 17, 21);">寰幆閬嶅巻</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);"><tr th:each="user : ${users}"></font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:switch</font>`<br/><font style="color:rgb(15, 17, 21);"> </font><font style="color:rgb(15, 17, 21);">/</font><font style="color:rgb(15, 17, 21);"> </font>`<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:case</font>` | <font style="color:rgb(15, 17, 21);">澶氬垎鏀€夋嫨</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);"><div th:switch="${role}"></font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:object</font>` | <font style="color:rgb(15, 17, 21);">鎸囧畾琛ㄥ崟缁戝畾瀵硅薄</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);"><form th:object="${user}"></font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:field</font>` | <font style="color:rgb(15, 17, 21);">琛ㄥ崟瀛楁缁戝畾</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);"><input th:field="*{name}"></font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:remove</font>` | <font style="color:rgb(15, 17, 21);">绉婚櫎妯℃澘灞炴€?/font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);"><div th:remove="all">寮€鍙戞椂鍙锛屾覆鏌撳悗绉婚櫎</div></font>` |
| `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:replace</font>`<br/><font style="color:rgb(15, 17, 21);"> </font><font style="color:rgb(15, 17, 21);">/</font><font style="color:rgb(15, 17, 21);"> </font>`<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:insert</font>` | <font style="color:rgb(15, 17, 21);">寮曞叆鐗囨</font> | `<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);"><div th:replace="~{fragments/header :: logo}"></div></font>` |


### <font style="color:rgb(15, 17, 21);">瀛楅潰閲忓拰杩愮畻</font>
```html
<!-- 鏂囨湰瀛楅潰閲?-->
<p th:text="''Hello, '' + ${name}"></p>

<!-- 鏁板瓧杩愮畻 -->
<p th:text="${price * 0.8}"></p>

<!-- 甯冨皵杩愮畻 -->
<p th:if="${age >= 18 and active == true}">鎴愬勾浜?/p>

<!-- 姣旇緝杩愮畻绗?-->
<!-- gt (>), lt (<), ge (>=), le (<=), eq (==), ne (!=) -->
<p th:if="${score gt 60}">鍙婃牸</p>
```

### 鏉′欢鍒ゆ柇
```html
<!-- th:if锛氭潯浠朵负true鏃舵樉绀?-->
<div th:if="${user != null}">娆㈣繋锛?span th:text="${user.name}"></span></div>

<!-- th:unless锛氭潯浠朵负false鏃舵樉绀猴紙鍙栧弽锛?-->
<div th:unless="${user != null}">璇峰厛鐧诲綍</div>

<!-- 涓夊厓杩愮畻绗?-->
<span th:text="${user != null ? user.name : ''娓稿''}"></span>

<!-- switch-case -->
<div th:switch="${user.role}">
    <p th:case="''ADMIN''">绠＄悊鍛?/p>
    <p th:case="''USER''">鏅€氱敤鎴?/p>
    <p th:case="*">鏈煡瑙掕壊</p>
</div>
```

### 寰幆閬嶅巻
```html
<!-- 鍩烘湰閬嶅巻 -->
<ul>
    <li th:each="user : ${users}" th:text="${user.name}"></li>
</ul>

<!-- 鑾峰彇杩唬鐘舵€?-->
<table>
    <tr th:each="user,stat : ${users}">
        <td th:text="${stat.index}">绱㈠紩锛?寮€濮嬶級</td>
        <td th:text="${stat.count}">璁℃暟锛?寮€濮嬶級</td>
        <td th:text="${stat.even}">鏄惁涓哄伓鏁?/td>
        <td th:text="${stat.odd}">鏄惁涓哄鏁?/td>
        <td th:text="${stat.first}">鏄惁绗竴鏉?/td>
        <td th:text="${stat.last}">鏄惁鏈€鍚庝竴鏉?/td>
        <td th:text="${user.name}"></td>
    </tr>
</ul>

<!-- 閬嶅巻Map -->
<div th:each="entry : ${map}">
    <span th:text="${entry.key}"></span> : <span th:text="${entry.value}"></span>
</div>
```

### 閾炬帴琛ㄨ揪寮?
```html
<!-- 鍩虹璺緞 -->
<a th:href="@{/user/list}">鐢ㄦ埛鍒楄〃</a>

<!-- 甯﹁矾寰勫彉閲?-->
<a th:href="@{/user/{id}/edit(id=${user.id})}">缂栬緫</a>

<!-- 甯︽煡璇㈠弬鏁?-->
<a th:href="@{/user/list(page=${currentPage}, size=10)}">鍒嗛〉</a>

<!-- 娣峰悎浣跨敤 -->
<a th:href="@{/user/{id}/profile(id=${user.id}, tab=''info'')}">涓汉璧勬枡</a>

<!-- 鐩稿璺緞 -->
<img th:src="@{~/images/logo.png}">   <!-- 搴旂敤鐩稿璺緞 -->
<img th:src="@{/images/logo.png}">    <!-- 涓婁笅鏂囩浉瀵硅矾寰勶紙榛樿锛?-->
```

### 琛ㄥ崟澶勭悊
```html
<!-- 缁戝畾瀵硅薄 -->
<form th:action="@{/user/save}" th:object="${user}" method="post">
    
    <!-- 闅愯棌鍩?-->
    <input type="hidden" th:field="*{id}">
    
    <!-- 鏂囨湰杈撳叆 -->
    <input type="text" th:field="*{name}" placeholder="璇疯緭鍏ュ鍚?>
    
    <!-- 瀵嗙爜 -->
    <input type="password" th:field="*{password}">
    
    <!-- 鍗曢€?-->
    <input type="radio" th:field="*{gender}" value="M"> 鐢?
    <input type="radio" th:field="*{gender}" value="F"> 濂?
    
    <!-- 涓嬫媺妗?-->
    <select th:field="*{city}">
        <option th:value="''BJ''">鍖椾含</option>
        <option th:value="''SH''">涓婃捣</option>
    </select>
    
    <!-- 澶嶉€夋 -->
    <input type="checkbox" th:field="*{hobbies}" value="reading"> 闃呰
    <input type="checkbox" th:field="*{hobbies}" value="coding"> 缂栫▼
    
    <!-- 鎻愪氦鎸夐挳 -->
    <button type="submit">淇濆瓨</button>
</form>
```

**<font style="color:rgb(15, 17, 21);">娉ㄦ剰</font>**<font style="color:rgb(15, 17, 21);">锛?/font>`<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">th:field</font>`<font style="color:rgb(15, 17, 21);"> 浼氳嚜鍔ㄥ鐞嗗洖鏄撅紝鍖呮嫭 </font>`<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">checked</font>`<font style="color:rgb(15, 17, 21);">銆?/font>`<font style="color:rgb(15, 17, 21);background-color:rgb(235, 238, 242);">selected</font>`<font style="color:rgb(15, 17, 21);"> 绛夌姸鎬併€?/font>

### <font style="color:rgb(15, 17, 21);">鍐呯疆瀵硅薄</font>
```html
<!-- 鍩虹瀵硅薄 -->
${#strings}     <!-- 瀛楃涓插伐鍏?-->
${#lists}       <!-- 闆嗗悎宸ュ叿 -->
${#maps}        <!-- Map宸ュ叿 -->
${#arrays}      <!-- 鏁扮粍宸ュ叿 -->
${#dates}       <!-- 鏃ユ湡宸ュ叿 -->
${#calendars}   <!-- 鏃ュ巻宸ュ叿 -->
${#numbers}     <!-- 鏁板瓧鏍煎紡鍖?-->
${#bools}       <!-- 甯冨皵宸ュ叿 -->
${#sets}        <!-- Set宸ュ叿 -->
${#objects}     <!-- 瀵硅薄宸ュ叿 -->

<!-- Web涓婁笅鏂囧璞?-->
${#request}     <!-- HttpServletRequest -->
${#session}     <!-- HttpSession -->
${#servletContext}  <!-- ServletContext -->

<!-- 鐩存帴璁块棶锛堢畝鍖栧啓娉曪級 -->
${param.xxx}    <!-- 璇锋眰鍙傛暟 -->
${session.xxx}  <!-- Session灞炴€?-->
${application.xxx}  <!-- Application灞炴€?-->
```

### 宸ュ叿绫讳娇鐢ㄥ疄渚?
```html
<!-- 瀛楃涓插鐞?-->
<p th:text="${#strings.toUpperCase(name)}"></p>
<p th:text="${#strings.isEmpty(name)}"></p>
<p th:text="${#strings.defaultString(name, ''榛樿鍊?)}"></p>
<p th:text="${#strings.substring(name, 0, 5)}"></p>

<!-- 鏃ユ湡鏍煎紡鍖?-->
<p th:text="${#dates.format(birthday, ''yyyy-MM-dd'')}"></p>

<!-- 闆嗗悎鎿嶄綔 -->
<p th:text="${#lists.size(users)}"></p>
<p th:text="${#lists.contains(users, admin)}"></p>

<!-- 鏁板瓧鏍煎紡鍖?-->
<p th:text="${#numbers.formatDecimal(price, 1, 2)}"></p>  <!-- 1浣嶆暣鏁帮紝2浣嶅皬鏁?-->
<p th:text="${#numbers.formatCurrency(price)}"></p>       <!-- 璐у竵鏍煎紡 -->
```

### 妯＄増甯冨眬
+ 鑷畾涔夌墖娈?

```html
<!-- templates/fragments/header.html -->
<html xmlns:th="http://www.thymeleaf.org">
<body>
    <div th:fragment="logo">
        <img src="/logo.png" alt="Logo">
    </div>
    
    <div th:fragment="nav (active)">
        <ul>
            <li th:class="${active == ''home''} ? ''active'' : ''''">棣栭〉</li>
            <li th:class="${active == ''about''} ? ''active'' : ''''">鍏充簬</li>
        </ul>
    </div>
    
    <div th:fragment="script">
        <script src="/js/common.js"></script>
    </div>
</body>
</html>
```

+ 寮曞叆鐗囨

```html
<!-- 鏂瑰紡1锛歵h:insert锛堟彃鍏ュ埌褰撳墠鏍囩鍐呴儴锛?-->
<div th:insert="~{fragments/header :: logo}"></div>

<!-- 鏂瑰紡2锛歵h:replace锛堟浛鎹㈠綋鍓嶆爣绛撅級 -->
<div th:replace="~{fragments/header :: logo}"></div>

<!-- 鏂瑰紡3锛歵h:include锛堝凡搴熷純锛屽彧鎻掑叆鍐呭锛屼笉鍖呭惈鏍囩锛?-->
<div th:include="~{fragments/header :: logo}"></div>

<!-- 浼犻€掑弬鏁?-->
<div th:replace="~{fragments/header :: nav (active=''home'')}"></div>

<!-- 绠€鍖栧啓娉曪紙鍘绘帀~{}锛?-->
<div th:replace="fragments/header :: logo"></div>
```

+ 甯冨眬妯＄増绀轰緥

```html
<!-- templates/layout/base.html -->
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title th:text="${title}">榛樿鏍囬</title>
    <link th:replace="~{fragments/header :: css}">
</head>
<body>
    <div th:replace="~{fragments/header :: nav}"></div>
    
    <div class="container">
        <div th:replace="~{::content}">涓讳綋鍐呭</div>
    </div>
    
    <div th:replace="~{fragments/footer}"></div>
    <div th:replace="~{fragments/header :: script}"></div>
</body>
</html>
```

### 鍥介檯鍖?
+ 閰嶇疆鏂囦欢

```html
src/main/resources/
鈹溾攢鈹€ messages.properties      (榛樿)
鈹溾攢鈹€ messages_zh_CN.properties (涓枃)
鈹溾攢鈹€ messages_en_US.properties (鑻辨枃)
```

```properties
# messages.properties
home.title=棣栭〉
home.welcome=娆㈣繋

# messages_zh_CN.properties
home.title=棣栭〉
home.welcome=娆㈣繋

# messages_en_US.properties
home.title=Home
home.welcome=Welcome
```

+ 浣跨敤鍥介檯鍖?

```html
<!-- 浣跨敤 #{} 琛ㄨ揪寮?-->
<h1 th:text="#{home.title}">棣栭〉</h1>
<p th:text="#{home.welcome(${user.name})}">娆㈣繋锛寋0}</p>
```

+ 閰嶇疆

```yaml
spring:
  messages:
    basename: i18n/messages   # 鏂囦欢鍩虹鍚嶏紙榛樿锛?
    encoding: UTF-8
    cache-duration: 3600
```

```java
// Controller涓垏鎹㈣瑷€
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

    // 鍚庡彴鎺у埗 锛?web.xml
    @Bean
    public ServletRegistrationBean servletRegistrationBean() {
        ServletRegistrationBean servletRegistrationBean = new ServletRegistrationBean();

        // 鍚庡彴闇€瑕佹湁浜虹櫥褰曪紝璐﹀彿瀵嗙爜閰嶇疆
        HashMap<String, String> initParameters = new HashMap<>();
        initParameters.put("loginUsername", "admin");
        initParameters.put("loginPassword", "123456");

        // 鍏佽璋佸彲浠ヨ闂?
        initParameters.put("allow", "");

        // 绂佹璋佽闂?
        initParameters.put("kuagnshen", "192.168.11.123");

        // 璁剧疆鍒濆鍖栧弬鏁?
        servletRegistrationBean.setInitParameters(initParameters);
        return servletRegistrationBean;
    }

    // filter
    public FilterRegistrationBean webStatFilter() {
        FilterRegistrationBean filterRegistrationBean = new FilterRegistrationBean();
        filterRegistrationBean.setFilter(new WebStatFilter());
        HashMap<String, String> initParameters = new HashMap<>();
        // 鍙互 杩囨护鍝簺璇锋眰
        initParameters.put("exclusions", "*");
        filterRegistrationBean.setInitParameters(initParameters);
        return filterRegistrationBean;
    }


}

```

# Mybatis
瀵煎叆渚濊禆

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
## 涓€銆佹鏋跺姣旀瑙?
| 瀵规瘮缁村害 | Spring Security | Apache Shiro |
| --- | --- | --- |
| **鍑鸿韩** | Spring 瀹樻柟鍥㈤槦 | Apache 鍩洪噾浼?|
| **Spring 闆嗘垚** | 鍘熺敓闆嗘垚锛屾棤缂濊鎺?| 闇€瑕侀澶栨暣鍚?|
| **鍔熻兘鑼冨洿** | 璁よ瘉銆佹巿鏉冦€丱Auth2銆丼SO | 璁よ瘉銆佹巿鏉冦€佷細璇濈鐞?|
| **瀛︿範鏇茬嚎** | 闄″抄锛堝鏉備絾寮哄ぇ锛?| 骞崇紦锛堢畝鍗曟槗鎳傦級 |
| **閰嶇疆鏂瑰紡** | 娉ㄨВ + 閰嶇疆鏂囦欢 | 閰嶇疆鏂囦欢 + API |
| **RESTful 鏀寔** | 浼樼锛堝師鐢?JWT 鏀寔锛?| 涓€鑸紙闇€瑕佹墿灞曪級 |
| **绀惧尯娲昏穬搴?* | 鏋侀珮 | 涓瓑 |
| **閫傜敤鍦烘櫙** | 澶у瀷浼佷笟绾у簲鐢ㄣ€佸井鏈嶅姟 | 涓皬鍨嬪簲鐢ㄣ€佸揩閫熷紑鍙?|


**閫夊瀷寤鸿锛?*

+ 浣跨敤 Spring Boot 鈫?**浼樺厛 Spring Security**
+ 闇€瑕?OAuth2/SSO 鈫?**Spring Security**
+ 闈?Spring 椤圭洰 鈫?**Shiro**
+ 鍥㈤槦缁忛獙涓嶈冻銆佹兂蹇€熶笂鎵?鈫?**Shiro**

---

## 浜屻€丼pring Security
### 2.1 鏍稿績鏋舵瀯
```plain
Spring Security 鍩轰簬 Servlet 杩囨护鍣ㄩ摼
```

#### 鍏抽敭缁勪欢
| 缁勪欢 | 浣滅敤 |
| --- | --- |
| **SecurityContextHolder** | 瀛樺偍褰撳墠鐢ㄦ埛瀹夊叏涓婁笅鏂囷紙ThreadLocal锛?|
| **Authentication** | 灏佽鐢ㄦ埛璁よ瘉淇℃伅锛堢敤鎴峰悕銆佸瘑鐮併€佹潈闄愶級 |
| **AuthenticationManager** | 璁よ瘉绠＄悊鍣紝鏍稿績鍏ュ彛 |
| **ProviderManager** | AuthenticationManager 鐨勫疄鐜帮紝绠＄悊澶氫釜璁よ瘉鎻愪緵鑰?|
| **AuthenticationProvider** | 鍏蜂綋璁よ瘉閫昏緫瀹炵幇锛堝 DaoAuthenticationProvider锛?|
| **UserDetailsService** | 鍔犺浇鐢ㄦ埛淇℃伅锛堥渶瑕佽嚜瀹氫箟瀹炵幇锛?|
| **PasswordEncoder** | 瀵嗙爜缂栫爜鍣紙BCrypt銆丄rgon2 绛夛級 |
| **SecurityFilterChain** | 瀹夊叏杩囨护鍣ㄩ摼 |
| **AccessDecisionManager** | 璁块棶鍐崇瓥绠＄悊鍣紙鎺堟潈锛?|


#### 鏍稿績娴佺▼鍥?
```plain
鐢ㄦ埛璇锋眰 鈫?杩囨护鍣ㄩ摼 鈫?鎻愬彇鍑瘉 鈫?AuthenticationManager 鈫?AuthenticationProvider 鈫?UserDetailsService 鈫?杩斿洖 Authentication 鈫?SecurityContextHolder 鈫?鎺堟潈鍒ゆ柇 鈫?涓氬姟澶勭悊
```

### 2.2 璁よ瘉娴佺▼
```java
// 1. 鐢ㄦ埛杈撳叆璐﹀彿瀵嗙爜
// 2. UsernamePasswordAuthenticationFilter 鎷︽埅 /login
// 3. 鍒涘缓 UsernamePasswordAuthenticationToken锛堟湭璁よ瘉锛?
// 4. 璋冪敤 AuthenticationManager.authenticate()
// 5. ProviderManager 鎵惧埌鍚堥€傜殑 AuthenticationProvider
// 6. DaoAuthenticationProvider 璋冪敤 UserDetailsService.loadUserByUsername()
// 7. 瀵嗙爜姣斿
// 8. 璁よ瘉鎴愬姛锛氬垱寤哄畬鏁?Authentication 瀵硅薄瀛樺叆 SecurityContextHolder
// 9. 璁よ瘉澶辫触锛氭姏鍑?AuthenticationException
```

### 2.3 鎺堟潈娴佺▼
```java
// 1. FilterSecurityInterceptor 鎷︽埅璇锋眰
// 2. 浠?SecurityContextHolder 鑾峰彇褰撳墠鐢ㄦ埛 Authentication
// 3. 璋冪敤 AccessDecisionManager 鍐崇瓥
// 4. 鏈夋潈闄?鈫?缁х画鎵ц
// 5. 鏃犳潈闄?鈫?鎶涘嚭 AccessDeniedException
```

### 2.4 甯哥敤閰嶇疆
#### 鍩虹閰嶇疆绫?
```java
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)  // 鍚敤鏂规硶绾ф潈闄愭敞瑙?
public class SecurityConfig {
    
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
            // 鍏抽棴 CSRF锛堝墠鍚庣鍒嗙鏃讹級
            .csrf().disable()
            
            // 鎺堟潈瑙勫垯
            .authorizeHttpRequests(auth -> auth
                // 鍏紑鎺ュ彛
                .antMatchers("/login", "/register", "/public/**").permitAll()
                // 闇€瑕?USER 瑙掕壊
                .antMatchers("/user/**").hasRole("USER")
                // 闇€瑕?ADMIN 瑙掕壊
                .antMatchers("/admin/**").hasRole("ADMIN")
                // 鍏朵粬鎵€鏈夎姹傞兘闇€瑕佽璇?
                .anyRequest().authenticated()
            )
            
            // 琛ㄥ崟鐧诲綍
            .formLogin(form -> form
                .loginPage("/login")           // 鑷畾涔夌櫥褰曢〉
                .loginProcessingUrl("/doLogin") // 澶勭悊鐧诲綍璇锋眰鐨刄RL
                .defaultSuccessUrl("/home")     // 鐧诲綍鎴愬姛璺宠浆
                .failureUrl("/login?error")     // 鐧诲綍澶辫触璺宠浆
                .permitAll()
            )
            
            // 鐧诲嚭
            .logout(logout -> logout
                .logoutUrl("/logout")
                .logoutSuccessUrl("/login?logout")
                .invalidateHttpSession(true)
                .deleteCookies("JSESSIONID")
                .permitAll()
            )
            
            // 璁颁綇鎴?
            .rememberMe(remember -> remember
                .key("uniqueAndSecret")
                .tokenValiditySeconds(86400)  // 24灏忔椂
            );
        
        return http.build();
    }
    
    @Bean
    public UserDetailsService userDetailsService() {
        // 浠庢暟鎹簱鍔犺浇鐢ㄦ埛
        return new CustomUserDetailsService();
    }
    
    @Bean
    public PasswordEncoder passwordEncoder() {
        // BCrypt 鍔犲瘑锛堟帹鑽愶級
        return new BCryptPasswordEncoder();
    }
}
```

### 2.5 鑷畾涔?UserDetailsService
```java
@Service
public class CustomUserDetailsService implements UserDetailsService {
    
    @Autowired
    private UserMapper userMapper;
    
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        // 1. 浠庢暟鎹簱鏌ヨ鐢ㄦ埛
        User user = userMapper.selectByUsername(username);
        if (user == null) {
            throw new UsernameNotFoundException("鐢ㄦ埛涓嶅瓨鍦?);
        }
        
        // 2. 鏌ヨ鐢ㄦ埛鏉冮檺
        List<String> permissions = permissionMapper.selectByUserId(user.getId());
        
        // 3. 鏋勫缓 Authority 鍒楄〃
        List<GrantedAuthority> authorities = permissions.stream()
            .map(SimpleGrantedAuthority::new)
            .collect(Collectors.toList());
        
        // 4. 杩斿洖 UserDetails 瀵硅薄
        return new org.springframework.security.core.userdetails.User(
            user.getUsername(),
            user.getPassword(),
            authorities
        );
    }
}
```

### 2.6 JWT 闆嗘垚锛堝墠鍚庣鍒嗙锛?
```java
@Component
public class JwtTokenUtil {
    
    @Value("${jwt.secret}")
    private String secret;
    
    @Value("${jwt.expiration}")
    private Long expiration;
    
    // 鐢熸垚 Token
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
    
    // 瑙ｆ瀽 Token
    public String getUsernameFromToken(String token) {
        return Jwts.parser()
            .setSigningKey(secret)
            .parseClaimsJws(token)
            .getBody()
            .getSubject();
    }
    
    // 楠岃瘉 Token
    public Boolean validateToken(String token) {
        try {
            Jwts.parser().setSigningKey(secret).parseClaimsJws(token);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}

// JWT 璁よ瘉杩囨护鍣?
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

### 2.7 甯哥敤娉ㄨВ
```java
// 鏂规硶绾у畨鍏ㄦ敞瑙ｏ紙闇€瑕佸湪閰嶇疆绫绘坊鍔?@EnableGlobalMethodSecurity锛?

// 1. @PreAuthorize锛氭柟娉曟墽琛屽墠鍒ゆ柇鏉冮檺
@PreAuthorize("hasRole(''ADMIN'')")
@GetMapping("/admin/users")
public List<User> getAllUsers() { ... }

// 2. @PostAuthorize锛氭柟娉曟墽琛屽悗鍒ゆ柇鏉冮檺锛堢敤浜庢暟鎹骇鏉冮檺锛?
@PostAuthorize("returnObject.username == authentication.name")
@GetMapping("/user/{id}")
public User getUser(@PathVariable Long id) { ... }

// 3. @PreFilter锛氳繃婊ゅ叆鍙傞泦鍚?
@PreFilter("filterObject.age >= 18")
public void addUsers(List<User> users) { ... }

// 4. @PostFilter锛氳繃婊よ繑鍥炲€奸泦鍚?
@PostFilter("filterObject.enabled == true")
public List<User> getActiveUsers() { ... }

// 5. @Secured锛氭寚瀹氳鑹诧紙鏃у紡锛?
@Secured("ROLE_ADMIN")
@GetMapping("/admin/reports")
public String getReports() { ... }
```

### 2.8 鏉冮檺琛ㄨ揪寮?
| 琛ㄨ揪寮?| 璇存槑 |
| --- | --- |
| `hasRole(''ADMIN'')` | 鎷ユ湁 ADMIN 瑙掕壊 |
| `hasAnyRole(''ADMIN'', ''USER'')` | 鎷ユ湁浠绘剰瑙掕壊 |
| `hasAuthority(''READ'')` | 鎷ユ湁 READ 鏉冮檺 |
| `permitAll()` | 姘歌繙鍏佽 |
| `denyAll()` | 姘歌繙鎷掔粷 |
| `isAnonymous()` | 鍖垮悕鐢ㄦ埛 |
| `isAuthenticated()` | 宸茶璇佺敤鎴?|
| `hasIpAddress(''192.168.1.0/24'')` | IP 鍦板潃鍖归厤 |


### 2.9 甯歌闂涓庤В鍐?
**闂1锛氶潤鎬佽祫婧愯鎷︽埅**

```java
// 閰嶇疆蹇界暐闈欐€佽祫婧?
.webSecurity.ignoring().antMatchers("/css/**", "/js/**", "/images/**");
```

**闂2锛欳SRF 瀵艰嚧 POST 璇锋眰鎶ラ敊**

```java
// 瑙ｅ喅鏂规1锛氱鐢?CSRF锛堜笉鎺ㄨ崘鐢熶骇鐜锛?
.csrf().disable();

// 瑙ｅ喅鏂规2锛氬湪琛ㄥ崟涓坊鍔?CSRF Token
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
```

**闂3锛氬瘑鐮佸姞瀵嗘柟寮忛€夋嫨**

```java
// 鎺ㄨ崘锛欱Crypt锛堣嚜閫傚簲闅惧害锛?
PasswordEncoder encoder = new BCryptPasswordEncoder();

// 鏀寔澶氱缂栫爜鍣ㄥ苟瀛?
PasswordEncoder encoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
// 杈撳嚭鏍煎紡锛歿bcrypt}$2a$10$...
```

---

## 涓夈€丄pache Shiro
### 3.1 鏍稿績鏋舵瀯
```plain
Application Code
    鈫?
Subject (褰撳墠鐢ㄦ埛)
    鈫?
SecurityManager (瀹夊叏绠＄悊鍣紝Shiro 鏍稿績)
    鈫?
鈹屸攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹尖攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹?
鈫?          鈫?          鈫?            鈫?
Realm     Authc       Authz          Session
(鏁版嵁婧?  (璁よ瘉)      (鎺堟潈)         (浼氳瘽绠＄悊)
```

#### 鍏抽敭缁勪欢
| 缁勪欢 | 浣滅敤 |
| --- | --- |
| **Subject** | 褰撳墠鐢ㄦ埛鐨勫畨鍏ㄦ搷浣滄帴鍙?|
| **SecurityManager** | Shiro 鏍稿績锛岀鐞嗘墍鏈夌粍浠?|
| **Realm** | 鏁版嵁婧愶紝浠庢暟鎹簱鍔犺浇鐢ㄦ埛鍜屾潈闄?|
| **Authenticator** | 璁よ瘉鍣?|
| **Authorizer** | 鎺堟潈鍣?|
| **SessionManager** | 浼氳瘽绠＄悊鍣?|
| **CacheManager** | 缂撳瓨绠＄悊鍣?|


### 3.2 蹇€熷叆闂?
#### 娣诲姞渚濊禆
```xml
<dependency>
    <groupId>org.apache.shiro</groupId>
    <artifactId>shiro-spring-boot-starter</artifactId>
    <version>1.10.0</version>
</dependency>

```

#### 閰嶇疆鏂囦欢锛坅pplication.yml锛?
```yaml
shiro:
  loginUrl: /login
  successUrl: /index
  unauthorizedUrl: /unauthorized
```

#### 閰嶇疆绫?
```java
@Configuration
public class ShiroConfig {
    
    // 1. 鑷畾涔?Realm
    @Bean
    public UserRealm userRealm() {
        UserRealm realm = new UserRealm();
        // 璁剧疆鍔犲瘑绠楁硶
        HashedCredentialsMatcher matcher = new HashedCredentialsMatcher();
        matcher.setHashAlgorithmName("md5");
        matcher.setHashIterations(2);
        realm.setCredentialsMatcher(matcher);
        return realm;
    }
    
    // 2. 瀹夊叏绠＄悊鍣?
    @Bean
    public DefaultWebSecurityManager securityManager() {
        DefaultWebSecurityManager manager = new DefaultWebSecurityManager();
        manager.setRealm(userRealm());
        return manager;
    }
    
    // 3. Shiro 杩囨护鍣?
    @Bean
    public ShiroFilterFactoryBean shiroFilterFactoryBean() {
        ShiroFilterFactoryBean bean = new ShiroFilterFactoryBean();
        bean.setSecurityManager(securityManager());
        bean.setLoginUrl("/login");
        bean.setSuccessUrl("/index");
        bean.setUnauthorizedUrl("/unauthorized");
        
        // 瀹氫箟杩囨护瑙勫垯
        Map<String, String> filterChainMap = new LinkedHashMap<>();
        filterChainMap.put("/login", "anon");      // 鍖垮悕璁块棶
        filterChainMap.put("/logout", "logout");   // 鐧诲嚭
        filterChainMap.put("/user/**", "authc");   // 闇€瑕佽璇?
        filterChainMap.put("/admin/**", "roles[admin]");  // 闇€瑕?admin 瑙掕壊
        filterChainMap.put("/**", "authc");
        
        bean.setFilterChainDefinitionMap(filterChainMap);
        return bean;
    }
}
```

### 3.3 鑷畾涔?Realm
```java
public class UserRealm extends AuthorizingRealm {
    
    @Autowired
    private UserMapper userMapper;
    
    // 鎺堟潈
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        // 鑾峰彇褰撳墠鐢ㄦ埛
        Subject subject = SecurityUtils.getSubject();
        User currentUser = (User) subject.getPrincipal();
        
        // 鏌ヨ鐢ㄦ埛鏉冮檺
        List<String> permissions = permissionMapper.selectByUserId(currentUser.getId());
        
        // 灏佽鎺堟潈淇℃伅
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        info.addStringPermissions(permissions);
        
        return info;
    }
    
    // 璁よ瘉
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) 
            throws AuthenticationException {
        // 鑾峰彇鐢ㄦ埛鍚?
        String username = (String) token.getPrincipal();
        
        // 鏌ヨ鐢ㄦ埛
        User user = userMapper.selectByUsername(username);
        if (user == null) {
            return null;  // 鐢ㄦ埛涓嶅瓨鍦?
        }
        
        // 灏佽璁よ瘉淇℃伅
        return new SimpleAuthenticationInfo(
            user,                        // principal
            user.getPassword(),          // credentials
            ByteSource.Util.bytes(user.getSalt()), // 鍔犵洂
            this.getName()               // realm name
        );
    }
}
```

### 3.4 鐧诲綍璁よ瘉
```java
@RestController
public class LoginController {
    
    @PostMapping("/login")
    public Result login(@RequestParam String username, 
                        @RequestParam String password) {
        
        // 鑾峰彇 Subject
        Subject subject = SecurityUtils.getSubject();
        
        // 灏佽 Token
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        token.setRememberMe(true);  // 璁颁綇鎴?
        
        try {
            // 鎵ц鐧诲綍
            subject.login(token);
            return Result.success("鐧诲綍鎴愬姛");
        } catch (UnknownAccountException e) {
            return Result.error("鐢ㄦ埛涓嶅瓨鍦?);
        } catch (IncorrectCredentialsException e) {
            return Result.error("瀵嗙爜閿欒");
        } catch (LockedAccountException e) {
            return Result.error("璐﹀彿宸查攣瀹?);
        } catch (AuthenticationException e) {
            return Result.error("璁よ瘉澶辫触");
        }
    }
    
    @GetMapping("/logout")
    public String logout() {
        Subject subject = SecurityUtils.getSubject();
        subject.logout();  // 鐧诲嚭
        return "redirect:/login";
    }
}
```

### 3.5 鏉冮檺鎺у埗
```java
// 1. 缂栫▼寮忔帶鍒?
Subject subject = SecurityUtils.getSubject();
if (subject.hasRole("admin")) {
    // 鏈?admin 瑙掕壊
}
if (subject.isPermitted("user:delete")) {
    // 鏈夊垹闄ゆ潈闄?
}

// 2. 娉ㄨВ寮忔帶鍒?
@RestController
@RequestMapping("/user")
public class UserController {
    
    @RequiresRoles("admin")      // 闇€瑕?admin 瑙掕壊
    @GetMapping("/list")
    public List<User> list() { ... }
    
    @RequiresPermissions("user:delete")  // 闇€瑕佹寚瀹氭潈闄?
    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Long id) { ... }
    
    @RequiresAuthentication      // 闇€瑕佽璇?
    @GetMapping("/info")
    public User info() { ... }
}

// 3. JSP 鏍囩鎺у埗
<shiro:hasRole name="admin">
    <a href="/admin">绠＄悊鍚庡彴</a>
</shiro:hasRole>
<shiro:hasPermission name="user:delete">
    <button>鍒犻櫎</button>
</shiro:hasPermission>

```

### 3.6 JSP 鏍囩搴?
| 鏍囩 | 璇存槑 |
| --- | --- |
| `<shiro:authenticated>` | 宸茶璇佺敤鎴?|
| `<shiro:notAuthenticated>` | 鏈璇佺敤鎴?|
| `<shiro:guest>` | 璁垮锛堟湭璁颁綇鎴戯級 |
| `<shiro:user>` | 鐢ㄦ埛锛堝凡璁よ瘉鎴栬浣忔垜锛?|
| `<shiro:hasRole name="admin">` | 鎷ユ湁鎸囧畾瑙掕壊 |
| `<shiro:lacksRole name="admin">` | 娌℃湁鎸囧畾瑙掕壊 |
| `<shiro:hasPermission name="user:delete">` | 鎷ユ湁鎸囧畾鏉冮檺 |
| `<shiro:principal>` | 鏄剧ず鐢ㄦ埛淇℃伅 |


### 3.7 Session 绠＄悊
```java
// 鑾峰彇 Session
Subject subject = SecurityUtils.getSubject();
Session session = subject.getSession();

// 瀛樺偍鏁版嵁
session.setAttribute("key", "value");

// 鑾峰彇鏁版嵁
Object value = session.getAttribute("key");

// 璁剧疆瓒呮椂锛堟绉掞級
session.setTimeout(1800000);  // 30鍒嗛挓
```

### 3.8 鍔犲瘑涓庣洂鍊?
```java
// 瀵嗙爜鍔犲瘑
public String encryptPassword(String password, String salt) {
    Md5Hash md5Hash = new Md5Hash(password, salt, 2);  // MD5 + 鐩?+ 2娆¤凯浠?
    return md5Hash.toString();
}

// 娉ㄥ唽鐢ㄦ埛
public void register(User user) {
    String salt = UUID.randomUUID().toString().substring(0, 8);
    user.setSalt(salt);
    user.setPassword(new Md5Hash(user.getPassword(), salt, 2).toString());
    userMapper.insert(user);
}
```

---

## 鍥涖€佸姣旀€荤粨
### 4.1 浠ｇ爜瀵规瘮
| 鎿嶄綔 | Spring Security | Shiro |
| --- | --- | --- |
| 鑾峰彇褰撳墠鐢ㄦ埛 | `SecurityContextHolder.getContext().getAuthentication()` | `SecurityUtils.getSubject()` |
| 鑾峰彇鐢ㄦ埛鍚?| `authentication.getName()` | `subject.getPrincipal()` |
| 妫€鏌ヨ鑹?| `@PreAuthorize("hasRole(''ADMIN'')")` | `@RequiresRoles("admin")` |
| 鑾峰彇鏉冮檺 | `authentication.getAuthorities()` | `subject.getPermissions()` |


### 4.2 閫夊瀷鍐崇瓥鏍?
```plain
鏄惁浣跨敤 Spring Boot锛?
    鈹溾攢 鏄?鈫?椤圭洰瑙勬ā锛?
    鈹?     鈹溾攢 澶у瀷/寰湇鍔?鈫?Spring Security + OAuth2
    鈹?     鈹斺攢 涓皬鍨?鈫?Shiro锛堢畝鍗曞揩閫燂級
    鈹斺攢 鍚?鈫?Shiro锛堥潪 Spring 鐜鍙嬪ソ锛?

鏄惁闇€瑕?OAuth2/SSO锛?
    鈹溾攢 鏄?鈫?Spring Security
    鈹斺攢 鍚?鈫?涓よ€呯殕鍙?

鍥㈤槦鐔熸倝搴︼紵
    鈹溾攢 鐔熸倝 Spring 鈫?Spring Security
    鈹斺攢 涓嶇啛鎮?Spring 鈫?Shiro
```

### 4.3 杩佺Щ璺緞
濡傛灉浠?Shiro 杩佺Щ鍒?Spring Security锛?

| Shiro | Spring Security |
| --- | --- |
| `Subject` | `Authentication` |
| `SecurityUtils.getSubject()` | `SecurityContextHolder.getContext().getAuthentication()` |
| `@RequiresRoles` | `@PreAuthorize("hasRole()")` |
| `UsernamePasswordToken` | `UsernamePasswordAuthenticationToken` |
| `Realm` | `UserDetailsService` |


---

**寤鸿锛?*

+ **鏂伴」鐩?*锛氫紭鍏堥€?Spring Security锛堟洿寮哄ぇ銆佹洿鐜颁唬銆佺ぞ鍖烘洿娲昏穬锛?
+ **缁存姢鑰侀」鐩?*锛氫繚鎸?Shiro 鎴栨寜闇€杩佺Щ
+ **蹇€熷師鍨?*锛歋hiro 鏇磋交閲?
+ **浼佷笟绾?*锛歋pring Security + OAuth2

# Swagger/OpenAPI 浼佷笟绾у紑鍙戠瑪璁?
## 涓€銆佹妧鏈€夊瀷
**浼佷笟鎺ㄨ崘锛歋pringDoc OpenAPI (Swagger3)**锛屽簾寮?Swagger2

### Maven 渚濊禆
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

### 璁块棶鍦板潃
```plain
Swagger UI: http://localhost:8080/swagger-ui/index.html
API 鏂囨。: http://localhost:8080/v3/api-docs
```

---

## 浜屻€佸父鐢ㄦ敞瑙ｏ紙5涓牳蹇冿級
| 娉ㄨВ | 浣滅敤 | 绀轰緥 |
| --- | --- | --- |
| `@Tag` | 鎺у埗鍣ㄥ垎缁?| `@Tag(name = "鐢ㄦ埛绠＄悊")` |
| `@Operation` | 鎺ュ彛鎻忚堪 | `@Operation(summary = "鏌ヨ鐢ㄦ埛")` |
| `@Parameter` | 鍙傛暟鎻忚堪 | `@Parameter(description = "鐢ㄦ埛ID")` |
| `@Schema` | 妯″瀷鎻忚堪 | `@Schema(description = "鐢ㄦ埛鍚?)` |
| `@ApiResponse` | 鍝嶅簲鎻忚堪 | `@ApiResponse(responseCode = "200")` |


---

## 涓夈€侀厤缃唬鐮?
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

### 閰嶇疆绫伙紙鍙€夛級
```java
@Configuration
public class OpenApiConfig {
    
    @Bean
    public OpenAPI customOpenAPI() {
        return new OpenAPI()
            .info(new Info()
                .title("API鎺ュ彛鏂囨。")
                .version("v1.0")
                .description("椤圭洰API璇存槑"))
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

## 鍥涖€佷唬鐮佺ず渚?
### Controller 灞?
```java
@Tag(name = "鐢ㄦ埛绠＄悊")
@RestController
@RequestMapping("/api/users")
public class UserController {
    
    @Operation(summary = "鍒嗛〉鏌ヨ鐢ㄦ埛")
    @GetMapping("/page")
    public Result<PageResult<UserVO>> page(@ParameterObject UserQueryDTO dto) {
        return Result.success(userService.page(dto));
    }
    
    @Operation(summary = "鏍规嵁ID鏌ヨ鐢ㄦ埛")
    @GetMapping("/{id}")
    public Result<UserVO> getById(
        @Parameter(description = "鐢ㄦ埛ID", required = true) @PathVariable Long id) {
        return Result.success(userService.getById(id));
    }
    
    @Operation(summary = "鏂板鐢ㄦ埛")
    @PostMapping
    public Result<UserVO> add(@Valid @RequestBody UserAddDTO dto) {
        return Result.success(userService.add(dto));
    }
    
    @Operation(summary = "淇敼鐢ㄦ埛")
    @PutMapping("/{id}")
    public Result<UserVO> update(@PathVariable Long id, @RequestBody UserUpdateDTO dto) {
        dto.setId(id);
        return Result.success(userService.update(dto));
    }
    
    @Operation(summary = "鍒犻櫎鐢ㄦ埛")
    @DeleteMapping("/{id}")
    @ApiResponse(responseCode = "200", description = "鍒犻櫎鎴愬姛")
    public Result<Void> delete(@PathVariable Long id) {
        userService.delete(id);
        return Result.success(null);
    }
}
```

### DTO/VO 灞?
```java
@Data
@Schema(description = "鐢ㄦ埛淇℃伅")
public class UserVO {
    
    @Schema(description = "鐢ㄦ埛ID", example = "1001")
    private Long id;
    
    @Schema(description = "鐢ㄦ埛鍚?, example = "寮犱笁")
    private String username;
    
    @Schema(description = "骞撮緞", example = "25")
    private Integer age;
    
    @Schema(description = "閭", example = "zhangsan@example.com")
    private String email;
}

@Data
@Schema(description = "鐢ㄦ埛鏌ヨ璇锋眰")
public class UserQueryDTO {
    
    @Schema(description = "鐢ㄦ埛鍚?)
    private String username;
    
    @Schema(description = "椤电爜", defaultValue = "1")
    private Integer pageNum = 1;
    
    @Schema(description = "姣忛〉鏉℃暟", defaultValue = "10")
    private Integer pageSize = 10;
}
```

### 缁熶竴鍝嶅簲
```java
@Data
@Schema(description = "缁熶竴鍝嶅簲")
public class Result<T> {
    
    @Schema(description = "鐘舵€佺爜", example = "200")
    private Integer code;
    
    @Schema(description = "鎻愮ず淇℃伅", example = "鎿嶄綔鎴愬姛")
    private String message;
    
    @Schema(description = "鍝嶅簲鏁版嵁")
    private T data;
    
    public static <T> Result<T> success(T data) {
        Result<T> result = new Result<>();
        result.setCode(200);
        result.setMessage("鎴愬姛");
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

## 浜斻€佺敓浜х幆澧冮厤缃?
### 鍏抽棴 Swagger锛堢敓浜х幆澧冿級
```yaml
# application-prod.yml
springdoc:
  api-docs:
    enabled: false
  swagger-ui:
    enabled: false
```

### 鏉′欢鍚敤
```java
@ConditionalOnProperty(name = "springdoc.swagger-ui.enabled", havingValue = "true")
```

---

## 鍏€侀殣钘忔帴鍙?
```java
@Hidden  // 娣诲姞鍒扮被鎴栨柟娉曚笂
@GetMapping("/internal")
public Result<String> internal() {
    // ...
}
```

---

## 涓冦€佸揩閫熸€荤粨
### 3姝ラ泦鎴?
1. **娣诲姞渚濊禆**锛坰pringdoc-openapi-ui锛?
2. **鍐欐敞瑙?*锛園Tag銆丂Operation銆丂Schema锛?
3. **璁块棶鍦板潃**锛?swagger-ui/index.html锛?

### 鏍稿績瑙勮寖
+ 鉁?鎵€鏈夋帴鍙ｅ繀椤绘湁 @Operation
+ 鉁?鎵€鏈夊瓧娈靛繀椤绘湁 @Schema(example = "")
+ 鉁?缁熶竴鍝嶅簲鏍煎紡 Result
+ 鉁?鐢熶骇鐜鍏抽棴 Swagger
+ 鉂?涓嶅湪 Controller 鍐欎笟鍔￠€昏緫
1. **寮哄埗浣跨敤 SpringDoc**锛屽簾寮?SpringFox
2. **鐢熶骇鐜蹇呴』鍏抽棴** Swagger 鎴栭厤缃闂檺鍒?
3. **鎵€鏈夋帴鍙ｅ繀椤绘湁娓呮櫚鐨勬弿杩?*锛園Operation锛?
4. **鎵€鏈夊瓧娈靛繀椤绘湁绀轰緥鍊煎拰鎻忚堪**锛園Schema锛?
5. **缁熶竴鐨勫搷搴旀牸寮?*锛圧esult + @ApiResponse锛?
6. **鏁忔劅鎺ュ彛蹇呴』鏍囨敞瀹夊叏璁よ瘉**锛園SecurityRequirement锛?
7. **绂佹鍦?Controller 涓啓涓氬姟閫昏緫**锛屼繚鎸佹枃妗ｆ竻鏅?

# 浠诲姟
## 寮傛浠诲姟
```java
package com.jie.service;

import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

@Service
public class AsyncService {

    // 鍛婅瘔Spring杩欐槸涓€涓紓姝ユ柟娉?
    @Async
    public void hello(){
        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        System.out.println("姝ｅ湪鍔犺浇璧勬簮");
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



## 閭欢浠诲姟
### 蹇€熷疄鐜?
1. 瀵煎叆渚濊禆

```xml
<dependency>
  <groupId>org.springframework.boot</groupId>
  <artifactId>spring-boot-starter-mail</artifactId>
</dependency>
```

2. 閰嶇疆鏂囦欢

```properties
spring:
  mail:
    host: smtp.qq.com          # SMTP鏈嶅姟鍣ㄥ湴鍧€
    port: 465                   # 绔彛锛圦Q閭浣跨敤465鎴?87锛?
    username: your-email@qq.com # 鍙戜欢浜洪偖绠?
    password: your-auth-code    # 鎺堟潈鐮侊紙涓嶆槸鐧诲綍瀵嗙爜锛侊級
    default-encoding: UTF-8
    properties:
      mail:
        smtp:
          ssl:
            enable: true        # QQ閭闇€瑕佸紑鍚疭SL
          auth: true
          starttls:
            enable: true        #寮€鍚姞瀵嗛獙璇?
```

3.1 娉ㄥ叆JavaMailSender

```java
@Autowired
private JavaMailSender mailSender;
```

3.2 鍙戦€佺畝鍗曟枃鏈偖浠?

```java
public void sendSimpleMail(String to, String subject, String content) {
    SimpleMailMessage message = new SimpleMailMessage();
    message.setFrom("your-email@qq.com");  // 鍙戜欢浜?
    message.setTo(to);                      // 鏀朵欢浜?
    message.setSubject(subject);            // 涓婚
    message.setText(content);               // 鍐呭
    mailSender.send(message);
}
```

3.3 鍙戦€佸鏉傞偖浠讹紙HTML + 闄勪欢锛?

```java
@Test
public void sendComplexMail() throws MessagingException {
    // 1. 鍒涘缓澶嶆潅閭欢瀵硅薄
    MimeMessage mimeMessage = mailSender.createMimeMessage();
    
    // 2. 浣跨敤MimeMessageHelper鍖呰锛岀浜屼釜鍙傛暟true琛ㄧず鏀寔闄勪欢
    MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
    
    // 3. 璁剧疆閭欢鍩烘湰淇℃伅
    helper.setSubject("閫氱煡-浠婃櫄寮€浼?);
    helper.setFrom("your-email@qq.com");
    helper.setTo("target@163.com");
    
    // 4. 璁剧疆HTML鍐呭锛堢浜屼釜鍙傛暟true琛ㄧず鍐呭涓篐TML鏍煎紡锛?
    helper.setText("<b style=''color:red''>浠婃櫄7:30寮€浼?/b>", true);
    
    // 5. 娣诲姞闄勪欢
    helper.addAttachment("1.jpg", new File("C:/images/1.jpg"));
    helper.addAttachment("2.jpg", new File("C:/images/2.jpg"));
    
    // 6. 鍙戦€?
    mailSender.send(mimeMessage);
}
```

3.4 鍙戦€佸甫鍐呭祵鍥剧墖鐨勯偖浠?

```java
public void sendInlineMail() throws MessagingException {
    MimeMessage message = mailSender.createMimeMessage();
    MimeMessageHelper helper = new MimeMessageHelper(message, true);
    
    helper.setSubject("甯﹀浘鐗囩殑閭欢");
    helper.setTo("receiver@example.com");
    helper.setFrom("sender@qq.com");
    
    // HTML鍐呭涓娇鐢–ID寮曠敤鍥剧墖
    String content = "<html><body>"
        + "<h3>杩欐槸涓€灏佸甫鍥剧墖鐨勯偖浠?/h3>"
        + "<img src=''cid:imageId'' />"
        + "</body></html>";
    helper.setText(content, true);
    
    // 娣诲姞鍐呭祵鍥剧墖锛堢浜屼釜鍙傛暟鏄疌ID锛屼笌HTML涓殑cid瀵瑰簲锛?
    helper.addInline("imageId", new File("C:/images/logo.png"));
    
    mailSender.send(message);
}
```

3.5 鍙戦€侀偖浠跺伐鍏风被瀹屾暣绀轰緥

```java
@Service
@Slf4j
public class MailService {
    
    @Autowired
    private JavaMailSender mailSender;
    
    @Value("${spring.mail.username}")
    private String from;
    
    /**
     * 鍙戦€佺畝鍗曢偖浠?
     */
    public void sendSimpleMail(String to, String subject, String content) {
        try {
            SimpleMailMessage message = new SimpleMailMessage();
            message.setFrom(from);
            message.setTo(to);
            message.setSubject(subject);
            message.setText(content);
            mailSender.send(message);
            log.info("绠€鍗曢偖浠跺彂閫佹垚鍔?-> {}", to);
        } catch (Exception e) {
            log.error("鍙戦€佺畝鍗曢偖浠跺け璐?, e);
        }
    }
    
    /**
     * 鍙戦€丠TML閭欢
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
            log.info("HTML閭欢鍙戦€佹垚鍔?-> {}", to);
        } catch (MessagingException e) {
            log.error("鍙戦€丠TML閭欢澶辫触", e);
        }
    }
    
    /**
     * 鍙戦€佸甫闄勪欢鐨勯偖浠?
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
            
            // 娣诲姞闄勪欢
            for (Map.Entry<String, File> entry : attachments.entrySet()) {
                helper.addAttachment(entry.getKey(), entry.getValue());
            }
            
            mailSender.send(message);
            log.info("甯﹂檮浠堕偖浠跺彂閫佹垚鍔?-> {}", to);
        } catch (MessagingException e) {
            log.error("鍙戦€佸甫闄勪欢閭欢澶辫触", e);
        }
    }
}
```



### 缁撳悎妯℃澘寮曟搸
浣跨敤Thymeleaf妯℃澘

```xml
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-thymeleaf</artifactId>
</dependency>

```

閭欢妯℃澘锛坢ail-template.html锛夛細

```html
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
</head>
<body>
    <h3 th:text="${title}"></h3>
    <p>灏婃暚鐨?<span th:text="${username}"></span>锛屾偍濂斤紒</p>
    <p th:text="${content}"></p>
    <a th:href="${link}">鐐瑰嚮楠岃瘉</a>
</body>
</html>

```

鍙戦€佹ā鏉块偖浠讹細

```java
@Service
public class TemplateMailService {
    
    @Autowired
    private JavaMailSender mailSender;
    
    @Autowired
    private SpringTemplateEngine templateEngine;
    
    public void sendTemplateMail(String to, String username, String link) {
        try {
            // 鏋勫缓妯℃澘鏁版嵁
            Context context = new Context();
            context.setVariable("title", "娆㈣繋娉ㄥ唽");
            context.setVariable("username", username);
            context.setVariable("content", "璇风偣鍑讳笅鏂归摼鎺ュ畬鎴愰獙璇?);
            context.setVariable("link", link);
            
            // 娓叉煋妯℃澘
            String htmlContent = templateEngine.process("mail-template", context);
            
            // 鍙戦€侀偖浠?
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
            helper.setFrom("your-email@qq.com");
            helper.setTo(to);
            helper.setSubject("娉ㄥ唽楠岃瘉閭欢");
            helper.setText(htmlContent, true);
            
            mailSender.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}
```



### 缁撳悎寮傛浠诲姟
鍙戦€侀偖浠舵槸鑰楁椂鎿嶄綔锛堢綉缁淚O锛夛紝寤鸿浣跨敤寮傛鏂瑰紡閬垮厤闃诲涓荤嚎绋嬨€?

```java
// 1. 鍚姩绫绘坊鍔?@EnableAsync
@SpringBootApplication
@EnableAsync
public class Application {
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}

// 2. 閭欢鏈嶅姟鏂规硶娣诲姞 @Async
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

**鏍稿績瑕佺偣锛?*

+ 瀵嗙爜浣跨敤**鎺堟潈鐮?*鑰岄潪鐧诲綍瀵嗙爜
+ QQ閭闇€瑕佸紑鍚疭SL
+ 澶嶆潅閭欢浣跨敤 `MimeMessageHelper`
+ 鐢熶骇鐜寤鸿寮傛澶勭悊 + 妯℃澘寮曟搸





## 瀹氭椂浠诲姟
### 姒傝堪
Spring Boot 鎻愪緵浜?`@Scheduled` 娉ㄨВ锛屽彲浠ラ潪甯告柟渚垮湴瀹炵幇瀹氭椂浠诲姟鍔熻兘锛屽簳灞傚熀浜?Spring 鐨?TaskScheduler 瀹炵幇銆?

**搴旂敤鍦烘櫙锛?*

+ 瀹氭椂澶囦唤鏁版嵁
+ 瀹氭椂鍙戦€侀偖浠?娑堟伅
+ 瀹氭椂缁熻鏁版嵁
+ 瀹氭椂娓呯悊涓存椂鏂囦欢
+ 瀹氭椂鍚屾鏁版嵁



### 蹇€熷紑濮?
#### 寮€鍚畾鏃朵换鍔℃敮鎸?
鍦ㄥ惎鍔ㄧ被鎴栭厤缃被涓婃坊鍔?`@EnableScheduling` 娉ㄨВ锛?

```java
@SpringBootApplication
@EnableScheduling  // 寮€鍚畾鏃朵换鍔?
public class Application {
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
```

#### 2.2 鍒涘缓瀹氭椂浠诲姟
```java
@Component
@Slf4j
public class MyScheduledTask {
    
    /**
     * 鍥哄畾寤惰繜锛氭瘡5绉掓墽琛屼竴娆★紙涓婃鎵ц缁撴潫鍚庣瓑寰?绉掞級
     */
    @Scheduled(fixedDelay = 5000)
    public void task1() {
        log.info("鍥哄畾寤惰繜浠诲姟鎵ц锛歿}", new Date());
    }
    
    /**
     * 鍥哄畾棰戠巼锛氭瘡3绉掓墽琛屼竴娆★紙涓嶇涓婃鏄惁鎵ц瀹岋級
     */
    @Scheduled(fixedRate = 3000)
    public void task2() {
        log.info("鍥哄畾棰戠巼浠诲姟鎵ц锛歿}", new Date());
    }
    
    /**
     * 鍒濆寤惰繜锛氬惎鍔ㄥ悗绛夊緟2绉掑啀寮€濮嬫墽琛?
     */
    @Scheduled(initialDelay = 2000, fixedRate = 5000)
    public void task3() {
        log.info("寤惰繜鍚姩浠诲姟鎵ц锛歿}", new Date());
    }
    
    /**
     * Cron琛ㄨ揪寮忥細姣忓ぉ涓婂崍10:30鎵ц
     */
    @Scheduled(cron = "0 30 10 * * ?")
    public void task4() {
        log.info("Cron瀹氭椂浠诲姟鎵ц锛歿}", new Date());
    }
}
```



### Cron琛ㄨ揪寮忚瑙?
#### 3.1 Cron琛ㄨ揪寮忔牸寮?
```plain
绉?鍒?鏃?鏃?鏈?鍛?骞?鍙€?
鈹?鈹?鈹?鈹?鈹?鈹?
鈹?鈹?鈹?鈹?鈹?鈹斺攢鈹€ 鏄熸湡 (0-7, 0鍜?閮借〃绀哄懆鏃?
鈹?鈹?鈹?鈹?鈹斺攢鈹€鈹€鈹€ 鏈堜唤 (1-12)
鈹?鈹?鈹?鈹斺攢鈹€鈹€鈹€鈹€鈹€ 鏃ユ湡 (1-31)
鈹?鈹?鈹斺攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€ 灏忔椂 (0-23)
鈹?鈹斺攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€ 鍒嗛挓 (0-59)
鈹斺攢鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€鈹€ 绉?(0-59)
```

#### 3.2 鐗规畩瀛楃璇存槑
| 瀛楃 | 鍚箟 | 绀轰緥 |
| --- | --- | --- |
| `*` | 鎵€鏈夊€?| `*` 琛ㄧず姣忎竴绉?鍒?鏃?.. |
| `?` | 涓嶆寚瀹氬€?| 甯哥敤浜庢棩鏈熷拰鏄熸湡鍐茬獊鏃?|
| `-` | 鑼冨洿 | `10-12` 琛ㄧず10鍒?2鐐?|
| `,` | 鍒椾妇 | `1,3,5` 琛ㄧず1,3,5 |
| `/` | 闂撮殧 | `0/15` 琛ㄧず姣忛殧15鍒嗛挓 |
| `L` | 鏈€鍚?| 鏈堜唤涓殑鏈€鍚庝竴澶?|
| `W` | 宸ヤ綔鏃?| 鏈€杩戠殑宸ヤ綔鏃?|
| `#` | 绗嚑涓?| 绗嚑涓槦鏈熷嚑 |


#### 3.3 甯哥敤Cron琛ㄨ揪寮忕ず渚?
```java
// 姣?绉掓墽琛屼竴娆?
@Scheduled(cron = "0/5 * * * * ?")

// 姣忓垎閽熺殑绗?0绉掓墽琛?
@Scheduled(cron = "30 * * * * ?")

// 姣?鍒嗛挓鎵ц涓€娆?
@Scheduled(cron = "0 0/5 * * * ?")

// 姣忓皬鏃剁殑绗?鍒?绉掓墽琛?
@Scheduled(cron = "0 0 * * * ?")

// 姣忓ぉ鍑屾櫒2鐐规墽琛?
@Scheduled(cron = "0 0 2 * * ?")

// 姣忓懆涓€涓婂崍10:15鎵ц
@Scheduled(cron = "0 15 10 ? * MON")

// 姣忔湀1鍙峰噷鏅?鐐规墽琛?
@Scheduled(cron = "0 0 1 1 * ?")

// 姣忓勾3鏈?0鏃ヤ笂鍗?0:30鎵ц
@Scheduled(cron = "0 30 10 20 3 ?")

// 宸ヤ綔鏃ユ瘡澶╀笂鍗?鐐瑰埌涓嬪崍5鐐癸紝姣忓崐灏忔椂鎵ц
@Scheduled(cron = "0 0/30 9-17 * * MON-FRI")

// 姣忎釜鏈堟渶鍚庝竴涓懆浜斾笂鍗?0鐐规墽琛?
@Scheduled(cron = "0 0 10 ? * 6L")

// 姣忓ぉ涓婂崍10鐐癸紝涓嬪崍2鐐癸紝涓嬪崍4鐐规墽琛?
@Scheduled(cron = "0 0 10,14,16 * * ?")
```

#### 3.4 Cron鍦ㄧ嚎鐢熸垚鍣?
鎺ㄨ崘浣跨敤鍦ㄧ嚎宸ュ叿鐢熸垚Cron琛ㄨ揪寮忥細

+ [https://cron.qqe2.com/](https://cron.qqe2.com/)
+ [https://www.bejson.com/othertools/cron/](https://www.bejson.com/othertools/cron/)



### 閰嶇疆绾跨▼姹?
榛樿鎯呭喌涓嬶紝Spring Boot 浣跨敤鍗曠嚎绋嬫墽琛屾墍鏈夊畾鏃朵换鍔°€傚鏋滀竴涓换鍔℃墽琛屾椂闂磋繃闀匡紝浼氶樆濉炲叾浠栦换鍔°€?

#### 4.1 閰嶇疆鑷畾涔夌嚎绋嬫睜
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
        return Executors.newScheduledThreadPool(10);  // 10涓嚎绋嬬殑绾跨▼姹?
    }
}
```

#### 4.2 浣跨敤閰嶇疆鏂囦欢鏂瑰紡锛坅pplication.yml锛?
```yaml
spring:
  task:
    scheduling:
      pool:
        size: 10                    # 绾跨▼姹犲ぇ灏?
      thread-name-prefix: scheduled-task-  # 绾跨▼鍚嶇О鍓嶇紑
      shutdown:
        await-termination: true     # 绛夊緟浠诲姟鎵ц瀹屾瘯鍐嶅叧闂?
        await-termination-period: 30s  # 鏈€澶х瓑寰呮椂闂?
```



### 浜斻€佸姩鎬佸畾鏃朵换鍔?
#### 5.1 浠庨厤缃枃浠惰鍙朇ron琛ㄨ揪寮?
```java
@Component
@Slf4j
public class DynamicScheduledTask {
    
    @Scheduled(cron = "${task.cron:0 0 2 * * ?}")  // 浠庨厤缃枃浠惰鍙栵紝榛樿鍑屾櫒2鐐?
    public void taskFromConfig() {
        log.info("浠庨厤缃枃浠惰鍙栫殑瀹氭椂浠诲姟鎵ц");
    }
}
```

**application.yml锛?*

```yaml
task:
  cron: 0 0/5 * * * ?  # 姣?鍒嗛挓鎵ц涓€娆?
```

#### 5.2 缂栫▼寮忓姩鎬佷慨鏀瑰畾鏃惰鍒?
```java
@Component
@Slf4j
public class ReScheduledTask {
    
    @Autowired
    private ThreadPoolTaskScheduler taskScheduler;
    
    private ScheduledFuture<?> future;
    
    /**
     * 鍚姩瀹氭椂浠诲姟
     */
    public void startTask(String cron) {
        if (future != null && !future.isCancelled()) {
            future.cancel(false);  // 鍙栨秷鐜版湁浠诲姟
        }
        
        // 瑙ｆ瀽Cron琛ㄨ揪寮?
        CronTrigger trigger = new CronTrigger(cron);
        
        // 鍚姩鏂颁换鍔?
        future = taskScheduler.schedule(() -> {
            log.info("鍔ㄦ€佸畾鏃朵换鍔℃墽琛岋紝鏃堕棿锛歿}", new Date());
            // 鎵ц鍏蜂綋涓氬姟閫昏緫
        }, trigger);
    }
    
    /**
     * 鍋滄浠诲姟
     */
    public void stopTask() {
        if (future != null && !future.isCancelled()) {
            future.cancel(false);
            log.info("瀹氭椂浠诲姟宸插仠姝?);
        }
    }
}
```

**璋冪敤绀轰緥锛?*

```java
@RestController
public class TaskController {
    
    @Autowired
    private ReScheduledTask reScheduledTask;
    
    @PostMapping("/task/start")
    public String startTask(@RequestParam String cron) {
        reScheduledTask.startTask(cron);
        return "瀹氭椂浠诲姟宸插惎鍔紝Cron锛? + cron;
    }
    
    @PostMapping("/task/stop")
    public String stopTask() {
        reScheduledTask.stopTask();
        return "瀹氭椂浠诲姟宸插仠姝?;
    }
}
```

#### 5.3 鍩轰簬鎺ュ彛鐨勫姩鎬佷换鍔?
```java
@Component
@Slf4j
public class DynamicTask implements SchedulingConfigurer {
    
    private String cron = "0/5 * * * * ?";  // 榛樿姣?绉?
    
    @Override
    public void configureTasks(ScheduledTaskRegistrar taskRegistrar) {
        taskRegistrar.addTriggerTask(
            () -> {
                // 浠诲姟閫昏緫
                log.info("鍔ㄦ€丆ron浠诲姟鎵ц锛歿}", new Date());
            },
            triggerContext -> {
                // 鍔ㄦ€佽幏鍙朇ron琛ㄨ揪寮?
                CronTrigger trigger = new CronTrigger(cron);
                return trigger.nextExecutionTime(triggerContext);
            }
        );
    }
    
    // 鎻愪緵淇敼Cron鐨勬柟娉?
    public void updateCron(String newCron) {
        this.cron = newCron;
        log.info("Cron宸叉洿鏂颁负锛歿}", newCron);
    }
}
```



### 鍏€佸紓姝ュ畾鏃朵换鍔?
缁撳悎 `@Async` 瀹炵幇寮傛鎵ц锛岄伩鍏嶉樆濉炲畾鏃朵换鍔＄嚎绋嬶細

```java
@Component
@Slf4j
public class AsyncScheduledTask {
    
    @Async  // 寮傛鎵ц
    @Scheduled(cron = "0/10 * * * * ?")
    public void asyncTask() {
        log.info("寮傛瀹氭椂浠诲姟寮€濮嬫墽琛岋紝绾跨▼锛歿}", Thread.currentThread().getName());
        // 妯℃嫙闀挎椂闂翠换鍔?
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        log.info("寮傛瀹氭椂浠诲姟鎵ц瀹屾垚");
    }
}
```

**娉ㄦ剰锛?* 闇€瑕佸厛寮€鍚紓姝ユ敮鎸?`@EnableAsync`



### 涓冦€佸垎甯冨紡鐜涓嬬殑瀹氭椂浠诲姟
鍦ㄥ垎甯冨紡鐜涓紝澶氫釜瀹炰緥鍚屾椂鎵ц瀹氭椂浠诲姟浼氶€犳垚鏁版嵁閲嶅澶勭悊銆傝В鍐虫柟妗堬細

#### 7.1 浣跨敤ShedLock
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

**閰嶇疆锛?*

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

**浣跨敤锛?*

```java
@Component
public class DistributedTask {
    
    @Scheduled(cron = "0 0 2 * * ?")
    @SchedulerLock(name = "backupTask", lockAtMostFor = "5m", lockAtLeastFor = "1m")
    public void backupTask() {
        // 杩欎釜浠诲姟鍦ㄥ悓涓€鏃堕棿鍙細鏈変竴涓疄渚嬫墽琛?
        log.info("鍒嗗竷寮忓畾鏃朵换鍔℃墽琛?);
    }
}
```

#### 7.2 浣跨敤Redis鍒嗗竷寮忛攣
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
        
        // 灏濊瘯鑾峰彇閿侊紝杩囨湡鏃堕棿10绉?
        Boolean success = redisTemplate.opsForValue()
            .setIfAbsent(lockKey, lockValue, Duration.ofSeconds(10));
        
        if (Boolean.TRUE.equals(success)) {
            try {
                log.info("鑾峰彇閿佹垚鍔燂紝鎵ц浠诲姟");
                // 鎵ц涓氬姟閫昏緫
            } finally {
                // 閲婃斁閿?
                String script = "if redis.call(''get'', KEYS[1]) == ARGV[1] then return redis.call(''del'', KEYS[1]) else return 0 end";
                redisTemplate.execute(new DefaultRedisScript<>(script, Long.class), 
                    Collections.singletonList(lockKey), lockValue);
            }
        } else {
            log.info("鏈幏鍙栧埌閿侊紝璺宠繃鎵ц");
        }
    }
}
```



### 鍏€佹敞鎰忎簨椤逛笌鏈€浣冲疄璺?
#### 8.1 閬垮厤闀挎椂闂翠换鍔￠樆濉?
```java
// 鉂?閿欒锛氶暱鏃堕棿浠诲姟浼氶樆濉炲叾浠栧畾鏃朵换鍔?
@Scheduled(fixedRate = 5000)
public void badTask() {
    Thread.sleep(30000);  // 鎵ц30绉?
}

// 鉁?姝ｇ‘锛氫娇鐢ㄥ紓姝ユ垨鍙﹁捣绾跨▼
@Async
@Scheduled(fixedRate = 5000)
public void goodTask() {
    // 闀挎椂闂翠换鍔?
}
```

#### 8.2 鎹曡幏寮傚父
```java
@Scheduled(cron = "0/10 * * * * ?")
public void safeTask() {
    try {
        // 涓氬姟閫昏緫
    } catch (Exception e) {
        log.error("瀹氭椂浠诲姟鎵ц澶辫触", e);
        // 鍙互鍙戦€佸憡璀﹂€氱煡
    }
}
```

#### 8.3 閬垮厤浠诲姟閲嶅彔鎵ц
```java
private AtomicBoolean running = new AtomicBoolean(false);

@Scheduled(fixedDelay = 5000)  // 浣跨敤fixedDelay纭繚涓婁竴娆℃墽琛屽畬鎴?
public void nonOverlapTask() {
    if (!running.compareAndSet(false, true)) {
        log.warn("涓婃浠诲姟灏氭湭瀹屾垚锛岃烦杩囨湰娆℃墽琛?);
        return;
    }
    try {
        // 涓氬姟閫昏緫
    } finally {
        running.set(false);
    }
}
```

#### 8.4 鍚堢悊鐨凜ron琛ㄨ揪寮?
+ 閬垮厤鍦ㄩ珮骞跺彂鏃舵鎵ц鑰楁椂浠诲姟
+ 瀹氭椂浠诲姟灏介噺鍦ㄥ噷鏅ㄤ笟鍔′綆宄版湡鎵ц
+ 璁剧疆鍚堢悊鐨勮秴鏃舵椂闂?



### 涔濄€佺洃鎺т笌绠＄悊
```java
@Component
@Slf4j
public class ScheduledTaskMonitor {
    
    @EventListener
    public void handleTaskStart(ScheduledTaskRegistrationEvent event) {
        log.info("瀹氭椂浠诲姟娉ㄥ唽锛歿}", event.getTask());
    }
    
    // 閫氳繃Actuator绔偣鏌ョ湅浠诲姟淇℃伅
    @Autowired
    private ScheduledTaskRegistrar taskRegistrar;
    
    public List<String> getRunningTasks() {
        return taskRegistrar.getScheduledTasks().stream()
            .map(Object::toString)
            .collect(Collectors.toList());
    }
}
```



### 鍗併€佹€荤粨
| 鍙傛暟 | 璇存槑 | 绀轰緥 |
| --- | --- | --- |
| `fixedDelay` | 涓婃缁撴潫鍒颁笅娆″紑濮嬬殑闂撮殧 | `fixedDelay = 5000` |
| `fixedRate` | 鍥哄畾棰戠巼鎵ц | `fixedRate = 5000` |
| `initialDelay` | 鍒濆寤惰繜鍚姩 | `initialDelay = 3000` |
| `cron` | Cron琛ㄨ揪寮?| `cron = "0 0 2 * * ?"` |


**鏍稿績瑕佺偣锛?*

1. 鍚姩绫绘坊鍔?`@EnableScheduling`
2. 浠诲姟鏂规硶娣诲姞 `@Scheduled`
3. 榛樿鍗曠嚎绋嬫墽琛岋紝娉ㄦ剰閰嶇疆绾跨▼姹?
4. 鍒嗗竷寮忕幆澧冮渶瑕佽€冭檻閿佹満鍒?
5. 闀挎椂闂翠换鍔″缓璁娇鐢ㄥ紓姝?
6. 鍋氬ソ寮傚父澶勭悊鍜屾棩蹇楄褰?
', NOW());
SET @last_note_id = LAST_INSERT_ID();

INSERT INTO 
ote (uthor_id, 	itle, content, created_at)
VALUES (1003, '多线程', '# 姒傝堪
## Process(杩涚▼),Thread(绾跨▼)
杩涚▼鏄郴缁熷垎閰嶇殑锛岀嚎绋嬪湪杩涚▼閲岄潰锛岃嚦灏戞湁涓€涓猰ain锛堜富锛夌嚎绋?

+ 绾跨▼鏄嫭绔嬬殑鎵ц璺緞
+ 鍦ㄧ▼搴忚繍琛屾椂锛屽嵆浣挎病鏈夊垱寤虹嚎绋嬶紝鍚庡彴涔熶細鏈夊涓嚎绋嬶紝濡備富绾跨▼锛実c绾跨▼(鍨冨溇鍥炴敹绾跨▼)锛?
+ main()绉颁箣涓轰富绾跨▼锛屼负绯荤粺鐨勫叆鍙ｏ紝鐢ㄤ簬鎵ц鏁翠釜绋嬪簭
+ 鍦ㄤ竴涓繘绋嬩腑锛屽鏋滃紑杈熶簡澶氫釜绾跨▼锛岀嚎绋嬬殑杩愯鐢辫皟搴﹀櫒瀹夋帓璋冨害锛岃皟搴﹀櫒鏄笌鎿嶄綔绯荤粺绱у瘑鐩稿叧鐨勶紝鍏堝悗椤哄簭鏄笉鑳借浜轰负鐨勫共棰勭殑
+ 瀵瑰悓涓€浠借祫婧愭搷浣滄椂锛屼細瀛樺湪璧勬簮鎶㈠ず鐨勯棶棰橈紝闇€瑕佸姞鍏ュ苟鍙戞帶鍒?
+ 绾跨▼浼氬甫鏉ラ澶栫殑寮€閿€锛屽cpu璋冨害鏃堕棿锛屽苟鍙戞帶鍒跺紑閿€
+ 姣忎釜绾跨▼鍦ㄨ嚜宸辩殑宸ヤ綔鍐呭瓨浜や簰锛屽唴瀛樻帶鍒朵笉褰撲細閫犳垚鏁版嵁涓嶄竴鑷?

# 涓夌鍒涘缓鏂瑰紡
## Thread class
缁ф壙Thread绫伙紝閲嶅啓run()鏂规硶锛?璋冪敤Start寮€鍚嚎绋?

绾跨▼寮€鍚笉涓€瀹氱珛鍗虫墽琛岋紝鏈塁PU璋冨害鎵ц

```java

public class TestThread1 extends Thread{
    @Override
    public void run() {
        for (int i = 0; i < 200; i++) {
            System.out.println("杩欐槸run鏂规硶"+i);
        }
    }

    public static void main(String[] args) {
        // 鍒涘缓涓€涓嚎绋嬪璞?
        TestThread1 t = new TestThread1();

        // 璋冪敤start()鏂规硶寮€鍚嚎绋?
        t.start();

        for (int i = 0; i < 2000; i++) {
            System.out.println("杩欐槸涓荤嚎绋?+i);
        }
    }
}

```

鍚屾椂涓嬭浇涓夊紶鍥剧墖

```java
package com.jie.thread;

import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.net.URL;

// 鑱旂郴Thread锛?瀹炵幇澶氱嚎绋嬪悓姝ヤ笅杞藉浘鐗?
public class TestThread2 extends Thread {
    private String name;  // 淇濆瓨鐨勬枃浠跺悕
    private String url;   // 缃戠粶鍥剧墖鍦板潃

    public TestThread2(String name, String url) {
        this.url = url;
        this.name = name;
    }


    @Override
    public void run() {
        WebDownloader downloader = new WebDownloader();
        downloader.download(url, name);
        System.out.println("涓嬭浇浜嗘枃浠跺悕wield: " + name);
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

// 涓嬭浇鍣?
class WebDownloader{
    public void download(String url, String name){
        try {
            FileUtils.copyURLToFile(new URL(url), new File(name));
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("IO寮傚父锛宒ownloader鏂规硶鍑虹幇闂");
        }
    }
}

```

## Runnable 鎺ュ彛  (寤鸿浣跨敤)
### 鍒濆Runable
瀹炵幇runnable鎺ュ彛锛岄噸鍐檙un鏂规硶锛屾墽琛岀嚎绋嬮渶瑕佷涪鍏unnable鎺ュ彛瀹炵幇绫?

```java
package com.jie.thread;

public class TestThread3 implements Runnable {
    @Override
    public void run() {
        for (int i = 0; i < 20; i++) {
            System.out.println("杩欐槸run鏂规硶" + i);
        }
    }

    public static void main(String[] args) {
        //鍒涘缓娑﹂偅杈逛簡鎺ュ彛鐨勫疄鐜扮被瀵硅薄
        TestThread1 testThread1 = new TestThread1();

        // 鍒涘缓绾跨▼瀵硅薄锛岄€氳繃绾跨▼瀵硅薄鏉ュ紑鍚垜浠殑绾跨▼锛屼唬鐞?
        //Thread thread = new Thread(testThread1);
        //thread.start();

        new Thread(testThread1).start();


        for (int i = 0; i < 20; i++) {
            System.out.println("杩欐槸涓荤嚎绋? + i);
        }
    }
}

```

鍙戠幇闂锛氬涓嚎绋嬪悓鏃舵搷浣滃悓涓€涓祫婧愮殑鎯呭喌涓嬶紝绾跨▼涓嶅畨鍏紝鏁版嵁绱婁贡

```java
package com.jie.thread;

// 澶氫釜绾跨▼鍚屾椂鎿嶄綔涓€涓璞?
// 涔扮伀杞︾エ
public class TestThread4 implements Runnable {

    //绁ㄦ暟
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
            System.out.println(Thread.currentThread().getName()+"-->鎷垮埌浜嗙"+ticketNums--+"绁?);
        }
    }

    public static void main(String[] args) {
        TestThread4 ticket = new TestThread4();
        new Thread(ticket,"灏忔槑").start();
        new Thread(ticket,"鑰佸笀").start();
        new Thread(ticket,"榛勭墰鍏?).start();
    }
}
```

### 榫熷厰璧涜窇
```java
package com.jie.thread;

// 妯℃嫙榫熷厰璧涜窇
public class Race implements Runnable {

    // 鑳滃埄鑰?
    private static String winner;

    @Override
    public void run() {
        for (int i = 0; i <= 100; i++) {

            // 妯℃嫙鍏斿瓙鐫¤
            if (Thread.currentThread().getName().equals("鍏?) && i%10==0) {
                try {
                    Thread.sleep(10);
                } catch (InterruptedException e) {
                    throw new RuntimeException(e);
                }
            }

            // 鍒ゆ柇姣旇禌鏄惁缁撴潫
            boolean flag = gameOver(i);
            // 濡傛灉姣旇禌缁撴潫, 涔呭仠姝㈢▼搴?
            if (flag) {
                break;
            }

            System.out.println(Thread.currentThread().getName() + "璺戜簡-->" + i + "姝?);
        }
    }

    private boolean gameOver (int steps){
        if (winner != null) { // 宸茬粡瀛樺湪鑳滃埄鑰?
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
        new Thread(race,"榫?).start();
        new Thread(race,"鍏?).start();
    }
}
```

## callable 鎺ュ彛
姝ラ

+ 杩炴帴鎺ュ彛 Callable
+ 閲嶅啓call鏂规硶锛岄渶瑕佹姏鍑哄紓甯?
+ 鍒涘缓鎵ц鏈嶅姟: ExecutorService ser =  Executors.newFixedThreadPool(nums)
+ 鎻愪氦鎵ц Future<Boolean> result1 = ser.submit(1);
+ 鑾峰彇缁撴灉 Boolean r1 = result1.get();
+ 鍏抽棴鏈嶅姟 ser.shutdownNow();

# 绾跨▼妯″紡
## 闈欐€佷唬鐞嗘ā寮?
+ 鐩爣瀵硅薄鍜屼唬鐞嗗璞￠兘闇€瑕佸疄鐜板悓涓€涓帴鍙?
+ 浠ｇ悊瀵硅薄瑕佷唬鐞嗙湡瀹炶鑹?
+ 濂藉
    - 浠ｇ悊瀵硅薄鍙互鍋氬緢澶氱湡瀹炲璞″仛涓嶅埌鐨勪簨鎯?
    - 鐪熷疄瀵硅薄鍙互涓撴敞鍋氳嚜宸辩殑浜嬫儏

## Lamda琛ㄨ揪寮?
### 鍑芥暟寮忔帴鍙ｏ紙functional Interface锛?
#### 瀹氫箟
+ 浠讳綍鎺ュ彛锛屽鏋滃彧鍖呭惈鍞竴涓€涓娊璞℃柟娉曪紝閭ｄ箞瀹冨氨鏄竴涓嚱鏁板紡鎺ュ彛

```java
public interface Runnable{
    public abstract void run();
}
```

+ 瀵逛簬鍑芥暟寮忔帴鍙ｏ紝鎴戜滑鍙互閫氳繃lambda琛ㄨ揪寮忔潵鍒涘缓璇ユ帴鍙ｇ殑瀵硅薄

### 涓轰粈涔堣鐢╨amda琛ㄨ揪寮?()->
+ 閬垮厤鍖垮悕鍐呴儴绫诲畾涔夎繃澶?
+ 鍙互璁╀綘鐨勪唬鐮佺湅璧锋潵寰堢畝娲?
+ 鍘绘帀浜嗕竴鍫嗘病鏈夋剰涔夌殑浠ｇ爜锛屽彧鐣欎笅鏍稿績鐨勯€昏緫

### lambda鐨勬帹瀵艰繃绋?
```java
package com.jie.thread;

// 鎺ㄥ lambda 琛ㄨ揪寮?
public class TestLambda1 {

    // 闈欐€佸唴閮ㄧ被
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

        // 灞€閮ㄥ唴閮ㄧ被
        class Like3 implements ILike{
            @Override
            public void Lambda() {
                System.out.println("i like lambda3");
            }
        }

        like = new Like3();
        like.Lambda();

        // 鍖垮悕鍐呴儴绫伙紝娌℃湁绫荤殑鍚嶇О锛屽繀椤诲€熷姪鎺ュ彛鎴栬€呯埗绫?
        like = new ILike() {
            @Override
            public void Lambda() {
                System.out.println("i like lambda4");
            }
        };
        like.Lambda();

        // 鐢╨ambda绠€鍖?
        like = ()->{
            System.out.println("i like lambda5");
        };
        like.Lambda();
    }

}


// 瀹氫箟涓€涓嚱鏁板紡鎺ュ彛

interface ILike{
    void Lambda();
}


// 瀹炵幇绫?
class Like implements ILike{

    @Override
    public void Lambda() {
        System.out.println("I like Lambda");
    }
}


```

### lanbda 鐨勭畝鍖栬繃绋?
```java
package com.jie.thread;

public class TestLambda2 {
    public static void main(String[] args) {
        Ilove love = null;
        
        // 1銆乴ambda琛ㄧず绠€鍖?
        love =(int a)->{
            System.out.println("i love you-->"+a);
        };
        // 绠€鍖?銆佸幓鎺夊弬鏁扮被鍨?
        love = (a)->{
            System.out.println("i love you-->"+a);
        };

        // 绠€鍖?銆佺畝鍖栨嫭鍙?
        love = a -> {
            System.out.println("i love you-->"+a);
        };

        // 绠€鍖?銆佺畝鍖栬姳鎷彿
        love = a -> System.out.println("i love you-->"+a);

        love.love(250);
    }
}

interface Ilove {
    void love(int a);
}
```

### 鎬荤粨
+ lambda琛ㄨ揪寮忓彧鑳芥湁涓€琛屼唬鐮佺殑鎯呭喌涓嬫墠鑳界畝鍖栨垚涓€琛岋紝濡傛灉鏈夊琛岋紝閭ｄ箞灏辩敤浠ｇ爜鍧楀寘瑁?
+ 鍓嶆彁鏄帴鍙ｄ负鍑芥暟寮忔帴鍙?
+ 澶氫釜鍙傛暟涔熷彲浠ュ幓鎺夊弬鏁扮被鍨嬶紝瑕佸幓鎺夊氨閮藉幓鎺夛紝澶氫釜鍙傛暟蹇呴』鍔犱笂鎷彿
+

# 绾跨▼鐘舵€?
## 绾跨▼鐨勪簲涓姸鎬?
<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1744267800072-d86a1671-1801-4bc5-868d-6c7485970c8b.png" width="1171.2" title="" crop="0,0,1,1" id="u4ff70ecc" class="ne-image">



## 绾跨▼鏂规硶
+ setPriority(int newPriorith)锛氭洿鏀圭嚎绋嬬殑浼樺厛绾?
+ static void sleep(long millis)锛氬湪鎸囧畾鐨勬绉掓暟鍐呰褰撳墠姝ｅ湪鎵ц鐨勭嚎绋嬩綋浼戠湢
+ void jion()锛氱瓑寰呯嚎绋嬬粓姝?
+ static void yield()锛氭殏鍋滃綋鍓嶆鍦ㄦ墽琛岀殑绾跨▼瀵硅薄锛屽苟鎵ц鍏朵粬鐨勭嚎绋?
+ void interrupt()锛氫腑鏂嚎绋嬶紝涓嶇敤杩欎釜鏂瑰紡
+ boollean isAlive()锛氭祴璇曠嚎绋嬫槸鍚﹀浜庢椿鍔ㄧ姸鎬?

## 绾跨▼鍋滄
### 娴嬭瘯stop
1.寤鸿绾跨▼姝ｅ父鍋滄---> 鍒╃敤娆℃暟锛屼笉寤鸿姝诲惊鐜?

2.寤鸿浣跨敤鏍囧織浣?--> 璁剧疆涓€涓爣蹇椾綅

3.涓嶈浣跨敤stop鎴栬€卍estroy绛夎繃鏃舵垨JIK涓嶅缓璁殑鏂规硶

```java
package com.jie.thread;

public class TestStop implements Runnable {
    //璁剧疆涓€涓爣璇嗕綅
    private Boolean flag = true;

    @Override
    public void run() {
        int i = 0;
        
        //绾跨▼浣撲娇鐢ㄨ鏍囪瘑
        while (flag) {
            System.out.println("run...Thread..."+i++);
        }
    }

    // 璁剧疆涓€涓叕寮€鐨勬柟娉曞仠姝㈢嚎绋嬶紝杞崲琛ㄧず浣?
    public void stop() {
        flag = false;
        System.out.println("stop....");
    }

    public static void main(String[] args) {
        TestStop t = new TestStop();
        new Thread(t).start();

        // 璁剧疆涓荤嚎绋?
        for (int i = 0; i < 1000; i++) {
            System.out.println("main...Thread..."+i);
            if (i==900){
                t.stop();
            }
        }
    }
}

```

## 绾跨▼浼戠湢
+ sleep(鏃堕棿)鎸囧畾褰撳墠绾跨▼闃诲鐨勬绉掓暟锛?
+ sleep瀛樺湪寮傚父InterruptedException锛?
+ sleep鏃堕棿杈惧埌鍚庣嚎绋嬭繘鍏ュ氨缁姸鎬?
+ sleep鍙互妯℃嫙缃戠粶寤舵椂锛屽€掕鏃剁瓑
+ 姣忎竴涓璞￠兘鏈変竴涓攣锛宻leep涓嶄細閲婃斁閿侊紱

```java
package com.jie.thread;


import java.text.SimpleDateFormat;
import java.util.Date;

public class TestSleep2 {
    public static void main(String[] args) {
        //鑾峰彇绯荤粺褰撳墠鏃堕棿
        Date startTime = new Date(System.currentTimeMillis());

        while (true) {
            try {
                Thread.sleep(1000);
                System.out.println(new SimpleDateFormat("HH:mm:ss").format(startTime));
                startTime = new Date(System.currentTimeMillis()); // 鏇存柊鏃堕棿
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

## 绾跨▼绀艰
+ 绀艰绾跨▼锛岃褰撳墠姝ｅ湪鎵ц鐨勭嚎绋嬫殏鍋滐紝浣嗕笉闃诲
+ 璁╃嚎绋嬩粠杩愯鐘舵€佽浆涓哄氨缁姸鎬?
+ **璁ヽpu閲嶆柊璋冨害锛岀ぜ璁╀笉涓€瀹氭垚鍔燂紝鐪婥PU蹇冩儏**

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
        System.out.println(Thread.currentThread().getName()+"绾跨▼寮€濮嬫墽琛?);
        Thread.yield();//绀艰
        System.out.println(Thread.currentThread().getName()+"绾跨▼鍋滄鎵ц");
    }
}
```

## Join
+ Join鍚堝苟绾跨▼锛屽緟姝ょ嚎绋嬫墽琛屽畬鍚庯紝鍐嶆墽琛屽叾浠栫嚎绋嬶紝鍏朵粬绾跨▼闃诲
+ 绾跨▼鐨勬彃闃?

```java
package com.jie.thread;

// 娴嬭瘯Join鏂规硶锛屾兂璞℃垚鎻掗槦
public class TestJoin implements Runnable{
    @Override
    public void run() {
        for (int i = 0; i < 1000; i++) {
            System.out.println("绾跨▼vip鏉ヤ簡-->"+i);
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
            System.out.println("涓荤嚎绋嬫墽琛?->"+i);
        }
    }
}
```

## 绾跨▼鐘舵€佽娴媠tate
+ Thread.State
    - NEW锛氬皻鏈惎鍔ㄧ殑绾跨▼澶勪簬姝ょ姸鎬?
    - RUNNABLE锛氬湪Java铏氭嫙鏈轰腑鎵ц鐨勭嚎绋嬪浜庢鐘舵€?
    - BLOCKED锛氳闃诲绛夊緟鐩戣鍣ㄩ攣瀹氱殑绾跨▼澶勪簬姝ょ姸鎬?
    - WAITING锛氬湪绛夊緟鍙︿竴涓嚎绋嬫墽琛岀壒瀹氬姩浣滅殑绾跨▼澶勪簬姝ょ姸鎬?
    - TIMED_WAITING锛氭鍦ㄧ瓑寰呭彟涓€涓嚎绋嬫墽琛屽姩浣滆揪鍒板埗瀹氱瓑寰呮椂闂寸殑绾跨▼澶勪簬姝ょ姸鎬?
    - TERMINATED锛氬凡閫€鍑虹殑绾跨▼澶勪簬姝ょ姸鎬?

```java
package com.jie.thread;

//瑙傚療娴嬭瘯绾跨▼鐨勭姸鎬?
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

        // 绾跨▼鏈惎鍔ㄧ殑鐘舵€?
        Thread.State state = thread.getState();
        System.out.println(state);

        // 绾跨▼鍚姩鍚庣殑鐘舵€?
        thread.start();
        // 鏇存柊绾跨▼鐨勭姸鎬?
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

        // 宸茬粡鍚姩鍚庣殑绾跨▼涓嶈兘鍐嶆琚惎鍔?
        thread.start();

    }
}

```

## 绾跨▼浼樺厛绾RIORITY
+ 绾跨▼浼樺厛绾х敤鏁板瓧琛ㄧず锛岃寖鍥翠粠1`10
    - Thread.MIN_PRIORITY=1;
    - Thread.MAX_PRIORITY=10;
    - Thread.NORM_PRIORITY=5;
+ 浣跨敤浠ヤ笅鏂瑰紡鏇存敼鎴栬幏鍙栦紭鍏堢骇
    - getPriority(), setPriority(int xxx)
+ 浼樺厛绾х殑璁惧畾寤鸿鍦╯tart()璋冨害鍓?

```java
package com.jie.thread;

// 娴嬭瘯绾跨▼鐨勪紭鍏堢骇
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

## 瀹堟姢绾跨▼ daemon


+ 绾跨▼鍒嗕负鐢ㄦ埛绾跨▼鍜屽畧鎶ょ嚎绋?
+ 铏氭嫙鏈哄繀椤荤‘淇濈敤鎴风嚎绋嬫墽琛屽畬姣?
+ 铏氭嫙鏈轰笉鐢ㄧ瓑寰呭畧鎶ょ嚎绋嬫敮鎸佸畬姣?

```java
package com.jie.thread;

public class TestDaemon {
    public static void main(String[] args) {

        God god = new God();

        Thread thread = new Thread(god);
        thread.setDaemon(true); // 榛樿鎴慺alse 琛ㄧず鐢ㄦ埛绾跨▼
        thread.start();

        new Thread(new You()).start();
    }
}

class God implements Runnable {

    @Override
    public void run() {
        while (true) {
            System.out.println("涓婂笣瀹堟姢姣忎竴澶?);
        }
    }
}

class You implements Runnable {
    @Override
    public void run() {
        for (int i = 0; i < 100; i++) {
            System.out.println("寮€蹇冪殑娲荤潃姣忎竴澶?);
        }
        System.out.println("run over");
    }
}

```

# 绾跨▼鍚屾
## 鍚屾閿乻ynchronized
+ 鐢变簬鎴戜滑鍙互閫氳繃private鍏抽敭瀛楁潵淇濊瘉鏁版嵁瀵硅薄鍙兘鎲嬫柟娉曡闂紝鎵€浠ユ垜浠彧闇€瑕侀拡瀵规柟娉曟彁鍑轰竴濂楁満鍒讹紝杩欏鏈哄埗鏄?synchronized 鍏抽敭瀛楋紝 瀹冨寘鎷袱绉嶇敤娉曪細synchronized鏂规硶鍜宻ynchronized鍧?

鏂规硶鍚屾`public synchronized void method(int args){}`

+ synchronized鏂规硶鎺у埗瀵光€滃璞♀€濈殑璁块棶锛岋紝姣忎釜瀵硅薄瀵瑰簲涓€鎶婇攣锛屾瘡涓猻ynchronized鏂规硶閮藉繀椤昏幏寰楄皟鐢ㄨ鏂规硶鐨勫璞＄殑閿佹墠鑳芥墽琛岋紝鍚﹀垯绾跨▼浼氶樆濉烇紝鏂规硶涓€鏃︽墽琛岋紝灏辩嫭鍗犺閿侊紝鐩村埌璇ユ柟娉曢噴鏀鹃攣锛屽悗闈㈤樆濉炵殑绾跨▼鎵嶈兘鑾峰緱杩欎釜閿侊紝缁х画鎵ц
+ 缂洪櫡锛氳嫢灏嗕竴涓ぇ鐨勬柟娉曞０鏄庝负synchronized浼氬奖鍝嶆晥鐜?
+ 鏂规硶閲岄潰闇€瑕佷慨鏀圭殑鍐呭鎵嶉渶瑕侀攣锛岄攣鐨勫お澶氾紝娴垂璧勬簮

## 姝婚攣
### 浜х敓姝婚攣鐨勫繀瑕佹潯浠?
+ 浜掓枼鏉′欢锛氫竴涓祫婧愭瘡娆″彧鑳借涓€涓繘绋嬩娇鐢?
+ 璇锋眰淇濇寔鏉′欢锛氫竴涓繘绋嬪洜璇锋眰璧勬簮鑰岄樆濉炴椂锛屽鏂硅幏寰楃殑璧勬簮淇濇寔涓嶆斁
+ 涓嶅墺澶烘潯浠讹細杩涚▼宸茶幏寰楃殑璧勬簮锛屽湪鏈娇鐢ㄥ畬涔嬪墠涓嶈兘寮鸿鍓ュず
+ 寰幆绛夊緟鏉′欢锛氳嫢骞茶繘绋嬩箣闂村舰鎴愪竴绉嶅ご灏剧浉杩炵殑寰幆绛夊緟璧勬簮鍏崇郴

```java
package com.jie.syn;

// 澶氫釜绾跨▼鐩镐簰鎶辩潃瀵规柟闇€瑕佺殑璧勬簮锛岀劧鍚庡舰鎴愬兊鎸?
public class DeadLock {
    public static void main(String[] args) {
        Makeup makeup = new Makeup(0,"name1");
        Makeup makeup2 = new Makeup(1,"name2");

        new Thread(makeup).start();
        new Thread(makeup2).start();
    }

}

// 闀滃瓙
class Mirror{}

//鍙ｇ孩
class Lipstice{}

class Makeup extends Thread{
    int count;    //鑾峰緱鐨勭姸鎬?
    String name;  //鑾峰緱鐨勪汉鍚?

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

    // 闇€瑕佺殑璧勬簮鍙湁涓€绉嶏紝鐢╯tatic鏉ヤ繚璇佸彧鏈変竴浠?
    static Mirror mirror = new Mirror();
    static Lipstice lipstice = new Lipstice();

    private void makeup() throws InterruptedException {
        if(count == 0){
            synchronized(mirror){
                System.out.println(this.name+"閿佷綇浜嗛暅瀛?);
                Thread.sleep(1000);
                synchronized(lipstice){
                    System.out.println(this.name+"閿佷綇浜嗗彛绾?);
                }
            }
        }else{
            synchronized(lipstice){
                System.out.println(this.name+"閿佷綇浜嗗彛绾?);
                Thread.sleep(2000);
                synchronized(mirror){
                    System.out.println(this.name+"閿佷綇浜嗛暅瀛?);
                }
            }
        }
    }
}
```

## Lock(閿?
+ 閫氳繃鏄惧紡瀹氫箟鍚屾閿佸璞℃潵瀹炵幇鍚屾銆傚悓姝ラ攣浣跨敤Lock瀵硅薄鍏呭綋
+ java.util.concurrent.lock.Lock鎺ュ彛鏄帶鍒跺涓嚎绋嬪鍏变韩璧勬簮杩涜璁块棶鐨勫伐鍏枫€傞攣鎻愪緵浜嗗鍏变韩璧勬簮鐨勭嫭鍗犺闂紝姣忔鍙兘鏈変竴涓嚎绋嬪Lock瀵硅薄鍔犻攣锛岀嚎绋嬪紑濮嬭闂叡浜祫婧愪箣鍓嶅簲鍏堣幏寰桳ock瀵硅薄
+ ReentrantLock 绫诲疄鐜颁簡Lock锛屽畠鎷ユ湁涓巗ynchronized鐩稿悓鐨勫苟鍙戝拰鍐呭瓨璇箟锛屽湪瀹炵幇瀹夊叏鐨勬帶鍒朵腑锛屾瘮杈冨父鐢ㄧ殑鏄疪eentrantLock锛屽彲浠ユ樉绀哄姞閿侊紝閲婃斁閿?

```java
package com.jie.syn;


import java.util.concurrent.locks.ReentrantLock;

//娴嬭瘯Lock閿?
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

    //瀹氫箟Lock閿?
    private final ReentrantLock lock = new ReentrantLock();


    @Override
    public void run() {
        while (true) {
            try {
                lock.lock();  //鍔犻攣
                if (ticketNums > 0) {
                    try {
                        Thread.sleep(100);
                    } catch (InterruptedException e) {
                        throw new RuntimeException(e);
                    }
                    System.out.println("鑾峰緱浜? + ticketNums--);
                }else {
                    break;
                }
            }finally {
                lock.unlock();  //瑙ｉ攣
            }
        }
    }
}
```

## synchronized涓嶭ock鐨勬瘮杈?
+ Lock鏄樉寮忔閿侊紙鎵嬪姩寮€鍚拰鍏抽棴锛塻ynchronized鏄殣寮忛攣锛屽嚭浜嗕綔鐢ㄥ煙鑷姩閲婃斁
+ Lock鍙湁浠ｇ爜鍧楁湁閿侊紝synchronized鏈変唬鐮佸潡閿佸拰鏂规硶閿?
+ 浣跨敤Lock閿侊紝JVM灏嗚姳璐硅緝灏戠殑鏃堕棿鏉ヨ皟搴︾嚎绋嬶紝鎬ц兘鏇村ソ銆傚苟涓斿叿鏈夋洿濂界殑鎵╁睍鎬?

# 绾跨▼閫氫俊
## 绾跨▼涓В鍐崇嚎绋嬮€氫俊鐨勬柟娉?
+ wait()锛氳〃绀虹嚎绋嬩竴鐩村湪绛夊緟锛岀洿鍒板叾浠栫嚎绋嬮€氱煡锛屼笌sleep涓嶅悓锛屼細閲婃斁閿?
+ wait(long  timeout)锛氭寚瀹氱瓑寰呯殑姣鏁?
+ notify()锛氬敜閱掍竴涓浜庣瓑寰呯姸鎬佺殑绾跨▼
+ notifyAll()锛氬敜閱掑悓涓€涓璞′笂鎵€鏈夎皟鐢╳ait()鏂规硶鐨勭嚎绋嬶紝浼樺厛绾у埆楂樼殑绾跨▼浼樺厛璋冨害
+ 娉ㄦ剰锛氬潎鏄疧bject绫荤殑鏂规硶锛岄兘鍙兘鍦ㄥ悓姝ユ柟娉曟垨鑰呭悓姝ヤ唬鐮佸揩涓娇鐢紝鍚﹀垯浼氭姏鍑哄紓甯窱IIegaIMonitorStateException

## 绠＄悊娉?
```java
package com.jie.syn;

// 娴嬭瘯锛氱敓浜ц€呮秷璐硅€呮ā鍨?->鍒╃敤缂撳啿鍖鸿В鍐筹細绠＄▼娉?
public class TestPC {
    public static void main(String[] args) {
        SynContainer container = new SynContainer();

        new Productor(container).start();
        new Consumer(container).start();
    }
}

//鐢熶骇鑰?
class Productor extends Thread {
    SynContainer container;

    public Productor(SynContainer container) {
        this.container = container;
    }
    
    // 鐢熶骇
    public void run() {
        for (int i = 0; i < 100; i++) {
            container.push(new Chicken(i));
            System.out.println("鐢熶骇浜? + i+ "鍙浮");
        }
    }

}


//娑堣垂鑰?
class Consumer extends Thread {
    SynContainer container;
    public Consumer(SynContainer container) {
        this.container = container;
    }

    public void run() {
        for (int i = 0; i < 100; i++) {
            System.out.println("娑堣垂浜?->"+ container.pop().id+"鍙浮");

        }
    }
    
    

}

//浜у搧
class Chicken {
    int id; //浜у搧缂栧彿
    public Chicken(int id) {
        this.id = id;
    }
}

// 缂撳啿鍖?
class SynContainer{

    // 闇€瑕佷竴涓鍣ㄥぇ灏?
    Chicken[] chickens = new Chicken[10];
    //瀹瑰櫒璁℃暟鍣?
    int count = 0;



    // 闇€瑕佺敓浜ц€呮斁鍏ヤ骇鍝?
    public synchronized void push(Chicken chicken) {
        // 濡傛灉瀹瑰櫒婊′簡锛屽氨闇€瑕佺瓑寰呮秷璐硅€呮秷璐?
        if (count == chickens.length) {
            // 閫氱煡娑堣垂鑰呮秷璐癸紝鐢熶骇鑰呮秷璐?
            try {
                this.wait();
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }

        // 濡傛灉娌℃湁婊★紝灏遍渶瑕佷涪鍏ヤ骇鍝?
        chickens[count] = chicken;
        count++;

        // 鍙互閫氱煡 娑堣垂鑰呮秷璐逛簡
        this.notifyAll();
    }
    public synchronized Chicken pop() {
        // 鍒ゆ柇娑堣垂鑰呰兘鍚︽秷璐?
        if (count == 0) {
            try {
                this.wait();
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
            //绛夊緟鐢熶骇鑰呯敓浜э紝娑堣垂鑰呯瓑寰?
        }
        //濡傛灉鍙互娑堣垂
        count--;
        Chicken chicken = chickens[count];

        //鍚冨畬浜嗭紝閫氱煡鐢熶骇鑰呯敓浜?
        this.notifyAll();
        return chicken;
    }
}
```

## 淇″彿鐏硶
```java
package com.jie.syn;

// 鐢熶骇鑰呮秷璐硅€呴棶棰橈細淇″彿鐏硶
public class TestPC2 {
    public static void main(String[] args) {
        TV tv = new TV();
        new Player(tv).start();
        new Watcher(tv).start();
    }
}

// 鐢熶骇鑰?->婕斿憳
class Player extends Thread {
    TV tv;
    public Player(TV tv) {
        this.tv = tv;
    }

    public void run() {
        for (int i = 0; i < 20; i++) {
            if (i % 2 == 0) {
                this.tv.play("蹇箰澶ф湰钀?);
            }else{
                this.tv.play("鎶栭煶锛氳褰曠編濂界敓娲?);
            }
        }
    }
}

// 娑堣垂鑰?->瑙備紬
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

// 浜у搧-->鑺傜洰
class TV {
    // 婕斿憳琛ㄦ紨 瑙備紬绛夊緟
    // 瑙備紬瑙傜湅 婕斿憳绛夊緟
    String voice; //琛ㄦ紨鐨勮妭鐩?
    boolean flag = true;

    // 琛ㄦ紨
    public synchronized void play(String voice) {
        if (!flag) {
            try {
                this.wait();
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }
        System.out.println("婕斿憳琛ㄦ紨浜? + voice);
        // 閫氱煡瑙備紬瑙傜湅
        this.notifyAll(); //閫氱煡鍞ら啋
        this.voice = voice;

        this.flag = !this.flag;
    }


    // 瑙傜湅
    public synchronized void watce() {
        if (flag) {
            try {
                this.wait();
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }
        System.out.println("瑙傜湅浜? + voice);
        // 閫氱煡婕斿憳琛ㄦ紨
        this.notifyAll();
        this.flag = !this.flag;
    }
}

```

# 绾跨▼姹?
## 浣跨敤绾跨▼姹?
+ 绾跨▼姹犵浉鍏矨PI锛?ExecutorService鍜孍xecutors
+ ExecutorService锛氱湡姝ｇ殑绾跨▼姹犳帴鍙ｏ紝甯哥敤瀛愮被ThreadPoolExecutor
+ Executors锛氬伐鍏风被锛岀嚎绋嬫睜鐨勫伐鍘傜被锛岀敤浜庡垱寤哄苟杩斿洖涓嶅悓绫诲瀷鐨勭嚎绋嬫睜

```java
package com.jie.syn;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

// 娴嬭瘯绾跨▼姹?
public class TestPool {
    public static void main(String[] args) {
        // 1. 鍒涘缓绾跨▼姹?
        // newFixedThreadPool 鍙傛暟涓猴細绾跨▼姹犲ぇ灏?
        ExecutorService service = Executors.newFixedThreadPool(10);

        service.execute(new MyThread());
        service.execute(new MyThread());
        service.execute(new MyThread());
        service.execute(new MyThread());

        // 2.鍏抽棴杩炴帴
        service.shutdown();
    }
}

class MyThread extends Thread {
    public void run() {
        System.out.println(Thread.currentThread().getName());
    }
}
```
', NOW());
SET @last_note_id = LAST_INSERT_ID();

INSERT INTO 
ote (uthor_id, 	itle, content, created_at)
VALUES (1004, 'JavaScript', '# 蹇€熷叆闂?
## 寮曞叆JavaScript
+ 鍐呴儴鏍囩

```javascript
// <!--  script 鏍囩鍐咃紝鍐欏叆JavaScript浠ｇ爜  -->
<script>
  alert(''Hello Wold'')
</script>
```

+ 澶栭儴寮曞叆

abs.js

```javascript
alert(''hello world'')
```

test.html

```html
<script src="../js/vendor/qj.js"></script>
```

## 鍩烘湰璇硶濡傚叆闂?
```plain
<script>
  // 瀹氫箟鍙橀噺  鍙橀噺绫诲瀷 鍙橀噺鍚?= 鍙橀噺鍊硷紱
  var score = 2;
  // 鏉′欢鎺у埗
  if (score>60 && score < 70) {
    alert("60~70");
  } else if (score>70 && score < 80){
    alert("70~80")
  } else {
    alert("other")
  }

  // console.log(score) 鍦ㄦ祻瑙堝櫒鐨勬帶鍒跺彴鎵撳嵃锛?sout
</script>
```

## 鏁版嵁绫诲瀷
鏁板€硷紝鏂囨湰锛屽浘褰紝闊抽锛岃棰?.....

**鍙橀噺**

JavaScript涓墍鏈夌殑鍙橀噺浣跨敤var

**number**

js涓嶅尯灏忔暟鍜屾暣鏁帮紝 number

```plain
123  // 鏁存暟
123.1 // 娴偣鏁?
1.123e3 // 绉戝璁℃暟娉?
-99  // 澶嶆暟
NaN // not a number
Infinity // 琛ㄧず鏃犻檺澶?
```

**瀛楃涓?*

''abc''   "abc"

**甯冨皵鍊?*

true false

**涓?* **鎴?闈?*

&&  ||  锛?

**姣旇緝杩愮畻绗?*

```plain
=   // 璧嬪€?
==  // 绛変簬 绫诲瀷涓嶄竴鏍凤紝鍊间竴鏍?缁撴灉涓簍rue
===  // 缁濆绛変簬 绫诲瀷涓€鏍凤紝 鍊间竴鏍?缁撴灉涓簍rue
```

NaN===NaNo  杩欎釜涓庢墍鏈夌殑鏁板€奸兘鐩哥瓑锛屽寘鎷嚜宸?

`console.log((1/3)===(1-2/3))`

灏介噺閬垮厤浣跨敤娴偣鏁拌繘琛岃繍绠楋紝瀛樺湪绮惧害闂

`Math.abs((1/3)===(1-2/3))<0.00000000001`

**null 鍜?undefined**

+ null  绌?
+ undefined   鏈畾涔?

**鏁扮粍**

JS涓笉闇€瑕佸繀椤绘槸鐩稿悓绫诲瀷

`var arr = [1, 2, 3, 4, ''hello'', ''str'']`

鍙栨暟缁勪笅鏍?濡傛灉瓒婄晫浜?灏变細undefined

**瀵硅薄**

瀵硅薄鏄ぇ鎷彿锛屾暟缁勬槸涓嫭鍙?

姣忎釜灞炴€у繀椤荤敤閫楀彿闅斿紑锛屾渶鍚庝竴涓笉闇€瑕佹坊鍔?

```javascript
var person = {
  name: "suibian",
  age: 3,
  tags: [''js'', ''java'', ''web, ''...'']
}
```

鍙栧璞＄殑鍊?

```javascript
person.name
person.age
```

## 涓ユ牸妫€鏌ユā寮?
```plain
<script>
  ''user strict''
  // ''user strict''; 涓ユ牸妫€鏌ユā寮忥紝棰勯槻JavaScript鐨勯殢鎰忔€у€掔疆浜х敓鐨勪竴浜涢棶棰?
  // 蹇呴』鍐欏湪JavaScript绗竴琛?
  // 灞€閮ㄥ彉閲忓缓璁娇鐢?let 鍘诲畾涔?
  // 鍏ㄥ眬鍙橀噺
  i = 1;
  // 灞€閮ㄥ彉閲?
  let i = 1;
</script>
```

# 鏁版嵁绫诲瀷
## 瀛楃涓?
+ 姝ｅ父瀛楃涓蹭娇鐢ㄥ崟寮曞彿鎴栧弻寮曞彿鍖呰９
+ 娉ㄦ剰杞箟瀛楃  \
    - \''
    - \n
    - \t
    - \u####    unicode缂栫爜
    - \x     ascll 瀛楃
+ 澶氳瀛楃涓茬紪鍐?

```javascript
var msg = `
    hello
    world
    浣犲ソya
    浣犲ソ`
```

+ 妯＄増瀛楃涓?

```javascript
let name = "suibian";
let age = 3;
let msg = `浣犲ソ锛?{name}`
console.log(msg)
```

+ 瀛楃涓查暱搴?

```javascript
str.lenght
```

+ 瀛楃涓茬殑鍙彉鎬э紝涓嶅彲鍙?
+ 澶у皬鍐欒浆鎹?
    - student.toUpperCase()  杞ぇ鍐?
    - student.toLowerCase()   杞皬鍐?
+ student.indexOf(''t'')  鑾峰彇瀛楃浣嶇疆/绱㈠紩
+ student.substring(1,3)  鎴彇瀛楃涓?宸﹂棴鍙冲紑 

## 鏁扮粍
+ Array鍙互鍖呭惈浠绘剰鐨勬暟鎹被鍨?
    - var arr = [1, 2, 3, ''b'', ''string'']  // 閫氳繃涓嬫爣鍙栧€煎拰璧嬪€?
    - arr[2] ;
    - arr[3] = 1;
+ 闀垮害
    - arr.length
    - 濡傛灉缁檃rr.length 璧嬪€硷紝鏁扮粍澶у皬浼氬彂鐢熷彉鍖栵紝濡傛灉璧嬪€艰繃灏忥紝鍏冪礌浼氫涪澶?
+ indexOf()   閫氳繃鍏冪礌鑾峰緱涓嬫爣绱㈠紩
    - 瀛楃涓茬殑"1"  鍜?鏁板€?1 涓嶄竴鏍?
+ slice()  鎴彇Array鐨勪竴閮ㄥ垎锛岃繑鍥炰竴涓柊鐨勬暟缁? 绫讳技浜嶴tring涓殑substring
+ push锛宲op
    - push()锛氬帇鍏ュ埌灏鹃儴
    - pop()锛氬脊鍑哄熬閮ㄧ殑涓€涓厓绱?
+ unshift()锛宻hift() 澶撮儴
    - unshift()锛氬帇鍏ュ埌澶撮儴
    - shift()锛氬脊鍑哄ご閮ㄧ殑涓€涓厓绱?
+ 鎺掑簭 sort()
+ 鍏冪礌鍙嶈浆 reverse()
+ concat() 鎷兼帴
    - arr.concat([1, 2, 3])
    - 骞舵病鏈変慨鏀规暟缁勶紝鍙繑鍥炴柊鐨勬暟缁?
+ 杩炴帴绗oin()
    - 鎵撳嵃鎷兼帴鏁扮粍锛屼娇鐢ㄧ壒瀹氱殑瀛楃涓茶繛鎺?
    - var arr = [''a'', ''b'', ''c'']
    - arr.join(''-'')
    - ''a-b-c''
+ 澶氱淮鏁扮粍

## 瀵硅薄
+ 鑻ュ共涓敭鍊煎

```javascript
var 瀵硅薄鍚?= {
  灞炴€у悕: 灞炴€у€?
  灞炴€у悕: 灞炴€у€?
  灞炴€у悕: 灞炴€у€?
}
```

+ js涓璞★紝{...}琛ㄧず涓€涓璞°€傞敭鍊煎鎻忚堪淇℃伅xxx锛歺xx锛屽涓睘鎬т娇鐢ㄩ€楀彿闅斿紑锛屾渶鍚庝竴涓睘鎬т笉鍔犻€楀彿锛?
+ JavaScript涓殑鎵€鏈夐敭閮芥槸瀛楃涓诧紝鍊兼槸浠绘剰瀵硅薄锛?
+ 瀵硅薄璧嬪€?
    - person.name = "json";
+ 浣跨敤涓€涓笉瀛樺湪鐨勫璞″睘鎬э紝涓嶄細鎶ラ敊 锛?undefined
+ 鍔ㄦ€佸垹闄ゅ璞″睘鎬э紝閫氳繃delete鍒犻櫎瀵硅薄鐨勫睘鎬?
    - delete person.name
+ 鍔ㄦ€佺殑娣诲姞锛岀洿鎺ョ粰鏂扮殑灞炴€ф坊鍔犲€煎嵆鍙?
    - person.name = "haha"
+ 鍒ゆ柇灞炴€у€兼槸鍚﹀湪杩欎釜瀵硅薄涓? xxx  in xxx
+ 鍒ゆ柇涓€涓睘鎬ф槸鍚︽槸杩欎釜瀵硅薄鑷韩鎷ユ湁鐨刪asOwnProperty()
    - person.hasOwnProperty("name")

## 娴佺▼鎺у埗
+ if鍒ゆ柇

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

+ while寰幆锛岄伩鍏嶆寰幆

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

+ for寰幆

```javascript
var age = 3;
for (let i = 1; i< 1; i++){
  console.log();
}



```

+ forEach() 寰幆

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
    console.log("瀛樺湪");
    console.log(arr[num]);
  }
}

```

## Map 鍜?Set
map

```javascript
var map = new Map([[''zhangsan'':  100], [''lisi'': 92]]);

var name = map.get(''zhangsan''); // 鏍规嵁key鑾峰彇value
map.set(''admin'': 123);  //鏂板鎴栦慨鏀?
map.delete("zhangsan"); // 鍒犻櫎
```

set锛氭棤搴忎笉閲嶅鐨勯泦鍚?

```javascript
set.add(3);   // 娣诲姞
set.delete(1);   // 鍒犻櫎
console.log(set.has(3));  // 鏄惁鍖呭惈鏌愪釜鍏冪礌

```

## Interator
閬嶅巻鏁扮粍

```javascript
var arr = [2, 3, 4];
for (let x of arr){
  console.log(x);
}
```

閬嶅巻Map

```javascript
var map = new Map([[''zhangsan'':  100], [''lisi'': 92]]);

for (let x of map){
  console.log(x);
}
```

閬嶅巻set

```javascript
var set = new Set([3, 1, 4]);
for (let x of set){
  console.log(x);
}
```

# 鍑芥暟
## 鍑芥暟鐨勫畾涔?
### 瀹氫箟鏂瑰紡1
缁濆鍊煎嚱鏁?

```javascript
function abs(x){
  if(x>0){
    return x;
  }else{
    return -x;
  }
}
```

涓€鏃︽墽琛宺eturn浠ｈ〃鏂规硶缁撴潫锛岃繑鍥炵粨鏋滐紒

濡傛灉娌℃湁鎵цreturn锛屽嚱鏁版墽琛屽畬涔熶細杩斿洖缁撴灉锛寀ndefined



### 瀹氫箟鏂瑰紡2
```javascript
var abs = function(x){
  if(x>0){
    return x;
  }else{
    return -x;
  }
}
```

function(x){...} 杩欐槸涓€涓尶鍚嶅嚱鏁帮紝浣嗘槸鍙互鎶婄粨鏋滆祴鍊肩粰abs锛岄€氳繃abs灏卞彲浠ヨ皟鐢ㄥ嚱鏁?

### 璋冪敤鍑芥暟
abs(10) //10

abs(-10) //10

### 鍙傛暟闂
JavaScript鍙互浼犻€掍换鎰忎釜鍙傛暟锛屼篃鍙互涓嶄紶閫掑弬鏁?

鍙傛暟杩涙潵鏄惁瀛樺湪鐨勯棶棰橈紵

鍋囪涓嶅瓨鍦ㄥ弬鏁板浣曞鐞?

```javascript
<script>
  var abs = function (x){
  // 鎵嬪姩鎶涘嚭寮傚父鏉ュ垽鏂?
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

鍋囪瀛樺湪澶氫釜鍙傛暟濡備綍澶勭悊

**arguments**

鏄竴涓猨s鍏嶈垂璧犻€佺殑鍏抽敭瀛楋細浠ｈ〃浼犻€掓墍鏈夊弬鏁帮紝鏄竴涓暟缁?

```javascript
for (var i = 0; i<arguments.length; i++){
        console.log(arguments[i]);
      }
```

**rest 鑾峰彇鍙彉闀垮弬鏁?*

```javascript
    function aaa(a, b,...rest){
      console.log(a);
      console.log(b);
      console.log(rest);
    }
```

## 鍙橀噺鐨勪綔鐢ㄥ煙
### 鍑芥暟鍐呭彉閲?
鍦↗avaScript涓紝var瀹氫箟鍙橀噺瀹為檯鏄湁浣滅敤鍩熺殑

鍋囪鍦ㄥ嚱鏁颁綋涓０鏄庯紝鍒欏湪鍑芥暟浣撳涓嶅彲浠ヤ娇鐢?

```javascript
function qjS(){
  var x = 1;
  x = x + 2;
}

x = x + 2;    // Uncaught ReferenceError: x is not defined
```

濡傛灉鍑芥暟浣跨敤浜嗙浉鍚岀殑鍙橀噺鍚嶏紝鍙鍦ㄥ嚱鏁板唴閮紝灏变笉鍐茬獊

鍐呴儴鍑芥暟鍙互璁块棶澶栭儴鍑芥暟鐨勬垚鍛橈紝鍙嶄箣鍒欎笉琛?

鍋囪鍐呴儴鍑芥暟鍜屽閮ㄥ嚱鏁扮殑鍙橀噺閲嶅悕锛?

鍋囪鍦↗avaScript涓嚱鏁版煡鎵惧彉閲忎粠鑷韩鍑芥暟寮€濮嬶紝鐢?鍐?鍚?澶?鏌ユ壘锛屽亣璁惧閮ㄥ瓨鍦ㄨ繖涓悓鍚嶇殑鍑芥暟鍙橀噺锛屽垯鍐呴儴鍑芥暟浼氬睆钄藉閮ㄥ嚱鏁扮殑鍙橀噺

### 鍏ㄥ眬鍑芥暟
```javascript
// 鍏ㄥ眬鍙橀噺
x = 1;

function f(){
  console.log(x);
}

console.log(x);
```

鍏ㄥ眬瀵硅薄window

```javascript
var x = ''xxx'';
alert(x);
alert(window.x)  // 榛樿鎵€鏈夌殑鍏ㄥ眬鍙橀噺锛岄兘浼氳嚜鍔ㄧ粦瀹歸indow瀵硅薄涓?
```

alert() 杩欎釜鍑芥暟鏈韩涔熸槸涓€涓?window 瀵硅薄

```javascript
var x = ''xx'';
window.alert(x);
var old_alert = window.alert;
// 鍙戠幇alert()澶辨晥浜?
window.alert(''123'');

// 鎭㈠
window.alert = old_alert;
window.alert(345);
```

JavaScript瀹為檯涓婂彧鏈変竴涓叏灞€鍙橀噺锛屼换浣曞彉閲?鍑芥暟涔熷彲浠ヨ涓哄彉閲?, 鍋囪娌℃湁鍦ㄥ嚱鏁颁綔鐢ㄨ寖鍥村唴鎵惧埌锛屽氨浼氬悜澶栨煡鎵撅紝濡傛灉鍦ㄥ叏灞€浣滅敤鍩熼兘娌℃湁鎵惧埌锛屾姤閿?RefrenceError



### 瑙勮寖
鐢变簬鎴戜滑鎵€鏈夌殑鍏ㄥ眬鍙橀噺閮戒細缁戝畾鍒版垜浠殑 window涓婂鏋滀笉鍚岀殑js鏂囦欢锛屼娇鐢ㄤ簡鐩稿悓鐨勫叏灞€鍙橀噺锛屽啿绐?>濡備綍鍑忓皯鍐茬獊锛?

```javascript
// 鍞竴鍏ㄥ眬鍙橀噺
var suibian = {};

// 瀹氫箟鍏ㄥ眬鍙橀噺
suibian.name = ''suibian'';
suibian.add = function(a, b){
  return a+b;
}
```

鎶婅嚜宸辩殑浠ｇ爜鍏ㄩ儴鏀惧叆鑷繁瀹氫箟鐨勫敮涓€绌洪棿鍚嶅瓧涓紝闄嶄綆鍏ㄥ眬鍛藉悕鍐茬獊鐨勯棶棰?



### 灞€閮ㄤ綔鐢ㄥ煙 let
```javascript
function aaa(){
  for(var i = 1; i< 100; i++){
    console.log(i);
  }
  console.log(i+1); // 闂锛宨鍑轰簡浣滅敤鍩熻繕鑳戒娇鐢?
}
```

let 鍏抽敭瀛楋紝瑙ｅ喅灞€閮ㄤ綔鐢ㄥ煙鍐茬獊闂

```javascript
function aaa(){
  for(let i = 1; i< 100; i++){
    console.log(i);
  }
  console.log(i+1); // Uncaught ReferenceError:i is not defind
}
```

寤鸿浣跨敤let鍘诲畾涔夊眬閮ㄤ綔鐢ㄥ煙鐨勫彉閲忥紱

### 甯搁噺 const
```javascript
const PI = ''3.14'';  // 鍙鍙橀噺
console.log(PI);
PI = ''123'';  // TypeError锛欰ssignment to constant variable
console.log(PI);
```

## 鏂规硶
#### 瀹氫箟鏂规硶
鏂规硶灏辨槸鎶婂嚱鏁板彂鍦ㄥ璞＄殑閲岄潰锛屽璞″彧鏈変袱涓笢瑗匡細灞炴€у拰鏂规硶

```javascript
var houjie = {
  name: ''houjie'',
  birth: 2004,
  age: function (){
    var now = new Date().getFullYear();
    return now - this.birth;
  },
}

// 灞炴€?
houjie.name
// 鏂规硶锛屼竴瀹氳璁＄畻鎷彿
houjie.age()
```

# 鍐呴儴瀵硅薄
## 鏍囧噯瀵硅薄 typeof
+ "number":
+ "string":
+ "boolean":
+ NaN 鏄?"number"
+ [], {} 鏄?"object"
+ Math.abs ... 鏄?"function"



## Date
### 鍩烘湰浣跨敤
```javascript
var now = new Date()
now.getFullYear()  // 骞?
now.getMonth()    // 鏈?
now.getDay()      //鏄熸湡
now.getHours()    // 鏃?
now.getDate()    // 鏃?
now.getMinutes()  // 鍒?
now.getSeconds()  // 绉?
now.getTime()    //鏃堕棿鎴?
```

### 杞寲
```javascript
now.toLocaleString()
''2025/4/29 20:46:19''
now.toGMTString()
''Tue, 29 Apr 2025 12:46:19 GMT''
```

## JSON
### 浠€涔堟槸JSON
+ JSON(JavaScript Object Notation, js瀵硅薄绠€璋?鏄竴绉嶈交閲忕骇鐨勬暟鎹氦鎹㈡牸寮?
+ 绠€娲佸拰娓呮櫚鐨?*灞傛缁撴瀯**浣垮緱JSON鎴愪负鐞嗘兂鐨勬暟鎹氦鎹㈣瑷€锛?
+ 鏄撲簬浜洪槄璇诲拰缂栧啓锛屽悓鏃朵篃鏄撲簬鏈哄櫒瑙ｆ瀽鍜岀敓鎴愶紝骞舵湁鏁堝湴鎻愬崌缃戠粶浼犺緭鏁堢巼
+ 鍦↗avaScript涓€鍒囩殕涓哄璞★紝浠讳綍js鏀寔鐨勭被鍨嬮兘鍙互鐢↗SON鏉ヨ〃绀?
+ 鏍煎紡
    - 瀵硅薄閮界敤()
    - 鏁扮粍閮界敤[]
    - 鎵€鏈夌殑閿€煎 閮芥槸  key锛歷alue

### JSON瀛楃涓插拰js瀵硅薄鐨勮浆鎹?
```javascript
var user = {
  name: ''name'',
  age: 3,
  sex: ''鐢?
}

// js瀵硅薄杞崲涓篔SON瀛楃涓?
var jsonuser = JSON.stringify(user)

// json瀛楃涓?杞崲涓?js瀵硅薄
var jsuser = JSON.parse(jsonuser)
```

### JSON 鍜?JS 鐨勫尯鍒?


# 闈㈠悜瀵硅薄缂栫▼
## 浠€涔堟槸闈㈠悜瀵硅薄
JavaScript锛?Java锛孋#銆傘€傘€傞潰鍚戝璞★紝javascript鏈変簺鍖哄埆

绫伙細妯＄増 鍘熷瀷 proto

瀵硅薄锛氬叿浣撶殑瀹炰緥

鍦↗avaScript杩欎釜闇€瑕佹崲涓€涓嬫€濈淮

鍘熷瀷锛?

```javascript
var user = {
  name: ''name'',
  age: 3,
  sex: ''鐢?,
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

//缁檚tudent鏂板涓€涓柟娉?
Student.prototype.hello = function (){
  alert(''hello'')
};
```

## class缁ф壙
class 鍏抽敭瀛楋紝鍦‥S6寮曞叆鐨?

1銆佸畾涔変竴涓被銆佸睘鎬с€佹柟娉?

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
    alert(''鎴戞槸涓€涓皬瀛︾敓'')
  }

}
var xiaoming = new Student("xiaoming")
var xiaohong = new XiaoStudent("xiaohong")
```

## 鍘熷瀷閾?
<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1746600701203-1022c6c4-2a14-44a2-84b2-dac3d0b33ff5.png" width="420" title="" crop="0,0,1,1" id="u120ff1a9" class="ne-image">

# 鎿嶄綔BOM瀵硅薄
## 娴忚鍣ㄧ畝浠?
JavaScript鍜屾祻瑙堝櫒鐨勫叧绯?

JavaScript璇炵敓灏辨槸涓轰簡鑳藉璁╁畠鍦ㄦ祻瑙堝櫒涓繍琛岋紒

BOM锛氭祻瑙堝櫒瀵硅薄妯″瀷

+ IE
+ CHrome
+ Safari
+ FireFox  Linux榛樿娴忚鍣?

## window瀵硅薄
window 浠ｈ〃 娴忚鍣ㄧ獥鍙?

```javascript
window.alert(1)  // 寮圭獥
window.innerHeight    // 绐楀彛鍐呴儴楂樺害
window.innerWidth
window.outerHeight   // 绐楀彛澶栭儴楂樺害
window.outerWidth
```

## navigator瀵硅薄
Navigator,灏佽浜嗘祻瑙堝櫒鐨勪俊鎭?

```javascript
navigator.appName   // 搴旂敤鍚?
''Netscape''
navigator.appVersion  // 搴旂敤鐗堟湰鍙?
''5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0''
navigator.userAgent   // 鐢ㄦ埛淇℃伅
''Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0''
navigator.platform   // 绯荤粺鐗堟湰
''Win32''
```

澶у鏁版椂鍊欙紝涓嶄細浣跨敤navigator瀵硅薄锛屽洜涓轰細琚汉涓轰慨鏀癸紒

涓嶅缓璁娇鐢ㄨ繖浜涘睘鎬ф潵鍒ゆ柇鍜岀紪鍐欎唬鐮?

## screen瀵硅薄
浠ｈ〃灞忓箷灏哄

```javascript
screen.height
1200
screen.width
1920
```

## location瀵硅薄 锛堥噸瑕侊級
location 浠ｈ〃褰撳墠椤甸潰鐨刄RL淇℃伅

```javascript
// 灞炴€?
host: "www.baidu.com"  // 涓绘満
href: "https://www.baidu.com/"  // 浣嶇疆
protocol: "https:"  // 鍗忚

// 鏂规硶
location.reload()  // 鍒锋柊缃戦〉
location.assign(''https://blog.kuangstudy.com/'')  // 璁剧疆鏂扮殑浣嶇疆
```

## document瀵硅薄
document浠ｈ〃褰撳墠鐨勯〉闈紝 HTML DOM鏂囨。鏍?

```javascript
document.title
''鐧惧害涓€涓嬶紝浣犲氨鐭ラ亾''
document.title = "鐙傜璇?
''鐙傜璇?
```

鑾峰彇鍏蜂綋鐨勬枃妗ｆ爲鑺傜偣

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

鑾峰彇 cookie

```javascript
document.cookie
''csrftoken=TBv5LaT8knlC3QvC3EtZeZJEiPka0bpM''
```

鍔寔 cookie 鐨勫師鐞?

```javascript
<script src="aaa.js"></script>
<!--鎭舵剰浜哄憳锛氳幏鍙栦綘鐨刢ookie涓婁紶鍒板畠鐨勬湇鍔″櫒-->
```

鏈嶅姟鍣ㄧ鍙互璁剧疆 cookie锛歨ttpOnly



## history瀵硅薄
history浠ｈ〃娴忚鍣ㄧ殑鍘嗗彶璁板綍

```javascript
history.back()   // 缃戦〉鍚庨€€
history.forward()   // 缃戦〉鍓嶈繘
```

# 鎿嶄綔DOM瀵硅薄
## 鏍稿績
娴忚鍣ㄧ綉椤靛氨鏄竴涓狣OM鏍戝舰缁撴瀯

+ 鏇存柊锛氭洿鏂癉OM鑺傜偣
+ 閬嶅巻锛氬緱鍒癉OM鑺傜偣
+ 鍒犻櫎锛氬垹闄や竴涓狣OM鑺傜偣
+ 娣诲姞锛氭坊鍔犱竴涓鐨凞OM鑺傜偣

瑕佹搷浣滀竴涓狣OM鑺傜偣锛屽氨蹇呴』鍏堣幏寰楄繖涓狣OM鑺傜偣

## 鑾峰緱DOM鑺傜偣
```javascript
var h1 =document.getElementsByTagName(''h1'')  //鏍囩鍚?
var p1 = document.getElementById("p1")   // id閫夋嫨鍣?
var p2 = document.getElementsByClassName("p2")  // 绫婚€夋嫨鍣?
var father = document.getElementById("father")

var chidrens = father.children;  // 鑾峰彇鐖惰妭鐐逛笅鐨勬墍鏈夊瓙鑺傜偣
father.firstChild;
father.lastChild;
```

杩欐槸鍘熺敓浠ｇ爜锛屼箣鍚庝娇鐢╦Query



## 鏇存柊鑺傜偣
```javascript
<div id="id1"></div>
<script>
  var id1 = document.getElementById("id1");
  // 鎿嶄綔鏂囨湰
  id1.innerText = "123";  // 淇敼鏂囨湰鐨勫€?
  id1.innerHTML = ''<strong>123</strong>''; //鍙互瑙ｆ瀽HTML鏂囨湰鏍囩
  // 鎿嶄綔js
  id1.style.color = ''red'';
  id1.style.fontStyle = "20px";
  id1.style.padding = ''2em'';
</script>
```

## 鍒犻櫎鑺傜偣
姝ラ锛氬厛鑾峰彇 鐖惰妭鐐?锛屽啀閫氳繃鐖惰妭鐐瑰垹闄よ嚜宸?

```html
<body id="father">
  <h1>鏍囬1</h1>
  <p id="p1">p1</p>
  <p class="p2">p2</p>
  <script>
    var p1 = document.getElementById("p1")
    var father = document.getElementById("father")
    var father = p1.parentElement;
    father.removeChild(p1);
    // 鍒犻櫎鏄竴涓姩鎬佺殑杩囩▼
    father.removeChild(father.children[0]);
    father.removeChild(father.children[1]);
    father.removeChild(father.children[2]);
  </script>
</body>
```

## 鎻掑叆鑺傜偣
鑾峰緱浜嗘煇涓狣OM鑺傜偣锛屽亣璁捐繖涓狣OM鑺傜偣鏄┖鐨勶紝閫氳繃innerHTML灏卞彲浠ュ鍔犱竴涓厓绱狅紝濡傛灉杩欎釜DOM宸茬粡瀛樺湪鍏冪礌浜嗭紝浼氫骇鐢熻鐩?

杩藉姞

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
  li.append(js);   // 杩藉姞鍒板悗闈?
</script>
```

鍒涘缓涓€涓柊鐨勬爣绛撅紝瀹炵幇鎻掑叆

```javascript
var newp = document.createElement(''p'');  // 鍒涘缓涓€涓柊鐨勬爣閰?
newp.id = ''newp'';   // 璁剧疆id
newp.innerText = ''linux'';  // 娣诲姞鏂囨湰
li.append(newp);  // 灏嗗垱寤哄ソ鐨勬爣绛炬坊鍔犲埌div涓?

// 鍒涘缓涓€涓爣绛維tyle
var MyStyle = document.createElement(''style'');
MyStyle.setAttribute(''type'', ''text/css'');
MyStyle.innerHTML = ''body{background-color: chartreuse}'';
document.getElementsByTagName(''head'')[0].appendChild(MyStyle);
```

insertBefore  鏌ュ埌璋佺殑鍓嶉潰

```javascript
<script>
  var ee = document.getElementById(''ee'');
  var js = document.getElementById(''js'');
  var list = document.getElementById(''list'');
  // 瑕佸寘鍚殑鑺傜偣锛屽皢瑕佹彃鍏ユ柊鐨勮妭鐐规斁鍦ㄨ皝鐨勫墠闈nsertBefore(newNode, targetNode)
  list.insertBefore(js, ee);
</script>
```

# 鎿嶄綔琛ㄥ崟锛堥獙璇侊級
## 琛ㄥ崟鏄粈涔?form DOM鏍?
+ 鏂囨湰妗?text
+ 涓嬫媺妗?<select>
    - open
+ 鍗曢€夋   radio
+ 澶氶€夋   checkbox
+ 闅愯棌鍩?   hidden
+ 瀵嗙爜妗?   password
+ .......

琛ㄥ崟鐨勭洰鐨?锛氭彁浜や俊鎭?



## 鑾峰緱鎻愪氦鐨勪俊鎭?
```html
<form action="#" method="post">
  <p>
    <span>鐢ㄦ埛鍚嶏細</span><input type="text" id="username">
  </p>
  <p>
    <span>鎬у埆锛?/span>
    <input type="radio" name="sex" value="man" id="boy"> 鐢?
    <input type="radio" name="sex" value="woman" id="girl"> 濂?
  </p>
</form>

<script>
  var input_text = document.getElementById(''username'')
  var boy_radio = document.getElementById(''boy'')
  var girl_radio = document.getElementById(''girl'')
  // 鑾峰緱杈撳叆妗嗙殑鍊?
  input_text.value;
  // 淇敼杈撳叆妗嗙殑鍊?
  input_text.value = "123";

  // 瀵逛簬鍗曢€夋锛屽閫夋 绛夊浐瀹氱殑鍊硷紝boy_radio.value鍙兘鍙栧埌褰撳墠鐨勫€?
  boy_radio.checked;   // 鏌ョ湅杩斿洖鐨勭粨鏋滄槸鍚︿负true 濡傛灉鏄痶rue锛屽垯琚€変腑
  girl_radio.children;
</script>
```

## 鍓嶇md5鍔犲瘑
```html
<head>
  <meta charset="UTF-8">
  <title>Title</title>
  <script src="https://cdn.bootcss.com/blueimp-md5/2.10.0/js/md5.min.js"></script>
</head>
<body>
<!--
  琛ㄥ崟缁戝畾浜嬩欢
  onsubmit=缁戝畾涓€涓彁浜ゆ娴嬬殑鍑芥暟锛?true  false
  灏嗚繖涓粨鏋滆繑鍥炵粰琛ㄥ崟锛屼娇鐢╫nsubmit鎺ユ敹
  onsubmit="return aaa()"
-->
<form action="#" method="post" onsubmit="return aaa()">
  <p>
    <span>鐢ㄦ埛鍚嶏細</span><input type="text" id="username">
  </p>
  <p>
    <span>瀵嗙爜锛?/span><input type="password" id="input-password">
  </p>

  <input type="hidden" id="md5-password" name="password">

  <button type="button">鎻愪氦</button>
</form>

<script>
  function aaa() {
    var username = document.getElementById(''username'');
    var pwd = document.getElementById(''input-password'');
    var md5pwd = document.getElementById(''md5-password'')

    md5pwd.value = md5(pwd.value);
    // 鍙互鍒ゆ柇琛ㄥ崟鍐呭 true 鍙互鎻愪氦锛?false 闃绘鎻愪氦
    return false;

  }
</script>
```

# jQuery   
鏂囨。宸ュ叿绔欙細[http://jquery3.yanzhihui.com/index.html](http://jquery3.yanzhihui.com/index.html)

## 鍒濊瘑jQuery
jQuery搴擄紝閲岄潰瀛樺湪澶ч噺鐨凧avaScript鍑芥暟

寮曞叆jQuery   浣跨敤 jQuery 鍔犻€熷櫒

```html
 <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.5.1.min.js"></script>
```

鍙埌瀹樼綉涓嬭浇

鍏紡锛?$(slector).action()

+ slector锛氶€夋嫨鍣? CSS涓殑閫夋嫨鍣ㄩ兘鑳界敤
+ action锛氫簨浠?

鏂囨。宸ュ叿绔欙細[http://jquery3.yanzhihui.com/index.html](http://jquery3.yanzhihui.com/index.html)

## 浜嬩欢
+ 榧犳爣浜嬩欢  mouse
+ 閿洏浜嬩欢

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
  杩欓噷绉诲姩榧犳爣
</div>

<script>
  // 褰撶綉椤靛姞杞藉畬姣曚箣鍚庯紝鐩稿簲浜嬩欢
  $(function (){
    $(''#divMove'').mousemove(function (e){
      $(''#mouseMove'').text(''x'' + e.pageX+'',y'' + e.pageY)
    })
  });
</script>
</body>
</html>
```

## 鎿嶄綔DOM', NOW());
SET @last_note_id = LAST_INSERT_ID();

INSERT INTO 
ote (uthor_id, 	itle, content, created_at)
VALUES (1004, 'Nginx', '### 馃摎 Nginx 娣卞叆瀛︿範绗旇锛堟墿灞曠増锛?
#### 0. 鏍稿績閰嶇疆缁撴瀯鍥為【
Nginx 鐨勯厤缃湰璐ㄤ笂鏄竴涓?*鏍戝舰涓婁笅鏂囷紙Context锛?*缁撴瀯锛?

+ **Main锛堝叏灞€锛?*锛氬奖鍝嶅叏灞€鐨勬寚浠ゃ€?
+ **Events**锛氶厤缃綉缁滆繛鎺ョ浉鍏崇殑鍙傛暟銆?
+ **HTTP**锛氬鐞?HTTP 璇锋眰鐨勬牳蹇冨潡锛屽唴閮ㄥ彲鍖呭惈澶氫釜 `Server`銆?
+ **Server**锛氬畾涔変竴涓櫄鎷熶富鏈猴紙缃戠珯锛夛紝鍐呴儴鍙寘鍚涓?`Location`銆?
+ **Location**锛氬畾涔夌壒瀹氱殑 URL 鍖归厤瑙勫垯鍜屽鐞嗘柟寮忋€?

**鍏抽敭鍘熷垯锛氬瓙涓婁笅鏂囦細缁ф壙鐖朵笂涓嬫枃鐨勯厤缃紝瀛愪笂涓嬫枃鍐呯殑閰嶇疆浼樺厛绾ч珮浜庣埗绾с€?*

---

### 1. 娣卞叆 Location 鍧楋細Nginx 鏈€绮惧鐨勫尮閰嶉€昏緫
`Location` 鏄厤缃腑鏈€甯稿嚭閿欎篃鏈€鏍稿績鐨勫湴鏂癸紝瀹冪殑鍖归厤椤哄簭鍜岃娉曡嚦鍏抽噸瑕併€?

#### 1.1 Location 璇硶绫诲瀷
```nginx
location [淇グ绗 /uri/ {
    # 澶勭悊閫昏緫
}
```

| 淇グ绗?| 鍚箟 | 绀轰緥 |
| :--- | :--- | :--- |
| **鏃?* | **鍓嶇紑鍖归厤**锛屼互鎸囧畾 URI 寮€澶村嵆鍖归厤 | `location /api` 鍖归厤 `/api`, `/api/v1`, `/api/user` |
| **=** | **绮剧‘鍖归厤**锛屽繀椤诲畬鍏ㄤ竴鑷达紝鍖归厤鍚庣珛鍗冲仠姝?| `location = /` 鍙尮閰嶆牴璺緞 `/` |
| **~** | **姝ｅ垯鍖归厤锛堝尯鍒嗗ぇ灏忓啓锛?* | `location ~ ^/images/.*\.(jpg|png)$` |
| **~******* | **姝ｅ垯鍖归厤锛堜笉鍖哄垎澶у皬鍐欙級** | `location ~* \.html$` 鍖归厤 `.html`, `.HTML` |
| **^~** | **浼樺厛鍓嶇紑鍖归厤**锛屽鏋滃尮閰嶄笂锛屽垯涓嶅啀杩涜鍚庣画鐨勬鍒欏尮閰?| `location ^~ /static/` 鍖归厤 `/static/` 涓嬬殑鎵€鏈夎姹?|


#### 1.2 鏍稿績鍖归厤椤哄簭锛堥潰璇曢珮棰戯紒锛?
1. **绮惧噯鍖归厤**锛氭鏌ユ槸鍚︽湁 `=` 淇グ绗︾殑 Location銆傛湁鍒欏尮閰嶏紝鍋滄鎼滅储銆?
2. **浼樺厛鍓嶇紑鍖归厤**锛氭鏌ユ槸鍚︽湁 `^~` 淇グ绗︾殑 Location銆傚鏋滄湁鍖归厤锛屽垯**绔嬪嵆浣跨敤锛屽苟鍋滄鍚庣画鐨勬鍒欏尮閰?*銆?
3. **姝ｅ垯鍖归厤**锛氭寜鐓ч厤缃枃浠朵腑**鍑虹幇鐨勯『搴?*锛屼緷娆″尮閰嶅甫鏈?`~` 鎴?`~*` 鐨勬鍒?Location銆備竴鏃﹀尮閰嶏紝**绔嬪嵆浣跨敤锛屽仠姝㈡悳绱?*銆?
4. **鏅€氬墠缂€鍖归厤**锛氬鏋滄墍鏈夋鍒欓兘娌″尮閰嶄笂锛屽垯鎵惧嚭鎵€鏈夋櫘閫氱殑鍓嶇紑鍖归厤锛堟棤淇グ绗︼級涓紝**鍖归厤搴︽渶楂橈紙鍗砋RL鏈€闀匡級** 鐨勯偅涓€?

**璁板繂鍙ｈ瘈锛?*`=`** 浼樺厛锛?*`^~`** 鍏舵锛屾鍒欐寜椤哄簭锛屽墠缂€鐪嬫渶闀裤€?*

---

### 2. Nginx 鍐呯疆鍙橀噺澶у叏锛堝父鐢ㄧ簿閫夛級
鍙橀噺鏄?Nginx 瀹炵幇鍔ㄦ€侀厤缃殑鐏甸瓊銆傛帉鎻¤繖浜涘彉閲忥紝浣犲氨鑳藉湪 `proxy_pass`銆乣rewrite`銆乣access_log` 涓父鍒冩湁浣欍€?

| 鍙橀噺鍚?| 浣滅敤 | 绀轰緥鍊?|
| :--- | :--- | :--- |
| `$remote_addr` | 瀹㈡埛绔?IP 鍦板潃 | `192.168.1.100` |
| `$proxy_add_x_forwarded_for` | 鑾峰彇瀹㈡埛绔湡瀹?IP 閾撅紙X-Forward-For锛?| `100.2.3.4, 10.0.0.1` |
| `$host` | 璇锋眰涓殑涓绘満澶达紙Host锛夛紝灏忓啓 | `www.example.com` |
| `$request_uri` | 瀹屾暣鐨勫師濮嬭姹?URI锛堝寘鍚弬鏁帮級 | `/api/user?id=1` |
| `$uri` | 褰撳墠璇锋眰鐨?URI锛堜笉鍖呭惈鍙傛暟锛屽凡瑙ｇ爜锛?| `/api/user` |
| `$args` | URL 涓殑鏌ヨ鍙傛暟锛堥棶鍙峰悗鐨勯儴鍒嗭級 | `id=1` |
| `$scheme` | 璇锋眰鍗忚锛宍http` 鎴?`https` | `https` |
| `$http_<name>` | 鑾峰彇浠绘剰璇锋眰澶寸殑鍊硷紙灏忓啓+杩炲瓧绗﹀彉涓嬪垝绾匡級 | `$http_user_agent` 鑾峰彇 User-Agent |
| `$status` | 鍝嶅簲鐨?HTTP 鐘舵€佺爜 | `200`, `404` |
| `$request_time` | 璇锋眰澶勭悊鐨勬€昏€楁椂锛堢锛?| `0.023` |


---

### 3. 楂樼骇閰嶇疆鎶€宸?
#### 3.1 鍔ㄩ潤鍒嗙锛堟彁鍗囨€ц兘锛?
灏嗛潤鎬佽祫婧愶紙鍥剧墖銆丆SS銆丣S锛夌洿鎺ョ敱 Nginx 澶勭悊锛屼笉杞彂缁欏悗绔簲鐢ㄦ湇鍔″櫒銆?

```nginx
server {
    listen 80;
    server_name static.example.com;

    # 鍖归厤鍥剧墖銆佹牱寮忋€佽剼鏈枃浠?
    location ~* \.(gif|jpg|jpeg|png|css|js|ico)$ {
        root /var/www/static;  # 鏈湴纾佺洏璺緞
        expires 30d;           # 璁剧疆娴忚鍣ㄧ紦瀛樿繃鏈熸椂闂翠负30澶?
        access_log off;        # 鍏抽棴璁块棶鏃ュ織锛屽噺灏戠鐩業O
    }
}
```

#### 3.2 甯歌閿欒椤甸潰浼橀泤灞曠ず
鑷畾涔?404銆?00 绛夐敊璇〉闈紝鎻愬崌鐢ㄦ埛浣撻獙銆?

```nginx
server {
    # ...
    error_page 404 /404.html;
    error_page 500 502 503 504 /50x.html;
    
    location = /404.html {
        root /usr/share/nginx/html;
        internal; # 鍙厑璁稿唴閮ㄩ噸瀹氬悜锛岄槻姝㈢敤鎴风洿鎺ヨ闂?
    }
}
```

#### 3.3 璺ㄥ煙閰嶇疆锛圕ORS锛?
鍦ㄥ墠鍚庣鍒嗙鏋舵瀯涓紝寰€寰€闇€瑕佸湪缃戝叧灞傝В鍐宠法鍩熼棶棰樸€?

```nginx
location /api/ {
    # 鍏佽鐨勫煙鍚嶏紝鐢熶骇鐜涓嶅缓璁敤 *
    add_header ''Access-Control-Allow-Origin'' ''*'';
    # 鍏佽鐨勮姹傛柟娉?
    add_header ''Access-Control-Allow_Methods'' ''GET, POST, OPTIONS'';
    # 鍏佽鐨勮姹傚ご
    add_header ''Access-Control-Allow-Headers'' ''DNT,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type,Range,Authorization'';
    # 棰勬璇锋眰锛圤PTIONS锛夌紦瀛樻椂闂?
    add_header ''Access-Control-Max-Age'' 1728000;
    
    # 濡傛灉鏄妫€璇锋眰锛岀洿鎺ヨ繑鍥?04鎴愬姛
    if ($request_method = ''OPTIONS'') {
        return 204;
    }
    proxy_pass http://backend_server;
}
```

---

### 4. 鎬ц兘璋冧紭瀹炶返
#### 4.1 鏂囦欢浼犺緭浼樺寲
```nginx
http {
    # 寮€鍚浂鎷疯礉锛屽噺灏戝唴鏍告€佸埌鐢ㄦ埛鎬佺殑鏁版嵁鎷疯礉锛屾瀬澶ф彁鍗囬潤鎬佹枃浠朵紶杈撴晥鐜?
    sendfile on;
    
    # 寮€鍚?TCP_NOPUSH锛圠inux锛夋垨 TCP_CORK锛屼笌 sendfile 閰嶅悎锛屽湪涓€涓綉缁滃寘涓彂閫佸搷搴斿ご鍜屾枃浠跺唴瀹?
    tcp_nopush on;
    
    # 寮€鍚?TCP_NODELAY锛岀鐢?Nagle 绠楁硶锛屽皬鏁版嵁鍖呭彲浠ュ疄鏃跺彂閫侊紙閫傜敤浜庨暱杩炴帴锛?
    tcp_nodelay on;
}
```

#### 4.2 缂撳啿涓庤秴鏃惰缃?
閫傚綋璋冩暣浠ｇ悊缂撳啿鍜岃秴鏃讹紝鍙互闃叉鍚庣鎱㈡湇鍔℃嫋鍨?Nginx銆?

```nginx
http {
    # 浠ｇ悊缂撳啿鍖哄ぇ灏?
    proxy_buffering on;
    proxy_buffer_size 4k;
    proxy_buffers 8 4k;
    proxy_busy_buffers_size 8k;

    # 杩炴帴瓒呮椂锛堝崟浣嶏細绉掞級
    proxy_connect_timeout 3s;   # 涓庡悗绔缓绔嬭繛鎺ョ殑瓒呮椂
    proxy_read_timeout 30s;     # 璇诲彇鍚庣鍝嶅簲鐨勮秴鏃?
    proxy_send_timeout 30s;     # 鍙戦€佽姹傚埌鍚庣鐨勮秴鏃?
}
```

#### 4.3 Gzip 鍘嬬缉浼樺寲
```nginx
http {
    gzip on;                   # 寮€鍚帇缂?
    gzip_vary on;              # 鍦ㄥ搷搴斿ご涓坊鍔?Vary: Accept-Encoding锛屽憡鐭ヤ唬鐞嗘湇鍔″櫒缂撳瓨鐗堟湰
    gzip_min_length 1k;        # 灏忎簬 1KB 鐨勬枃浠朵笉鍘嬬缉
    gzip_comp_level 6;         # 鍘嬬缉绾у埆 1-9锛岀骇鍒秺楂樺帇缂╂瘮瓒婇珮锛屼絾娑堣€?CPU
    gzip_types text/plain text/css text/xml text/javascript application/json application/javascript image/svg+xml;
    # 瀵瑰浘鐗囥€佽棰戠瓑宸插帇缂╂枃浠朵笉杩涜浜屾鍘嬬缉
    gzip_disable "msie6";      # 绂佺敤 IE6 鐨?gzip
}
```

---

### 5. 鏃ュ織绠＄悊涓庡垎鏋?
鏃ュ織鏄帓鏌ラ棶棰樼殑鍒╁櫒锛屽悎鐞嗙殑鏃ュ織鏍煎紡鑳芥瀬澶ф彁鍗囨帓閿欐晥鐜囥€?

#### 5.1 鑷畾涔夋棩蹇楁牸寮?
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

+ `buffer=32k flush=5s`锛氬皢鏃ュ織鍐欏叆鍐呭瓨缂撳啿鍖猴紝姣?绉掓垨缂撳啿婊℃椂鍐嶅埛鍏ョ鐩橈紝鑳芥樉钁楁彁鍗囬珮骞跺彂涓嬬殑鎬ц兘銆?
+ **涓婃父鏃堕棿鍙橀噺**锛歚upstream_connect_time`, `upstream_header_time`, `upstream_response_time` 鏄帓鏌ュ悗绔€ц兘鐡堕鐨勭粷浣虫寚鏍囥€?

---

### 6. Nginx 鐨勯珮鍙敤涓庡姩鎬侀厤缃?
#### 6.1 Nginx + Keepalived 瀹炵幇楂樺彲鐢?
Nginx 鏈韩娌℃湁涓诲鍒囨崲鍔熻兘锛岄€氬父閰嶅悎 **Keepalived** 瀹炵幇涓ゅ彴 Nginx 鏈嶅姟鍣ㄧ殑 VIP锛堣櫄鎷烮P锛夋紓绉伙紝涓€鍙颁负 Master锛屼竴鍙颁负 Backup锛屽綋 Master 瀹曟満鏃?VIP 鑷姩鍒囨崲鍒?Backup锛屼繚璇佺綉鍏冲眰鐨勯珮鍙敤銆?

#### 6.2 鍔ㄦ€?Upstream锛堢涓夋柟鏂规锛?
鍘熺敓 Nginx 鐨?`upstream` 閰嶇疆鍙樻洿闇€瑕?`nginx -s reload`锛堜細鏈夌煭鏆備腑鏂級銆傚湪寰湇鍔″満鏅笅锛屽彲浠ヤ娇鐢?**Nginx Plus**锛堝晢涓氱増锛夋垨 **OpenResty / APISIX**锛屽畠浠敮鎸侀€氳繃 API 鍔ㄦ€佷慨鏀逛笂娓告湇鍔″櫒鍒楄〃锛屾棤闇€閲嶅惎銆?

---

### 7. 瀹夊叏鍔犲浐瑕佺偣
+ `server_tokens off;`锛氬叧闂増鏈彿鏄剧ず锛岄槻姝㈡敾鍑昏€呴€氳繃鐗堟湰婕忔礊鏀诲嚮銆?
+ `client_max_body_size 10M;`锛氶檺鍒跺鎴风璇锋眰浣撳ぇ灏忥紝闃叉澶ф枃浠舵敾鍑汇€?
+ `limit_conn_zone $binary_remote_addr zone=addr:10m;` 閰嶅悎 `limit_conn addr 100;`锛氶檺鍒跺悓涓€ IP 鐨勫苟鍙戣繛鎺ユ暟銆?
+ `limit_req_zone $binary_remote_addr zone=req:10m rate=10r/s;` 閰嶅悎 `limit_req zone=req burst=20 nodelay;`锛氶檺鍒惰姹傞鐜囷紝瀹炵幇鍩虹鐨勯槻鍒蜂繚鎶ゃ€?

---

杩欎唤鎵╁睍绗旇瑕嗙洊浜?Nginx 浠庡熀纭€鍒拌繘闃剁殑鏍稿績鍐呭銆傚鏋滄兂鍐嶆繁鍏ユ煇涓叿浣撴柟鍚戯紝姣斿 **Lua 鑴氭湰鎵╁睍锛圤penResty锛?* 鎴?**涓?K8s Ingress 鐨勯泦鎴?*锛屽彲浠ラ殢鏃跺憡璇夋垜銆傪煒?
', NOW());
SET @last_note_id = LAST_INSERT_ID();

INSERT INTO 
ote (uthor_id, 	itle, content, created_at)
VALUES (1004, 'SprngCloud', '### 馃摎 Nginx 娣卞叆瀛︿範绗旇锛堟墿灞曠増锛?
#### 0. 鏍稿績閰嶇疆缁撴瀯鍥為【
Nginx 鐨勯厤缃湰璐ㄤ笂鏄竴涓?*鏍戝舰涓婁笅鏂囷紙Context锛?*缁撴瀯锛?

+ **Main锛堝叏灞€锛?*锛氬奖鍝嶅叏灞€鐨勬寚浠ゃ€?
+ **Events**锛氶厤缃綉缁滆繛鎺ョ浉鍏崇殑鍙傛暟銆?
+ **HTTP**锛氬鐞?HTTP 璇锋眰鐨勬牳蹇冨潡锛屽唴閮ㄥ彲鍖呭惈澶氫釜 `Server`銆?
+ **Server**锛氬畾涔変竴涓櫄鎷熶富鏈猴紙缃戠珯锛夛紝鍐呴儴鍙寘鍚涓?`Location`銆?
+ **Location**锛氬畾涔夌壒瀹氱殑 URL 鍖归厤瑙勫垯鍜屽鐞嗘柟寮忋€?

**鍏抽敭鍘熷垯锛氬瓙涓婁笅鏂囦細缁ф壙鐖朵笂涓嬫枃鐨勯厤缃紝瀛愪笂涓嬫枃鍐呯殑閰嶇疆浼樺厛绾ч珮浜庣埗绾с€?*

---

### 1. 娣卞叆 Location 鍧楋細Nginx 鏈€绮惧鐨勫尮閰嶉€昏緫
`Location` 鏄厤缃腑鏈€甯稿嚭閿欎篃鏈€鏍稿績鐨勫湴鏂癸紝瀹冪殑鍖归厤椤哄簭鍜岃娉曡嚦鍏抽噸瑕併€?

#### 1.1 Location 璇硶绫诲瀷
```nginx
location [淇グ绗 /uri/ {
    # 澶勭悊閫昏緫
}
```

| 淇グ绗?| 鍚箟 | 绀轰緥 |
| :--- | :--- | :--- |
| **鏃?* | **鍓嶇紑鍖归厤**锛屼互鎸囧畾 URI 寮€澶村嵆鍖归厤 | `location /api` 鍖归厤 `/api`, `/api/v1`, `/api/user` |
| **=** | **绮剧‘鍖归厤**锛屽繀椤诲畬鍏ㄤ竴鑷达紝鍖归厤鍚庣珛鍗冲仠姝?| `location = /` 鍙尮閰嶆牴璺緞 `/` |
| **~** | **姝ｅ垯鍖归厤锛堝尯鍒嗗ぇ灏忓啓锛?* | `location ~ ^/images/.*\.(jpg|png)$` |
| **~******* | **姝ｅ垯鍖归厤锛堜笉鍖哄垎澶у皬鍐欙級** | `location ~* \.html$` 鍖归厤 `.html`, `.HTML` |
| **^~** | **浼樺厛鍓嶇紑鍖归厤**锛屽鏋滃尮閰嶄笂锛屽垯涓嶅啀杩涜鍚庣画鐨勬鍒欏尮閰?| `location ^~ /static/` 鍖归厤 `/static/` 涓嬬殑鎵€鏈夎姹?|


#### 1.2 鏍稿績鍖归厤椤哄簭锛堥潰璇曢珮棰戯紒锛?
1. **绮惧噯鍖归厤**锛氭鏌ユ槸鍚︽湁 `=` 淇グ绗︾殑 Location銆傛湁鍒欏尮閰嶏紝鍋滄鎼滅储銆?
2. **浼樺厛鍓嶇紑鍖归厤**锛氭鏌ユ槸鍚︽湁 `^~` 淇グ绗︾殑 Location銆傚鏋滄湁鍖归厤锛屽垯**绔嬪嵆浣跨敤锛屽苟鍋滄鍚庣画鐨勬鍒欏尮閰?*銆?
3. **姝ｅ垯鍖归厤**锛氭寜鐓ч厤缃枃浠朵腑**鍑虹幇鐨勯『搴?*锛屼緷娆″尮閰嶅甫鏈?`~` 鎴?`~*` 鐨勬鍒?Location銆備竴鏃﹀尮閰嶏紝**绔嬪嵆浣跨敤锛屽仠姝㈡悳绱?*銆?
4. **鏅€氬墠缂€鍖归厤**锛氬鏋滄墍鏈夋鍒欓兘娌″尮閰嶄笂锛屽垯鎵惧嚭鎵€鏈夋櫘閫氱殑鍓嶇紑鍖归厤锛堟棤淇グ绗︼級涓紝**鍖归厤搴︽渶楂橈紙鍗砋RL鏈€闀匡級** 鐨勯偅涓€?

**璁板繂鍙ｈ瘈锛?*`=`** 浼樺厛锛?*`^~`** 鍏舵锛屾鍒欐寜椤哄簭锛屽墠缂€鐪嬫渶闀裤€?*

---

### 2. Nginx 鍐呯疆鍙橀噺澶у叏锛堝父鐢ㄧ簿閫夛級
鍙橀噺鏄?Nginx 瀹炵幇鍔ㄦ€侀厤缃殑鐏甸瓊銆傛帉鎻¤繖浜涘彉閲忥紝浣犲氨鑳藉湪 `proxy_pass`銆乣rewrite`銆乣access_log` 涓父鍒冩湁浣欍€?

| 鍙橀噺鍚?| 浣滅敤 | 绀轰緥鍊?|
| :--- | :--- | :--- |
| `$remote_addr` | 瀹㈡埛绔?IP 鍦板潃 | `192.168.1.100` |
| `$proxy_add_x_forwarded_for` | 鑾峰彇瀹㈡埛绔湡瀹?IP 閾撅紙X-Forward-For锛?| `100.2.3.4, 10.0.0.1` |
| `$host` | 璇锋眰涓殑涓绘満澶达紙Host锛夛紝灏忓啓 | `www.example.com` |
| `$request_uri` | 瀹屾暣鐨勫師濮嬭姹?URI锛堝寘鍚弬鏁帮級 | `/api/user?id=1` |
| `$uri` | 褰撳墠璇锋眰鐨?URI锛堜笉鍖呭惈鍙傛暟锛屽凡瑙ｇ爜锛?| `/api/user` |
| `$args` | URL 涓殑鏌ヨ鍙傛暟锛堥棶鍙峰悗鐨勯儴鍒嗭級 | `id=1` |
| `$scheme` | 璇锋眰鍗忚锛宍http` 鎴?`https` | `https` |
| `$http_<name>` | 鑾峰彇浠绘剰璇锋眰澶寸殑鍊硷紙灏忓啓+杩炲瓧绗﹀彉涓嬪垝绾匡級 | `$http_user_agent` 鑾峰彇 User-Agent |
| `$status` | 鍝嶅簲鐨?HTTP 鐘舵€佺爜 | `200`, `404` |
| `$request_time` | 璇锋眰澶勭悊鐨勬€昏€楁椂锛堢锛?| `0.023` |


---

### 3. 楂樼骇閰嶇疆鎶€宸?
#### 3.1 鍔ㄩ潤鍒嗙锛堟彁鍗囨€ц兘锛?
灏嗛潤鎬佽祫婧愶紙鍥剧墖銆丆SS銆丣S锛夌洿鎺ョ敱 Nginx 澶勭悊锛屼笉杞彂缁欏悗绔簲鐢ㄦ湇鍔″櫒銆?

```nginx
server {
    listen 80;
    server_name static.example.com;

    # 鍖归厤鍥剧墖銆佹牱寮忋€佽剼鏈枃浠?
    location ~* \.(gif|jpg|jpeg|png|css|js|ico)$ {
        root /var/www/static;  # 鏈湴纾佺洏璺緞
        expires 30d;           # 璁剧疆娴忚鍣ㄧ紦瀛樿繃鏈熸椂闂翠负30澶?
        access_log off;        # 鍏抽棴璁块棶鏃ュ織锛屽噺灏戠鐩業O
    }
}
```

#### 3.2 甯歌閿欒椤甸潰浼橀泤灞曠ず
鑷畾涔?404銆?00 绛夐敊璇〉闈紝鎻愬崌鐢ㄦ埛浣撻獙銆?

```nginx
server {
    # ...
    error_page 404 /404.html;
    error_page 500 502 503 504 /50x.html;
    
    location = /404.html {
        root /usr/share/nginx/html;
        internal; # 鍙厑璁稿唴閮ㄩ噸瀹氬悜锛岄槻姝㈢敤鎴风洿鎺ヨ闂?
    }
}
```

#### 3.3 璺ㄥ煙閰嶇疆锛圕ORS锛?
鍦ㄥ墠鍚庣鍒嗙鏋舵瀯涓紝寰€寰€闇€瑕佸湪缃戝叧灞傝В鍐宠法鍩熼棶棰樸€?

```nginx
location /api/ {
    # 鍏佽鐨勫煙鍚嶏紝鐢熶骇鐜涓嶅缓璁敤 *
    add_header ''Access-Control-Allow-Origin'' ''*'';
    # 鍏佽鐨勮姹傛柟娉?
    add_header ''Access-Control-Allow_Methods'' ''GET, POST, OPTIONS'';
    # 鍏佽鐨勮姹傚ご
    add_header ''Access-Control-Allow-Headers'' ''DNT,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type,Range,Authorization'';
    # 棰勬璇锋眰锛圤PTIONS锛夌紦瀛樻椂闂?
    add_header ''Access-Control-Max-Age'' 1728000;
    
    # 濡傛灉鏄妫€璇锋眰锛岀洿鎺ヨ繑鍥?04鎴愬姛
    if ($request_method = ''OPTIONS'') {
        return 204;
    }
    proxy_pass http://backend_server;
}
```

---

### 4. 鎬ц兘璋冧紭瀹炶返
#### 4.1 鏂囦欢浼犺緭浼樺寲
```nginx
http {
    # 寮€鍚浂鎷疯礉锛屽噺灏戝唴鏍告€佸埌鐢ㄦ埛鎬佺殑鏁版嵁鎷疯礉锛屾瀬澶ф彁鍗囬潤鎬佹枃浠朵紶杈撴晥鐜?
    sendfile on;
    
    # 寮€鍚?TCP_NOPUSH锛圠inux锛夋垨 TCP_CORK锛屼笌 sendfile 閰嶅悎锛屽湪涓€涓綉缁滃寘涓彂閫佸搷搴斿ご鍜屾枃浠跺唴瀹?
    tcp_nopush on;
    
    # 寮€鍚?TCP_NODELAY锛岀鐢?Nagle 绠楁硶锛屽皬鏁版嵁鍖呭彲浠ュ疄鏃跺彂閫侊紙閫傜敤浜庨暱杩炴帴锛?
    tcp_nodelay on;
}
```

#### 4.2 缂撳啿涓庤秴鏃惰缃?
閫傚綋璋冩暣浠ｇ悊缂撳啿鍜岃秴鏃讹紝鍙互闃叉鍚庣鎱㈡湇鍔℃嫋鍨?Nginx銆?

```nginx
http {
    # 浠ｇ悊缂撳啿鍖哄ぇ灏?
    proxy_buffering on;
    proxy_buffer_size 4k;
    proxy_buffers 8 4k;
    proxy_busy_buffers_size 8k;

    # 杩炴帴瓒呮椂锛堝崟浣嶏細绉掞級
    proxy_connect_timeout 3s;   # 涓庡悗绔缓绔嬭繛鎺ョ殑瓒呮椂
    proxy_read_timeout 30s;     # 璇诲彇鍚庣鍝嶅簲鐨勮秴鏃?
    proxy_send_timeout 30s;     # 鍙戦€佽姹傚埌鍚庣鐨勮秴鏃?
}
```

#### 4.3 Gzip 鍘嬬缉浼樺寲
```nginx
http {
    gzip on;                   # 寮€鍚帇缂?
    gzip_vary on;              # 鍦ㄥ搷搴斿ご涓坊鍔?Vary: Accept-Encoding锛屽憡鐭ヤ唬鐞嗘湇鍔″櫒缂撳瓨鐗堟湰
    gzip_min_length 1k;        # 灏忎簬 1KB 鐨勬枃浠朵笉鍘嬬缉
    gzip_comp_level 6;         # 鍘嬬缉绾у埆 1-9锛岀骇鍒秺楂樺帇缂╂瘮瓒婇珮锛屼絾娑堣€?CPU
    gzip_types text/plain text/css text/xml text/javascript application/json application/javascript image/svg+xml;
    # 瀵瑰浘鐗囥€佽棰戠瓑宸插帇缂╂枃浠朵笉杩涜浜屾鍘嬬缉
    gzip_disable "msie6";      # 绂佺敤 IE6 鐨?gzip
}
```

---

### 5. 鏃ュ織绠＄悊涓庡垎鏋?
鏃ュ織鏄帓鏌ラ棶棰樼殑鍒╁櫒锛屽悎鐞嗙殑鏃ュ織鏍煎紡鑳芥瀬澶ф彁鍗囨帓閿欐晥鐜囥€?

#### 5.1 鑷畾涔夋棩蹇楁牸寮?
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

+ `buffer=32k flush=5s`锛氬皢鏃ュ織鍐欏叆鍐呭瓨缂撳啿鍖猴紝姣?绉掓垨缂撳啿婊℃椂鍐嶅埛鍏ョ鐩橈紝鑳芥樉钁楁彁鍗囬珮骞跺彂涓嬬殑鎬ц兘銆?
+ **涓婃父鏃堕棿鍙橀噺**锛歚upstream_connect_time`, `upstream_header_time`, `upstream_response_time` 鏄帓鏌ュ悗绔€ц兘鐡堕鐨勭粷浣虫寚鏍囥€?

---

### 6. Nginx 鐨勯珮鍙敤涓庡姩鎬侀厤缃?
#### 6.1 Nginx + Keepalived 瀹炵幇楂樺彲鐢?
Nginx 鏈韩娌℃湁涓诲鍒囨崲鍔熻兘锛岄€氬父閰嶅悎 **Keepalived** 瀹炵幇涓ゅ彴 Nginx 鏈嶅姟鍣ㄧ殑 VIP锛堣櫄鎷烮P锛夋紓绉伙紝涓€鍙颁负 Master锛屼竴鍙颁负 Backup锛屽綋 Master 瀹曟満鏃?VIP 鑷姩鍒囨崲鍒?Backup锛屼繚璇佺綉鍏冲眰鐨勯珮鍙敤銆?

#### 6.2 鍔ㄦ€?Upstream锛堢涓夋柟鏂规锛?
鍘熺敓 Nginx 鐨?`upstream` 閰嶇疆鍙樻洿闇€瑕?`nginx -s reload`锛堜細鏈夌煭鏆備腑鏂級銆傚湪寰湇鍔″満鏅笅锛屽彲浠ヤ娇鐢?**Nginx Plus**锛堝晢涓氱増锛夋垨 **OpenResty / APISIX**锛屽畠浠敮鎸侀€氳繃 API 鍔ㄦ€佷慨鏀逛笂娓告湇鍔″櫒鍒楄〃锛屾棤闇€閲嶅惎銆?

---

### 7. 瀹夊叏鍔犲浐瑕佺偣
+ `server_tokens off;`锛氬叧闂増鏈彿鏄剧ず锛岄槻姝㈡敾鍑昏€呴€氳繃鐗堟湰婕忔礊鏀诲嚮銆?
+ `client_max_body_size 10M;`锛氶檺鍒跺鎴风璇锋眰浣撳ぇ灏忥紝闃叉澶ф枃浠舵敾鍑汇€?
+ `limit_conn_zone $binary_remote_addr zone=addr:10m;` 閰嶅悎 `limit_conn addr 100;`锛氶檺鍒跺悓涓€ IP 鐨勫苟鍙戣繛鎺ユ暟銆?
+ `limit_req_zone $binary_remote_addr zone=req:10m rate=10r/s;` 閰嶅悎 `limit_req zone=req burst=20 nodelay;`锛氶檺鍒惰姹傞鐜囷紝瀹炵幇鍩虹鐨勯槻鍒蜂繚鎶ゃ€?

---

杩欎唤鎵╁睍绗旇瑕嗙洊浜?Nginx 浠庡熀纭€鍒拌繘闃剁殑鏍稿績鍐呭銆傚鏋滄兂鍐嶆繁鍏ユ煇涓叿浣撴柟鍚戯紝姣斿 **Lua 鑴氭湰鎵╁睍锛圤penResty锛?* 鎴?**涓?K8s Ingress 鐨勯泦鎴?*锛屽彲浠ラ殢鏃跺憡璇夋垜銆傪煒?
', NOW());
SET @last_note_id = LAST_INSERT_ID();

INSERT INTO 
ote (uthor_id, 	itle, content, created_at)
VALUES (1004, '常用类', '# Object绫?
## getClass鏂规硶
+ 杩斿洖绫诲璞?

```java
Class c1 = s1.getClass();
```

## hashCode()鏂规硶
+ public int hashCode(){}
+ 杩斿洖璇ュ璞＄殑娉曠郴鐮佸€?
+ 鍝堝笇鍊兼牴鎹璞″湴鍧€鎴栧瓧绗︿覆鎴栨暟瀛椾娇鐢╤ash绠楁硶璁＄畻鍑烘潵鐨刬nt绫诲瀷鐨勬暟鍊?
+ 涓€鑸儏鍐典笅鐩稿悓瀵硅薄杩斿洖鐩稿悓鐨勫搱甯岀爜鍊?

```java
s1.hashCode();
```

## toString()鏂规硶
+ public String toString(){}
+ 杩斿洖璇ュ璞＄殑瀛楃涓诧紙琛ㄧず褰㈠紡锛?
+ 鍙互鏍规嵁绋嬪簭闇€姹傝鐩栬鏂规硶锛屽锛氬睍绀哄璞＄殑鍚勪釜灞炴€у€?

```java
s1.toString();
```

## equals()鏂规硶
+ public boolean equals(Object obj){}
+ 榛樿瀹炵幇涓?this == obj)锛屾瘮杈冧袱涓璞″湴鍧€鏄惁鐩稿悓
+ 鍙繘琛岃鐩栵紝姣旇緝涓や釜瀵硅薄鐨勫唴瀹规槸鍚︾浉鍚?

```java
s1.equals(s2);
```

# String绫?
## 姒傝堪
+ 瀛楃涓叉槸甯搁噺锛屽垱寤轰箣鍚庝笉鍙敼鍙?
+ 瀛楃涓插瓧闈㈠€煎瓨鍌ㄥ湪瀛楃涓叉睜涓紝涔熷彲鍏变韩
+ String s = "Hello"; 浜х敓涓€涓璞★紝瀛楃涓叉睜涓瓨鍌?
+ String s = new String("Hello"); 浜х敓涓や釜瀵硅薄锛屽爢锛屽悆涓瓨鍌ㄤ竴涓?

## 甯哥敤鏂规硶
+ public int length()锛氳繑鍥炲瓧绗︿覆鐨勯暱搴?
+ public char charAt(int index)锛氭牴鎹笅鏍囪幏鍙栧瓧绗︿覆
+ public boolean contains(String str)锛氬垽鏂綋鍓嶅瓧绗︿覆涓槸鍚﹀寘鍚玸tr
+ pulic char[] toCharArray()锛氬皢瀛楃涓茶浆涓烘暟缁?
+ public int indexOf(String str)锛氭煡鎵緎tr棣栨鍑虹幇鐨勪笅鏍囷紝瀛樺湪鍒欒繑鍥炶涓嬫爣锛屼笉瀛樺湪锛屽垯杩斿洖-1
+ public int lastIndexOf(String str)锛氭煡鎵緎tr鍦ㄥ瓧绗︿覆涓渶鍚庝竴娆″嚭鐜扮殑涓嬫爣
+ public String trim()锛氬幓鎺夊瓧绗︿覆鍓嶅悗鐨勭┖鏍?
+ public String toUpperCase()锛氬皢灏忓啓杞崲鎴愬ぇ鍐?
+ public String endWith(String str)锛氬垽鏂瓧绗︿覆鏄惁浠tr缁撳熬
+ public String replace(char oldChar,char newChar)锛氬皢灏卞瓧绗︿覆杞崲涓烘柊瀛楃涓?
+ public String[] split(String str)锛氭牴鎹畇tr鍋氭媶鍒?
', NOW());
SET @last_note_id = LAST_INSERT_ID();

INSERT INTO 
ote (uthor_id, 	itle, content, created_at)
VALUES (1005, 'JavaWeb', '# Tomcat
## 鐢╰omcat鍙戝竷涓€涓綉绔?
灏嗚嚜宸卞啓鐨勭綉绔欙紝鏀惧埌鏈嶅姟鍣紙tomcat锛変腑鎸囧畾鐨剋eb搴旂敤鐨勬枃浠跺す锛坵ebapps锛変笅锛屽氨鍙互璁块棶浜?

缃戠粶搴旇鏈夌殑缁撴瀯

```plain
--webapps: Tomcat鏈嶅姟鍣ㄧ殑web鐩綍
  --ROOT
  --kuangstduy :缃戠珯鐨勭洰褰曞悕
    - WEB-INF
      -classes :java绋嬪簭
      -lib :web搴旂敤鎵€渚濊禆鐨刯ar鍖?
      -web.xml :缃戠珯鐨勯厤缃枃浠?
    -index.html 榛樿鐨勯椤?
    -static
      -css
      -js
      -img
    -......
```

# Servlet
## 缂栧啓涓€涓猄ervlet绋嬪簭
+ 鍒涘缓涓€涓櫘閫氱殑Maven椤圭洰锛屽垹闄rc鏂囦欢
+ 鍒涘缓涓€涓狹odule
    - Module涓彲浠ョ户鎵跨埗椤圭洰涓殑jar鍖?
+ Maven鐜浼樺寲
+ 缂栧啓涓€涓猄ervlet鐨勭▼搴?

```plain
public class HelloServlet extends HttpServlet {

    // 鐢变簬get鎴杙ost鍙兘璇锋眰瀹炵幇鐨勪笉鍚岀殑鏂瑰紡锛屽彲浠ョ浉浜掕皟鐢紝涓氬姟閫昏緫閮戒竴鏍?
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // ServletOutputStream outputStream = resp.getOutputStream();
        PrintWriter out = resp.getWriter();   // 鍝嶅簲娴?

        out.print("Hello Servlet");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
```

+ 缂栧啓Servlet鐨勬槧灏?
    - 涓轰粈涔堥渶瑕佹槧灏勶細鎴戜滑鍐欑殑鏄痡ava绋嬪簭锛岃閫氳繃娴忚鍣ㄨ闂紝鑰屾祻瑙堝櫒闇€瑕侀摼鎺eb鏈嶅姟鍣紝鎵€浠ユ垜浠渶瑕佸湪web鏈嶅姟鍣ㄤ腑娉ㄥ唽鎴戝啓鐨凷ervlet锛岃繕闇€缁欎粬涓€涓祻瑙堝櫒鑳藉璁块棶鐨勮矾寰勶紱

```xml
<web-app>
  <display-name>Archetype Created Web Application</display-name>
  <!--  娉ㄥ唽Servlet-->
  <servlet>
    <servlet-name>hello</servlet-name>
    <servlet-class>com.jie.servlet.HelloServlet</servlet-class>
  </servlet>
  <!-- Servlet璇锋眰鐨勮矾寰?->
  <servlet-mapping>
    <servlet-name>hello</servlet-name>
    <url-pattern>/hello</url-pattern>
  </servlet-mapping>
</web-app>
```

+ 閰嶇疆Tomcat
+ <img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1747377923221-b238db4e-015d-4a31-95fe-4bf1663ef059.png" width="593" title="" crop="0,0,1,1" id="u5044518f" class="ne-image">

## Servlet鍘熺悊
Servlet鏄敱Web鏈嶅姟鍣ㄨ皟鐢紝web鏈嶅姟鍣ㄥ湪鏀跺埌娴忚鍣ㄨ姹備箣鍚庯紝浼氾細

<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1747379394800-f0d62945-270b-4fdf-a886-0081173b9c31.png" width="808.8" title="" crop="0,0,1,1" id="u6d1bf402" class="ne-image">

## Mapping闂
涓€涓猄ervlet鍙互鎸囧畾涓€涓槧灏勮矾寰?

```xml
<servlet-mapping>
        <servlet-name>hello</servlet-name>
        <url-pattern>/hello</url-pattern>
</servlet-mapping>
```

涓€涓猄ervlet鍙互鎸囧畾澶氫釜涓槧灏勮矾寰?

涓€涓猄ervlet鍙互鎸囧畾閫氱敤鏄犲皠璺緞

涓€涓寚瀹氫竴浜涘悗缂€鎴栬€呭墠缂€绛夌瓑鈥︹€?

## getServletContext
### 鍏变韩鏁版嵁
web瀹瑰櫒鍦ㄥ惎鍔ㄧ殑鏃跺€欙紝瀹冧細涓烘瘡涓獁eb绋嬪簭閮藉垱寤轰竴涓搴旂殑ServletContext瀵硅薄锛屽畠浠ｈ〃浜嗗綋鍓嶇殑web搴旂敤锛?

+ 鍏变韩鏁版嵁
    - 鎴戝湪杩欎釜Servlet涓繚瀛樼殑鏁版嵁锛屽彲浠ュ湪鍙︿竴涓猄ervlet涓嬁鍒帮紱
+ 鏀剧疆鏁版嵁鐨勭被

```java
public class HelloServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //        this.getInitParameter("name");   // 鍒濆鍖栧弬鏁?
        //        this.getServletConfig()          // Servlet閰嶇疆
        //        this.getServletContext()         // Servlet涓婁笅鏂?
        ServletContext context = this.getServletContext();
        String name = "jie";    // 鏁版嵁
        // 灏嗕竴涓暟鎹繚瀛樺埌浜哠ervletContext涓紝鍚嶅瓧涓簎sername锛屽彧涓簄ame
        context.setAttribute("username", name);
    }
}
```

+ 璇诲彇鏁版嵁鐨勭被

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

+ 閰嶇疆璺敱

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

+ 娴嬭瘯璁块棶缁撴灉



### 鍒濆鍖栧弬鏁?
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

### 璇锋眰杞彂
```java
public class ServletDemo04 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext context = this.getServletContext();
//        RequestDispatcher requestDispatcher = context.getRequestDispatcher("/damo03");   // 杞彂璇锋眰鐨勮矾寰?
//        requestDispatcher.forward(req, resp);  // 璋冪敤forward瀹炵幇璇锋眰杞彂
        System.out.println("杩涘叆浜嗚繖閲?);
        context.getRequestDispatcher("/damo03").forward(req, resp);
    }
}
```

### 璇诲彇璧勬簮鏂囦欢
Properties

+ 鍦╦ava鐩綍涓嬫柊寤簆roperties
+ 瀛愬晩resources鐩綍涓嬫柊寤簆roperties

鍙戠幇锛氶兘琚墦鍖呯殑浜嗙粺涓€璺緞涓嬶細classes锛屾垜浠織绉拌繖涓矾寰勪负classpath

鎬濊矾锛?

+ 闇€瑕佷竴涓枃浠舵祦锛?

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
### 绠€鍗曞垎绫?
web鏈嶅姟鍣ㄨ繛鎺ユ敹鍒扮殑瀹㈡埛绔殑http璇锋眰锛岄拡瀵硅繖涓姹傦紝鍒嗗埆鍒涘缓涓€涓唬琛ㄨ姹傜殑HttpServletResponse瀵硅薄锛屼唬琛ㄥ搷搴斾竴涓紱

+ 濡傛灉瑕佽幏鍙栧鎴风璇锋眰鏉ョ殑鍙傛暟锛屾壘HttpServletRequest
+ 濡傛湡瀹㈡埛绔搷搴斾竴浜涙秷鎭壘锛欻ttpServletResponse

鍚戞祻瑙堝櫒鍙戦€佹暟鎹殑鏂规硶

```java
ServletOutputStream getOutputStream() throw IOException;
PrintWriter getWriter() throw IOException;
```

璐熻矗鍚戞祻瑙堝櫒鍙戦€佸搷搴斿ご鐨勬柟娉?

鍝嶅簲鐨勭姸鎬佺爜

### 甯歌搴旂敤
1. 鍚戞祻瑙堝櫒杈撳嚭娑堟伅
2. 涓嬭浇鏂囦欢
    1. 瑕佽幏鍙栨枃浠剁殑璺緞
    2. 涓嬭浇鐨勬枃浠跺悕鏄暐锛?
    3. 璁剧疆鍚戝姙娉曡鍒樻祻瑙堝櫒鑳藉鏀寔涓嬭浇鎴戜滑闇€瑕佺殑涓滆タ
    4. 鑾峰彇涓嬭浇鏂囦欢鐨勮緭鍏ユ祦
    5. 鍒涘缓缂撳啿鍖?
    6. 鑾峰彇OutputStream瀵硅薄
    7. 灏咶ileOutputStream鍒楀叆鍒癰uffer缂撳啿鍖?
    8. 浣跨敤OutputStream灏嗙紦鍐插尯涓殑鏁版嵁杈撳嚭鍒板鎴风

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
        // 鑾峰彇涓嬭浇鏂囦欢鐨勮矾寰?
        String realPath = this.getServletContext().getRealPath("1.png");
        // 涓嬭浇鐨勬枃浠跺悕鏄暐锛?
        String fileName = realPath.substring(realPath.lastIndexOf("/") + 1);
        // 璁剧疆鎯冲姙娉曡娴忚鍣ㄦ敮鎸佷笅杞界殑闇€瑕佺殑涓滆タ
        resp.setHeader("Content-Disposition", "attachment; filename=" + fileName);
        // 鑾峰彇涓嬭浇鏂囦欢鐨勮緭鍏ユ祦
        FileInputStream in = new FileInputStream(realPath);
        // 鍒涘缓缂撳啿鍖?
        int len = 0;
        byte[] buffer = new byte[1024];
        // 鑾峰彇杈撳嚭娴佸璞?
        ServletOutputStream out = resp.getOutputStream();
        // 灏咶ileOutputStream娴佸啓鍏ュ埌buffer涓?
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
## 浼氳瘽
**浼氳瘽**锛氱敤鎴锋墦寮€涓€涓祻瑙堝櫒锛岀偣鍑讳簡寰堝瓒呴摼鎺ワ紝璁块棶澶氫釜鏂囨湰璧勬簮锛屽叧闂祻瑙堝櫒锛岃繖涓繃绋嬬О涔嬩负浼氳瘽

**鏈夌姸鎬佸洖璇?*锛氫竴涓悓瀛︽潵杩囨暀瀹わ紝涓嬫鍐嶆潵鏁欏锛屾垜浠細鐭ラ亾杩欎釜鍚屽锛屾浘缁忔潵杩囷紝绉颁箣涓烘湁鐘舵€佸洖璇?

## 淇濆瓨浼氳瘽鐨勪袱绉嶆妧鏈?
**Cookie**

+ 瀹㈡埛绔妧鏈紙鍝嶅簲锛岃姹傦級

session

+ 鏈嶅姟鍣ㄦ妧鏈紝鍒╃敤杩欎釜鎶€鏈紝鍙互淇濇寔鐢ㄦ埛鐨勫洖璇濅俊鎭紝鎴戜滑鍙互鎶婃暟鎹垨淇℃伅鏀惧湪session涓?

甯歌鍦烘櫙锛氱綉绔欑櫥褰曚箣鍚庯紝涓嬫涓嶇敤鍐嶇櫥褰曚簡锛?

## Cookie
1. 浠庤姹備腑鎷垮埌Cookie淇℃伅
2. 鏈嶅姟鍣ㄥ搷搴旂粰瀹㈡埛绔疌ookie

<details class="lake-collapse"><summary id="u2175f3d9"><span class="ne-text">Cookie鏂规硶</span></summary><p id="ua8aab64b" class="ne-p"><span class="ne-text">req.getCookies(); // 鑾峰緱Cookie<br /></span><span class="ne-text">cookie.getName();  // 鑾峰緱Cookie鐨刱ey<br /></span><span class="ne-text">cookie.getValue();  // 鑾峰緱cookie鐨剉alue<br /></span><span class="ne-text">// 鏂板缓涓€涓猚ookie<br /></span><span class="ne-text">new Cookie(&quot;lastLoginTime&quot;, System.currentTimeMillis() + &quot;&quot;);<br /></span><span class="ne-text">Cookie.setMaxAge(24*60*60); // 璁剧疆cookie鐨勬湁鏁堟湡<br /></span><span class="ne-text">resp.addCookie(cookie);  // 鍝嶅簲缁欏鎴风涓€涓狢ookie<br /></span></p></details>
涓€涓綉绔機ookie鏄惁瀛樺湪涓婇檺锛?

+ 涓€涓狢ookie鍙兘淇濆瓨涓€涓俊鎭紱
+ 涓€涓獁eb缃戠珯鐐瑰彲浠ョ粰娴忚鍣ㄥ彂閫佸涓狢ookie锛屾渶澶氬瓨鏀?0涓狢ookie锛?
+ Cookie澶у皬鏈変笂闄?
+ 300涓狢ookie娴忚鍣ㄤ笂闄?

鍒犻櫎Cookie

+ 涓嶈缃湁鏁堟湡锛屽叧闂祻瑙堝櫒锛岃嚜鍔ㄥけ鏁堬紱
+ 璁剧疆鏈夋晥鏈熸椂闂翠负0锛?

缂栫爜瑙ｇ爜

```java
URLEncoder.encode("绉︾枂", "utf-8");
URLDecoder.decoder(cookie.getValue(), "utf-8");
```

## Session
浠€涔堟槸session锛?

+ 鏈嶅姟鍣ㄤ細涓瘡涓€涓敤鎴凤紙娴忚鍣級鍒涘缓涓€涓猻ession
+ 涓€涓猻ession鐙崰涓€涓祻瑙堝櫒锛屽彧瑕佹祻瑙堝櫒娌″叧锛岃繖涓猻ession灏卞瓨鍦?
+ 鐢ㄦ埛鐧诲綍涔嬪悗锛屾暣涓綉绔欓兘鍙互璁块棶锛?-> 淇濆瓨鐢ㄦ埛鐨勪俊鎭紝淇濆瓨璐墿杞︾殑淇℃伅鈥︹€?

session鍜孋ookie鐨勫尯鍒?

+ Cookie鏄妸鐢ㄦ埛鐨勬暟鎹啓缁欑敤鎴风殑娴忚鍣紝娴忚鍣ㄤ繚瀛?
+ session鏄妸鐢ㄦ埛鐨勬暟鎹啓鍒扮敤鎴风嫭鍗爏ession涓紝鏈嶅姟鍣ㄧ淇濆瓨锛坆淇濆瓨閲嶈鐨勪俊鎭紝鍧氬畧鏈嶅姟鍣ㄨ祫婧愮殑娴垂锛?
+ Session瀵硅薄鐢辨湇鍔″垱寤?

浣跨敤鍦烘櫙

+ 淇濆瓨涓€涓櫥褰曠敤鎴风殑淇℃伅
+ 璐墿杞︿俊鎭?
+ 鍦ㄦ暣涓綉绔欎腑缁忓父浣跨敤鐨勬暟鎹紝灏嗕粬浠繚鎸佸湪Session涓?

浣跨敤Session

```java
package com.jie.cookie;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;

import java.io.IOException;

public class SessionDamo01 extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 瑙ｅ喅涔辩爜闂
        req.setCharacterEncoding("GBK");
        resp.setCharacterEncoding("GBK");
        resp.setContentType("text/html;charset=UTF-8");

        // 寰楀埌Session
        HttpSession session = req.getSession();
        // 缁橲ession涓瓨涓滆タ
        session.setAttribute("name", "绉︾枂");

        // 鑾峰彇session鐨刬d
        String id = session.getId();

        // 鍒ゆ柇Session鏄笉鏄柊寤?
        if (session.isNew()) {
            resp.getWriter().write("session is a new,ID:"+id);
        } else {
            resp.getWriter().write("session is a old,ID:"+id);
        }

        // session鍒涘缓鐨勬椂鍊欏仛浜嗕粈涔?
        Cookie cookie = new Cookie("JSESSIONID", id);
        resp.addCookie(cookie);
    }
}

```

浼氳瘽鑷姩杩囨湡

```xml
<!--  璁剧疆session榛樿鐨勬敞閿€鏃堕棿-->
<session-config>
  <!--    浠ュ垎閽熶负鍗曚綅-->
  <session-timeout>1</session-timeout>
</session-config>
```

# JSP
## 浠€涔堟槸JSP
Java Server Pages锛欽ava鏈嶅姟鍣ㄧ椤甸潰锛屼篃鍜孲ervlet涓€鏍凤紝鐢ㄤ簬鍔ㄦ€乄eb鎶€鏈?

鏈€澶х殑鎻愮偣

+ 鍐橨SP灏卞儚鍐橦TML
+ 鍖哄埆
    - HTML鍙兘缁欑敤鎴锋彁渚涢潤鎬佺殑鏁版嵁
    - JSP椤甸潰涓彲浠ュ祵鍏ava浠ｇ爜锛屼负鐢ㄦ埛鎻愪緵鍔ㄦ€佹暟鎹紱

## JSP鍘熺悊
鎬濊矾锛欽SP鍒板簳鏄€庝箞鎵ц鐨?

+ 浠ｇ爜灞傞潰娌＄敤浠讳綍闂
+ 鏈嶅姟鍣ㄥ唴閮ㄥ伐浣?
    - Tomcat涓湁涓€涓獁ork鐩綍
    - IDEA涓娇鐢═omcat鐨勪細鍦↖DEA鐨処DEA涓骇鐢熶竴涓獁ork鐩綍

娴忚鍣ㄥ悜鏈嶅姟鍣ㄥ彂閫佽姹傦紝涓嶇璁块棶浠€涔堣祫婧愶紝鍏跺疄閮芥槸鍦ㄨ闂甋ervlet

jsp鏈€缁堝澹跺彉鎴愪负涓€涓狫ava绫?

jsp鏈川灏辨槸涓€涓猄ervlet

```java
// 鍒濆鍖?
public void _jspInit() {}
// 閿€姣?
public void _jspDestory() {}
// JSPService
public void _jspService(.HttpServletRequest request, HttpServletResponse response)
```

1. 鍒ゆ柇璇锋眰
2. 鍐呯疆浜嗕竴浜涘璞?
3. 杈撳嚭椤甸潰鍓嶅鍔犵殑浠ｇ爜
4. 鍦↗SP椤甸潰涓紝鍙鏄痡ava浠ｇ爜灏变細鍘熷皝涓嶅姩鐨勮緭鍑猴紝濡傛槸HTML浠ｇ爜锛屽氨浼氳杞崲涓篳out.writer("<html>")`

## 鍩虹璇硶
浠讳綍璇█閮芥湁鑷繁鐨勮娉曪紝JSP浣滀负java鎶€鏈殑搴旂敤锛屽畠鎷ユ湁涓€浜涜嚜宸辨墿鍏呯殑璇硶锛宩ava鎵€鏈夌殑璇硶閮芥敮鎸侊紒

JSP琛ㄨ揪寮?

JSP澹版槑

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

jsp澹版槑锛氫細琚紪璇戝埌jsp鐢熸垚鐨刯ava浜嗙被涓紝鍏朵粬鐨勶紝灏变細琚敓鎴愬埌_jspService鏂规硶涓?

鍦╦sp锛屽祵鍏ava浠ｇ爜鍗冲彲锛?

```jsx
<%%>  // 鐗囨
<%= %>  // 琛ㄨ揪寮忚緭鍑轰竴涓€?
<%--  --%>  // 杩欐槸娉ㄩ噴
```

jsp鐨勬敞閲婁笉浼氬湪瀹㈡埛绔樉绀?

## JSP鎸囦护
鑷畾涔夋寚浠ら敊璇?

```jsx
<%--鑷畾涔夐敊璇〉闈?-%>
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

jsp鏍囩

```jsx
// 瀵煎叆鍙︿竴涓枃浠剁殑鍐呭
<jsp:include page="common/header.jsp"/>
```

jsp 璁剧疆EL琛ㄨ揪寮?

```jsx
// true琛ㄧず蹇界暐EL琛ㄨ揪寮?
<%@ page isELIgnored="false" %>
```

## 鍐呯疆鐨?澶у璞?
+ PageContext    // 椤甸潰涓婁笅鏂?
+ Request       // 璇锋眰
+ Response    // 鍝嶅簲
+ Session      // session
+ Application  銆怱ervletContext銆?
+ config   銆怱ervletConfig銆?
+ out
+ page       // 褰撳墠
+ Exception

浣滅敤鍩?

```java
public static final int PAGE_SCOPE = 1;
public static final int REQUEST_SCOPE = 2;
public static final int SESSION_SCOPE = 3;
public static final int APPLICATION_SCOPE = 4;
pageContext.setAttribute("name1","濮撳悕1");   // 淇濆瓨鐨勬暟鎹彧鍦ㄤ竴涓〉闈腑鏈夋晥
request.setAttribute("name2","濮撳悕2");       // 淇濆瓨鐨勬暟鎹彧鍦ㄤ竴娆¤姹備腑鏈夋晥锛岃姹傝浆鍙戜細鎼哄甫杩欎釜杩欎釜鏁版嵁
session.setAttribute("name3","濮撳悕3");       // 淇濆瓨鐨勬暟鎹彧鍦ㄤ竴娆′細璇濅腑鏈夋晥銆備粠娴忚鍣ㄦ墦寮€鍒版祻瑙堝櫒鍏抽棴
application.setAttribute("name4","濮撳悕4");   // 淇濆瓨鐨勬暟鎹彧鍦ㄦ湇鍔″櫒涓湁鏁堬紝浠庢墦寮€鏈嶅姟鍣ㄥ埌鍏抽棴鏈嶅姟鍣?
```

## JSP鏍囩锛孞STL鏍囩锛孍L琛ㄨ揪寮?
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

EL** 琛ㄨ揪寮忥細${}**

+ **鑾峰彇鏁版嵁**
+ **鎵ц杩愮畻**
+ **鑾峰彇web寮€鍙戠殑甯哥敤瀵硅薄**

**jsp鏍囩**

```xml
<!--  -->
<jsp: include></jsp:>
<!-- http://localhost:8080/hello1.jsp?name1=鍚嶅瓧1&name2=鍚嶅瓧2 -->
<jsp:forward page="hello1.jsp">
  <jsp:param name="name1" value="鍚嶅瓧1"/>
  <jsp:param name="name2" value="鍚嶅瓧2"/>
</jsp:forward>
```

**JSTL鏍囩**

[**鑿滈笩鏁欑▼**](https://www.runoob.com/jsp/jsp-jstl.html)** 鏌ョ湅鏍囩**

JSTL 鏍囩搴撶殑浣跨敤灏辨槸涓轰簡寮ヨˉHTML鏍囩鐨勪笉瓒筹紱瀹冭嚜瀹氫箟浜嗚澶氭爣绛撅紝鍙互渚涙垜浠娇鐢紝鏍囩鐨勫姛鑳藉拰java浠ｇ爜涓€鏍凤紒

+ 鏍稿績鏍囩
+ 鏍煎紡鍖栨爣绛?
+ SQL鏍囩
+ XML鏍囩

jstl鏍囩搴撲娇鐢ㄦ楠?

+ 寮曞叆瀵瑰簲鐨則aglib
+ 浣跨敤鍏朵腑鐨勬柟娉?
+ 鍦╰omcat涔熼渶瑕佸紩鍏stl鐨勫寘锛屽惁鍒欎細鎶ラ敊锛歫stl瑙ｆ瀽閿欒

c:if c:choose c:when c:forEach

```html
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%--寮曞叆鏍稿績鏍囩搴擄紝鎵嶈兘浣跨敤鏍稿績鏍囩 core--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="damo02.jsp" method="get">
    <input type="text" name="username" value="${param.username}">
    <input type="submit" value="鐧诲綍">
</form>
<!-- if 娴嬭瘯 -->
<c:if test="${param.username==''admin''}" var="isAdmin">
    <c:out value="绠＄悊鍛樼櫥褰曟垚鍔? />
</c:if>

<c:out value="${isAdmin}" />


<%--
var 姣忎竴娆￠亶鍘嗗嚭鏉ョ殑鍙橀噺
items 瑕侀亶鍘嗙殑瀵硅薄
begin 璧峰鍊?
end 缁撴潫鍊?
step 姝ラ暱
--%>
<c:forEach var="people" items="${list}" begin="1" end="3" step="2">
    <c:out value="${people}"/> <br>
</c:forEach>

</body>
</html>

```

## JavaBean
瀹炰綋绫?

JavaBean鏈夌壒瀹氱殑鍐欐硶锛?

+ 蹇呴』鏈変竴涓棤鍙傛瀯閫?
+ 灞炴€у繀椤荤鏈夊寲
+ 蹇呴』鏈夊搴旂殑get/set鏂规硶

涓€鑸敤鏉ュ拰鏁版嵁搴撶殑瀛楁鍋氳繛鎺?

```html
<body>

<jsp:useBean id="people" class="com.jie.jsp.People" scope="page"/>

<jsp:setProperty name="people" property="address" value="闀挎睙"/>
<jsp:setProperty name="people" property="age" value="18"/>
<jsp:setProperty name="people" property="id" value="1"/>
<jsp:setProperty name="people" property="name" value="寮犱笁"/>

鍦板潃锛?jsp:getProperty name="people" property="address"/>
id: <jsp:getProperty name="people" property="id"/>
name: <jsp:getProperty name="people" property="name"/>
骞撮緞锛?jsp:getProperty name="people" property="age"/>
</body>
```

```java
People people = new people();
people.setid("1");
people.setname("寮犱笁");
people.setage("18");
people.setaddress("闀挎睙");

people.getid();
people.getname();
people.getage();
people.getaddress();
```

# MVC涓夊眰鏋舵瀯
## 涓ゅ眰鏋舵瀯
<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1747821299842-6b134002-ce53-414e-9b42-84c26585a488.png" width="945.6" title="" crop="0,0,1,1" id="uf44931e8" class="ne-image">

鐢ㄦ埛鐩存帴璁块棶鎺у埗灞傦紝鎺у埗灞傚氨鍙互鐩存帴鎿嶄綔鏁版嵁搴擄紱

```plain
servlet --> CRUD --> 鏁版嵁搴?
寮婄锛氱▼搴忓崄鍒嗚噧鑲匡紝涓嶅埄浜庣淮鎶?
Servlet涓殑浠ｇ爜锛氬鐞嗚姹傦紝鍝嶅簲锛岃鍥捐烦杞紝澶勭悊jdbc锛屽鐞嗕笟鍔′腑鐨勪唬鐮侊紝澶勭悊閫昏緫浠ｇ爜
```

## 涓夊眰鏋舵瀯
<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1747821531421-5b6ced94-5d37-41ee-ab43-3350b4e70785.png" width="1034.4" title="" crop="0,0,1,1" id="u94af92f5" class="ne-image">

Model

+ 涓氬姟澶勭悊锛氫笟鍔￠€昏緫 锛圫ervlet锛?
+ 鏁版嵁鎸佷箙灞傦細CRUD 锛圖ao锛?

VIew

+ 灞曠ず鏁版嵁
+ 鎻愪緵閾炬帴鍙戣捣Servlet璇锋眰 锛坅锛宖orm锛宨mg....锛?

Controller 锛圫ervlet锛?

+ 鎺ユ敹鐢ㄦ埛鐨勮姹傦細 锛坮eq锛氳姹傚弬鏁帮紝Session淇℃伅鈥︹€︼級
+ 浜ょ粰涓氬姟灞傚鐞嗗搴旂殑浠ｇ爜
+ 鎺у埗瑙嗗浘鐨勮烦杞?

# 杩囨护鍣紝鐩戝惉鍣?
## Filter
Filter锛氳繃婊ゅ櫒锛岀敤鏉ヨ繃婊ょ綉绔欑殑鏁版嵁

+ 澶勭悊涓枃涔辩爜
+ 鐧诲綍楠岃瘉

Filter寮€鍙戞楠?

+ 瀵煎寘
+ 缂栧啓杩囨护鍣?

```java
public class CharacterEncodingFilter implements jakarta.servlet.Filter {
    // 鍒濆鍖?
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("CharacterEncodingFilter鍒濆鍖?);
    }

    // chain : 閾?
    /**
    杩囨护涓殑鎵€鏈夊簳浠ｇ爜锛屽湪杩囨护寰呭畾璇锋眰鐨勬椂鍊欓兘浼氭墽琛?
    蹇呴』璁╅【铏戝幓缁х画鎵ц鍚岃
    */
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        System.out.println("CharacterEncodingFilter鎵ц鍓?);
        // 绋嬪簭浠庢澶勫紑濮嬫嫤鎴?
        chain.doFilter(request, response);  // 璁╄繃婊ゅ櫒鎺ョ潃寰€涓嬭蛋
        System.out.println("CharacterEncodingFilter鎵ц鍚?);
    }

    // 閿€姣?
    @Override
    public void destroy() {
        System.out.println("CharacterEncodingFilter閿€姣?);
    }
}

```

+ 鍦╳eb.xml涓厤缃瓼ilter杩囨护鍣?

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
    <!-- 鍙鏄?servlet鐨勪换浣曡姹傞兘浼氱粡杩囪繖涓繃婊ゅ櫒  -->
    <url-pattern>/servlet/*</url-pattern>
  </filter-mapping>

</web-app>
```

+

## Listener
瀹炵幇鐩戝惉鍣ㄧ殑鎺ュ彛锛涘緢澶?

+ 缂栧啓涓€涓洃鍚櫒锛屽疄鐜扮洃鍚櫒鐨勬帴鍙?

```java
public class OnlineCountListener implements HttpSessionListener {

    // 鍒涘缓Session鐩戝惉锛?
    // 涓€鏃﹀垱寤轰竴涓猄ession灏变細瑙﹀彂涓€娆¤繖涓簨浠?
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

    // 閿€姣?
    // 涓€鏃﹂攢姣佷竴涓猄ession灏变細瑙﹀彂涓€娆¤繖涓簨浠?
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

+ web.xml娉ㄥ唽鐩戝惉鍣?

```java
<!-- 娉ㄥ唽鐩戝惉鍣?-->
  <listener>
    <listener-class>com.jie.listener.OnlineCountListener</listener-class>
  </listener>
```

+ 鐪嬫儏鍐垫槸鍚︿娇鐢ㄧ洃鍚櫒



## 甯歌搴旂敤
鐢ㄦ埛鐧诲綍涔嬪悗鎵嶈兘杩涘叆涓婚〉锛佺敤鎴锋敞閿€鍚庡氨涓嶈兘杩涘叆涓婚〉浜嗭紒

1. 鐢ㄦ埛鐧诲綍涔嬪悗锛屽悜session涓斁鍏ョ敤鎴风殑鏁版嵁
2. 杩涘叆涓婚〉鐨勬椂鍊欒鍒ゆ柇鏄惁宸茬粡鐧诲綍,鍦ㄤ富椤靛拰杩囨护鍣ㄤ腑閮藉彲浠ュ疄鐜?

```java
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 鑾峰彇鍓嶇璇锋眰鐨勫弬鏁?
        String username = req.getParameter("username");

        if (username.equals("admin")) {  // 鐧诲綍鎴愬姛
            req.getSession().setAttribute(Contanst.USER_SESSION,  req.getSession().getId());
            resp.sendRedirect("/sys/success.jsp");
        } else {    // 鐧诲綍澶辫触
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
<h1>鐧诲綍</h1>
<form action="servlet/login">
  <input type="text" name="username">
  <input type="submit">
</form>
</body>
```

```html
<h1>閿欒椤甸潰</h1>
<h3>娌℃湁鏉冮檺锛岀敤鎴峰悕閿欒</h3>

<a href="/login.jsp">杩斿洖鐧诲綍椤甸潰</a>
```

```html
<body>
<%
    Object userSession = request.getSession().getAttribute(Contanst.USER_SESSION);

    if (userSession==null){
       response.sendRedirect("/login.jsp");
    }

%>
<h1>涓婚〉</h1>
<a href="/servlet/logout" >娉ㄩ攢</a>
</body>
```

# JDBC
## 娴佺▼
1. 瀵煎叆渚濊禆

```xml
<dependency>
  <groupId>mysql</groupId>
  <artifactId>mysql-connector-java</artifactId>
  <version>8.0.33</version>
</dependency>
```

2. IDEA涓繛鎺ユ暟鎹簱
3. 浣跨敤JDBC
    1. 鍔犺浇椹卞姩
    2. 杩炴帴鏁版嵁搴?
    3. 鍚戞暟鎹簱鍙戦€丼QL鐨勫璞tatement锛孭repareStatement
    4. 缂栧啓SQL
    5. 鎵цSQL
    6. 鍏抽棴杩炴帴

# 鏂囦欢涓婁紶涓嬭浇
## 鍑嗗宸ヤ綔
+ 闇€瑕佸鍏ョ殑jar鍖?

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

+ 鏂囦欢涓婁紶鐨勬敞鎰忎簨椤?
    - 涓轰繚璇佹湇鍔″櫒鐨勫畨鍏紝涓婁紶鏂囦欢搴旇鏀惧湪澶栫晫鏃犳硶鐩存帴璁块棶鐨勭洰褰曚笅锛屾瘮濡傛斁浜嶹EB-INF鐩綍涓?
    - 涓洪槻姝㈡枃浠惰鐩栫殑鐜拌薄鍙戠敓锛岃涓轰笂浼犳枃浠朵骇鐢熶竴涓敮涓€鐨勬枃浠跺悕
    - 瑕侀檺鍒舵枃浠朵笂浼犵殑鏈€澶у€?
    - 鍙互闄愬埗涓婁紶鏂囦欢鐨勭被鍨嬶紝鍦ㄦ敹鍒颁笂浼犳枃浠跺悕鏃讹紝鍒ゆ柇鍚庣紑鍚嶆槸鍚﹀悎娉?
+ 闇€瑕佺敤鍒扮殑绫昏瑙?
    - ServletFIleUpload锛氳礋璐ｅ鐞嗕笂浼犳枃浠舵暟鎹紝骞跺皢琛ㄥ崟涓瘡涓緭鍏ラ」灏佽鎴愪竴涓狥ileItem瀵硅薄锛屽湪浣跨敤ServletFIleUpload瀵硅薄瑙ｆ瀽璇锋眰鏃堕渶瑕丏iskFIleItemFactory瀵硅薄銆傛墍浠ワ紝闇€瑕佸湪杩涜瑙ｆ瀽宸ヤ綔鍓嶆瀯閫犲ソDiskFileItemFactory瀵硅薄锛岄€氳繃ServletFIleUpload瀵硅薄鐨勬瀯閫犳柟娉曟垨setFileItemFactory()鏂规硶璁剧疆ServletFIleUpload瀵硅薄鐨刦ileItemFactory灞炴€?

## FileItem绫?
+ 鍦℉TML椤甸潰input蹇呴』鏈塶ame`<input type="file" name="filename">`
+ 琛ㄥ崟濡傛灉鍖呭惈涓€涓枃浠惰緭鍏ラ」鐨勮瘽锛岃繖涓〃鍗曠殑enctype灞炴€у氨蹇呴』璁剧疆涓篳multipart/form-data`

```html
<%--閫氳繃琛ㄥ崟涓婁紶鏂囦欢
  get锛氫笂浼犳枃浠跺ぇ灏忔湁闄愬埗
  post锛氫笂浼犳枃浠舵病鏈夐檺鍒?
  --%>
  <form action="" enctype="multipart/form-data" method="post">
    涓婁紶鐢ㄦ埛锛?input type="text" name="username"><br/>
    <p><input type="file" name="file1"></p>
    <p><input type="file" name="file2"></p>

    <p><input type="submit">|<input type="reset"></p>
  </form>
  
```

+ 甯哥敤鏂规硶浠嬬粛

```java
//鏄櫘閫氳〃鍗曞瓧娈碉紵锛坱rue锛夋枃浠朵笂浼犲瓧娈?false)
boolean isFormField();
//鐢ㄤ簬杩斿洖琛ㄥ崟鏍囩name灞炴€х殑鍊?
String getFieldName();
//鐢ㄤ簬灏咶ileItem瀵硅薄涓繚瀛樼殑鏁版嵁娴佸唴瀹逛互涓€涓瓧绗︿覆杩斿洖
String getString(String encoding) throws UnsupportedEncodingException;
//鏂囦欢涓婁紶瀛楁鐨勬枃浠跺悕 IE鏄剧ず锛氳矾寰?鏂囦欢鍚嶏紙C:\1.txt锛?鍏朵粬锛?.txt
String getName();
//杈撳叆娴佽繑鍥炰笂浼犳枃浠舵暟鎹?
InputStream getInputStream() throws IOException;
//娓呯┖Fileitem淇濆瓨鍐呭
void delete();
//涓婁紶鏂囦欢澶у皬
long getSize();
//鍦ㄥ唴瀛橈紵锛坱rue锛?
boolean isInMemory();
//鍐欏叆鏂囦欢
void write(File file) throws Exception
```

## ServletFileUpload绫?
ServletFileUpload璐熻矗澶勭悊涓婁紶鐨勬枃浠剁殑鏁版嵁锛屽苟灏嗚〃鍗曚腑鐨勬瘡涓緭鍏ラ」灏佽鎴愪竴涓狥ileItem瀵硅薄涓紝浣跨敤鍏秔arseRequest(HttpServletRequest)鏂规硶锛屽彲浠ュ皢鍏叡琛ㄥ崟涓殑姣忎竴涓狧TML鏍囩鎻愪氦鐨勬暟鎹皝瑁呮垚涓€涓狥ileItem瀵硅薄锛岀劧鍚庝互List鍒楄〃鐨勫舰寮忚繑鍥烇紝浣跨敤璇ユ柟娉曞鐞嗕笂浼犳垜閭ｄ欢绠€鍗曟槗鐢?

## 瀹屾暣浠ｇ爜
```java
public class FIleServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // 鍒ゆ柇涓婁紶鐨勬枃浠舵槸鏅€氳〃鍗曡繕鏄緟鏂囦欢鐨勮〃鍗?
        if (ServletFileUpload.isMultipartContent((RequestContext) req)){
            return;  // 缁堟鏂规硶杩愯锛岃鏄庤繖鏄竴涓櫘宸ョ殑琛ㄥ崟锛岀洿鎺ヨ繑鍥?
        }

        // 鍒涘缓涓婁紶鏂囦欢鐨勪繚瀛樿矾寰勶紝寤鸿鍦╓EB-INF璺緞涓嬶紝瀹夊叏锛岀敤鎴锋棤娉曠洿鎺ヨ闂笂浼犵殑鏂囦欢
        String uploadPath = this.getServletContext().getRealPath("/WEB-INF/upload");
        File uploadFile = new File(uploadPath);
        if (!uploadFile.exists()){
            uploadFile.mkdirs();   // 鍒涘缓杩欎釜鐩綍
            System.out.println("涓嬭浇鐩綍鍒涘缓鎴愬姛");
        }

        // 缂撳瓨锛屼复鏃舵枃浠?
        // 涓存椂璺緞锛屽亣濡傛枃浠惰秴杩囦簡棰勬湡鐨勫ぇ灏忥紝鎴戜滑灏辨妸瀹冩斁鍒颁竴涓复鏃舵枃浠朵腑锛岃繃鍑犲ぉ鑷姩鍒犻櫎锛屾垨鑰呮彁閱掔敤鎴疯浆涓烘案涔呮枃浠?
        String temPath = this.getServletContext().getRealPath("/WEB-INF/temp");
        File temFile = new File(temPath);
        if (!temFile.exists()){
            temFile.mkdirs();   // 鍒涘缓杩欎釜涓存椂鐩綍
            System.out.println("涓存椂鐩綍鍒涘缓鎴愬姛");
        }

        // 澶勭悊涓婁紶鐨勬枃浠讹紝涓€鑸兘闇€瑕侀€氳繃娴佹潵鑾峰彇
        // 鍙互浣跨敤request.getInputStream(),鍘熺敓鎬佺殑鏂囦欢涓婁紶娴佽幏鍙栵紝姣旇緝楹荤儲
        // 寤鸿浣跨敤Apache鐨勬枃浠朵笂浼犵粍浠舵潵瀹炵幇
        // common-fileupload锛屽ぇ闇€瑕佷緷璧栦簬 commons-io 缁勪欢

        // 1.鍒涘缓DiskFileItemFactory瀵硅薄锛屽鐞嗘枃浠朵笂浼犺矾寰勬垨鑰呭ぇ灏忛檺鍒剁殑
        DiskFileItemFactory factory = new DiskFileItemFactory();
        // 閫氳繃杩欎釜宸ュ巶璁剧疆涓€涓紦鍐插尯锛屽綋涓婁紶鐨勬枃浠跺ぇ浜庤繖涓紦鍐插尯鐨勬椂鍊欙紝灏嗕粬鏀惧埌涓存椂鏂囦欢涓?
        factory.setSizeThreshold(1024*1024); // 缂撳啿鍖哄ぇ灏忎负1M
        factory.setRepository(temFile);  // 涓存椂鐩綍鐨勪繚瀛樼洰褰曪紝闇€瑕佷竴涓狥ile

        // 2. 鑾峰彇ServletFileUpload
        ServletFileUpload upload = new ServletFileUpload(factory);

        // 鐩戝惉鏂囦欢涓婁紶杩涘害
        upload.setProgressListener(new ProgressListener() {
            @Override
            // pBytesRead: 宸茬粡璇诲彇鍒扮殑鏂囦欢澶у皬
            // pContentLength锛?鏂囦欢澶у皬
            public void update(long pBytesRead, long pContentLength, int i) {
                System.out.println("鎬诲ぇ灏?+pContentLength+"宸蹭笂浼?+pBytesRead);
            }
        });
        // 澶勭悊涔辩爜闂
        upload.setHeaderEncoding("UTF-8");
        // 璁剧疆鍗曚釜鏂囦欢鐨勬渶澶у€?
        upload.setFileSizeMax(1024*1024*10);
        // 璁剧疆鎬诲叡鑳藉涓婁紶鏂囦欢鐨勫ぇ灏?
        // 1024 = 1kb * 1024
        upload.setSizeMax(1024*1024*10);

        // 3.澶勭悊涓婁紶鐨勬枃浠?
        String msg = "鏂囦欢涓婁紶澶辫触";
        try {
            // 鎶婂墠绔姹傝В鏋愶紝灏佽鎴愪竴涓狥ileItem瀵硅薄锛?闇€瑕佷粠ServletFileUpload瀵硅薄涓幏鍙?
            List<FileItem> fileItems = upload.parseRequest((RequestContext) req);
            // FileItem 姣忎竴涓〃鍗曞璞?
            for (FileItem item : fileItems) {
                // 鍒ゆ柇涓婁紶鏂囦欢鏄櫘閫氱殑琛ㄥ崟杩樻槸甯︽枃浠剁殑琛ㄥ崟
                if (item.isFormField()) {
                    String name = item.getFieldName();
                    String value = item.getString("UTF-8");  // 澶勭悊涔辩爜
                    System.out.println(name + "锛? + value);
                } else {  // 鏂囦欢鐨勬儏鍐典笅

                    //========================澶勭悊鏂囦欢=================================
                    String uploadFileName = item.getName();
                    // 鍙兘瀛樺湪鏂囦欢鍚嶄笉鍚堟硶鐨勫彲鑳?
                    if (uploadFileName.trim().equals("")||uploadFileName==null){
                        continue;
                    }

                    // 鑾峰彇涓婁紶鐨勬枃浠跺悕锛?substring鎴彇瀛楃涓诧細浠庢枃浠惰矾寰勬渶鍚庝竴涓?/ +1 鐨勪綅缃紑濮?
                    String fileName = uploadFileName.substring(uploadFileName.lastIndexOf("/") + 1);
                    // 鑾峰彇鏂囦欢鐨勫悗缂€鍚?  浠庢渶鍚庝竴涓?. +1 鐨勪綅缃紑濮嬫埅鍙?
                    String fileExtName = fileName.substring(fileName.lastIndexOf(".") + 1);

                    // 鍙互浣跨敤UUID锛堝敮涓€璇嗗埆閫氱敤鐮侊級锛屼繚璇佹枃浠跺悕鍞竴
                    // UUID.randomUUID()锛岄殢鏈虹敓涓€涓敮涓€璇嗗埆鐨勯€氱敤鐮?

                    // 缃戠粶浼犺緭涓殑涓滆タ锛岄兘闇€瑕佸簭鍒楀寲
                    // POJO锛屽疄浣撶被锛屽鏋滄兂瑕佸湪澶氫釜鐢佃剳涓婅繍琛岋紝浼犺緭===>闇€瑕佹妸瀵硅薄閮藉簭鍒楀寲浜?
                    // implements Serializable  锛?鏍囪鎺ュ彛锛孞VM---> Java鏍?鏈湴鏂规硶鏍?native --> C++
                    String uuid = UUID.randomUUID().toString();

                    //========================瀛樻斁鍦板潃=================================

                    // 瀛樺埌鍝紵 uploadPath
                    // 鏂囦欢鐪熷疄瀛樺湪鐨勮矾寰?realPath
                    String realPath = uploadPath + "/" + uuid;
                    // 缁欐瘡涓€涓枃浠跺垱寤轰竴涓搴旂殑鏂囦欢澶?
                    File realPathFIle = new File(realPath);
                    if (!realPathFIle.exists()){
                        realPathFIle.mkdirs();
                    }

                    //========================鏂囦欢浼犺緭=================================
                    // 鑾峰彇鏂囦欢涓婁紶鐨勬祦
                    InputStream inputStream = item.getInputStream();

                    // 鍒涘缓涓€涓枃浠惰緭鍑烘祦
                    // realPath = 鐪熷疄鐨勬枃浠跺す锛?
                    // 宸竴涓枃浠讹紱鍔犱笂杈撳嚭鏂囦欢鐨勫悕瀛? 鈥?鈥?+ uuid
                    FileOutputStream outputStream = new FileOutputStream(realPath+"/"+fileName);

                    // 鍒涘缓涓€涓紦鍐插尯
                    byte[] buffer = new byte[1024*1024];

                    // 鍒ゆ柇鏄惁璇诲彇瀹屾瘯
                    int len = 0;
                    // 濡傛灉澶т簬0璇存槑杩樺瓨鍦ㄦ暟鎹紱
                    while ((len = inputStream.read(buffer)) > 0) {
                        outputStream.write(buffer, 0, len);
                    }

                    // 鍏抽棴娴?
                    inputStream.close();
                    outputStream.close();

                    msg = "鏂囦欢涓婁紶鎴愬姛";

                    item.delete();  // 涓婁紶鎴愬姛锛屾竻闄や复鏃舵枃浠?

                }
            }


        } catch (FileUploadException e) {
            e.printStackTrace();
        }

        req.setAttribute("msg", msg);
        req.getRequestDispatcher("info.jsp").forward(req, resp);

        /*
        // 鍙互鐩存帴灏嗕笂闈?姝ュ皝瑁呮垚鏂规硶
        // 1.鍒涘缓DiskFileItemFactory瀵硅薄锛屽鐞嗘枃浠朵笂浼犺矾寰勬垨鑰呭ぇ灏忛檺鍒剁殑
        DiskFileItemFactory factory = getDiskFileItemFactory(file);
        // 2. 鑾峰彇ServletFileUpload
        ServletFileUpload upload = getSevletFileUpload(factory);
        // 3.澶勭悊涓婁紶鐨勬枃浠?
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
<%--閫氳繃琛ㄥ崟涓婁紶鏂囦欢
    get锛氫笂浼犳枃浠跺ぇ灏忔湁闄愬埗
    post锛氫笂浼犳枃浠舵病鏈夐檺鍒?
    ${pageContext.request.contextPath}  鑾峰彇鏈嶅姟鍣ㄨ矾寰?
--%>
<form action="/upload.do" enctype="multipart/form-data" method="post">
    涓婁紶鐢ㄦ埛锛?input type="text" name="username"><br/>
    <p><input type="file" name="file1"></p>
    <p><input type="file" name="file2"></p>

    <p><input type="submit">|<input type="reset"></p>
</form>
</body>
</html>

```

## 鏂囦欢涓嬭浇
1. 鍚戞祻瑙堝櫒杈撳嚭娑堟伅
2. 涓嬭浇鏂囦欢
    1. 瑕佽幏鍙栨枃浠剁殑璺緞
    2. 涓嬭浇鐨勬枃浠跺悕鏄暐锛?
    3. 璁剧疆鍚戝姙娉曡鍒樻祻瑙堝櫒鑳藉鏀寔涓嬭浇鎴戜滑闇€瑕佺殑涓滆タ
    4. 鑾峰彇涓嬭浇鏂囦欢鐨勮緭鍏ユ祦
    5. 鍒涘缓缂撳啿鍖?
    6. 鑾峰彇OutputStream瀵硅薄
    7. 灏咶ileOutputStream鍒楀叆鍒癰uffer缂撳啿鍖?
    8. 浣跨敤OutputStream灏嗙紦鍐插尯涓殑鏁版嵁杈撳嚭鍒板鎴风

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
        // 鑾峰彇涓嬭浇鏂囦欢鐨勮矾寰?
        String realPath = this.getServletContext().getRealPath("1.png");
        // 涓嬭浇鐨勬枃浠跺悕鏄暐锛?
        String fileName = realPath.substring(realPath.lastIndexOf("/") + 1);
        // 璁剧疆鎯冲姙娉曡娴忚鍣ㄦ敮鎸佷笅杞界殑闇€瑕佺殑涓滆タ
        resp.setHeader("Content-Disposition", "attachment; filename=" + fileName);
        // 鑾峰彇涓嬭浇鏂囦欢鐨勮緭鍏ユ祦
        FileInputStream in = new FileInputStream(realPath);
        // 鍒涘缓缂撳啿鍖?
        int len = 0;
        byte[] buffer = new byte[1024];
        // 鑾峰彇杈撳嚭娴佸璞?
        ServletOutputStream out = resp.getOutputStream();
        // 灏咶ileOutputStream娴佸啓鍏ュ埌buffer涓?
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

# 閭欢鍙戦€?
## 鍩烘湰鍘熺悊
<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1748864219279-83263ed3-a2aa-4ade-8c65-e9f624e91488.png" width="1038.4" title="" crop="0,0,1,1" id="uba02b2c0" class="ne-image">

<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1748864779429-3330453f-76b5-4288-9e30-ec423a34fef6.png" width="1317.6" title="" crop="0,0,1,1" id="u58d78310" class="ne-image">

## 闇€瑕佺殑jar鍖?
+ 闇€瑕佸鍏ョ殑jar鍖?

<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1748865022050-97089895-da63-40e4-8121-0db9b879010c.png" width="429.79998779296875" title="" crop="0,0,1,1" id="u4e7e8d3e" class="ne-image">

## 鏅€氶偖浠舵祦绋?
+ 鍩烘湰娴佺▼

<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1748865444223-415d8dc6-0ad6-40c4-9ba3-6c3313418751.png" width="751.2" title="" crop="0,0,1,1" id="u98c5f62b" class="ne-image">

+ 1.鍒涘缓瀹氫箟鏁翠釜搴旂敤绋嬪簭鎵€闇€鐨勭幆澧冧俊鎭殑 Session 瀵硅薄

```java
// QQ 鎵嶆湁锛屽叾浠栭偖绠卞氨涓嶇敤
Session session = Session.getDefaultInstance(prop, new Authenticator() {
    public PasswordAuthentication getPasswordAuthentication() {
        // 鍙戦€佷汉閭鐢ㄦ埛鍚嶏紝鎺堟潈鐮?
        return new PasswordAuthentication("鐢ㄦ埛鍚?, "鎺堟潈鐮?);
    }
})

// 寮€鍚痵ession鐨刣ebug妯″紡锛岃繖鐢ㄥ氨鍙互浜х绋嬪簭鍙戦€丒mail鐨勮繍鍔ㄧ姸鎬?
session.setDebug(True);
```

+ 2.閫氳繃Session寰楀埌transport瀵硅薄

```java
Transport ts = session.getTransport();
```

+ 3.浣跨敤閭鐨勭敤鎴峰悕鍜屾巿鏉冪爜杩炰笂閭鐨勬湇鍔″櫒

```java
// host    user    password
ts.connect("smtp.qq.com", "2746325155@qq.com", "鎺堟潈鐮?);
```

+ 4.鍒涘缓閭欢

```java
// 娉ㄦ剰闇€瑕佷紶閫抯ession
MimeMessage message = new MimeMessage(session)
// 鎸囨槑閭欢鐨勫彂閫佷汉
message.setFrom(new InternetAddress("璐﹀彿"));
// 鎸囨槑閭欢鐨勬敹浠朵汉锛岀幇鍦ㄥ彂浠朵汉鍜屾敹浠朵汉鏄竴鏍风殑锛屽氨鏄嚜宸卞彂缁欒嚜宸?
message.setRecipient(Message.RecipientType.TO, new InternetAdderss("璐﹀彿");
// 閭欢鐨勬爣棰?
message.setContent("<h1 style=''color: red''>鏍囬</h1>", "text/html;charset=utf-8");

```

+ 5.鍙戦€侀偖浠?

```java
ts.sendMessage(message, message.getAllRecipients());
```

+ 6.鍏抽棴杩炴帴

```java
ts.close();
```

## 澶嶆潅閭欢', NOW());
SET @last_note_id = LAST_INSERT_ID();

INSERT INTO 
ote (uthor_id, 	itle, content, created_at)
VALUES (1005, 'Numpy', '### array鍒涘缓缁?
璇硶鏍煎紡濡備笅

numpy.array(object, dtupe=None, copy=True, order=None)

+ object锛氭暟缁勬垨宓屽鐨勬暟鍒楋紝鍙互鏄暟鍊煎瀷鍒楄〃
+ dtype锛氭暟缁勫厓绱犵殑鏁版嵁绫诲瀷锛屽彲閫夛紝甯哥敤鐨勬湁int锛宖loat
+ copy锛氬娲楁尽姝屾槸鍚﹂渶瑕佸鍒讹紝鍙€?
+ order锛氬垱寤烘暟缁勭殑鏍峰紡锛孋涓鸿鏂瑰悜锛孎涓哄垪鏂瑰悜锛孉涓轰换鎰忔柟鍚戯紙榛樿锛?
+ subok锛氶粯璁よ繑鍥炰竴涓笌鍩虹被绫诲瀷涓€鑷寸殑鏁扮粍
+ ndmin锛氭寚瀹氱敓鎴愭暟缁勭殑鏈€灏忕淮搴?

```python
import numpy as np
# 涓€缁存暟缁?
np.array([1,2,3,4,5])
#浜岀淮鏁扮粍
np.array([
    [1,2,3],
    [4,5,6],
    [7,8,9]])
# 鎸囧畾缁村害
np.array([1,2,3], ndmin=3)  # 鐢熸垚涓夌淮鏁扮粍
# 鎸囧畾鏁扮粍鐨勬暟鎹被鍨?
np.array([1,2,3,4,5], dtype=np.int)

```



### arange鍒涘缓鏁扮粍
鏍煎紡

numpy.arange(start, stop, step, stype)

+ start锛氳捣濮嬪€?
+ stop锛氱粓姝㈠€硷紙涓嶅寘鍚級
+ step锛氭闀匡紝榛樿涓?
+ dtype锛氳繑鍥瀗darray鐨勬暟缁勭被鍨嬶紝濡傛灉娌℃湁鎻愪緵锛屽垯浼氫娇鐢ㄨ緭鍏ユ暟鎹殑绫诲瀷

```python
# arange鍒涘缓鏁扮粍
# 涓€缁存暟缁?
import numpy as np
np.arange(1,6,2,dtype=float)
# 浜岀淮鏁扮粍
np.array([np.arange(1,4),np.arange(4,8)])
```



### random鍒涘缓闅忔満鏁扮粍
numpy涓殑random妯″潡鍖呭惈浜嗗緢澶氭柟娉曞彲浠ョ敤鏉ヤ骇鐢熼殢鏈烘暟

+ seed锛氱‘瀹氶殢鏈虹敓鎴愬櫒绉嶅瓙
+ permutation锛氳繑鍥炰竴涓簭鍒楃殑闅忔満鎺掑垪鎴栬繑鍥炰竴涓殢鏈烘帓鍒楃殑鑼冨洿
+ shuffle锛氬涓€涓簭鍒楀氨鍦伴殢鏈烘帓闆?
+ rand锛氫骇鐢熷潎鍖€鍒嗗竷鐨勬牱鏈€?
+ randint锛氳鏂规硶鏈変笁涓弬鏁發ow銆乭igh锛宻ize锛岄粯璁igh鏄疦one锛屽鏋滃彧鏈塴ow锛岄偅鑼冨洿灏辨槸[0,low), 濡傛灉鏈塰igh锛岃寖鍥村氨鏄痆low,high)
+ random锛坰ize=None锛夛細璇ユ柟娉曡繑鍥?0.0,1.0)鑼冨洿鐨勯殢鏈烘暟
+ randn锛坉0,d1,d2,.....,dn锛?randn鍑芥暟杩斿洖涓€涓垨涓€缁勬牱鏈紝鍏锋湁鏍囧噯姝ｆ€佸垎甯?鏈熸湜涓?锛屾柟宸负1)锛宒n琛ㄦ牸姣忎釜缁村害锛岃繑鍥炲€艰寖鍥存寚瀹氱淮搴︾殑array
+ normal(loc, scale,size)锛氱敓鎴愭鎬佸垎甯冩暟缁勶紝loc锛氭湡鏈涳紝scale锛氭柟宸紝size锛氬舰鐘?

```python
impart numpy as np
# 闅忔満鐢熸垚鍣ㄧ瀛愶紝浣跨敓鎴愮殑闅忔満鏁版瘡娆￠兘涓€鏍?
np.random.seed(0)
# size鍙‘瀹氭暟缁勭殑褰㈢姸
# np.random.random() 鏁板€艰寖鍥村湪(0.0,1.0)
np.random.random(size=(2,5))  # 2琛?鍒?

# np.random.randint(low, high, size)
# low:鏈€灏忓€?high:鏈€澶у€?size褰㈢姸
np.random.randint(2, 5, size(4, 5))
# .shape 鑾峰彇鏁扮粍鐨勫舰鐘?

#  np.random.randn(d0,d1,...,dn)鏍囧噯姝ｆ€佸垎甯冩暟缁?dn鏁扮粍缁村害
np.random.randn(2,3,4) # 4缁存暟缁?

# 鐢熸垚姝ｆ€佸垎甯冩暟缁?
np.random.normal(loc=2, scale=1, size(3,2))
```

### ndarray瀵硅薄鐨勫睘鎬?
+ .ndim锛氱З锛屽嵆杞寸殑鏁伴噺鎴栫淮搴︾殑鏁伴噺
+ .shape锛歯darray瀵硅薄鐨勫昂搴︼紝瀵逛簬鐭╅樀锛宯琛宮鍒?
+ .size锛歯darray瀵硅薄鍏冪礌鐨勪釜鏁帮紝鐩稿綋浜?shape涓璶*m
+ .dtype锛歯darray瀵硅薄鐨勫厓绱犵被鍨?
+ .itemsize锛歯darray瀵硅薄涓瘡涓厓绱犵殑澶у皬锛屼互瀛楄妭涓哄崟浣?

### zeros鍒涘缓鍏?鏁扮粍锛宱nes鍒涘缓鍏ㄤ负1鐨勬暟缁?
numpy.zeros(shape, dtype=float, order=''C'')

numpy.ones(shape, dtype=float, order=''C'')

+ shape锛氭暟缁勫舰鐘讹紝
+ dtype锛氭暟缁勫厓绱犳暟鎹被鍨嬶紝鍙€夛紝榛樿涓篺loat
+ order锛?font style="color:rgb(6, 6, 7);">鐢ㄤ簬鎸囧畾鏁扮粍鍦ㄥ唴瀛樹腑鐨勫瓨鍌ㄩ『搴忥紝鍙€夛紝''C'', ''F'', ''A''</font>

numpy.zeros_like(z)锛氭牴鎹紶鍏ユ暟缁勭殑鐨勫舰鐘跺垱寤哄叏涓洪浂鐨勬暟缁?

numpy.zones_like(z)锛氭牴鎹紶鍏ユ暟缁勭殑鐨勫舰鐘跺垱寤哄叏涓洪浂鐨勬暟缁?

### empty鍒涘缓鎸囧畾褰㈢姸鐨勬暟缁勶紝鍙～鍏呮暟鎹?
numpy.empty(shape, dtype=float, order="C")

+ shape锛氭寚瀹氭暟缁勭殑褰㈢姸
+ dtype锛氭湭鍒濆鍖栨暟缁勭殑鏁版嵁绫诲瀷锛屽彲閫夛紝榛樿涓篺loat
+ order锛?font style="color:rgb(6, 6, 7);">鐢ㄤ簬鎸囧畾鏁扮粍鍦ㄥ唴瀛樹腑鐨勫瓨鍌ㄩ『搴忥紝鍙€夛紝''C'', ''F'', ''A''</font>

numpyempty_like(z)锛氭牴鎹紶鍏ユ暟缁勭殑鐨勫舰鐘跺垱寤烘湭鍒濆鍖栨暟缁?

### full鍒涘缓鎸囧畾褰㈢姸锛屾寚瀹氬€肩殑鏁扮粍
numpy.full(shape,fill_value)

+ shape锛氭寚瀹氭暟缁勭殑褰㈢姸
+ fill_value锛氭寚瀹氬€?

numpy.full_like(a,fill_value): 瀵规寚瀹氭暟缁勭殑鍊煎叏鏀逛负fill_value

### 鍒涘缓鍗曚綅鐭╅樀eye,identity
瀵硅绾垮叏涓?锛屽叾浣欏€煎叏涓?鐨勭煩闃碉紝浠讳綍鐭╅樀涓庝箣鐩镐箻閮界瓑浜庡叾鏈韩

eye(shape,dtype=float)

identity(shape,dtype=float)

+ shape锛氭暟缁勭殑缁村害
+ dtype锛氭暟缁勭殑鏁版嵁绫诲瀷锛屽彲閫夛紝榛樿涓篺loat

### linspace鍒涘缓绛夊樊涓€缁存暟缁?logspace鍒涘缓绛夋瘮鏁板垪
np.linspace(start,stop,num=50,endpoing=True,retstep=False锛宒type=float)

np.logspace(start,stop,num=50,endpoing=True,base=10.0,dtype=float)

+ start锛氳捣濮嬪€? base**start
+ stop锛氱粓姝㈠€硷紝base**stop锛屽鏋渆ndpoing=true锛岃鍊煎寘鍚簬鏁板垪涓?
+ num锛氳鐢熸垚绛夋闀跨殑鏍锋湰鏁伴噺锛岄粯璁や负50
+ endpoint锛歍rue锛氳〃绀鸿鍊煎寘鍚簬鏁板垪涓紝False锛氫笌涔嬬浉鍙嶏紝榛樿涓篢rue
+ retstep锛氬鏋滀负True锛岀敓鎴愮殑鏁扮粍涓細鏄剧ず闂磋窛锛屽弽涔嬩笉鏄剧ず锛岄粯璁や负False
+ base锛氬鏁發og鐨勫簳鏁?
+ dtype锛歯darry鐨勬暟鎹被鍨嬶紝榛樿涓篺loat



### 涓€缁存暟缁勭储寮曞拰鍒囩墖
绱㈠紩锛氬彲浠ュ熀浜?-n鐨勪笅鏍囪繘琛岀储寮曪紝**arr[a]**

鍒囩墖锛氬苟璁剧疆start锛宻top锛宻tep,浠庡師鏁扮粍涓垏鍓蹭竴涓柊鐨勬暟缁?

**arr[start:stop:step]锛宎rr[start:stop]**

+ start锛氳捣浣嶇疆锛岄粯璁や负0
+ stop锛氱粓姝綅缃紝榛樿涓烘渶鍚庝竴涓綅缃?
+ step锛氭闀匡紝榛樿涓?, 褰撲负璐熸暟鏃讹紝浠庡悗寰€鍓嶅紑濮嬪垏鐗?

****

### 浜岀淮鏁扮粍绱㈠紩鍜屽垏鐗?
鏍规嵁涓嬫爣杩涜绱㈠紩

瀵硅鍜屽垪杩涜鍒囩墖 arr[琛岀储寮曪紝鍒楃储寮昡

**arr[start:stop:step, start:stop:step]**

```python
import numpy as np
x = np.arange(1,10).reshape#(3,3)
# 鑾峰彇绗簩琛?
x[1]
# 鑾峰彇绗簩琛岀涓夊垪
x[1][2]
x[1,2]
# 鑾峰彇鐨勪簩鍒?
x[:2]
# 鑾峰彇绗簩鍒颁笁琛岋紝绗竴鍒颁笁鍒?
x[1:2,0:2]
# 鍚屾椂鑾峰彇澶氫釜鏁版嵁鏃?绗簩琛岀涓夊垪锛岀涓夎绗笁鍒楃殑鏁版嵁
x[(1,2), (2,2)]
```

浜岀淮鏁版嵁涔熸敮鎸佽礋绱㈠紩

瀵规暟缁勭储寮曟垨鍒囩墖鍚庣殑鍊艰繘琛屼慨鏀瑰悗锛屽師鏁扮粍鐨勫€间篃浼氫竴璧疯淇敼

濡傛灉瀵规暟缁勮繘琛屾嫹璐漙np.copy`鍚庯紝淇敼鏂版暟缁勭殑鍊兼椂锛屽師鏁扮粍鐨勫€间笉浼氫慨鏀?

### 鏀瑰彉鏁扮粍鐨勭淮搴?
娉ㄦ剰锛氬墠鍚庢暟缁勭殑鍏冪礌涓暟涓嶈兘鏀瑰彉

**arr.reshape()**锛氬皢涓€缁存暟缁勮浆鎹负浜岀淮锛屼笁缁存垨鏇村缁村害鐨勬暟缁勶紝涔熷彲灏嗗缁存暟缁勮浆鎹綅涓€缁存暟缁?

**arr.ravel():**灏嗕笁缁存暟缁勮浆鎹负涓€缁存暟缁?

**arr.flatten():**灏嗕簩缁存暟缁勮浆鎹负涓€缁存暟缁?

**arr.shape=(6,4):**鍒╃敤shape灞炴€у皢涓夌淮鏁扮粍arr杞崲涓轰簩缁存暟缁?6琛岋紝4鍒?

**arr.resize((2,12)):**浣跨敤resize淇敼鏁扮粍鐨勭淮搴?



### 鏁扮粍鐨勬嫾鎺?
甯哥敤鐨勫嚱鏁?

1. concatenate((arr1,arr2,...), axis=0)
    - (arr1,arr2,...)锛氱浉鍚岀被鍨嬬殑鏁扮粍
    - axis锛氭部鐫€瀹冭繛鎺ユ暟缁勭殑杞达紝0锛氱涓€涓淮搴︼紝1锛氱浜屼釜缁村害锛屸€︹€︼紝榛樿涓?

**娉ㄦ剰锛氬缁存暟缁勬嫾鎺ユ椂闇€瑕佹暟缁勭殑褰㈢姸鐩稿悓**

2. hstack()锛氭按骞冲爢鍙犲簭鍒椾腑鐨勬暟缁勶紙鍒楁柟鍚戝嵆琛屼笉鍙樺嵆axis=0锛?
3. vstack()锛氱珫鐩村爢鍙犲簭鍒椾腑鐨勬暟缁勶紙琛屾柟鍚戝嵆鍒椾笉鍙樺嵆axis=1锛?
4. dstack()锛氬嵆axis=3

### 鏁扮粍鐨勮浆缃?
浜岀淮鏁扮粍鍙互浣跨敤arr.T杩涜瀵规暟缁勭殑杞疆

浣跨敤transpose杩涜澶氱淮鏁扮粍杞疆

transpose(arr, 鍒楄〃/鍏冪粍)

鍒楄〃/鍏冪粍锛氳〃绀烘兂瑕佽浆缃暟缁勭殑褰㈢姸

```python
import numpy as np

arr = np.arange(1,37).reshape(2,6,3)
arr2 = np.transpose(arr,(0,2,1))
print(arr2.shape)
# 杈撳嚭缁撴灉涓?2,3,6)
```

### 鏁扮粍鐨勫垎闅?
numpy.split(ary, indices_or_sections, axis)

+ ary锛氳鍒嗗壊鐨勬暟缁?
+ indices_or_sections锛氬鏋滄槸涓€涓暣鏁帮紝灏辩敤璇ユ暟杩涜骞冲潎鍒嗗壊锛屽嵆鍒嗘垚澶氬皯鍒嗭紱濡傛灉鏄竴涓暟缁勶紝涓烘部杞村垏鍒嗛殧鐨勪綅缃?宸﹀紑鍙抽棴)
+ axis锛氭部鐫€鍝釜缁村害杩涜鍒囧悜锛岄粯璁や负0

```python
import numpy as np
arr = np.arange(1,37).reshape(6,6)
# 浼犲叆鏁存暟锛屽钩鍧囧垎鎴愪笁涓暟缁?
np.split(arr, 3)
# 浼犲叆鏁扮粍
np.split(arr, [2,5])

```



### Numpy涓殑甯哥敤鍑芥暟
#### 鏁板鍑芥暟
+ np.abs(), np.fags()锛氳绠楁暣鏁帮紝娴偣鏁扮殑缁濆鍊?
+ np.sqrt()锛氳绠楀悇鍏冪礌鐨勫钩鏂规牴
+ np.reciprocal()锛氳绠楀悇鍏冪礌鐨勫€掓暟
+ np.square()锛氳绠楀悇鍏冪礌鐨勫钩鏂?
+ np.exp锛氳绠楀悇鍏冪礌鐨勬寚鏁癳x
+ np.log(), np.log10(), np.log2()锛氳绠楀悇鍏冪礌鐨勮嚜鐒跺鏁帮紝浠?0涓哄簳鐨勫鏁帮紝浠?涓哄簳鐨勫鏁?
+ np.slgn()锛氳绠楀悇鍏冪礌鐨勭鍙凤紝1锛堟暣鏁帮級锛?锛堥浂锛夛紝-1锛堣礋鏁帮級
+ np.cell(), np.floor(), np.rint()锛氬鍚勪釜鍏冪礌鍒嗗埆鍚戜笂锛屽悜涓嬪彇鏁达紝鍥涜垗浜斿叆
+ np.modf()锛氬皢鍚勪釜鍏冪礌鐨勫皬鏁伴儴鍒嗗拰鏁存暟閮ㄥ垎浠ヤ袱涓嫭绔嬬殑鏁扮粍杩斿洖
+ np.cos(), np.sin(), np.tan()锛氭眰鍚勪釜鍏冪礌鐨勪笁瑙掑嚱鏁?

#### 绠楁暟鍑芥暟
+ np.add(), np.subtract(), np.multiply(), np.divide()锛氬涓や釜鏁扮粍鐨勫悇涓厓绱犺繘琛屽姞锛坅+b锛夛紝鍑?a-b)锛屼箻(a*b)锛岄櫎(a/b)

out鍙傛暟鐨勪娇鐢細灏嗚绠楀悗鐨勬暟鎹紶鍏ユ寚瀹氱殑鏈垵濮嬪寲鐨勭浉鍚屾暟缁?

```python
import numpy as np
a = np.aragne(1,13).reshape(3,4)
b = np.aragne(13,24).reshape(3,4)
result = empty_like(a)
np.addd(a,b,out=result)
```

#### 缁熻鍑芥暟
+ np.sum(), np.mean(), np.prod()锛氭眰鍜岋紝姹傚钩鍧囧€硷紝姹傛墍鏈夊厓绱犵殑涔樼Н
+ np.std(), np.var(), np.median()锛氭眰鏍囧噯宸紝姹傛柟宸紝姹備腑浣嶆暟
+ np.power(arr, a, out=new_arr), np.sqrt(arr, a, out=new_arr)锛氬箓杩愮畻锛屽紑鏂?
+ np.min(), np.max()锛氭渶灏忓€硷紝鏈€澶у€?
+ np.argmin(), np.argmax()锛氭渶灏忓€间笅鏍囷紝鏈€澶у€间笅鏍?
+ np.cumsum()锛氬鏁扮粍涓厓绱犵疮鍔犳眰鍜岋紝鍙寚瀹氳酱鍚?
+ np.cumprod()锛氬鏁扮粍涓厓绱犵疮绉眰鍜岋紝鍙寚瀹氳酱鍚?
+ np.ptp()锛氳绠椾竴缁勬暟涓渶澶у€间笌鏈€灏忓€硷紝鍙寚瀹氳酱鍚?
+ np.unigue()锛氬垹闄ゆ暟缁勪腑閲嶅鏁版嵁锛屽苟瀵规暟鎹繘琛屾帓搴?
+ np.nonzero()锛氳繑鍥炴暟缁勪腑闈為浂鍏冪礌鐨勭储寮?

numpy.power()锛氬皢绗竴涓緭鍏ユ暟缁勪腑鐨勫厓绱犱綔涓哄簳鏁帮紝璁＄畻浠栦笌绗簩涓緭鍏ユ暟缁勪腑瀵瑰簲鍏冪礌鐨勫箓

瀵逛簬澶氱淮鏁扮粍鍙敤axis鍙傛暟鎸囧畾杞村悜

#### 鍏朵粬甯哥敤鍑芥暟
+ np.tile()锛氬皢鏁扮粍鐨勬暟鎹寜鐓ц鍒楀鍒舵墿灞?

```python
import numpy as np
arr = np.array([1,2,3,4])
# 灏嗘暟缁勬墿灞曞鍒朵袱娆★紝鐢熸垚涓€涓柊鐨勬暟缁?
arr2 = np.tile(arr, 2)
# 灏嗘暟缁勫湪鍒椾笂鎵╁睍涓ゆ锛屽湪琛屼笂鎵╁睍涓夋
arr3 = np.tile(arr, (2, 3))
```

+ np.repeat(arr, num, axis=0)锛氬皢鏁扮粍涓殑姣忎釜鍏冪礌閲嶅鑻ュ共娆★紝娌℃湁鎸囧畾axis鏃讹紝鐢熸垚涓€缁存暟缁?

```python
import numpy as np
arr = np.array([1,2,3,4])
# 灏嗘瘡涓厓绱犻噸澶?娆?
arr2 = np.repeat(arr, 3)
```

+ np.roll(arr锛宻um锛宎xis=0)锛氬鏁扮粍鍏冪礌杩涜绉讳綅锛宻um澶т簬0鍚戝悗锛宻um灏忎簬0鍚戝墠锛屾寚瀹歛xis鏃讹紝浼氬皢鏁翠釜缁村害鐨勬暟鍚戝悗绉讳綅

```python
import numpy as np
arr = np.array([1,2,3,4])
# 灏嗘瘡涓厓绱犲悜鍚庤皟2浣?
arr2 = np.roll(arr, 2)
```

+ resize()锛氶噸鏂拌皟鏁存暟缁勭殑澶у皬锛屾暟缁勫厓绱犲彲浠ヤ笉鍚?
+ place()/put()锛氬皢鏁扮粍涓弧瓒虫潯浠剁殑鍏冪礌/鎸囧畾鐨勫厓绱犵殑绱㈠紩鏇挎崲涓烘寚瀹氱殑鍊?

```python
import numpy as np
arr = np.array([1,2,3,4])
# 灏嗘暟缁勪腑灏忎簬5鐨勬暟鐢?鏇挎崲
np.place(arr, arr<5, 0)
# 灏嗙储寮曚负2鐨勫€兼浛鎹㈡帀
np.put(arr, 2, 1000)
```

+ np.savetxt(path, arr, fmt=None)锛氬皢鏁版嵁淇濆瓨鍒皌xt鏂囦欢涓?
    - path锛氭枃浠惰矾寰?
    - arr锛氭暟缁?
    - fmt锛氭暟鎹殑鏁版嵁绫诲瀷, %d, %f
+ np.roadtxt(path, dtype=float, delimiter='',''锛?skiprows=0, <font style="color:rgb(6, 6, 7);">usecols=None</font>)锛氫粠鏂囦欢涓姞杞芥暟鎹?
    - path锛氭枃浠惰矾寰?
    - dtype锛氭暟鎹被鍨嬶紝 榛樿涓篺loat
    - delimeiter锛氭寚瀹氬垎闅旂
    - skiprows锛氳烦杩囨枃浠跺紑澶寸殑琛屾暟锛岄粯璁や负0
    - usecols锛氭寚瀹氶渶瑕佽鍙栫殑鍒楋紝榛樿涓篘one锛岃〃绀鸿鍙栨墍鏈夊垪
+ np.genfromtxt()锛氭牴鎹枃浠跺唴瀹圭敓鎴愭暟鎹紝鍙互鎸囧畾缂哄け鍊肩殑澶勭悊绛?
+ np.any()锛氬鏋滄暟缁勪腑瀛樺湪涓€涓负True鐨勫厓绱狅紙鎴栬€呰兘杞负True鐨勫厓绱狅級锛岃繑鍥濼rue
+ np.all()锛氬鏋滄暟缁勪腑鎵€鏈夊厓绱犻兘涓篢rue鐨勫厓绱狅紙鎴栬€呰兘杞负True鐨勫厓绱狅級锛岃繑鍥濼rue
+ np.where(鏉′欢, x, y)锛氬皢姣忎釜鍏冪礌杩涜鍒ゆ柇锛屽鏋滄潯浠朵负True锛屽搴斿€间负x锛屽惁鍒欏搴斿€间负y
+ np.dot()锛氬皢鐭╅樀鐩镐箻
+ np.sort(arr锛宎xis=1)锛氬鏁扮粍杩涜浠庡皬鍒板ぇ鎺掑簭锛岃繑鍥炰竴涓柊鐨勬帓濂藉簭鐨勬暟缁勶紝axis榛樿涓?锛屽師鏁扮粍涓嶅彉
+ np.argsort()锛氳繑鍥炵殑鏄暟缁勫€间粠灏忓埌澶ф帓搴忓悗鍏冪礌瀵瑰簲鐨勭储寮曞€?

### Numpy骞挎挱鏈哄埗
1. **<font style="color:rgb(6, 6, 7);">濡傛灉涓や釜鏁扮粍鐨勭淮搴︽暟涓嶅悓锛屽舰鐘惰緝灏忕殑鏁扮粍浼氬湪鏈€宸﹁竟琛?1</font>**<font style="color:rgb(6, 6, 7);">锛岀洿鍒颁袱涓暟缁勭殑缁村害鏁扮浉鍚屻€?/font>
2. **<font style="color:rgb(6, 6, 7);">浠庡彸鍚戝乏姣旇緝涓や釜鏁扮粍鐨勫舰鐘?/font>**<font style="color:rgb(6, 6, 7);">锛屽鏋滄煇涓淮搴︾殑澶у皬涓嶅悓锛屼笖鍏朵腑涓€涓暟缁勫湪璇ョ淮搴︾殑澶у皬涓?1锛屽垯璇ユ暟缁勪細鍦ㄨ缁村害涓婅繘琛屾墿灞曪紝浠ュ尮閰嶅彟涓€涓暟缁勭殑澶у皬銆?/font>
3. **<font style="color:rgb(6, 6, 7);">濡傛灉鏌愪釜缁村害鐨勫ぇ灏忎笉鍚岋紝涓斾袱涓暟缁勫湪璇ョ淮搴︾殑澶у皬鍧囦笉涓?1锛屽垯浼氭姏鍑洪敊璇?/font>**<font style="color:rgb(6, 6, 7);">锛屽洜涓烘棤娉曡繘琛屽箍鎾€?/font>

### 姣旇緝鎺╃爜
<font style="color:rgb(6, 6, 7);">甯冨皵鎺╃爜鏄?NumPy 涓鐞嗘暟缁勬暟鎹殑寮哄ぇ宸ュ叿锛屽彲浠ラ珮鏁堝湴绛涢€夈€佷慨鏀瑰拰缁熻鏁扮粍涓殑鍏冪礌銆傞€氳繃鍚堢悊浣跨敤甯冨皵鎺╃爜锛屽彲浠ラ伩鍏嶆樉寮忓惊鐜紝鎻愰珮浠ｇ爜鐨勬晥鐜囧拰鍙鎬?/font>

### <font style="color:rgb(6, 6, 7);">榄旀硶鍛戒护</font>
1. %time 鍜?%timeit鐢ㄤ簬娴嬮噺浠ｇ爜鐨勬墽琛屾椂闂淬€?
    - %time锛氭祴閲忓崟娆℃墽琛岀殑鏃堕棿銆?
    - %timeit锛氬娆℃墽琛屼唬鐮侊紝缁欏嚭骞冲潎鎵ц鏃堕棿锛屾洿閫傚悎娴嬮噺灏忔浠ｇ爜鐨勬€ц兘銆?

```python
import numpy as np
娴嬮噺鍗曟鎵ц鏃堕棿
%time np.random.rand(1000000)
娴嬮噺澶氭鎵ц鐨勫钩鍧囨椂闂?
%timeit np.random.rand(1000000)
```

2. %matplotlib锛氱敤浜庡湪 Jupyter Notebook 涓祵鍏?Matplotlib 鍥惧舰銆?
    - %matplotlib inline锛氬皢鍥惧舰宓屽叆鍒?Notebook 涓€?
    - %matplotlib notebook锛氭彁渚涗氦浜掑紡鍥惧舰鏀寔銆?

```python
%matplotlib inline
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 100)
plt.plot(x, np.sin(x))
plt.show()
```

3.  %who 鍜?%whos锛氱敤浜庡垪鍑哄綋鍓嶅懡鍚嶇┖闂翠腑鐨勫彉閲忋€?
    - %who锛氬垪鍑哄綋鍓嶅懡鍚嶇┖闂翠腑鐨勬墍鏈夊彉閲忋€?
    - %whos锛氬垪鍑哄綋鍓嶅懡鍚嶇┖闂翠腑鐨勬墍鏈夊彉閲忓強鍏惰缁嗕俊鎭紙绫诲瀷銆佸ぇ灏忕瓑锛夈€?

```python
import numpy as np
a = np.array([1, 2, 3])
b = np.array([[1, 2], [3, 4]])
%who
%whos
```

4. %run锛氱敤浜庤繍琛屼竴涓?Python 鑴氭湰鏂囦欢

```python
%run my_script.py
```


', NOW());
SET @last_note_id = LAST_INSERT_ID();

INSERT INTO 
ote (uthor_id, 	itle, content, created_at)
VALUES (1005, 'SprngMVC', '# 绠€浠?
## 鍩烘湰鍘熺悊
<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1750230213640-25cd6846-2414-4a6d-aac0-d71d412546ca.png" width="744.8" title="" crop="0,0,1,1" id="uf44df764" class="ne-image">

**绠€瑕佸垎鏋愭墽琛屾祦绋?*

1. DispatcherServlet琛ㄧず鍓嶇疆鎺у埗鍣紝鏄暣涓猄pringMVC鐨勬帶鍒朵腑蹇冦€傜敤鎴峰彂鍑鸿姹傦紝DispatcherServlet鎺ユ敹璇锋眰骞舵嫤鎴姹傘€?

鎴戜滑鍋囪璇锋眰鐨剈rl涓?: http://localhost:8080/SpringMVC/hello

**濡備笂url鎷嗗垎鎴愪笁閮ㄥ垎锛?*

http://localhost:8080鏈嶅姟鍣ㄥ煙鍚?

SpringMVC閮ㄧ讲鍦ㄦ湇鍔″櫒涓婄殑web绔欑偣

hello琛ㄧず鎺у埗鍣?

閫氳繃鍒嗘瀽锛屽涓妘rl琛ㄧず涓猴細璇锋眰浣嶄簬鏈嶅姟鍣╨ocalhost:8080涓婄殑SpringMVC绔欑偣鐨刪ello鎺у埗鍣ㄣ€?

2. HandlerMapping涓哄鐞嗗櫒鏄犲皠銆侱ispatcherServlet璋冪敤HandlerMapping,HandlerMapping鏍规嵁璇锋眰url鏌ユ壘Handler銆?
3. HandlerExecution琛ㄧず鍏蜂綋鐨凥andler,鍏朵富瑕佷綔鐢ㄦ槸鏍规嵁url鏌ユ壘鎺у埗鍣紝濡備笂url琚煡鎵炬帶鍒跺櫒涓猴細hello銆?
4. HandlerExecution灏嗚В鏋愬悗鐨勪俊鎭紶閫掔粰DispatcherServlet,濡傝В鏋愭帶鍒跺櫒鏄犲皠绛夈€?
5. HandlerAdapter琛ㄧず澶勭悊鍣ㄩ€傞厤鍣紝鍏舵寜鐓х壒瀹氱殑瑙勫垯鍘绘墽琛孒andler銆?
6. Handler璁╁叿浣撶殑Controller鎵ц銆?
7. Controller灏嗗叿浣撶殑鎵ц淇℃伅杩斿洖缁橦andlerAdapter,濡侻odelAndView銆?
8. HandlerAdapter灏嗚鍥鹃€昏緫鍚嶆垨妯″瀷浼犻€掔粰DispatcherServlet銆?
9. DispatcherServlet璋冪敤瑙嗗浘瑙ｆ瀽鍣?ViewResolver)鏉ヨВ鏋怘andlerAdapter浼犻€掔殑閫昏緫瑙嗗浘鍚嶃€?
10. 瑙嗗浘瑙ｆ瀽鍣ㄥ皢瑙ｆ瀽鐨勯€昏緫瑙嗗浘鍚嶄紶缁橠ispatcherServlet銆?
11. DispatcherServlet鏍规嵁瑙嗗浘瑙ｆ瀽鍣ㄨВ鏋愮殑瑙嗗浘缁撴灉锛岃皟鐢ㄥ叿浣撶殑瑙嗗浘銆?
12. 鏈€缁堣鍥惧憟鐜扮粰鐢ㄦ埛銆?

## 绗竴涓猻pringMVC
+ web.xml閰嶇疆DispatchServlet

```java
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns="http://xmlns.jcp.org/xml/ns/javaee"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_4_0.xsd"
         version="4.0">
    <!--閰嶇疆dispatchServlet锛氳繖涓槸springMVC鐨勬牳蹇冿細璇锋眰鍒嗗彂鍣紝鍓嶇鎺у埗鍣?->
    <servlet>
        <servlet-name>springmvc</servlet-name>
        <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
        <!--DispatcherServlet瑕佺粦瀹歴pring鐨勯厤缃枃浠?->
        <init-param>
            <param-name>contextConfigLocation</param-name>
            <param-value>classpath:springmvc-servlet.xml</param-value>
        </init-param>
        <!--鍚姩绾у埆-->
        <load-on-startup>1</load-on-startup>
    </servlet>

    <servlet-mapping>
        <servlet-name>springmvc</servlet-name>
        <url-pattern>/</url-pattern>
    </servlet-mapping>
</web-app>
```

+ 璁剧疆瑙嗗浘瑙ｆ瀽鍣?

```java
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xmlns:aop="http://www.springframework.org/schema/aop"
       xsi:schemaLocation="http://www.springframework.org/schema/beans
                           http://www.springframework.org/schema/beans/spring-beans.xsd">

    <!-- 澶勭悊鍣ㄦ槧灏勫櫒锛氬彲浠ヤ笉鐢ㄦ樉寮忚缃?->
    <bean class="org.springframework.web.servlet.handler.BeanNameUrlHandlerMapping"/>

    <!--澶勭悊鍣ㄩ€傞厤鍣細鍙互涓嶇敤鏄惧紡璁剧疆-->
    <bean class="org.springframework.web.servlet.mvc.SimpleControllerHandlerAdapter"/>

    <!--瑙嗗浘瑙ｆ瀽鍣? 妯＄増寮曟搸锛屽繀椤昏缃?->
    <bean class="org.springframework.web.servlet.view.InternalResourceViewResolver" id="internalResourceViewResolver">
        <!--鍓嶇紑-->
        <property name="prefix" value="/WEB-INF/jsp/"/>
        <!--鍚庣紑-->
        <property name="suffix" value=".jsp"/>
    </bean>

    <!--BeanNameUrlHandlerMapping锛屾敞鍐屽疄鐜扮被-->
    <bean id="/hello" class="com.jie.controller.HelloController"/>
</beans>
```

+ 瀹炵幇Controller鎺ュ彛

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

        // 涓氬姟浠ｇ爜
        String message = "Hello Spring MVC!";

        modelAndView.addObject("msg", message);
        // 瑙嗗浘璺宠浆
        modelAndView.setViewName("test");

        return modelAndView;
    }
}
```

## 娉ㄨВ瀹炵幇锛堢畝鍗曪級
+ web.xml 閰嶇疆鍩烘湰涓嶅彉

```xml
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns="http://xmlns.jcp.org/xml/ns/javaee"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_4_0.xsd"
  version="4.0">
  <!--閰嶇疆dispatchServlet锛氳繖涓槸springMVC鐨勬牳蹇冿細璇锋眰鍒嗗彂鍣紝鍓嶇鎺у埗鍣?->
  <servlet>
    <servlet-name>springmvc</servlet-name>
    <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
    <!--DispatcherServlet瑕佺粦瀹歴pring鐨勯厤缃枃浠?->
    <init-param>
      <param-name>contextConfigLocation</param-name>
      <param-value>classpath:springmvc-servlet.xml</param-value>
    </init-param>
    <!--鍚姩绾у埆-->
    <load-on-startup>1</load-on-startup>
  </servlet>

  <servlet-mapping>
    <servlet-name>springmvc</servlet-name>
    <url-pattern>/</url-pattern>
  </servlet-mapping>
</web-app>
```

+ springmvc-servlet.xm 璁剧疆娉ㄨВ鎵弿锛孖OC瀹瑰櫒锛岃鍥捐В鏋愬櫒

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
    <!-- 鑷姩鎵弿鍖咃紝璁╂寚瀹氬寘涓嬬殑娉ㄨВ鐢熸晥,鐢盜OC瀹瑰櫒缁熶竴绠＄悊 -->
    <context:component-scan base-package="com.jie.controller"/>
    <mvc:default-servlet-handler />
    <mvc:annotation-driven />

    <!-- 瑙嗗浘瑙ｆ瀽鍣?-->
    <bean class="org.springframework.web.servlet.view.InternalResourceViewResolver" id="internalResourceViewResolver">
        <!-- 鍓嶇紑 -->
        <property name="prefix" value="/WEB-INF/jsp/" />
        <!-- 鍚庣紑 -->
        <property name="suffix" value=".jsp" />   </bean>
</beans>
```

+ 鍒涘缓瀵瑰簲鐨勫寘鍜屽疄鐜版柟娉?

```java
@Controller
public class HelloController {

    @RequestMapping("/hello")
    public String hello(Model model) {

        //鍚戞ā鍨嬩腑娣诲姞灞炴€sg涓庡€硷紝鍙互鍦↗SP椤甸潰涓彇鍑哄苟娓叉煋
        model.addAttribute("msg", "Hello World111111111111111");
        //web-inf/jsp/hello.jsp
        return "hello";
    }
}
```

+ 鍓嶇鎺ユ敹鍙傛暟  msg

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

# Controller鍜孯equestMapping
## 鎺у埗鍣–ontroller
+ 鎺у埗鍣ㄥ鏉傛彁渚涜闂簲鐢ㄧ▼搴忕殑琛屼负锛岄€氬父閫氳繃鎺ュ彛瀹氫箟鎴栨敞瑙ｅ畾涔変袱绉嶆柟娉曞疄鐜般€?
+ 鎺у埗鍣ㄨ礋璐ｈВ鏋愮敤鎴风殑璇锋眰骞跺皢鍏惰浆鎹负涓€涓ā鍨嬨€?
+ 鍦⊿pring MVC涓竴涓帶鍒跺櫒绫诲彲浠ュ寘鍚涓柟娉?
+ 鍦⊿pring MVC涓紝瀵逛簬Controller鐨勯厤缃柟寮忔湁寰堝绉?

浣跨敤娉ㄨВ@Controller

+ @Controller娉ㄨВ绫诲瀷鐢ㄤ簬澹版槑Spring绫荤殑瀹炰緥鏄竴涓帶鍒跺櫒锛堝湪璁睮OC鏃惰繕鎻愬埌浜嗗彟澶?涓敞瑙ｏ級锛?
+ Spring鍙互浣跨敤鎵弿鏈哄埗鏉ユ壘鍒板簲鐢ㄧ▼搴忎腑鎵€鏈夊熀浜庢敞瑙ｇ殑鎺у埗鍣ㄧ被锛屼负浜嗕繚璇丼pring鑳芥壘鍒颁綘鐨勬帶鍒跺櫒锛岄渶瑕佸湪閰嶇疆鏂囦欢涓０鏄庣粍浠舵壂鎻忋€?

```xml
<!-- 鑷姩鎵弿鎸囧畾鐨勫寘锛屼笅闈㈡墍鏈夋敞瑙ｇ被浜ょ粰IOC瀹瑰櫒绠＄悊 -->
<context:component-scan base-package="com.kuang.controller"/>
```

+ 澧炲姞涓€涓狢ontrollerTest2绫伙紝浣跨敤娉ㄨВ瀹炵幇锛?

```java
//@Controller娉ㄨВ鐨勭被浼氳嚜鍔ㄦ坊鍔犲埌Spring涓婁笅鏂囦腑
@Controller
public class ControllerTest2{

    //鏄犲皠璁块棶璺緞
    @RequestMapping("/t2")
    public String index(Model model){
        //Spring MVC浼氳嚜鍔ㄥ疄渚嬪寲涓€涓狹odel瀵硅薄鐢ㄤ簬鍚戣鍥句腑浼犲€?
        model.addAttribute("msg", "ControllerTest2");
        //杩斿洖瑙嗗浘浣嶇疆
        return "test";
    }
}
```



## RequestMapping
**@RequestMapping**

+ @RequestMapping娉ㄨВ鐢ㄤ簬鏄犲皠url鍒版帶鍒跺櫒绫绘垨涓€涓壒瀹氱殑澶勭悊绋嬪簭鏂规硶銆傚彲鐢ㄤ簬绫绘垨鏂规硶涓娿€傜敤浜庣被涓婏紝琛ㄧず绫讳腑鐨勬墍鏈夊搷搴旇姹傜殑鏂规硶閮芥槸浠ヨ鍦板潃浣滀负鐖惰矾寰勩€?
+ 涓轰簡娴嬭瘯缁撹鏇村姞鍑嗙‘锛屾垜浠彲浠ュ姞涓婁竴涓」鐩悕娴嬭瘯 myweb
+ 鍙敞瑙ｅ湪鏂规硶涓婇潰

```java
@Controller
public class TestController {
    @RequestMapping("/h1")
    public String test(){
        return "test";
    }
}
```

璁块棶璺緞锛歨ttp://localhost:8080 / 椤圭洰鍚?/ h1

+ 鍚屾椂娉ㄨВ绫讳笌鏂规硶

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

璁块棶璺緞锛歨ttp://localhost:8080 / 椤圭洰鍚? admin /h1  , 闇€瑕佸厛鎸囧畾绫荤殑璺緞鍐嶆寚瀹氭柟娉曠殑璺緞锛?

## RestFul 椋庢牸
**姒傚康**

+ Restful灏辨槸涓€涓祫婧愬畾浣嶅強璧勬簮鎿嶄綔鐨勯鏍笺€備笉鏄爣鍑嗕篃涓嶆槸鍗忚锛屽彧鏄竴绉嶉鏍笺€傚熀浜庤繖涓鏍艰璁＄殑杞欢鍙互鏇寸畝娲侊紝鏇存湁灞傛锛屾洿鏄撲簬瀹炵幇缂撳瓨绛夋満鍒躲€?

**鍔熻兘**

+ 璧勬簮锛氫簰鑱旂綉鎵€鏈夌殑浜嬬墿閮藉彲浠ヨ鎶借薄涓鸿祫婧?
+ 璧勬簮鎿嶄綔锛氫娇鐢≒OST銆丏ELETE銆丳UT銆丟ET锛屼娇鐢ㄤ笉鍚屾柟娉曞璧勬簮杩涜鎿嶄綔銆傚垎鍒搴?娣诲姞銆?鍒犻櫎銆佷慨鏀广€佹煡璇€?

**浼犵粺鏂瑰紡鎿嶄綔璧勬簮**  锛氶€氳繃涓嶅悓鐨勫弬鏁版潵瀹炵幇涓嶅悓鐨勬晥鏋滐紒鏂规硶鍗曚竴锛宲ost 鍜?get

	http://127.0.0.1/item/queryItem.action?id=1 鏌ヨ,GET

	http://127.0.0.1/item/saveItem.action 鏂板,POST

	http://127.0.0.1/item/updateItem.action 鏇存柊,POST

	http://127.0.0.1/item/deleteItem.action?id=1 鍒犻櫎,GET鎴朠OST

**浣跨敤RESTful鎿嶄綔璧勬簮** 锛氬彲浠ラ€氳繃涓嶅悓鐨勮姹傛柟寮忔潵瀹炵幇涓嶅悓鐨勬晥鏋滐紒濡備笅锛氳姹傚湴鍧€涓€鏍凤紝浣嗘槸鍔熻兘鍙互涓嶅悓锛?

	http://127.0.0.1/item/1 鏌ヨ,GET

	http://127.0.0.1/item 鏂板,POST

	http://127.0.0.1/item 鏇存柊,PUT

	http://127.0.0.1/item/1 鍒犻櫎,DELETE

**瀛︿範娴嬭瘯**

+ 鍦⊿pring MVC涓彲浠ヤ娇鐢? @PathVariable 娉ㄨВ锛岃鏂规硶鍙傛暟鐨勫€煎搴旂粦瀹氬埌涓€涓猆RI妯℃澘鍙橀噺涓娿€?

```java
@Controller
public class RestFulController {

    //鏄犲皠璁块棶璺緞
    @RequestMapping("/commit/{p1}/{p2}")
    public String index(@PathVariable int p1, @PathVariable int p2, Model model){

        int result = p1+p2;
        //Spring MVC浼氳嚜鍔ㄥ疄渚嬪寲涓€涓狹odel瀵硅薄鐢ㄤ簬鍚戣鍥句腑浼犲€?
        model.addAttribute("msg", "缁撴灉锛?+result);
        //杩斿洖瑙嗗浘浣嶇疆
        // localhost:8080/commit/p1/p2
        return "test";
    }
}
```

**浣跨敤method灞炴€ф寚瀹氳姹傜被鍨?*

+ 鐢ㄤ簬绾︽潫璇锋眰鐨勭被鍨嬶紝鍙互鏀剁獎璇锋眰鑼冨洿銆傛寚瀹氳姹傝皳璇嶇殑绫诲瀷濡侴ET, POST, HEAD, OPTIONS, PUT, PATCH, DELETE, TRACE绛?

**鎵€鏈夌殑鍦板潃鏍忚姹傞粯璁ら兘浼氭槸 HTTP GET 绫诲瀷鐨?*

+ 鏂规硶绾у埆鐨勬敞瑙ｅ彉浣撴湁濡備笅鍑犱釜锛氱粍鍚堟敞瑙?

```java
@GetMapping
@PostMapping
@PutMapping
@DeleteMapping
@PatchMapping
```

+ @GetMapping 鏄竴涓粍鍚堟敞瑙ｏ紝骞虫椂浣跨敤鐨勪細姣旇緝澶氾紒
+ 瀹冩墍鎵紨鐨勬槸 @RequestMapping(method =RequestMethod.GET) 鐨勪竴涓揩鎹锋柟寮忋€?

# 杞彂銆佽烦杞€佹暟鎹鐞?
## SpringMVC瀹炵幇杞彂鍜岃烦杞?
**閫氳繃SpringMVC鏉ュ疄鐜拌浆鍙戝拰閲嶅畾鍚?- 鏃犻渶瑙嗗浘瑙ｆ瀽鍣紱**

娴嬭瘯鍓嶏紝闇€瑕佸皢瑙嗗浘瑙ｆ瀽鍣ㄦ敞閲婃帀

```java
@Controller
public class ResultSpringMVC {
    @RequestMapping("/rsm/t1")
    public String test1(){
        //杞彂
        return "/index.jsp";
    }

    @RequestMapping("/rsm/t2")
    public String test2(){
        //杞彂浜?
        return "forward:/index.jsp";
    }

    @RequestMapping("/rsm/t3")
    public String test3(){
        //閲嶅畾鍚?
        return "redirect:/index.jsp";
    }
}
```

**閫氳繃SpringMVC鏉ュ疄鐜拌浆鍙戝拰閲嶅畾鍚?- 鏈夎鍥捐В鏋愬櫒锛?*

閲嶅畾鍚?, 涓嶉渶瑕佽鍥捐В鏋愬櫒 , 鏈川灏辨槸閲嶆柊璇锋眰涓€涓柊鍦版柟鍢?, 鎵€浠ユ敞鎰忚矾寰勯棶棰?

鍙互閲嶅畾鍚戝埌鍙﹀涓€涓姹傚疄鐜?.

```java
@Controller
public class ResultSpringMVC2 {
    @RequestMapping("/rsm2/t1")
    public String test1(){
        //杞彂
        return "test";
    }

    @RequestMapping("/rsm2/t2")
    public String test2(){
        //閲嶅畾鍚?
        return "redirect:/index.jsp";
        //return "redirect:hello.do"; //hello.do涓哄彟涓€涓姹?
    }

}
```

## 鏁版嵁澶勭悊
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
    // 鍓嶇浼犻€掍竴涓弬鏁?
    public String test1(@PathVariable("username") String name, Model model) {

        // 1.鎺ユ敹鍓嶇鏁版嵁
        System.out.println(name);

        // 2.灏嗚繑鍥炵殑缁撴灉浼犻€掔粰鍓嶇  Model
        model.addAttribute("msg", name);

        // 璺宠浆瑙嗗浘
        return "hello";
    }

    /**
     * 1.鎺ユ敹鍓嶇鐢ㄦ埛浼犻€掔殑鍙傛暟锛屽垽鏂弬鏁扮殑鍚嶅瓧锛屽亣璁惧悕瀛楃洿鎺ュ湪鏂规硶涓婏紝鍙互鐩存帴浣跨敤
     * 2. 鍋囪浼犻€掔殑鍙傛暟瀵硅薄User锛屽尮閰峌ser瀵硅薄涓殑瀛楁鍚嶏紝濡傛灉鍚嶅瓧涓€鑷村垯OK锛屽惁鍒欏尮閰嶄笉鍒?
     * **/

    // 鍓嶇浼犻€掍竴涓璞?锛?id锛?name锛?age
    @GetMapping("/t2")
    public String test2(User user, Model model) {
        System.out.println(user);
        return "hello";
    }


}

```

# 涔辩爜闂
## SpringMVC瑙ｅ喅涔辩爜鐨勮繃婊ゅ櫒
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

## 鑷畾涔夎繃婊ゅ櫒绫?
+ 杩囨护鍣ㄧ被

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
 * 瑙ｅ喅get鍜宲ost璇锋眰 鍏ㄩ儴涔辩爜鐨勮繃婊ゅ櫒
 */
public class GenericEncodingFilter implements Filter {

    @Override
    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        //澶勭悊response鐨勫瓧绗︾紪鐮?
        HttpServletResponse myResponse=(HttpServletResponse) response;
        myResponse.setContentType("text/html;charset=UTF-8");

        // 杞瀷涓轰笌鍗忚鐩稿叧瀵硅薄
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        // 瀵箁equest鍖呰澧炲己
        HttpServletRequest myrequest = new MyRequest(httpServletRequest);
        chain.doFilter(myrequest, response);
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

}

//鑷畾涔塺equest瀵硅薄锛孒ttpServletRequest鐨勫寘瑁呯被
class MyRequest extends HttpServletRequestWrapper {

    private HttpServletRequest request;
    //鏄惁缂栫爜鐨勬爣璁?
    private boolean hasEncode;
    //瀹氫箟涓€涓彲浠ヤ紶鍏ttpServletRequest瀵硅薄鐨勬瀯閫犲嚱鏁帮紝浠ヤ究瀵瑰叾杩涜瑁呴グ
    public MyRequest(HttpServletRequest request) {
        super(request);// super蹇呴』鍐?
        this.request = request;
    }

    // 瀵归渶瑕佸寮烘柟娉?杩涜瑕嗙洊
    @Override
    public Map getParameterMap() {
        // 鍏堣幏寰楄姹傛柟寮?
        String method = request.getMethod();
        if (method.equalsIgnoreCase("post")) {
            // post璇锋眰
            try {
                // 澶勭悊post涔辩爜
                request.setCharacterEncoding("utf-8");
                return request.getParameterMap();
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        } else if (method.equalsIgnoreCase("get")) {
            // get璇锋眰
            Map<String, String[]> parameterMap = request.getParameterMap();
            if (!hasEncode) { // 纭繚get鎵嬪姩缂栫爜閫昏緫鍙繍琛屼竴娆?
                for (String parameterName : parameterMap.keySet()) {
                    String[] values = parameterMap.get(parameterName);
                    if (values != null) {
                        for (int i = 0; i < values.length; i++) {
                            try {
                                // 澶勭悊get涔辩爜
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

    //鍙栦竴涓€?
    @Override
    public String getParameter(String name) {
        Map<String, String[]> parameterMap = getParameterMap();
        String[] values = parameterMap.get(name);
        if (values == null) {
            return null;
        }
        return values[0]; // 鍙栧洖鍙傛暟鐨勭涓€涓€?
    }

    //鍙栨墍鏈夊€?
    @Override
    public String[] getParameterValues(String name) {
        Map<String, String[]> parameterMap = getParameterMap();
        String[] values = parameterMap.get(name);
        return values;
    }
}
```

+ 鍦╳eb.xml涓厤缃繖涓繃婊ゅ櫒

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

## JSON涔辩爜闂
    - 瑙ｅ喅涔辩爜鐨勯棶棰?
        * 浣跨敤@RequestMapping璁剧疆

```xml
@RequestMapping(value = "/t1",produces = "application/json;charset=utf-8")
```

        * 鎴戜滑鍙互鍦╯pringmvc鐨勯厤缃枃浠朵笂娣诲姞涓€娈垫秷鎭疭tringHttpMessageConverter杞崲閰嶇疆锛?

```xml
<!--鎴戜滑鍙互鍦╯pringmvc鐨勯厤缃枃浠朵笂娣诲姞涓€娈垫秷鎭疭tringHttpMessageConverter杞崲閰嶇疆锛?->
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
## 绠€浠?
+ JSON(JavaScript Object Notation, JS 瀵硅薄鏍囪) 鏄竴绉嶈交閲忕骇鐨勬暟鎹氦鎹㈡牸寮忥紝鐩墠浣跨敤鐗瑰埆骞挎硾銆?
+ 閲囩敤瀹屽叏鐙珛浜庣紪绋嬭瑷€鐨?*鏂囨湰鏍煎紡**鏉ュ瓨鍌ㄥ拰琛ㄧず鏁版嵁銆?
+ 绠€娲佸拰娓呮櫚鐨勫眰娆＄粨鏋勪娇寰?JSON 鎴愪负鐞嗘兂鐨勬暟鎹氦鎹㈣瑷€銆?
+ 鏄撲簬浜洪槄璇诲拰缂栧啓锛屽悓鏃朵篃鏄撲簬鏈哄櫒瑙ｆ瀽鍜岀敓鎴愶紝骞舵湁鏁堝湴鎻愬崌缃戠粶浼犺緭鏁堢巼銆?

鍦?JavaScript 璇█涓紝涓€鍒囬兘鏄璞°€傚洜姝わ紝浠讳綍JavaScript 鏀寔鐨勭被鍨嬮兘鍙互閫氳繃 JSON 鏉ヨ〃绀猴紝渚嬪瀛楃涓层€佹暟瀛椼€佸璞°€佹暟缁勭瓑銆傜湅鐪嬩粬鐨勮姹傚拰璇硶鏍煎紡锛?

+ 瀵硅薄琛ㄧず涓洪敭鍊煎锛屾暟鎹敱閫楀彿鍒嗛殧
+ 鑺辨嫭鍙蜂繚瀛樺璞?
+ 鏂规嫭鍙蜂繚瀛樻暟缁?
+ JSON(JavaScript Object Notation, JS 瀵硅薄鏍囪) 鏄竴绉嶈交閲忕骇鐨勬暟鎹氦鎹㈡牸寮忥紝鐩墠浣跨敤鐗瑰埆骞挎硾銆?

**JSON 閿€煎**鏄敤鏉ヤ繚瀛?JavaScript 瀵硅薄鐨勪竴绉嶆柟寮忥紝鍜?JavaScript 瀵硅薄鐨勫啓娉曚篃澶у悓灏忓紓锛岄敭/鍊煎缁勫悎涓殑閿悕鍐欏湪鍓嶉潰骞剁敤鍙屽紩鍙?"" 鍖呰９锛屼娇鐢ㄥ啋鍙?: 鍒嗛殧锛岀劧鍚庣揣鎺ョ潃鍊硷細

```json
{"name": "QinJiang"}
{"age": "3"}
{"sex": "鐢?}
```

寰堝浜烘悶涓嶆竻妤?JSON 鍜?JavaScript 瀵硅薄鐨勫叧绯伙紝鐢氳嚦杩炶皝鏄皝閮戒笉娓呮銆傚叾瀹烇紝鍙互杩欎箞鐞嗚В锛?

JSON 鏄?JavaScript 瀵硅薄鐨勫瓧绗︿覆琛ㄧず娉曪紝瀹冧娇鐢ㄦ枃鏈〃绀轰竴涓?JS 瀵硅薄鐨勪俊鎭紝鏈川鏄竴涓瓧绗︿覆銆?

```javascript
//杩欐槸涓€涓璞★紝娉ㄦ剰閿悕涔熸槸鍙互浣跨敤寮曞彿鍖呰９鐨?
var obj = {a: ''Hello'', b: ''World''}; 
//杩欐槸涓€涓?JSON 瀛楃涓诧紝鏈川鏄竴涓瓧绗︿覆
var json = ''{"a": "Hello", "b": "World"}''; 
```

**JSON 鍜?JavaScript 瀵硅薄浜掕浆**

瑕佸疄鐜颁粠JSON瀛楃涓茶浆鎹负JavaScript 瀵硅薄锛屼娇鐢?JSON.parse() 鏂规硶锛?

```javascript
var obj = JSON.parse(''{"a": "Hello", "b": "World"}'');
//缁撴灉鏄?{a: ''Hello'', b: ''World''}
```

瑕佸疄鐜颁粠JavaScript 瀵硅薄杞崲涓篔SON瀛楃涓诧紝浣跨敤 JSON.stringify() 鏂规硶锛?

```javascript
var json = JSON.stringify({a: ''Hello'', b: ''World''});
//缁撴灉鏄?''{"a": "Hello", "b": "World"}''
```

## Controller杩斿洖JSON鏁版嵁
+ 瀵煎叆渚濊禆

```xml
<dependency>
  <groupId>com.fasterxml.jackson.core</groupId>
  <artifactId>jackson-databind</artifactId>
  <version>2.18.2</version>
</dependency>
```

+ 姝ｅ父鐨剋eb.xml鍜宻pringmvc-servlet.xml閰嶇疆
    - 灏唈ava瀵硅薄杞负JSON瀛楃涓蹭笂浼?

```java
//@RequestMapping(value = "/t1",produces = "application/json;charset=utf-8")
@RequestMapping("/t1")
public String t1() throws JsonProcessingException {

ArrayList<User> users = new ArrayList<User>();

User user1 = new User("绉︾枂1鍙?, 3, "鐢?);
User user2 = new User("绉︾枂2鍙?, 3, "鐢?);
User user3 = new User("绉︾枂3鍙?, 3, "鐢?);
User user4 = new User("绉︾枂4鍙?, 3, "鐢?);

users.add(user1);
users.add(user2);
users.add(user3);
users.add(user4);

ObjectMapper mapper = new ObjectMapper();

return mapper.writeValueAsString(users);
}
```

    - 瑙ｅ喅涔辩爜鐨勯棶棰?
        * 浣跨敤@RequestMapping璁剧疆

```xml
@RequestMapping(value = "/t1",produces = "application/json;charset=utf-8")
```

        * 鎴戜滑鍙互鍦╯pringmvc鐨勯厤缃枃浠朵笂娣诲姞涓€娈垫秷鎭疭tringHttpMessageConverter杞崲閰嶇疆锛?

```xml
<!--鎴戜滑鍙互鍦╯pringmvc鐨勯厤缃枃浠朵笂娣诲姞涓€娈垫秷鎭疭tringHttpMessageConverter杞崲閰嶇疆锛?->
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



## 鑷繁鍐欏伐鍏风被绠€鍖栦唬鐮佽繑鍥炰竴涓椂闂存埑
+ 宸ュ叿绫?

```java
public class JsonUtils {

    public static String getJson(Object obj) {
        return getJson(obj, "yyyy-MM-dd HH:mm:ss");
    }


    public static String getJson(Object object, String dateFormat) {
        ObjectMapper mapper = new ObjectMapper();
        //涓嶄娇鐢ㄦ椂闂村樊鐨勬柟寮?
        mapper.configure(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS, false);
        //鑷畾涔夋棩鏈熸牸寮忓璞?
        SimpleDateFormat sdf = new SimpleDateFormat(dateFormat);
        //鎸囧畾鏃ユ湡鏍煎紡
        mapper.setDateFormat(sdf);
        try {
            return mapper.writeValueAsString(object);
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
    }
}
```

+ 娴嬭瘯

```java
// 浣跨敤宸ュ叿绫?
@RequestMapping("/t3")
    // 浣跨敤鑷繁鍐欑殑宸ュ叿绫?
    public String t3() throws JsonProcessingException {
        return JsonUtils.getJson(new Date());
    }

// 涓嶄娇鐢ㄥ伐鍏风被
@RequestMapping("/t2")
    // 杩斿洖涓€涓椂闂?
    public String t2() throws JsonProcessingException {
        // 涓嶆寚瀹氭椂闂存牸寮?
        // return new ObjectMapper().writeValueAsString(new Date());

        // 鎸囧畾鏃堕棿鏍煎紡
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        ObjectMapper mapper = new ObjectMapper();
        mapper.setDateFormat(sdf);
        return mapper.writeValueAsString(new Date());
    }
```

## 浣跨敤fastJson瀹炵幇杞崲
+ 瀵煎叆渚濊禆

```xml
<dependency>
    <groupId>com.alibaba</groupId>
    <artifactId>fastjson</artifactId>
    <version>2.0.53</version>
</dependency>
```

+ 娴嬭瘯

```java
// 浣跨敤fastJson 瀹炵幇
@RequestMapping("/t4")
public String t4() throws JsonProcessingException {
    ArrayList<User> users = new ArrayList<User>();

    User user1 = new User("绉︾枂1鍙?, 3, "鐢?);
    User user2 = new User("绉︾枂2鍙?, 3, "鐢?);
    User user3 = new User("绉︾枂3鍙?, 3, "鐢?);
    User user4 = new User("绉︾枂4鍙?, 3, "鐢?);

    users.add(user1);
    users.add(user2);
    users.add(user3);
    users.add(user4);

    // 灏唈ava瀵硅薄杞负JSON瀛楃涓?
    String str1 = JSON.toJSONString(users);
    String str2 = JSON.toJSONString(user2);
    // 灏咼SON瀛楃涓茶浆涓簀ava瀵硅薄
    User jp_user2 =JSON.parseObject(str2, User.class);
    // 灏唈ava瀵硅薄杞负JSON瀵硅薄
    JSONObject jsonObject = (JSONObject) JSON.toJSON(user2);
    // JSON瀵硅薄杞负java瀵硅薄
    User jp_user3  = JSON.toJavaObject(jsonObject, User.class);
    return str1+str2+JsonUtils.getJson(jp_user3)+JsonUtils.getJson(jp_user2)+JsonUtils.getJson(jp_user3);
}

```

# 鏁村悎ssm
## 瀵煎叆渚濊禆锛岃祫婧愯繃婊?
```xml
<!--渚濊禆 junit 鏁版嵁搴撻┍鍔紝杩炴帴姹狅紝 servlet锛?jsp锛?Mybatis锛?Mybatis-spring, spring-->
<dependencies>
  <dependency>
    <groupId>junit</groupId>
    <artifactId>junit</artifactId>
    <version>3.8.1</version>
    <scope>test</scope>
  </dependency>
  <!--鏁版嵁搴撻┍鍔?->
  <dependency>
    <groupId>mysql</groupId>
    <artifactId>mysql-connector-java</artifactId>
    <version>8.0.33</version>
  </dependency>
  <!--鏁版嵁搴撹繛鎺ユ睜锛歝3p0-->
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
<!--Maven 璧勬簮杩囨护闂-->
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
', NOW());
SET @last_note_id = LAST_INSERT_ID();

INSERT INTO 
ote (uthor_id, 	itle, content, created_at)
VALUES (1005, '注解和反射', '# 娉ㄨВjava.Annotation
## 浠€涔堟槸娉ㄨВ
鍙互琚叾浠栫▼搴忥紙姣斿锛氱紪璇戝櫒绛夛級璇诲彇

鏍煎紡"@娉ㄨВ鍚?

鍙€氳繃鍑℃槸鏈哄埗缂栫▼瀹炵幇瀵硅繖浜涘厓鏁版嵁鐨勮闂?



## 鍐呯疆娉ㄨВ
+ @Override锛氬畾涔夊湪java.lang.Override涓紝鍙€傜敤浜庝慨杈炴柟娉曠殑锛岃〃绀轰竴涓柟娉曞０鏄庢墦绠楅噸鍐欒秴绫讳腑鐨勫彟涓€涓柟娉?
+ @Deprecated锛氬畾涔夊湪java.lang.Deprecated涓紝琛ㄧず涓嶉紦鍔辩▼搴忓憳浣跨敤杩欎簺鏂规硶鐨勫厓绱狅紝閫氬父鏄洜涓哄畠寰堝嵄闄╂垨瀛樺湪鏇村ソ鐨勯€夋嫨
+ @SuppressWarnings锛氬畾涔夊湪java.lang.SuppressWarnings涓紝鐢ㄦ潵鎶戝埗缂栬瘧鏃剁殑璀﹀憡淇℃伅锛岄渶瑕侀€夋嫨鍙傛暟
    - @SuppressWarnings("all")
    - @SuppressWarnings("unchecked")
    - @SuppressWarnings(value={"unchecked","deprecation"})
    - 绛夌瓑銆傘€傘€傘€傘€?

## 鍏冩敞瑙?
+ 浣滅敤锛氳礋璐ｆ敞瑙ｅ叾浠栨敞瑙ｏ紝java瀹氫箟浜?涓爣鍑嗙殑meta-annotation绫诲瀷锛屼粬浠鐢ㄦ潵鎻愪緵鍏朵粬annoatation绫诲瀷浣滅敤鐨勮鏄?
+ 杩欎簺绫诲瀷鍜屼粬浠墍鏀寔鐨勭被鍦╦ava.lang.annotation鍖呬腑鍙互鎵惧埌锛園Target,@Retention,@Documented,@Inherited锛?
    - @Target锛氱敤浜庢弿杩版敞瑙ｇ殑浣跨敤鑼冨洿锛堝嵆锛氳鎻忚堪鐨勬敞瑙ｅ彲浠ョ敤鍦ㄤ粈涔堝湴鏂癸級
    - @Retention锛氳〃绀洪渶瑕佸啀浠€涔堢骇鍒繚瀛樿娉ㄩ噴淇℃伅锛岀敤浜庢弿杩版敞瑙ｇ殑鐢熷懡鍛ㄦ湡
        * 锛圫OURCE<CLASS<RUNTIME锛?
    - @Document锛氳鏄庤娉ㄨВ灏嗚鍖呭惈鍦╦avadoc涓?
    - @Inherited锛氳鏄庡瓙绫诲彲浠ョ户鎵跨埗绫讳腑鐨勮娉ㄨВ

## 鑷畾涔夋敞瑙?@Interface
浣跨敤@Interface鑷畾涔夋敞瑙ｏ紝鑷姩缁ф壙浜唈ava.lang.annotation.Annotation鎺ュ彛

```java
package com.jie.annotation;

import java.lang.annotation.*;

// 娴嬭瘯鍏冩敞瑙?

public class Test02 {
    // 娉ㄨВ鍙互鏄剧ず璧嬪€硷紝鑻ユ病鏈夐粯璁ゅ€硷紝灏卞繀椤荤粰娉ㄨВ璧嬪€?
    @MyAnnotation(name = "string")
    @MyAnnotation2(value="闅忎究")
    public void test() {

    }
}

// 瀹氫箟涓€涓厓娉ㄨВ
// Target 琛ㄧず娉ㄨВ鍙互浣跨敤鍦ㄥ摢浜涘湴鏂?
@Target(value = {ElementType.TYPE, ElementType.METHOD})
// Retention 琛ㄧず娉ㄨВ鍦ㄤ粈涔堝湴鏂硅繕鏈夋晥
@Retention(RetentionPolicy.RUNTIME)
// Documented 琛ㄧず鏄惁灏嗘敞瑙ｇ敓鎴愬湪javadoc涓?
@Documented
// Inherited 瀛愮被鍙互缁ф壙鐖剁被鐨勬敞瑙?
@Inherited
@interface MyAnnotation{
    // 娉ㄨВ鐨勫弬鏁帮細 鍙傛暟绫诲瀷 + 鍙傛暟鍚?);
    String name() default "";
    int age() default 0;
    int id() default -1; // 濡傛灉榛樿鍊间负-1锛?浠ｈ〃涓嶅瓨鍦?
    String schools() default "鍖楀ぇ";

}

@Target({ElementType.TYPE, ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@interface MyAnnotation2{
    String value();
}

```

# 鍙嶅皠鏈哄埗 java.Reflaction
## java Reflection
+ Reflection(鍙嶅皠)锛氭槸java琚涓哄姩鎬佽瑷€鐨勭瀹讹紝鍙嶅皠鏈哄埗鍏佽绋嬪簭鍦ㄦ墽琛屽櫒鍊熷姪Refletion API鍙栧緱浠讳綍绫荤殑鍐呴儴淇℃伅锛屽苟鑳界洿鎺ユ搷浣滀换浣曞璞＄殑鍐呴儴灞炴€у強鏂规硶 `Class c = Class.forName("java.lang.String")`
+ 鍔犺浇瀹岀被鍚庯紝鍦ㄥ爢鍐呭瓨鐨勬柟娉曞尯涓氨浜х敓鍙竴涓狢lass绫诲瀷鐨勫璞★紙涓€涓被鍙湁涓€涓狢lass瀵硅薄锛夛紝杩欎釜瀵硅薄灏卞寘鍚簡瀹屾暣鐨勭被鐨勭粨鏋勪俊鎭?

### 鍙嶅皠鐩稿叧鐨勪富瑕丄PI
+ java.lang.CLass锛氫唬琛ㄤ竴涓被
+ java.lang.reflact.Method锛氫唬琛ㄧ被鐨勬柟娉?
+ java.lang.reflect.Field锛氫唬琛ㄧ被鐨勬垚鍛樺彉閲?
+ java.lang.reflect.Constructor锛氫唬琛ㄧ被鐨勬瀯閫犲櫒

## Class绫?
+ 鍦∣bject绫讳腑瀹氫箟浜嗕竴涓嬬殑鏂规硶锛屾鏂规硶姹熷寳鎵€鏈夊瓙绫荤户鎵?

`public final Class getClass()`

+ 浠ヤ笂绫荤殑杩斿洖鍊肩殑绫诲瀷鏄竴涓狢lass绫伙紝姝ょ被鏄疛ava鍙嶅皠鐨勬簮澶达紝鍙互閫氳繃瀵硅薄鍙嶅皠姹傚嚭绫荤殑鍚嶇О
+ Class绫讳腑甯哥敤鐨勬柟娉?

<img src="https://cdn.nlark.com/yuque/0/2025/png/54050922/1744624319300-08eeda9b-7e58-4c65-953b-c4c8be5231b0.png" width="587.3333333333334" title="" crop="0,0,1,1" id="uf32c5735" class="ne-image">

+ 鑾峰彇Class绫讳腑鐨勫疄渚?

```java
package com.jie.annotation;

// 娴嬭瘯Class绫荤殑鍒涘缓鏂瑰紡鏈夊摢浜?
public class Test04 {
    public static void main(String[] args) throws ClassNotFoundException {
        Porson porson = new Porson();
        System.out.println("杩欎釜浜烘槸"+porson.name);

        // 鏂瑰紡涓€锛?閫氳繃瀵硅薄鑾峰緱
        Class c1 = porson.getClass();
        System.out.println(c1.hashCode());

        // 鏂瑰紡浜岋細 forname鑾峰緱
        Class c2 = Class.forName("com.jie.annotation.Student");
        System.out.println(c2.hashCode());

        // 鏂瑰紡涓夛細閫氳繃 绫诲悕.class 鑾峰緱
        Class c3 = Student.class;
        System.out.println(c3.hashCode());

        // 鏂瑰紡鍥涳細 鍩烘湰鍐呯疆绫诲瀷鐨勫寘瑁呯被閮芥湁涓€涓猅ype灞炴€?
        Class c4 = Integer.TYPE;
        System.out.println(c4);
        
        // 鑾峰緱鐖剁被绫诲瀷
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
        this.name = "瀛︾敓";
    }
}

class Teacher extends Porson{
    public Teacher(){
        this.name = "鑰佸笀";
    }
}
```

## 鍙互鏈塁lass瀵硅薄鐨勭被鍨?
+ class锛氬閮ㄧ被锛屾垚鍛橈紙鎴愬憳鍐呴儴绫伙紝闈欐€佸唴閮ㄧ被锛夛紝灞€閮ㄥ唴閮ㄧ被锛屽尶鍚嶅唴閮ㄧ被
+ interface 锛氭帴鍙?
+ []锛氭暟缁?
+ enum锛氭灇涓?
+ annotation锛氭敞瑙interface
+ primitive type锛氬熀鏈暟鎹被鍨?
+ void

```java
package com.jie.annotation;

import javax.xml.stream.events.Comment;
import java.lang.annotation.ElementType;

// 鎵€鏈夌被鍨嬬殑class
public class Test01 {
    public static void main(String[] args) {
        Class c1 = Object.class;   //绫?
        Class c2 = Comment.class;  // 鎺ュ彛
        Class c3 = String[].class; // 涓€缁存暟缁?
        Class c4 = int[][].class; // 浜岀淮鏁扮粍
        Class c5 = Override.class;  // 娉ㄨВ
        Class c6 = ElementType.class;  // 鏋氫妇
        Class c7 = Integer.class; // 鍩烘湰鏁版嵁绫诲瀷
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

        // 鍙绫诲瀷鍜岀淮搴︿竴鏍凤紝灏辨槸鍚屼竴涓猚lass
        int[] a = new int[10];
        int[] b = new int[100];
        System.out.println(a.getClass().hashCode());
        System.out.println(b.getClass().hashCode());
    }
}
```

## 绫诲姞杞?
+ 鍔犺浇鍒板唴瀛橈紝浼氫骇鐢熶竴涓被瀵瑰簲Class瀵硅薄
+ 杩炴帴锛?
+ 鍒濆鍖?
    - <clinit>(){  }

## 浠€涔堟椂鍊欎細鍙戠敓绫诲垵濮嬪寲
+ 绱殑涓诲姩寮曠敤锛堜竴瀹氫細鍙戠敓鍒濆鍖栵級
    - 褰撹櫄鎷熸満鍚姩锛屽厛鍒濆鍖杕ain鏂规硶鎵€鍦ㄧ殑绫?
    - new涓€涓被鐨勫璞?
    - 璋冪敤绫荤殑闈欐€佹垚鍛橈紙闄や簡final甯搁噺锛夊拰闈欐€佹柟娉?
    - 浣跨敤java.lang.reflect鍖呯殑鏂规硶瀵圭被杩涜鍙嶅皠璋冪敤
    - 褰撳垵濮嬪寲涓€涓被锛屽鏋滃幓鐖剁被娌℃湁琚垵濮嬪寲锛屽垯鍏堝洖鍒濆鍖栧畠鐨勭埗绫?
+ 绫荤殑琚姩寮曠敤锛堜笉浼氬彂鐢熺被鐨勫垵濮嬪寲锛?
    - 褰撹闂竴涓潤鎬佸煙鏃讹紝鍙湁鐪熸澹版槑杩欎釜涓庣殑绫绘墠琚垵濮嬪寲
    - 閫氳繃鏁扮粍瀹氫箟绫诲紩鐢紝涓嶄細瑙﹀彂姝ょ被鐨勫垵濮嬪寲
    - 寮曠敤甯搁噺涓嶄細瑙﹀彂姝ょ被鐨勫垵濮嬪寲锛堝父閲忓湪閾炬帴闃舵灏卞瓨鍏ヨ皟鐢ㄧ被鐨勫父閲忔睜涓簡锛?

## 绫诲姞杞藉櫒鐨勪綔鐢?
+ 绫诲姞杞藉櫒鐨勪綔鐢細灏哻lass鏂囦欢瀛楄妭鐮佸唴瀹瑰姞杞藉埌鍐呭瓨涓紝骞跺皢杩欎簺闈欐€佹暟鎹浆鎹㈡垚鏂规硶鍖虹殑杩愯鏃舵暟鎹粨鏋勶紝鐒跺悗鍦ㄥ爢涓敓鎴愪竴涓唬琛ㄨ繖涓被鐨刯ava.lang.Class瀵硅薄锛屼綔涓烘柟娉曞尯涓被鏁版嵁鐨勮闂叆鍙ｃ€?
+ 绫荤紦瀛橈細鏍囧噯鐨凧avaSE绫诲姞杞藉櫒鍙互鎸夌収瑕佹眰鏌ユ壘绫伙紝浣嗕竴鏃︽煇涓被琚姞杞藉埌绫诲姞杞藉櫒涓紝瀹冨皢缁存寔鍔犺浇锛堢紦瀛橈級涓€娈垫椂闂达紝涓嶈繃JVM鍨冨溇鍥炴敹鏈哄埗鍙互鍥炴敹杩欎簺Class瀵硅薄
+ 绫诲姞杞藉櫒
    - 寮曞绫诲姞杞藉櫒锛氫粠C++缂栧啓鐨勶紝鏄疛VM鑷甫鐨勭被鍔犺浇鍣紝璐熻矗Java骞冲彴鏍稿績搴擄紝鐢ㄦ潵瑁呰浇鏍稿績绫诲簱锛岃鍔犺浇鍣ㄦ棤娉曠洿鎺ヨ幏鍙?
    - 鎵╁睍绫诲姞杞藉櫒锛氳礋璐re/bin/text鐩綍涓嬬殑jar鍖呮垨-D java.ext.dirs 鎸囧畾鐩綍涓嬬殑jar鍖呰鍏ュ伐浣滃簱
    - 绯荤粺绫诲姞杞藉櫒锛氳礋璐ava -classpath 鎴?-D java.class.path鎵€鎸囧畾鐨勭洰褰曚笅鐨勭被涓巎ar鍖呰鍏ュ伐浣滐紝鏈€甯哥敤鐨勭被鍔犺浇鍣?

## 鑾峰彇杩愯鏃剁被鐨勫畬鏁寸粨鏋?
閫氳繃鍙嶅皠鑾峰彇杩愯

```java
package com.jie.annotation;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

// 鑾峰彇绫荤殑淇℃伅
public class Test06 {
    public static void main(String[] args) throws ClassNotFoundException, NoSuchFieldException, NoSuchMethodException {
        Class c1 = Class.forName("com.jie.annotation.User");

        // 鑾峰彇绫荤殑鍚嶅瓧
        System.out.println(c1.getName()); // 鑾峰彇鍖呭悕 + 绫诲悕
        System.out.println(c1.getSimpleName()); // 鑾峰彇绫诲悕

        // 鑾峰彇绫荤殑灞炴€?
        // Field[] fields = c1.getFields();    //鍙兘鎵惧埌public灞炴€?
        Field[] fields = c1.getDeclaredFields();  // 鎵惧埌鍏ㄩ儴灞炴€?
        for (Field field : fields) {
            System.out.println(field.getName());
        }

        // 鑾峰緱鐗瑰畾灞炴€х殑鍊?
        Field name = c1.getDeclaredField("name");
        System.out.println(name);

        // 鑾峰緱绫荤殑鏂规硶
        Method[] methods = c1.getMethods();   // 鑾峰緱鏈被鍙婂叾鐖剁被鐨勫叏閮╬ublic鏂规硶
        for (Method method : methods){
            System.out.println("姝ｅ父鐨?+ method);
        }
        methods = c1.getDeclaredMethods();   // 鑾峰緱鎵€鏈夋柟娉?
        for (Method method : methods){
            System.out.println("getDeclaredMethods"+method);
        }
        
        // 鑾峰緱鎸囧畾鏂规硶
        Method getName = c1.getMethod("getName", null);
        Method setName = c1.getMethod("setName", String.class);
        System.out.println(getName);
        System.out.println(setName);

        // 鑾峰緱鎸囧畾鐨勬瀯閫犲櫒
        Constructor[] constructors = c1.getConstructors();  // 鑾峰緱public鐨勬瀯閫?鏂规硶
        for (Constructor constructor : constructors){
            System.out.println(constructor);
        }
        constructors = c1.getDeclaredConstructors();    // 鑾峰緱鍏ㄩ儴鏋勯€犳柟娉?
        for (Constructor constructor : constructors){
            System.out.println(constructor);
        }

        // 鑾峰緱鎸囧畾鐨勬瀯閫犲櫒
        Constructor declaredConstructor = c1.getDeclaredConstructor(String.class, int.class, int.class);
        System.out.println("鎸囧畾"+declaredConstructor);
    }
}


```

## 鍔ㄦ€佸垱寤哄璞℃墽琛屾柟娉?
```java
package com.jie.annotation;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

// 鍔ㄦ€佺殑鍒涘缓瀵硅薄 锛?閫氳繃鍙嶅皠
public class Test07 {
    public static void main(String[] args) throws ClassNotFoundException, InstantiationException, IllegalAccessException, NoSuchMethodException, InvocationTargetException, NoSuchFieldException {
        Class c1 = Class.forName("com.jie.annotation.User");

//        // 鏋勯€犱竴涓璞?
//        User user = (User)c1.newInstance();  // 鏈川鏄皟鐢ㄦ棤鍙傛瀯閫犲櫒
//        System.out.println(user);
//
//        // 閫氳繃鏋勯€犲幓鍒涘缓瀵硅薄
//        Constructor constructor = c1.getDeclaredConstructor(String.class, int.class,int.class);
//        constructor.newInstance("jie", 001, 18);
//        User user2 = (User)c1.newInstance();
//        System.out.println(user2);

        // 閫氳繃鍙嶅皠璋冪敤鏅€氭柟娉?
        User user3 = (User) c1.newInstance();
        // 閫氳繃鍙嶅皠鑾峰彇涓€涓柟娉?
        Method setName = c1.getMethod("setName", String.class);
        // invoke : 婵€娲绘柟娉?
        // 锛堝璞★紝 鈥滄柟娉曞€尖€滐級
        setName.invoke(user3, "jie");
        System.out.println(user3.getName());

        //閫氳繃鍙嶅皠鎿嶄綔灞炴€?
        User user4 = (User) c1.newInstance();
        Field name = c1.getDeclaredField("name");

        // 涓嶈兘鐩存帴鎿嶄綔绉佹湁灞炴€э紝闇€瑕佸叧闂▼搴忕殑瀹夊叏妫€娴嬶紝 灞炴€ф垨鏂规硶鐨?name.setAccessible(true);
        name.setAccessible(true);
        name.set(user4, "jie2");
        System.out.println(user4.getName());
    }
}

```

## 鍙嶅皠鎬ц兘鍒嗘瀽
```java
package com.jie.annotation;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

// 鍒嗘瀽鎬ц兘 闂
public class Test08 {
    // 鏅€氭柟寮忚皟鐢?
    public static void test01() {
        User user = new User();
        long stratTime = System.currentTimeMillis();
        for (int i = 0; i < 1000000000; i++) {
            user.getName();
        }
        long endTime = System.currentTimeMillis();
        System.out.println("鏅€氭柟娉曟墽琛?0浜挎"+(endTime - stratTime)+"ms");

    }
    // 鍙嶅皠鏂瑰紡璋冪敤
    public static void test02() throws ClassNotFoundException, NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        User user = new User();
        Class c1 = Class.forName("com.jie.annotation.User");
        Method getname = c1.getMethod("getName",null);
        long stratTime = System.currentTimeMillis();
        for (int i = 0; i < 1000000000; i++) {
            getname.invoke(user, null);
        }
        long endTime = System.currentTimeMillis();
        System.out.println("鍙嶅皠鏂规硶鎵ц10浜挎"+(endTime - stratTime)+"ms");
    }
    // 鍙嶅皠鏂瑰紡璋冪敤 鍏抽棴妫€娴?
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
        System.out.println("鍏抽棴妫€娴嬫墽琛?0浜挎"+(endTime - stratTime)+"ms");
    }

    public static void main(String[] args) throws ClassNotFoundException, InvocationTargetException, NoSuchMethodException, IllegalAccessException {
        test01();
        test02();
        test03();
    }
}

```

## 閫氳繃鍙嶅皠鎿嶄綔娉涘瀷
+ ParameterizedType锛氳〃绀轰竴绉嶅弬鏁板寲绫诲瀷锛屾瘮濡侰ollection<String>
+ GenericArrayType锛氳〃绀轰竴绉嶅厓绱犵被鍨嬫槸鍙傛暟鍖栫被鍨嬫垨鑰呯被鍨嬪彉閲忕殑鏁扮粍绫诲瀷
+ TypeVariable锛氭槸鍚勭绫诲瀷鍙橀噺鐨勫叕鍏辩埗鎺ュ彛
+ WildcardType锛氫唬琛ㄤ竴绉嶉€氶厤绗﹁〃杈惧紡

```java
package com.jie.annotation;

import java.lang.reflect.AnnotatedType;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;

// 閫氳繃鍙嶅皠鑾峰彇娉涘瀷
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

## 鍙嶅皠鑾峰彇娉ㄨВ鍒嗘瀽
```java
package com.jie.annotation;

import java.lang.annotation.*;
import java.lang.reflect.Field;

public class Test10 {
    public static void main(String[] args) throws ClassNotFoundException, NoSuchFieldException {
        Class c1 = Class.forName("com.jie.annotation.Student2");

        // 閫氳繃鍙嶅皠鑾峰緱娉ㄨВ
        Annotation[] annotations = c1.getAnnotations();
        for (Annotation annotation : annotations) {
            System.out.println(annotation);
        }

        // 鑾峰緱娉ㄨВ鐨剉alue鐨勫€?
        Tablejie tablejie = (Tablejie) c1.getAnnotation(Tablejie.class);
        String value = tablejie.value();
        System.out.println(value);

        // 鑾峰緱绫绘寚瀹氱殑娉ㄨВ
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

// 绫诲悕鐨勬敞瑙?
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
@interface Tablejie{
    String value();
}

// 灞炴€х殑娉ㄨВ
@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
@interface Fieldjie{
    String columnName();
    String type();
    int length();
}
```
', NOW());
SET @last_note_id = LAST_INSERT_ID();

