<!doctype html>
<html class="expanded">
<head>

<!--STATUS OK-->
<meta http-equiv=Content-Type content="text/html; charset=gb2312">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
<link rel="dns-prefetch" href="//ns0.bdstatic.com">
<link rel="dns-prefetch" href="//ns1.bdstatic.com">

<title>百度新闻搜索——全球最大的中文新闻平台</title>
<meta name="description" content="百度新闻是包含海量资讯的新闻服务平台，真实反映每时每刻的新闻热点。您可以搜索新闻事件、热点话题、人物动态、产品资讯等，快速了解它们的最新进展。" >
<script type="text/javascript"> window.NEWSLOGURL = 'http://log.news.baidu.com/v.gif'; window.HUNTERLOGURL = 'http://log.news.baidu.com/u.gif'; window._hmt = window._hmt || [];</script>
<script type="text/javascript" src="http://news.baidu.com/resource/js/usermonitor.js?v=1.2"></script>

<script src="http://news.baidu.com/resource/js/jquery-1.8.3.min.js" type="text/javascript"></script>



<link rel="stylesheet" type="text/css" href="http://ns1.bdstatic.com/static/fisp_static/common/module_static_include/module_static_include_a2763a9.css"/><link rel="stylesheet" type="text/css" href="http://ns1.bdstatic.com/static/fisp_static/focustop/focustop/focustop_a273719.css"/></head>
<body>
<div id="usrbar" alog-group="userbar" alog-alias="hunter-userbar-start"></div>
<div id="app_tooltip_qrcode">
<img src="http://ns2.bdstatic.com/static/fisp_static/common/img/show_top_qrcode/img/1014720j_63c8044.png">
</div>
<div id="headerwrapper">
<div id="header" alog-group="header" alog-alias="hunter-header-start">

<form action="http://news.baidu.com/ns" name="fbaidu" class="sbox">
<table class="sbox" alog-group="search-box">
<tr>
<td class="logo">
<div class="logo">
<a href="http://news.baidu.com/view.html">
<!--[if !IE]><!--><img src="http://news.baidu.com/resource/img/logo_news_276_88.png?date=20150104" alt="百度新闻" height="46px" width="137px"><!--<![endif]-->
<!--[if IE 6]><img src="http://news.baidu.com/resource/img/logo_news_276_88_for_ie6.png" alt="百度新闻" height="46px" width="137px"><![endif]-->
<!--[if gt IE 6]><img src="http://news.baidu.com/resource/img/logo_news_276_88.png" alt="百度新闻" height="46px" width="137px"><![endif]-->
</a>
</div>
<div class="date"></div>
</td>
<td class="search">
<div class="tab">
<span class="cur">新闻</span>
<!--[if IE 6]><a href="http://www.baidu.com/" title='web' mon="col=502&pn=0" onclick="queryTab(this);">网页</a><![endif]-->
<!--[if gt IE 6]><a href="https://www.baidu.com/" title='web' mon="col=502&pn=0" onclick="queryTab(this);">网页</a><![endif]-->
<!--[if !IE]><!--><a href="https://www.baidu.com/" title='web' mon="col=502&pn=0" onclick="queryTab(this);">网页</a><!--<![endif]-->
<a href="http://tieba.baidu.com/" title="tieba" mon="col=502&pn=1" onclick="queryTab(this);">贴吧</a>
<a href="http://zhidao.baidu.com/" title="zhidao" mon="col=502&pn=2" onclick="queryTab(this);">知道</a>
<a href="http://music.baidu.com/" title="music" mon="col=502&pn=3" onclick="queryTab(this);">音乐</a>
<a href="http://image.baidu.com/" title="image" mon="col=502&pn=4" onclick="queryTab(this);">图片</a>
<a href="http://v.baidu.com/" title="video" mon="col=502&pn=5" onclick="queryTab(this);">视频</a>
<a href="http://map.baidu.com/" title="map" mon="col=502&pn=6" onclick="queryTab(this);">地图</a>
<a href="http://baike.baidu.com/" title="baike" mon="col=502&pn=7" onclick="queryTab(this);">百科</a>
<a href="http://wenku.baidu.com/" title="wenku"  mon="col=502&pn=8" onclick="queryTab(this);">文库</a>
</div>
<table>
<tr>
<td class="box"><div id="sugarea"><span class="s_ipt_wr" id="s_ipt_wr"><input class="word" id="ww" name="word" size="42"  maxlength="100" tabindex="1"></span><span class="s_btn_wr"><input class="btn" type="submit" value="百度一下" onmousedown="this.className='btn s_btn_h'" onmouseout="this.className='btn'"></span></div></td>
<td class="help"><a href="http://www.baidu.com/search/news_help.html">帮助</a><span class="sep">|</span><a href="http://news.baidu.com/advanced_news.html">高级搜索</a><span class="sep">|</span><a href="http://news.baidu.com/pianhao.html">设置</a></td>
</tr>
</table>
<p class="search-radios">
<input type="radio" name="tn" value="news" checked="checked" id="news" style="display: none;">
<label for="news" class="checked">新闻全文</label>
<input type="radio" name="tn" value="newstitle" id="newstitle" style="display: none;">
<label for="newstitle" class="not-checked">新闻标题</label>
</p>
<input type="hidden" name="from" value="news">
<input type="hidden" name="cl" value="2">
<input type="hidden" name="rn" value="20">
<input type="hidden" name="ct" value="1">
</td></tr>
</table>
</form>

</div>

<div id="menu" class="mod-navbar" alog-group="home-menu">
<div id="channel-shanghai" class="channel-shanghai clearfix"  style="display:none" >
<div class="menu-list">
<ul class="clearfix">
<li class="navitem-index current active"><a href="http://news.baidu.com/view.html">首页</a></li>
<li class="icon-new-wrapper"><a href="http://baijia.baidu.com/" id="nav-hot-link" target="_blank"><div class="icon-new"></div>百家</a></li>
<li ><a href="http://finance.baidu.com/">财经</a></li>
<li ><a href="http://yule.baidu.com/">娱乐</a></li>
<li ><a href="http://sh.news.baidu.com/">上海</a></li>
<li ><a href="http://sports.baidu.com/">体育</a></li>
<li ><a href="http://internet.baidu.com/">互联网</a></li>
<li ><a href="http://fashion.baidu.com/"><div class="icon-new"></div>时尚</a></li>
<li ><a href="http://auto.baidu.com/">汽车</a></li>
<li ><a href="http://guonei.news.baidu.com/">国内</a></li>
<li ><a href="http://guoji.news.baidu.com/">国际</a></li>
<li ><a href="http://mil.news.baidu.com/">军事</a></li>
<li ><a href="http://shehui.news.baidu.com/">社会</a></li>
<li class="media-container">
<a href="http://media.baidu.com/" target="_blank" class="link-trigger">传媒</a>
<div class="links-container clearfix">
<a href="http://cankaoxiaoxi.media.baidu.com/" target="_blank">参考消息</a>
<a href="http://infzm.media.baidu.com/" target="_blank">南方周末</a>
<a href="http://pengpai.media.baidu.com/" target="_blank">澎湃</a>
<a href="http://nandu.media.baidu.com/" target="_blank">南方都市报</a>
<a href="http://21cbh.media.baidu.com/" target="_blank">21世纪经济报道</a>
<a href="http://yicai.media.baidu.com/" target="_blank">第一财经日报</a>
<a href="http://huaxi.media.baidu.com/" target="_blank">华西都市报</a>
<a href="http://caixin.media.baidu.com/" target="_blank">财新网</a>
<a href="http://xxcb.media.baidu.com/" target="_blank">潇湘晨报</a>
<a href="http://ynet.media.baidu.com/" target="_blank">北京青年报</a>
</div>
</li>
<li ><a href="http://shipin.news.baidu.com/">视频</a></li>
<li><a href="http://jian.news.baidu.com/" target="_blank">个性推荐</a></li>
<li ><a href="http://fangchan.news.baidu.com/">房产</a></li>
<li class="more-container">
<a href="#" class="more-trigger">更多</a>
<div class="more-links">
<a href="http://news.hao123.com/?src=baidunews_1016" mon="toptab=newssite&resouci=1">名站</a>
<a href="http://tech.baidu.com/">科技</a>
<a href="http://lady.baidu.com/">女人</a>
<a href="http://youxi.news.baidu.com/">游戏</a>
</div>
</li>
</ul>
</div>
<i class="slogan"></i>
</div>
<div id="channel-all" class="channel-all clearfix" >
<div class="menu-list">
<ul class="clearfix">
<li class="navitem-index current active"><a href="http://news.baidu.com/view.html">首页</a></li>
<li class="icon-new-wrapper"><a href="http://baijia.baidu.com/" id="nav-hot-link" target="_blank"><div class="icon-new"></div>百家</a></li>
<li ><a href="http://finance.baidu.com/">财经</a></li>
<li ><a href="http://yule.baidu.com/">娱乐</a></li>
<li ><a href="http://sports.baidu.com/">体育</a></li>
<li ><a href="http://internet.baidu.com/">互联网</a></li>
<li ><a href="http://fashion.baidu.com/"><div class="icon-new"></div>时尚</a></li>
<li ><a href="http://auto.baidu.com/">汽车</a></li>
<li ><a href="http://guonei.news.baidu.com/">国内</a></li>
<li ><a href="http://guoji.news.baidu.com/">国际</a></li>
<li ><a href="http://mil.news.baidu.com/">军事</a></li>
<li ><a href="http://shehui.news.baidu.com/">社会</a></li>
<li ><a href="http://shipin.news.baidu.com/">视频</a></li>
<li class="media-container">
<a href="http://media.baidu.com/" target="_blank" class="link-trigger">传媒</a>
<div class="links-container clearfix">
<a href="http://cankaoxiaoxi.media.baidu.com/" target="_blank">参考消息</a>
<a href="http://infzm.media.baidu.com/" target="_blank">南方周末</a>
<a href="http://pengpai.media.baidu.com/" target="_blank">澎湃</a>
<a href="http://nandu.media.baidu.com/" target="_blank">南方都市报</a>
<a href="http://21cbh.media.baidu.com/" target="_blank">21世纪经济报道</a>
<a href="http://yicai.media.baidu.com/" target="_blank">第一财经日报</a>
<a href="http://huaxi.media.baidu.com/" target="_blank">华西都市报</a>
<a href="http://caixin.media.baidu.com/" target="_blank">财新网</a>
<a href="http://xxcb.media.baidu.com/" target="_blank">潇湘晨报</a>
<a href="http://ynet.media.baidu.com/" target="_blank">北京青年报</a>
</div>
</li>
<li><a href="http://jian.news.baidu.com/" target="_blank">个性推荐</a></li>
<li ><a href="http://fangchan.news.baidu.com/">房产</a></li>
<li><a href="http://news.hao123.com/?src=baidunews_1016" mon="toptab=newssite&resouci=1">名站</a></li>
<li class="more-container">
<a href="#" class="more-trigger">更多</a>
<div class="more-links">
<a href="http://tech.baidu.com/">科技</a>
<a href="http://lady.baidu.com/">女人</a>
<a href="http://youxi.news.baidu.com/">游戏</a>
</div>
</li>
</ul>
</div>
<i class="slogan"></i>
</div>
</div>

</div>
<div id="body" alog-alias="b">

<div class="column clearfix" id="focus-top" style="margin-top: 12px; margin-bottom: 31px;">
<div class="l-left-col" alog-group="focus-top-left">
<div id="left-col-wrapper">
<div class="recommend-tip-wrapper">
<div class="tip-wrapper">
<div class="background-wrapper">
<a id="tip-float" class="mod-headline-tip" href="javascript:;">
<div class="content-wrapper">
<i class="tip-logo"></i>
<div class="tip-content">点击刷新，将会有未读推荐</div>
</div>
</a>
</div>
</div>
</div>
<div id="headline-tabs" class="mod-headline-tab">
<ul class="clearfix">
<li class="active"><a href="javascript:;" data-control="pane-news">热点要闻</a></li>
<li class="last-tab "><a href="javascript:;" data-control="pane-recommend">个性推荐</a></li>
</ul>
<a id="tab-login" class="tab-login" href="javascript:;" onclick="return false" mon="m=53&a=3"></a>
</div>
<div class="mod-tab-content">
<div id="pane-news" class="mod-tab-pane active">
<div class="hotnews" alog-group="focustop-hotnews">
<ul><li class="hdline0">
<i class="dot"></i>
<strong>
<a href="http://shehui.rmzxb.com.cn/c/2016-06-10/860917.shtml" target="_blank" class="a3" mon="ct=1&a=1&c=top&pn=0">习近平：全面建成小康社会更重要的是全面</a>
</strong>
</li>
<li class="hdline1">
<a href="http://cnews.chinadaily.com.cn/2016-06/10/content_25664852.htm" target="_blank"  mon="r=1">习近平谈全面建成小康社会</a>
&nbsp;<a href="http://cnews.chinadaily.com.cn/2016-06/10/content_25665185.htm" target="_blank"  mon="r=1">传统文化情结</a>
&nbsp;<a href="http://china.huanqiu.com/special/zhiguolizheng/?from=bdwz" target="_blank"  mon="r=1">治国理政进行时</a>
&nbsp;<a href="http://cnews.chinadaily.com.cn/2016-06/10/content_25665184.htm" target="_blank"  mon="r=1">国平</a>
</li>
<li class="hdline2">
<i class="dot"></i>
<strong>
<a href="http://cnews.chinadaily.com.cn/2016-06/10/content_25668092.htm" target="_blank" class="a3" mon="ct=1&a=1&c=top&pn=1">李克强：中国仍然是外国投资者的热土</a>
</strong>
</li>
<li class="hdline3">
<a href="http://www.xinhuanet.com/politics/szzsyzt/2016zwj/index.htm" target="_blank"  mon="r=1">网络中国节·端午</a>
&nbsp;<a href="http://cnews.chinadaily.com.cn/2016-06/09/content_25661972.htm" target="_blank"  mon="r=1">军网评论：今天 我们都是申亮亮的家人 </a>
</li>
<li class="hdline4">
<i class="dot"></i>
<strong>
<a href=" http://zouling.baijia.baidu.com/article/491347" target="_blank" class="a3" mon="ct=1&a=1&c=top&pn=2">王思聪手撕斗鱼引7亿次围观 细数直播行业乱象</a>
</strong>
</li>
<li class="hdline5">
<a href="http://huxiangbao.baijia.baidu.com/article/487154" target="_blank"  mon="r=1">盈利模式过于单一</a>
&nbsp;<a href="http://lanjingtmt.baijia.baidu.com/article/455524" target="_blank"  mon="r=1">平台亏损成常态</a>
&nbsp;<a href="http://caojingxing.baijia.baidu.com/article/426162" target="_blank"  mon="r=1">行业内部鱼龙混杂</a>
</li>
</ul>
</div>
<ul class="ulist focuslistnews">
<li class="bold-item">
<span class="dot"></span>
<a href="http://www.cankaoxiaoxi.com/roll10/20160611/1187677.shtml" mon="ct=1&amp;a=2&amp;c=top&pn=1" target="_blank">中铁总回应美终止合作高铁项目：将捍卫利益</a></li>
<li>
<a href="http://news.haiwainet.cn/n/2016/0611/c3541083-29996262.html" mon="ct=1&amp;a=2&amp;c=top&pn=2" target="_blank">迪士尼回应王健林“不该来中国”：没有任何影响</a></li>
<li>
<a href="http://www.taiwan.cn/xwzx/PoliticsNews/201606/t20160611_11478618.htm" mon="ct=1&amp;a=2&amp;c=top&pn=3" target="_blank">港媒：上海迪士尼未开园 周边房地产项目涨价35%</a></li>
<li>
<a href="http://news.haiwainet.cn/n/2016/0611/c3541083-29996203.html" mon="ct=1&amp;a=2&amp;c=top&pn=4" target="_blank">深圳执勤失当民警多处行为不当：戴手串危险驾驶</a></li>
<li>
<a href="http://www.cankaoxiaoxi.com/roll10/20160611/1187655.shtml" mon="ct=1&amp;a=2&amp;c=top&pn=5" target="_blank">深圳警方凌晨通报女孩逛街遭传唤案 涉事警察被停职</a></li>
<li>
<a href="http://cn.chinagate.cn/news/2016-06/11/content_38641564.htm" mon="ct=1&amp;a=2&amp;c=top&pn=6" target="_blank">纸牌屋现实版：谷歌被指操纵搜索结果支持希拉里</a></li>
</ul>
<ul class="ulist focuslistnews" >
<li class="bold-item">
<span class="dot"></span>
<a href="http://cn.chinagate.cn/news/2016-06/11/content_38642003.htm " mon="ct=1&amp;a=2&amp;c=top&pn=7" target="_blank">人民日报三问：委内瑞拉真的会赖账不还中国贷款吗 </a></li>
<li>
<a href="http://sports.ifeng.com/gjzq/special/euro2016/" mon="ct=1&amp;a=2&amp;c=top&pn=8" target="_blank">欧洲杯：揭幕战法国2-1罗马尼亚 帕耶世界波绝杀</a></li>
<li>
<a href="http://news.youth.cn/gn/201606/t20160611_8106364.htm" mon="ct=1&amp;a=2&amp;c=top&pn=9" target="_blank">东北华北多雷雨天气 南方明起大范围强降雨</a></li>
<li>
<a href="http://news.xinhuanet.com/overseas/2016-06/11/c_129051404.htm" mon="ct=1&amp;a=2&amp;c=top&pn=10" target="_blank">一湖南籍中国男子老挝遇刺身亡 疑为熟人作案</a></li>
<li>
<a href="http://news.youth.cn/gj/201606/t20160611_8106375.htm" mon="ct=1&amp;a=2&amp;c=top&pn=11" target="_blank">传奇拳王阿里安葬故乡公墓 数千民众夹道送别</a></li>
<li>
<a href="http://news.haiwainet.cn/n/2016/0611/c3541083-29996261.html" mon="ct=1&amp;a=2&amp;c=top&pn=12" target="_blank">退休干部大巴上猥亵少女 裸露下体乱摸对方私处</a></li>
</ul>
<ul class="ulist focuslistnews" >
<li class="bold-item">
<span class="dot"></span>
<a href="http://www.cankaoxiaoxi.com/roll10/20160611/1187570.shtml" mon="ct=1&amp;a=2&amp;c=top&pn=13" target="_blank">出租房发生命案变“凶宅” 房东索要贬值费50万</a></li>
<li>
<a href="http://news.youth.cn/sh/201606/t20160611_8106260.htm" mon="ct=1&amp;a=2&amp;c=top&pn=14" target="_blank">美媒称姚明拯救鲨鱼：中国年轻中产以吃鱼翅为耻</a></li>
<li>
<a href="http://www.taiwan.cn/xwzx/PoliticsNews/201606/t20160611_11478610.htm" mon="ct=1&amp;a=2&amp;c=top&pn=15" target="_blank">广元游船翻沉现场再捞3名遇难者遗体 已有13人死亡</a></li>
<li>
<a href="http://www.cankaoxiaoxi.com/roll10/20160611/1187557.shtml" mon="ct=1&amp;a=2&amp;c=top&pn=16" target="_blank">男子生日聚会后同学失踪 怕被找麻烦服药自杀</a></li>
<li>
<a href="http://cn.chinagate.cn/news/2016-06/11/content_38641503.htm" mon="ct=1&amp;a=2&amp;c=top&pn=17" target="_blank">入冤狱27年赔800万 加拿大如何处理冤案？</a></li>
<li>
<a href="http://www.cankaoxiaoxi.com/roll10/20160611/1187560.shtml" mon="ct=1&amp;a=2&amp;c=top&pn=18" target="_blank">离婚后房产判给前夫 女子拒腾房砍伤租客</a></li>
</ul>
<ul class="ulist focuslistnews" >
<li class="bold-item">
<span class="dot"></span>
<a href="http://www.cankaoxiaoxi.com/roll10/20160611/1187558.shtml" mon="ct=1&amp;a=2&amp;c=top&pn=19" target="_blank">南航一乘客闯驾驶舱：我要上天 我开了天眼 </a></li>
<li>
<a href="http://d.youth.cn/shrgch/201606/t20160611_8106183.htm" mon="ct=1&amp;a=2&amp;c=top&pn=20" target="_blank">广东湛江一农妇以挖虫为生 1个月赚三五千元</a></li>
<li>
<a href="http://www.cankaoxiaoxi.com/roll10/20160611/1187559.shtml" mon="ct=1&amp;a=2&amp;c=top&pn=21" target="_blank">老人45年喝1.5吨燃油成网红 起因是治疗咳嗽</a></li>
<li>
<a href="http://picture.youth.cn/qtdb/201606/t20160611_8106221.htm" mon="ct=1&amp;a=2&amp;c=top&pn=22" target="_blank">澳洲袋鼠与母猪相恋一年多 亲密行为被拍下</a></li>
<li>
<a href="http://cn.chinagate.cn/news/2016-06/11/content_38641540.htm" mon="ct=1&amp;a=2&amp;c=top&pn=23" target="_blank">2名老太因19年前"高利贷" 要打官司到2028年</a></li>
<li>
<a href="http://www.cankaoxiaoxi.com/roll10/20160611/1187556.shtml" mon="ct=1&amp;a=2&amp;c=top&pn=24" target="_blank">四川一男子钓鱼时鱼竿被鱼拖走 下水寻杆溺亡</a></li>
</ul>
<ul class="ulist focuslistnews" >
<li class="bold-item">
<span class="dot"></span>
<a href="http://wangxinxi.baijia.baidu.com/article/491392" mon="ct=1&amp;a=2&amp;c=top&pn=25" target="_blank">换色并改变升级策略：iPhone7难成爆款</a></li>
<li>
<a href="http://dusheme.baijia.baidu.com/article/491377" mon="ct=1&amp;a=2&amp;c=top&pn=26" target="_blank">白玉兰奖上现实题材剧失踪，我们还需要直指当下吗？</a></li>
<li>
<a href="http://italk007.baijia.baidu.com/article/491363" mon="ct=1&amp;a=2&amp;c=top&pn=27" target="_blank">杨元庆的尴尬盛会：联想的历史性衰退恐难逆转</a></li>
<li>
<a href="http://weshixiang.baijia.baidu.com/article/491305" mon="ct=1&amp;a=2&amp;c=top&pn=28" target="_blank">生活猛于魔兽：游戏一代的十年青春物语</a></li>
<li>
<a href="http://lilei.baijia.baidu.com/article/491237" mon="ct=1&amp;a=2&amp;c=top&pn=29" target="_blank">兴趣推荐引擎的校园市场：女生比男生更爱刷屏</a></li>
<li>
<a href="http://zouling.baijia.baidu.com/article/491347" mon="ct=1&amp;a=2&amp;c=top&pn=30" target="_blank">王思聪手撕斗鱼引7亿次围观 关于直播的数据陷阱</a></li>
</ul>
</div>
<div id="pane-recommend" class="mod-tab-pane pane-recommend ">
<div class="mod-tab-loading">
<i class="icon-loading"></i>
<p class="desc">加载中请您耐心等待...</p>
</div>
<div class="tip-wrapper">
<a id="tip" class="mod-headline-tip" href="javascript:;" mon="m=53&a=5">
<i class="tip-logo"></i>
<div class="tip-content">点击刷新，将会有未读推荐</div>
</a>
</div>
<script type="text/javascript">
            // 如果有图的文章出现白图的情况（图片大小小于10*10则视为白图），去掉图片展示
            function checkimg(obj){
                // console.log('obj.width: ' + obj.width);
                if(obj.naturalWidth < 10){
                    var picWrapper = obj.parentElement.parentElement;
                    var item = obj.parentElement.parentElement.parentElement;
                    // console.log('-------picWrapper');
                    // console.dir(picWrapper);
                    // console.log('-------item');
                    // console.dir(item);
                    picWrapper.style.display = 'none';
                    if (item.className.search('notb') > -1){
                        item.className = 'feeds-item-detail notb';
                    } else {
                        item.className = 'feeds-item-detail';
                    }
                }
            }
        </script>
<div class="feeds" id="feeds"></div>
<div class="feeds-more" id="feeds-more">
<a href="javascript:;" onclick="return false" mon="m=53&a=4"><span>更多个性推荐新闻</span></a>
</div>
</div>
</div>
</div>
</div>
<div class="l-right-col" alog-group="focus-top-right">
<div class="toparea-aside-top" alog-group="focustop-carousel">
<div class="imgplayer clearfix" id="imgplayer">
<div id="imgplayer-control" class="carousel-control">
<a href="javascript:void(0);" mon="c=top&a=50&col=4&ct=1&pn=0" id="imgplayer-prev" class="carousel-btn-prev">
<span class="icon-wrap"></span>
</a>
<a href="javascript:void(0);" mon="c=top&a=52&col=4&ct=1&pn=0" id="imgplayer-next" class="carousel-btn-next">
<span class="icon-wrap"></span>
</a>
</div>
<div class="imgview" id="imgView">
<a href="" target="_blank"><img src="http://news.baidu.com/iphone/img/loading_3.gif" class="firstimg" alt=""></a>
</div>
<div class="imgnav-mask"></div>
<div class="imgnav" id="imgNav">
<a class="navbtn" index="8" mon="c=top&a=51&col=4&ct=1&pn=8" href="javascript:void(0)">8</a>
<a class="navbtn" index="7" mon="c=top&a=51&col=4&ct=1&pn=7" href="javascript:void(0)">7</a>
<a class="navbtn" index="6" mon="c=top&a=51&col=4&ct=1&pn=6" href="javascript:void(0)">6</a>
<a class="navbtn" index="5" mon="c=top&a=51&col=4&ct=1&pn=5" href="javascript:void(0)">5</a>
<a class="navbtn" index="4" mon="c=top&a=51&col=4&ct=1&pn=4" href="javascript:void(0)">4</a>
<a class="navbtn" index="3" mon="c=top&a=51&col=4&ct=1&pn=3" href="javascript:void(0)">3</a>
<a class="navbtn" index="2" mon="c=top&a=51&col=4&ct=1&pn=2" href="javascript:void(0)">2</a>
<a class="navbtn" index="1" mon="c=top&a=51&col=4&ct=1&pn=1" href="javascript:void(0)">1</a>
</div>
<div class="imgtit" id="imgTitle">
<a href="" target="_blank"></a>
</div>
</div>
</div>
<div alog-group="focus-top-news-hotwords">
<div class="mod h-bd-box" id="news-hotwords">
<div class="hd line"><h3><a href="http://news.baidu.com/n?cmd=1&class=reci" target="_blank">热搜新闻词</a><span class="en">HOT WORDS</span></h3><a href="http://news.baidu.com/n?cmd=1&class=reci" target="_blank" class="more">更多</a></div>
<div class="bd">
<ul class="hotwords clearfix">
<li class="li_0 li_color_0 button-slide">
<a href="https://www.baidu.com/s?wd=%B6%E0%B2%CA%C3%F1%CB%D7%D3%AD%B6%CB%CE%E7" target="_blank" class="hotwords_li_a" title="多彩民俗迎端午" mon="ct=1&amp;c=top&amp;a=30&pn=1">多彩民俗迎端午</a>
</li>
<li class="li_1 li_color_1 button-slide">
<a href="https://www.baidu.com/s?wd=%CE%AC%BA%CD%D3%A2%D0%DB%20%D7%E6%B9%FA%BD%D3%C4%E3%BB%D8%BC%D2" target="_blank" class="hotwords_li_a" title="维和英雄祖国接你回家" mon="ct=1&amp;c=top&amp;a=30&pn=2">维和英雄<br/>祖国接你回家</a>
</li>
<li class="li_2 li_color_2 button-slide">
<a href="https://www.baidu.com/s?wd=%B0%C2%B0%CD%C2%ED%D6%A7%B3%D6%CF%A3%C0%AD%C0%EF%BE%BA%D1%A1%D7%DC%CD%B3" target="_blank" class="hotwords_li_a" title="奥巴马支持希拉里竞选总统" mon="ct=1&amp;c=top&amp;a=30&pn=3">奥巴马支持希拉里竞选总统</a>
</li>
<li class="li_3 li_color_3 button-slide">
<a href="https://www.baidu.com/s?wd=9%CA%A1%BD%AB%D3%D0%C0%D7%B1%A9%B4%F3%B7%E7%CC%EC%C6%F8" target="_blank" class="hotwords_li_a" title="9省将有雷暴大风天气" mon="ct=1&amp;c=top&amp;a=30&pn=4">9省将有雷暴大风天气</a>
</li>
<li class="li_4 li_color_4 button-slide">
<a href="https://www.baidu.com/s?wd=%CB%CE%D6%D9%BB%F9%B1%BB%C6%D81%D2%DA%C7%A9%D4%BC%D6%D0%B9%FA%B9%AB%CB%BE" target="_blank" class="hotwords_li_a" title="宋仲基被曝1亿签约中国公司" mon="ct=1&amp;c=top&amp;a=30&pn=5">宋仲基被曝1亿签约中国公司</a>
</li>
<li class="li_5 li_color_5 button-slide">
<a href="https://www.baidu.com/s?wd=%B8%DF%D0%A3%D1%A7%C9%FA%CB%DF%C9%FA%B8%B8%CB%F7%B8%A7%D1%F8%B7%D1%B0%DC%CB%DF" target="_blank" class="hotwords_li_a" title="高校学生诉生父索抚养费败诉" mon="ct=1&amp;c=top&amp;a=30&pn=6">高校学生诉生父索抚养费败诉</a>
</li>
<li class="li_6 li_color_6 button-slide">
<a href="https://www.baidu.com/s?wd=%C5%AE%C9%FA%B8%DF%BF%BC%C7%B0%B8%B8%C4%B8%CF%E0%BC%CC%C8%A5%CA%C0" target="_blank" class="hotwords_li_a" title="女生高考前父母相继去世" mon="ct=1&amp;c=top&amp;a=30&pn=7">女生高考前父母相继去世</a>
</li>
<li class="li_7 li_color_7 button-slide">
<a href="https://www.baidu.com/s?wd=%C1%BD%C3%D7%B8%DF%A1%B0%C5%AE%BE%DE%C8%CB%A1%B1%B2%CE%BC%D3%D5%E6%C8%CB%D0%E3" target="_blank" class="hotwords_li_a" title="两米高“女巨人”参加真人秀" mon="ct=1&amp;c=top&amp;a=30&pn=8">两米高“女巨人”参加真人秀</a>
</li>
<li class="li_8 li_color_8 button-slide">
<a href="https://www.baidu.com/s?wd=%BE%DE%B7%F93D%B5%BE%CC%EF%BB%AD%A1%B0%D8%C2%D4%C2%B4%AB%A1%B1" target="_blank" class="hotwords_li_a" title="巨幅3D稻田画“芈月传”" mon="ct=1&amp;c=top&amp;a=30&pn=9">巨幅3D稻田画“芈月传”</a>
</li>
<li class="li_9 li_color_9 button-slide">
<a href="https://www.baidu.com/s?wd=1.6%CD%F2%C8%CB%B2%CE%BC%D3%C8%AD%CD%F5%B0%A2%C0%EF%D4%E1%C0%F1" target="_blank" class="hotwords_li_a" title="1.6万人参加拳王阿里葬礼" mon="ct=1&amp;c=top&amp;a=30&pn=10">1.6万人参加拳王阿里葬礼</a>
</li>
</ul>
</div>
</div>
</div>
<div class="mod-baijia column clearfix" id="baijia" alog-group="log-baijia">
<div class="column-title-home">
<div class="column-title-border">
<h2>
<a href="http://baijia.baidu.com/" target="_blank">百度百家</a>
<span class="en">BAIJIA</span>
</h2>
<div class="sub-class">
<a href="http://baijia.baidu.com/?tn=listarticle&labelid=6" target="_blank">财经</a>
<a href="http://baijia.baidu.com/?tn=listarticle&labelid=3" target="_blank">文化</a>
<a href="http://baijia.baidu.com/?tn=listarticle&labelid=4" target="_blank">娱乐</a>
<a href="http://baijia.baidu.com/?tn=listarticle&labelid=5" target="_blank" style="background: none">体育</a>
</div>
<span class="more"><a href="http://baijia.baidu.com/" target="_blank">加入百家号</a></span>
</div>
</div>
<div class="l-middle-col" style="height:305px;" alog-group="log-baijia-left-up">
<div class="imagearea">
<div class="imagearea-top" style="height:164px;">
<div class="image-mask-item">
<a href="http://weshixiang.baijia.baidu.com/article/491305" target="_blank" class="item-image" mon="&a=12" title="游戏一代的十年青春物语"><img r_src="http://f.hiphotos.baidu.com/news/q%3D100/sign=95b3c4c1afefce1bec2bccca9f51f3e8/7e3e6709c93d70cf3e9b2d3af0dcd100baa12ba7.jpg" alt="游戏一代的十年青春物语"/></a>
<a href="http://weshixiang.baijia.baidu.com/article/491305" target="_blank" class="item-title" title="游戏一代的十年青春物语" mon="&a=9">游戏一代的十年青春物语</a>
</div>
</div>
<div class="imagearea-bottom">
<div class="image-list-item">
<a href="http://labayule.baijia.baidu.com/article/491302" title="检验女明星友谊的“新标准”" target="_blank" mon="&a=12"><img r_src="http://g.hiphotos.baidu.com/news/q%3D100/sign=5d41d1c3bf4543a9f31bfecc2e178a7b/f603918fa0ec08fabf651c9051ee3d6d55fbdaa4.jpg"/></a><a href="http://labayule.baijia.baidu.com/article/491302" mon="&a=9"  class="txt" target="_blank">检验女明星友谊的“新标准”</a>
</div>
<div class="image-list-item">
<a href="http://entertainment.baijia.baidu.com/article/491315" title="姐妹团反目背后的利益争夺" target="_blank" mon="&a=12"><img r_src="http://e.hiphotos.baidu.com/news/q%3D100/sign=e118561698ef76c6d6d2ff2bad17fdf6/a686c9177f3e6709cdf8c1c833c79f3df8dc5508.jpg"/></a><a href="http://entertainment.baijia.baidu.com/article/491315" mon="&a=9"  class="txt" target="_blank">姐妹团反目背后的利益争夺</a>
</div>
</div>
</div>
</div>
<div class="l-right-col" style="width:290px;" alog-group="log-baijia-right-up">
<div class="baijia-focus-list">
<ul class="ulist bdlist">
<li class="bold-item"><a href="http://yulezibenlun.baijia.baidu.com/article/491012" target="_blank" mon="a=9">我们和三位快手的当红主播聊了聊</a><a href="http://yulezibenlun.baijia.baidu.com/a" target="_blank" mon="a=9" class="name">娱乐资本论</a></li>
<li><a href="http://tubingenmujiang.baijia.baidu.com/article/490701" target="_blank" mon="a=9">魔兽：一切为了德玛西亚</a><a href="http://tubingenmujiang.baijia.baidu.com/" target="_blank" mon="a=9" class="name">图宾根木匠</a></li>
<li><a href="http://yingpingren.baijia.baidu.com/article/491265" target="_blank" mon="a=9">为何不打造我们自己的超级英雄</a><a href="http://yingpingren.baijia.baidu.com" target="_blank" mon="a=9" class="name">影评人</a></li>
<li><a href="http://kangsitanding.baijia.baidu.com/article/491368" target="_blank" mon="a=9">VR产品如何才能吸引投资者？</a><a href="http://kangsitanding.baijia.baidu.com" target="_blank" mon="a=9" class="name">康斯坦丁</a></li>
<li><a href="http://labayule.baijia.baidu.com/article/491293" target="_blank" mon="a=9">高考后 这些电影教你表白</a><a href="http://labayule.baijia.baidu.com/" target="_blank" mon="a=9" class="name">辣八</a></li>
</ul>
<ul class="ulist bdlist" style="padding-top:5px">
<li class="bold-item"><a href="http://qijunjie.baijia.baidu.com/article/491388" target="_blank" mon="a=9">印度难以威胁中国经济</a><a href="http://qijunjie.baijia.baidu.com/" target="_blank" mon="a=9" class="name">齐俊杰</a></li>
<li><a href="http://yixianrong.baijia.baidu.com/article/491381" target="_blank" mon="a=9">房地产市场不可持续</a><a href="http://yixianrong.baijia.baidu.com" target="_blank" mon="a=9" class="name">易宪容</a></li>
<li><a href="http://anitama.baijia.baidu.com/article/489196" target="_blank" mon="a=9">日本动画产业商业运作的基本</a><a href="http://anitama.baijia.baidu.com" target="_blank" mon="a=9" class="name">AnimeTamas</a></li>
<li><a href="http://dusheme.baijia.baidu.com/article/491377" target="_blank" mon="a=9">白玉兰奖上现实题材剧失踪</a><a href="http://dusheme.baijia.baidu.com/" target="_blank" mon="a=9" class="name">影视独舌</a></li>
<li><a href="http://kongfuf.baijia.baidu.com/article/490501" target="_blank" mon="a=9">米老鼠的微笑值多少钱？</a><a href="http://kongfuf.baijia.baidu.com/" target="_blank" mon="a=9" class="name">功夫财经</a></li>
</ul>
</div>
</div>
<div class="l-middle-col" alog-group="log-baijia-left-down">
<div class="mod tbox" id="baijia-aside-recommend">
<div class="hd line" style="height:30px;line-height:30px;">
<h3>
<span>百家聚焦</span>
<span class="en">BAIJIA FOCUS</span>
</h3>
</div>
<div class="bd" style="position:relative;height:160px;overflow:hidden;">
<div class="imagearea">
<div class="imagearea-top">
<div class="image-mask-item">
<a href="http://liluyong.baijia.baidu.com/article/490979" target="_blank" class="item-image" mon="&amp;pn=1&a=12" title="逃离朋友圈？别任性了"><img r_src="http://b.hiphotos.baidu.com/news/q%3D100/sign=8c8c4edaef1190ef07fb96dffe1a9df7/d0c8a786c9177f3e6eb0623a78cf3bc79f3d5604.jpg" alt="逃离朋友圈？别任性了"/></a>
<a href="http://liluyong.baijia.baidu.com/article/490979" target="_blank" class="item-title" title="逃离朋友圈？别任性了" mon="&amp;pn=1&a=9">逃离朋友圈？别任性了</a>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="l-right-col" style="width:290px" alog-group="log-baijia-right-down">
<div class="mod tbox">
<div class="hd line" style="height:30px;line-height:30px;border-bottom:1px solid #ececec;">
<h3>
<span>热门文章</span>
<span class="en">BAIJIA HOT</span>
</h3>
</div>
<div class="bd" style="position:relative;height:170px;">
<div class="wgt-tab" id="bd-tab">
<div class="wgt-tab-tag">
<ul>
<li class="active"><a href="javascript:void(0)">日榜</a></li>
<li><a href="javascript:void(0)">周榜</a></li>
</ul>
</div>
<div class="wgt-tab-ctns">
<div class="wgt-tab-ctn">
<ol class="olist bdlist">
<li><span class="listnum num1"></span><a href="http://yulediaochaju.baijia.baidu.com/article/490980" target="_blank" title="王思聪怒喷「阿怡代打」事件，4年缔造电竞娱乐王国" mon="pn=1">王思聪怒喷「阿怡代打」事件，</a><a href="http://yulediaochaju.baijia.baidu.com/" target="_blank" mon="pn=1" class="name">娱乐调查局</a></li>
<li><span class="listnum num2"></span><a href="http://jincuodao.baijia.baidu.com/article/491074" target="_blank" title="1300亿美元没人要，PC时代猛兽竟死在这个点上  " mon="pn=2">1300亿美元没人要，PC时代猛兽</a><a href="http://jincuodao.baijia.baidu.com/" target="_blank" mon="pn=2" class="name">金错刀</a></li>
<li><span class="listnum num3"></span><a href="http://yuleyingtang.baijia.baidu.com/article/490994" target="_blank" title="刘诗诗的财运被诅咒了吗？除了暴风，还有这些公司" mon="pn=3">刘诗诗的财运被诅咒了吗？除了</a><a href="http://yuleyingtang.baijia.baidu.com/" target="_blank" mon="pn=3" class="name">娱乐硬糖</a></li>
<li><span class="listnum num4"></span><a href="http://liukuang.baijia.baidu.com/article/490966" target="_blank" title="在行&amp;分答完成A轮融资，知识共享却成了伪命题？" mon="pn=4">在行&amp;分答完成A轮融资，知识共</a><a href="http://liukuang.baijia.baidu.com/" target="_blank" mon="pn=4" class="name">刘旷</a></li>
<li><span class="listnum num5"></span><a href="http://liluyong.baijia.baidu.com/article/491196" target="_blank" title="48小时，4亿票房，魔兽粉丝为何如此疯狂？" mon="pn=5">48小时，4亿票房，魔兽粉丝为</a><a href="http://liluyong.baijia.baidu.com/" target="_blank" mon="pn=5" class="name">南七道</a></li>
</ol>
</div>
<div class="wgt-tab-ctn">
<ol class="olist bdlist">
<li><span class="listnum num1"></span><a href="http://qijunjie.baijia.baidu.com/article/485741" target="_blank" title="美国又到危机时刻 中国最危险" mon="pn=1">美国又到危机时刻 中国最危险</a><a href="http://qijunjie.baijia.baidu.com/" target="_blank" mon="pn=1" class="name">齐俊杰</a></li>
<li><span class="listnum num2"></span><a href="http://mbcaijing.baijia.baidu.com/article/486931" target="_blank" title="国企忙着抢地王 美日正联手越南印度狙击中国制造" mon="pn=2">国企忙着抢地王 美日正联手越</a><a href="http://mbcaijing.baijia.baidu.com/" target="_blank" mon="pn=2" class="name">面包财经</a></li>
<li><span class="listnum num3"></span><a href="http://yulezibenlun.baijia.baidu.com/article/489008" target="_blank" title="刘诗诗10.8亿嫁妆梦碎证监会，明星公司并购变难？" mon="pn=3">刘诗诗10.8亿嫁妆梦碎证监会，</a><a href="http://yulezibenlun.baijia.baidu.com/" target="_blank" mon="pn=3" class="name">娱乐资本论</a></li>
<li><span class="listnum num4"></span><a href="http://huangxinliang.baijia.baidu.com/article/484878" target="_blank" title="angelababy和范冰冰的差距，李晨最有发言权" mon="pn=4">angelababy和范冰冰的差距，李</a><a href="http://huangxinliang.baijia.baidu.com/" target="_blank" mon="pn=4" class="name">黄鑫亮</a></li>
<li><span class="listnum num5"></span><a href="http://majihua.baijia.baidu.com/article/485259" target="_blank" title="凭什么百万年薪就有义务承受高房价？" mon="pn=5">凭什么百万年薪就有义务承受高</a><a href="http://majihua.baijia.baidu.com/" target="_blank" mon="pn=5" class="name">马继华</a></li>
</ol>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<a name="localnews" class="focustop-anchor"></a>
<div class="mod-localnews column clearfix" id="local_news">
<div class="column-title-home" alog-group="log-mil-title">
<div class="column-title-border">
<h2><span id="city_name"><a href="javascript:void(0)" target="_blank"><span>北京</span>新闻</a></span><span class="cname">LOCAL NEWS</span></h2>
<a id="change-city" class="select-btn">切换城市</a>
<span class="more" id="p-more-link"><a href="http://news.baidu.com/n?cmd=6&loc=0&name=%B8%DB%B0%C4%CC%A8&locname=%B8%DB%B0%C4%CC%A8" id="more-link" target="_blank">更多</a></span>
</div>
</div>
<div class="l-left-col col-mod" alog-group="log-local-left">
<ul class="ulist focuslistnews" id="localnews-focus">
<li class="bold-item">
<span class="dot"></span>
<a href="http://www.cankaoxiaoxi.com/roll10/20160611/1187677.shtml" mon="a=2&c=baijia&pn=1" target="_blank">中铁总回应美终止合作高铁项目：将捍卫利益</a>
</li>
<li><a href="http://news.haiwainet.cn/n/2016/0611/c3541083-29996262.html" mon="a=2&c=baijia&pn=2" target="_blank">迪士尼回应王健林“不该来中国”：没有任何影响</a></li>
<li><a href="http://www.taiwan.cn/xwzx/PoliticsNews/201606/t20160611_11478618.htm" mon="a=2&c=baijia&pn=3" target="_blank">港媒：上海迪士尼未开园 周边房地产项目涨价35%</a></li>
<li><a href="http://news.haiwainet.cn/n/2016/0611/c3541083-29996203.html" mon="a=2&c=baijia&pn=4" target="_blank">深圳执勤失当民警多处行为不当：戴手串危险驾驶</a></li>
<li><a href="http://www.cankaoxiaoxi.com/roll10/20160611/1187655.shtml" mon="a=2&c=baijia&pn=5" target="_blank">深圳警方凌晨通报女孩逛街遭传唤案 涉事警察被停职</a></li>
<li><a href="http://cn.chinagate.cn/news/2016-06/11/content_38641564.htm" mon="a=2&c=baijia&pn=6" target="_blank">纸牌屋现实版：谷歌被指操纵搜索结果支持希拉里</a></li>
<li><a href="http://cn.chinagate.cn/news/2016-06/11/content_38642003.htm " mon="a=2&c=baijia&pn=7" target="_blank">人民日报三问：委内瑞拉真的会赖账不还中国贷款吗 </a></li>
<li><a href="http://sports.ifeng.com/gjzq/special/euro2016/" mon="a=2&c=baijia&pn=8" target="_blank">欧洲杯：揭幕战法国2-1罗马尼亚 帕耶世界波绝杀</a></li>
</ul>
</div>
<div class="l-middle-col" alog-group="log-local-middle">
<div class="mod">
<div class="hd">
<h3>新闻图片</h3>
</div>
<div class="bd">
<div class="imagearea" id="local_default" style="display:block">
<div class="imagearea-top">
<div class="image-mask-item">
<a href="http://www.chinanews.com/gn/2016/06-11/7900285.shtml" target="_blank" class="item-image" mon="&amp;pn=6&a=12" title="入汛后首场“冰雹雨”袭京 明天夜间再次迎来降水 "><img r_src="http://t1.baidu.com/it/u=http%3A%2F%2Fwww.chinanews.com%2Fcr%2F2016%2F0611%2F4052473421.jpg&fm=30" alt="入汛后首场“冰雹雨”袭京 明天夜间再次迎来降水 "/></a>
<a href="http://www.chinanews.com/gn/2016/06-11/7900285.shtml" target="_blank" class="item-title" title="入汛后首场“冰雹雨”袭京 明天夜间再次迎来降水 " mon="&amp;pn=6&a=9">入汛后首场“冰雹雨”袭京 明天夜间再次迎来降水 </a>
</div>
</div>
</div>
<div class="imagearea" id="local_current" style="display:none">
<div class="imagearea-top" id="localnews-pic">
</div>
</div>
</div>
</div>
</div>
<div class="l-right-col" alog-group="log-local-right">
<div class="mod tbox" id="internet-aside-gsdt">
<div class="hd line"><h3>新闻资讯</h3></div>
<div class="bd" id="localnews-zixun">
<ul class="ulist">
<li><a href="http://sports.ifeng.com/gjzq/special/euro2016/" mon="a=2&c=localnews&pn=8" target="_blank">欧洲杯：揭幕战法国2-1罗马尼亚 帕耶世界波绝杀</a></li>
<li><a href="http://news.youth.cn/gn/201606/t20160611_8106364.htm" mon="a=2&c=localnews&pn=9" target="_blank">东北华北多雷雨天气 南方明起大范围强降雨</a></li>
<li><a href="http://news.xinhuanet.com/overseas/2016-06/11/c_129051404.htm" mon="a=2&c=localnews&pn=10" target="_blank">一湖南籍中国男子老挝遇刺身亡 疑为熟人作案</a></li>
<li><a href="http://news.youth.cn/gj/201606/t20160611_8106375.htm" mon="a=2&c=localnews&pn=11" target="_blank">传奇拳王阿里安葬故乡公墓 数千民众夹道送别</a></li>
<li><a href="http://news.haiwainet.cn/n/2016/0611/c3541083-29996261.html" mon="a=2&c=localnews&pn=12" target="_blank">退休干部大巴上猥亵少女 裸露下体乱摸对方私处</a></li>
<li><a href="http://www.cankaoxiaoxi.com/roll10/20160611/1187570.shtml" mon="a=2&c=localnews&pn=13" target="_blank">出租房发生命案变“凶宅” 房东索要贬值费50万</a></li>
<li><a href="http://news.youth.cn/sh/201606/t20160611_8106260.htm" mon="a=2&c=localnews&pn=14" target="_blank">美媒称姚明拯救鲨鱼：中国年轻中产以吃鱼翅为耻</a></li>
</ul>
</div>
</div>
</div>
<div id="city_view" class="city_view">
<div class="city_list"></div>
<div id="btn_back" class="btn_back">返回</div>
<div id="btn_close" class="btn_close"></div>
<p class="city-tip">您所选城市新闻不足，将展示省会新闻</p>
<div class="up_triangle"></div>
</div>
<div id="status" class="loading">正在加载，请稍候...</div>
</div>
<a name="civilnews" class="focustop-anchor"></a>
<div class="column clearfix" id="guonei">
<div class="column-title-home" alog-group=log-civil-title>
<div class="column-title-border">
<h2><a href="http://guonei.news.baidu.com/" target="_blank">国内</a><span class="cname">China</span></h2>
<div class="sub-class">
<a href="http://guonei.news.baidu.com/n?cmd=1&class=shizheng" target="_blank" >时政要闻</a>
<a href="http://guonei.news.baidu.com/n?cmd=1&class=taiwan" target="_blank" >台湾</a>
<a href="http://guonei.news.baidu.com/n?cmd=1&class=gangaotai" target="_blank" style="background: none; padding-right: 0; margin-right: 0;">港澳</a>
</div>
<span class="more"><a href="http://guonei.news.baidu.com/" target="_blank">更多</a></span>
</div>
</div>
<div class="l-left-col col-mod" alog-group=log-civil-left>
<ul class="ulist focuslistnews">
<li class="bold-item">
<span class="dot"></span>
<a href="http://china.huanqiu.com/article/2016-06/9025796.html" mon="ct=0&amp;a=2&amp;c=civilnews&pn=1" target="_blank">广元游船翻沉现场再捞3名遇难者遗体 已13人死亡</a></li>
<li>
<a href="http://china.huanqiu.com/article/2016-06/9025934.html" mon="ct=0&amp;a=2&amp;c=civilnews&pn=2" target="_blank">石家庄一社区7名干部受贿超8千万集体“翻船”</a></li>
<li>
<a href="http://www.cankaoxiaoxi.com/china/20160610/1187412.shtml" mon="ct=0&amp;a=2&amp;c=civilnews&pn=3" target="_blank">香港特区下任行政长官选举2017年3月26日举行</a></li>
<li>
<a href="http://www.cankaoxiaoxi.com/china/20160610/1187492.shtml" mon="ct=0&amp;a=2&amp;c=civilnews&pn=4" target="_blank">香港城市大学屋顶倒塌：绿化屋顶承重评估差误肇祸</a></li>
<li>
<a href="http://taiwan.huanqiu.com/article/2016-06/9025309.html" mon="ct=0&amp;a=2&amp;c=civilnews&pn=5" target="_blank">羞辱老人台女子自称“日本人” 被曝实系“外省二..</a></li>
<li>
<a href="http://tech.gmw.cn/newspaper/2016-06/11/content_113129235.htm" mon="ct=0&amp;a=2&amp;c=civilnews&pn=6" target="_blank">以工匠之心描绘南京之美 </a></li>
</ul>
<ul class="ulist focuslistnews" >
<li class="bold-item">
<span class="dot"></span>
<a href="http://www.dzwww.com/xinwen/guoneixinwen/201606/t20160611_14436544.htm" mon="ct=0&amp;a=2&amp;c=civilnews&pn=7" target="_blank">山西力推官员“真人秀” 急欲转型摆脱一煤独大</a></li>
<li>
<a href="http://finance.china.com.cn/news/gnjj/20160611/3760959.shtml" mon="ct=0&amp;a=2&amp;c=civilnews&pn=8" target="_blank">国家安监总局：前5月生产安全事故总量下降11.4%</a></li>
<li>
<a href="http://sh.eastday.com/m/20160611/u1a9430975.html" mon="ct=0&amp;a=2&amp;c=civilnews&pn=9" target="_blank">下周正式开园迪士尼更靓了 米奇花圃"颜值"提升</a></li>
<li>
<a href="http://www.gs.xinhuanet.com/news/2016-06/11/c_1119020290.htm" mon="ct=0&amp;a=2&amp;c=civilnews&pn=10" target="_blank">省城“雷锋车队”情暖会宁山区</a></li>
<li>
<a href="http://sichuan.scol.com.cn/dwzw/201606/54589736.html" mon="ct=0&amp;a=2&amp;c=civilnews&pn=11" target="_blank">四川界定“事实无人抚养儿童”范围 享多项救助政策</a></li>
<li>
<a href="http://economy.gmw.cn/newspaper/2016-06/11/content_113128957.htm" mon="ct=0&amp;a=2&amp;c=civilnews&pn=12" target="_blank">夜查市容环境杜绝占道户外烧烤 </a></li>
</ul>
</div>
<div class="l-middle-col" alog-group=log-civil-middle>
<div class="mod">
<div class="hd">
<h3>国内图片</h3>
</div>
<div class="bd">
<div class="imagearea">
<div class="imagearea-top">
<div class="image-mask-item">
<a href="http://bbs.miercn.com/bdnews/201606/741164.html" target="_blank" class="item-image" mon="ct=0&amp;c=civilnews&amp;pn=1&a=12" title="济南名泉又现“泡脚客”"><img r_src="http://c.hiphotos.baidu.com/news/pic/item/9358d109b3de9c82b918fbb76481800a19d8438c.jpg" alt="济南名泉又现“泡脚客”"/></a>
<a href="http://bbs.miercn.com/bdnews/201606/741164.html" target="_blank" class="item-title" title="济南名泉又现“泡脚客”" mon="ct=0&amp;c=civilnews&amp;pn=1&a=9">济南名泉又现“泡脚客”</a>
</div>
</div>
<div class="imagearea-bottom">
<div class="image-list-item">
<a href="http://emotion.aili.com/1822/2735436.html" title="海南万泉河被植物覆盖如草原" target="_blank" mon="ct=0&amp;c=civilnews&amp;pn=2&a=12"><img r_src="http://h.hiphotos.baidu.com/news/pic/item/bf096b63f6246b60056cb04ce3f81a4c510fa2a3.jpg"/></a><a href="http://emotion.aili.com/1822/2735436.html" mon="ct=0&amp;c=civilnews&amp;pn=2&a=9"  class="txt" target="_blank">海南万泉河被植物覆盖如草原</a>
</div>
<div class="image-list-item">
<a href="http://www.qiwen007.com/bdn/bsh/30411.html" title="老农捕获16斤甲鱼，摊主开价4500" target="_blank" mon="ct=0&amp;c=civilnews&amp;pn=3&a=12"><img r_src="http://a.hiphotos.baidu.com/news/pic/item/dcc451da81cb39db2d22656ed8160924ab183023.jpg"/></a><a href="http://www.qiwen007.com/bdn/bsh/30411.html" mon="ct=0&amp;c=civilnews&amp;pn=3&a=9"  class="txt" target="_blank">老农捕获16斤甲鱼，摊主开价4500</a>
</div>
</div>
</div>
</div>
</div>
</div><div class="l-right-col" alog-group="log-civil-right">
<div class="mod" id="aside-civil-pic">
<div class="hd"><h3>国内图片</h3></div>
<div class="bd">
<div class="image-list">
<div class="image-list-wrapper">
<div class="image-list-item">
<a href="http://www.qiwen007.com/bdn/bsh/30413.html" title="人牛大战，男子徒手扳倒千斤犟牛" target="_blank" mon="ct=0&amp;a=28&amp;c=civilnews&amp;pn=4"><img r_src="http://b.hiphotos.baidu.com/news/pic/item/0b7b02087bf40ad18772c5db5f2c11dfa9ecce70.jpg"/></a><a href="http://www.qiwen007.com/bdn/bsh/30413.html" mon="ct=0&amp;a=28&amp;c=civilnews&amp;pn=4"  class="txt" target="_blank">人牛大战，男子徒手扳倒千斤犟牛</a>
</div>
<div class="image-list-item">
<a href="http://world.people.com.cn/n1/2016/0608/c1002-28422765.html" title="泰国“2016最受中国游客欢迎奖”评选启动" target="_blank" mon="ct=0&amp;a=28&amp;c=civilnews&amp;pn=5"><img r_src="http://t3.baidu.com/it/u=http%3A%2F%2Fworld.people.com.cn%2FNMediaFile%2F2016%2F0608%2FMAIN201606081905000118434902687.jpg&fm=30"/></a><a href="http://world.people.com.cn/n1/2016/0608/c1002-28422765.html" mon="ct=0&amp;a=28&amp;c=civilnews&amp;pn=5"  class="txt" target="_blank">泰国“2016最受中国游客欢迎奖”评选启动</a>
</div>
</div>
</div>
</div>
</div>
<div class="mod tbox" id="civil-aside-tophit">
<div class="hd"><h3>热门点击</h3></div>
<div class="bd">
<ol class="olist " id="">
<li><span class="listnum num1"></span><a href="http://news.youth.cn/gn/201604/t20160422_7898745.htm" target="_blank" title="岳阳市委原常委：贪女色是想把失去的青春补回来" mon="c=civilnews&amp;ct=0&amp;a=27&amp;col=8&pn=1">岳阳市委原常委：贪女色是想把失去的青春补回来</a></li>
<li><span class="listnum num2"></span><a href="http://news.youth.cn/gn/201604/t20160425_7909497.htm" target="_blank" title="国博副馆长：在博物馆拍照很傻 还不如去下官网图片" mon="c=civilnews&amp;ct=0&amp;a=27&amp;col=8&pn=2">国博副馆长：在博物馆拍照很傻 还不如去下官网图片</a></li>
<li><span class="listnum num3"></span><a href="http://news.cnr.cn/native/gd/20160425/t20160425_521976989.shtml" target="_blank" title="台湾一陆客团游览车翻车 司机身亡26人受伤(图)" mon="c=civilnews&amp;ct=0&amp;a=27&amp;col=8&pn=3">台湾一陆客团游览车翻车 司机身亡26人受伤(图)</a></li>
<li><span class="listnum num4"></span><a href="http://politics.gmw.cn/2016-04/25/content_19835150.htm" target="_blank" title="北京五环内要建3200公里自行车道 违停将拖车扣分 " mon="c=civilnews&amp;ct=0&amp;a=27&amp;col=8&pn=4">北京五环内要建3200公里自行车道 违停将拖车扣分 </a></li>
<li><span class="listnum num5"></span><a href="http://china.huanqiu.com/article/2016-04/8819110.html" target="_blank" title="河南回应"猴子蹬落石砸死人":难确定和猴子有关" mon="c=civilnews&amp;ct=0&amp;a=27&amp;col=8&pn=5">河南回应"猴子蹬落石砸死人":难确定和猴子有关</a></li>
</ol>
</div>
</div>
</div>
</div><a name="internews" class="focustop-anchor"></a>
<div class="column clearfix" id="guojie">
<div class="column-title-home" alog-group=log-internal-title>
<div class="column-title-border">
<h2><a href="http://guoji.news.baidu.com/" target="_blank">国际</a><span class="cname">World</span></h2>
<div class="sub-class">
<a href="http://guoji.news.baidu.com/n?cmd=1&class=hqsy" target="_blank" >环球视野</a>
<a href="http://guoji.news.baidu.com/n?cmd=1&class=renwu" target="_blank" style="background: none; padding-right: 0; margin-right: 0;">国际人物</a>
</div>
<span class="more"><a href="http://guoji.news.baidu.com/" target="_blank">更多</a></span>
</div>
</div>
<div class="l-left-col col-mod" alog-group=log-internal-left>
<ul class="ulist focuslistnews">
<li class="bold-item">
<span class="dot"></span>
<a href="http://world.huanqiu.com/article/2016-06/9025768.html" mon="ct=0&amp;a=2&amp;c=internews&pn=1" target="_blank">美运输部批准6家航空公司开通飞往古巴定期航班</a></li>
<li>
<a href="http://world.huanqiu.com/article/2016-06/9025910.html" mon="ct=0&amp;a=2&amp;c=internews&pn=2" target="_blank">中国留学生在美滑雪跌入瀑布失踪 警方已停止搜救</a></li>
<li>
<a href="http://www.cankaoxiaoxi.com/world/20160611/1186472.shtml" mon="ct=0&amp;a=2&amp;c=internews&pn=3" target="_blank">澳媒:俄罗斯“重返亚洲”两年 所获结果不如预期</a></li>
<li>
<a href="http://www.cankaoxiaoxi.com/world/20160611/1186445.shtml" mon="ct=0&amp;a=2&amp;c=internews&pn=4" target="_blank">男子彻夜狂欢后搭错船漂到叙利亚 被俄军请"喝茶"</a></li>
<li>
<a href="http://world.huanqiu.com/article/2016-06/9025878.html" mon="ct=0&amp;a=2&amp;c=internews&pn=5" target="_blank">美加紧制订“奔月”法规 弥补法律空白</a></li>
<li>
<a href="http://www.cankaoxiaoxi.com/world/20160610/1187385.shtml" mon="ct=0&amp;a=2&amp;c=internews&pn=6" target="_blank">外媒：印度放宽签证限制对华示好 取消预先审批</a></li>
</ul>
<ul class="ulist focuslistnews" >
<li class="bold-item">
<span class="dot"></span>
<a href="http://world.huanqiu.com/article/2016-06/9025769.html" mon="ct=0&amp;a=2&amp;c=internews&pn=7" target="_blank">中国驻菲律宾大使：双边对话妥善处理南海问题</a></li>
<li>
<a href="http://world.huanqiu.com/article/2016-06/9025767.html" mon="ct=0&amp;a=2&amp;c=internews&pn=8" target="_blank">墨西哥发生灭门案一家11口遇害 2名儿童受伤</a></li>
<li>
<a href="http://news.xinhuanet.com/world/2016-06/10/c_1119019383.htm" mon="ct=0&amp;a=2&amp;c=internews&pn=9" target="_blank">罢工影响欧锦赛？法国总统：采取一切必要保障措施 </a></li>
<li>
<a href="http://news.cri.cn/20160609/97bb37f9-ea8f-5638-ec56-26d08066b181.html" mon="ct=0&amp;a=2&amp;c=internews&pn=10" target="_blank">男子掉入美国黄石公园93度温泉中 或已死亡</a></li>
<li>
<a href="http://news.china.com.cn/live/2016-06/11/content_36244313.htm" mon="ct=0&amp;a=2&amp;c=internews&pn=11" target="_blank">党媒解析“委内瑞拉会不会赖账中国贷款” </a></li>
<li>
<a href="http://www.chinanews.com/gj/2016/06-11/7900330.shtml" mon="ct=0&amp;a=2&amp;c=internews&pn=12" target="_blank">希拉里与特朗普转向大选模式 相互攻击火力升级 </a></li>
</ul>
</div>
<div class="l-middle-col" alog-group=log-internal-middle>
<div class="mod">
<div class="hd">
<h3>国际图片</h3>
</div>
<div class="bd">
<div class="imagearea">
<div class="imagearea-top">
<div class="image-mask-item">
<a href="http://www.chinanews.com/gj/2016/06-08/7898759.shtml" target="_blank" class="item-image" mon="ct=0&amp;c=internews&amp;pn=1&a=12" title="澳当局：MH370客机海上搜索或8月前后才能完成 "><img r_src="http://t2.baidu.com/it/u=http%3A%2F%2Fwww.chinanews.com%2Fgj%2F2016%2F06-08%2FU473P4T8D7898759F107DT20160608155448.jpg&fm=30" alt="澳当局：MH370客机海上搜索或8月前后才能完成 "/></a>
<a href="http://www.chinanews.com/gj/2016/06-08/7898759.shtml" target="_blank" class="item-title" title="澳当局：MH370客机海上搜索或8月前后才能完成 " mon="ct=0&amp;c=internews&amp;pn=1&a=9">澳当局：MH370客机海上搜索或8月前后才能完成 </a>
</div>
</div>
<div class="imagearea-bottom">
<div class="image-list-item">
<a href="http://sports.people.com.cn/n1/2016/0610/c404583-28424935.html" title="高清:2016欧洲杯即将揭幕 法兰西大球场静待揭幕战" target="_blank" mon="ct=0&amp;c=internews&amp;pn=2&a=12"><img r_src="http://t1.baidu.com/it/u=http%3A%2F%2Fsports.people.com.cn%2FNMediaFile%2F2016%2F0610%2FMAIN201606102142000288087986721.jpg&fm=30"/></a><a href="http://sports.people.com.cn/n1/2016/0610/c404583-28424935.html" mon="ct=0&amp;c=internews&amp;pn=2&a=9"  class="txt" target="_blank">高清:2016欧洲杯即将揭幕 法兰西大球场静待揭幕战</a>
</div>
<div class="image-list-item">
<a href="http://news.xinhuanet.com/world/2016-06/10/c_129049656.htm" title="也门战乱致死儿童 沙特等国抗议被联合国“拉黑” " target="_blank" mon="ct=0&amp;c=internews&amp;pn=3&a=12"><img r_src="http://t1.baidu.com/it/u=http%3A%2F%2Fnews.xinhuanet.com%2Fworld%2F2016-06%2F10%2F129049656_14654709676031n.jpg&fm=30"/></a><a href="http://news.xinhuanet.com/world/2016-06/10/c_129049656.htm" mon="ct=0&amp;c=internews&amp;pn=3&a=9"  class="txt" target="_blank">也门战乱致死儿童 沙特等国抗议被联合国“拉黑” </a>
</div>
</div>
</div>
</div>
</div>
</div><div class="l-right-col" alog-group="log-internal-right">
<div class="mod" id="huanqiu">
<div class="hd line"><h3><a href="http://guoji.news.baidu.com/n?cmd=1&class=hqsy&pn=1" target="_blank">环球视野</a></h3><a href="http://guoji.news.baidu.com/n?cmd=1&class=hqsy&pn=1" class="more" target="_blank">更多</a></div>
<div class="bd">
<div class="image-list">
<div class="image-list-wrapper">
<div class="image-list-item">
<a href="http://wengengmiao.baijia.baidu.com/article/478441" title="亿万富翁10年复仇 逼人赔9亿元" target="_blank" mon="ct=0&amp;a=27&amp;c=internews&amp;pn=1"><img r_src="http://e.hiphotos.baidu.com/news/pic/item/fcfaaf51f3deb48f02fc691bf71f3a292cf5785a.jpg"/></a><a href="http://wengengmiao.baijia.baidu.com/article/478441" mon="ct=0&amp;a=27&amp;c=internews&amp;pn=1"  class="txt" target="_blank">亿万富翁10年复仇 逼人赔9亿元</a>
</div>
<div class="image-list-item">
<a href="http://news.xinhuanet.com/world/2016-06/11/c_129050784.htm" title="美加紧制订“奔月”法规 弥补法律空白 " target="_blank" mon="ct=0&amp;a=27&amp;c=internews&amp;pn=2"><img r_src="http://t2.baidu.com/it/u=http%3A%2F%2Fnews.xinhuanet.com%2Fworld%2F2016-06%2F11%2F129050784_14655553097061n.jpg&fm=30"/></a><a href="http://news.xinhuanet.com/world/2016-06/11/c_129050784.htm" mon="ct=0&amp;a=27&amp;c=internews&amp;pn=2"  class="txt" target="_blank">美加紧制订“奔月”法规 弥补法律空白 </a>
</div>
</div>
</div>
</div>
</div>
<div class="mod tbox" id="internal-hotword">
<div class="hd"><h3>国际热搜词</h3></div>
<div class="bd">
<ol class="olist hotwords-list" id="">
<li><span class="listnum num1"></span><a href="http://news.baidu.com/ns?cl=2&ct=9&rn=20&sp=hotquery&word=印度 治哮喘 生吞活鱼" target="_blank" title="为治哮喘生吞活鱼" mon="ct=0&amp;a=28&amp;c=internews&pn=1">为治哮喘生吞活鱼</a></li>
<li><span class="listnum num2"></span><a href="http://news.baidu.com/ns?cl=2&ct=9&rn=20&sp=hotquery&word=日本老伯 炒菜 杀虫剂 失火" target="_blank" title="老伯喷杀虫剂烧4栋房" mon="ct=0&amp;a=28&amp;c=internews&pn=2">老伯喷杀虫剂烧4栋房</a></li>
<li><span class="listnum num3"></span><a href="http://news.baidu.com/ns?cl=2&ct=9&rn=20&sp=hotquery&word=英国女郎 丁字裤 窗台日光浴" target="_blank" title="穿丁字裤趴窗台日光浴" mon="ct=0&amp;a=28&amp;c=internews&pn=3">穿丁字裤趴窗台日光浴</a></li>
<li><span class="listnum num4"></span><a href="http://news.baidu.com/ns?cl=2&ct=9&rn=20&sp=hotquery&word=艺术家 铁钩穿肉 悬挂活人" target="_blank" title="铁钩穿肉悬挂活人" mon="ct=0&amp;a=28&amp;c=internews&pn=4">铁钩穿肉悬挂活人</a></li>
<li><span class="listnum num5"></span><a href="http://news.baidu.com/ns?cl=2&ct=9&rn=20&sp=hotquery&word=男童 身首异处 奇迹康复" target="_blank" title="男童"身首异处"康复" mon="ct=0&amp;a=28&amp;c=internews&pn=5">男童"身首异处"康复</a></li>
</ol>
<ol class="olist hotwords-list" id="">
<li><span class="listnum num6"></span><a href="http://news.baidu.com/ns?cl=2&ct=9&rn=20&sp=hotquery&word=新婚丈夫 杀害 手机充电" target="_blank" title="新娘忘充电被夫杀害" mon="ct=0&amp;a=28&amp;c=internews&pn=6">新娘忘充电被夫杀害</a></li>
<li><span class="listnum num7"></span><a href="http://news.baidu.com/ns?cl=2&ct=9&rn=20&sp=hotquery&word=泰国两游艇相撞" target="_blank" title="泰国两游艇相撞" mon="ct=0&amp;a=28&amp;c=internews&pn=7">泰国两游艇相撞</a></li>
<li><span class="listnum num8"></span><a href="http://news.baidu.com/ns?cl=2&ct=9&rn=20&sp=hotquery&word=猴子爬进发电厂" target="_blank" title="猴子爬进发电厂" mon="ct=0&amp;a=28&amp;c=internews&pn=8">猴子爬进发电厂</a></li>
<li><span class="listnum num9"></span><a href="http://news.baidu.com/ns?cl=2&ct=9&rn=20&sp=hotquery&word=特朗普 华裔选民" target="_blank" title="特朗普会见华裔选民" mon="ct=0&amp;a=28&amp;c=internews&pn=9">特朗普会见华裔选民</a></li>
<li><span class="listnum num10"></span><a href="http://news.baidu.com/ns?cl=2&ct=9&rn=20&sp=hotquery&word=华侨 被骗991万" target="_blank" title="华侨回国被骗991万" mon="ct=0&amp;a=28&amp;c=internews&pn=10">华侨回国被骗991万</a></li>
</ol>
</div>
</div>
</div>
</div><a name="financenews" class="focustop-anchor"></a>
<div class="column clearfix" id="caijing">
<div class="column-title-home" alog-group=log-finannews-title>
<div class="column-title-border">
<h2><a href="http://finance.baidu.com/" target="_blank">财经</a><span class="cname">Finance</span></h2>
<div class="sub-class">
<a href="http://finance.baidu.com/n?cmd=1&class=stock" target="_blank" >股票</a>
<a href="http://finance.baidu.com/n?cmd=1&class=money" target="_blank" >理财</a>
<a href="http://finance.baidu.com/n?cmd=1&class=hongguan" target="_blank" style="background: none; padding-right: 0; margin-right: 0;">经济民生</a>
</div>
<span class="more"><a href="http://finance.baidu.com/" target="_blank">更多</a></span>
</div>
</div>
<div class="l-left-col col-mod" alog-group=log-finannews-left>
<ul class="ulist focuslistnews">
<li class="bold-item">
<span class="dot"></span>
<a href="http://yixianrong.baijia.baidu.com/article/491381" mon="ct=0&amp;a=2&amp;c=finannews&pn=1" target="_blank">房价上涨而房企股价下跌：一场欺骗市场的游戏</a></li>
<li>
<a href="http://wengengmiao.baijia.baidu.com/article/491384" mon="ct=0&amp;a=2&amp;c=finannews&pn=2" target="_blank">A股与人民币汇率共振 炒美股赚美元为何是更好选择</a></li>
<li>
<a href="http://finance.huanqiu.com/roll/2016-06/9023053.html" mon="ct=0&amp;a=2&amp;c=finannews&pn=3" target="_blank">沪指“三连阴”失守60日均线</a></li>
<li>
<a href="http://finance.huanqiu.com/roll/2016-06/9024506.html" mon="ct=0&amp;a=2&amp;c=finannews&pn=4" target="_blank">沪将全面推行购房资金第三方监管 先在松江试点</a></li>
<li>
<a href="http://finance.huanqiu.com/cjrd/2016-06/9025912.html" mon="ct=0&amp;a=2&amp;c=finannews&pn=5" target="_blank">中铁总回应美终止合作高铁项目：错误、不负责任</a></li>
<li>
<a href="http://finance.huanqiu.com/gsjj/2016-06/9025956.html" mon="ct=0&amp;a=2&amp;c=finannews&pn=6" target="_blank">CPI涨幅回落PPI回升 节后A股有望震荡走强</a></li>
</ul>
<ul class="ulist focuslistnews" >
<li class="bold-item">
<span class="dot"></span>
<a href="http://bashusong.baijia.baidu.com/article/490776" mon="ct=0&amp;a=2&amp;c=finannews&pn=7" target="_blank">巴曙松：中资企业国际化趋势及其金融路径</a></li>
<li>
<a href="http://finance.huanqiu.com/gsjj/2016-06/9026008.html" mon="ct=0&amp;a=2&amp;c=finannews&pn=8" target="_blank">股灾周年祭：A股市值蒸发25万亿 人均24万</a></li>
<li>
<a href="http://finance.huanqiu.com/gsjj/2016-06/9026007.html" mon="ct=0&amp;a=2&amp;c=finannews&pn=9" target="_blank">“哥仑步”敲警钟 银行排雷新三板股权质押</a></li>
<li>
<a href="http://world.huanqiu.com/article/2016-06/9025766.html" mon="ct=0&amp;a=2&amp;c=finannews&pn=10" target="_blank">英国男子在后院埋藏黄金 留下“藏宝图”当遗产</a></li>
<li>
<a href="http://finance.huanqiu.com/roll/2016-06/9023306.html" mon="ct=0&amp;a=2&amp;c=finannews&pn=11" target="_blank">发挥国有企业作用 打赢改革攻坚战——供给侧结构..</a></li>
<li>
<a href="http://finance.huanqiu.com/roll/2016-06/9025392.html" mon="ct=0&amp;a=2&amp;c=finannews&pn=12" target="_blank">贵州探索建立跨省跨区电力交易机制</a></li>
</ul>
</div>
<div class="l-middle-col" alog-group=log-finannews-middle>
<div class="mod">
<div class="hd">
<h3>财经图片</h3>
</div>
<div class="bd">
<div class="imagearea">
<div class="imagearea-top">
<div class="image-mask-item">
<a href="http://qijunjie.baijia.baidu.com/article/491388" target="_blank" class="item-image" mon="ct=0&amp;c=finannews&amp;pn=1&a=12" title="印度难以威胁中国经济"><img r_src="http://g.hiphotos.baidu.com/news/w%3D638/sign=1da9c10c4336acaf59e095ff44d98d03/b58f8c5494eef01fec6f9af0e8fe9925bc317d88.jpg" alt="印度难以威胁中国经济"/></a>
<a href="http://qijunjie.baijia.baidu.com/article/491388" target="_blank" class="item-title" title="印度难以威胁中国经济" mon="ct=0&amp;c=finannews&amp;pn=1&a=9">印度难以威胁中国经济</a>
</div>
</div>
<div class="imagearea-bottom">
<div class="image-list-item">
<a href="http://www.licai18.com/article/ArticleDetail.jsp?docId=2112820" title="6月9日全球金融市场:美股自高位回落" target="_blank" mon="ct=0&amp;c=finannews&amp;pn=2&a=12"><img r_src="http://t3.baidu.com/it/u=http%3A%2F%2Fwww.licai18.com%2Fadmin%2Fewebeditor%2Fuploadfile%2F20160610071252718.jpg&fm=30"/></a><a href="http://www.licai18.com/article/ArticleDetail.jsp?docId=2112820" mon="ct=0&amp;c=finannews&amp;pn=2&a=9"  class="txt" target="_blank">6月9日全球金融市场:美股自高位回落</a>
</div>
<div class="image-list-item">
<a href="http://news.xinhuanet.com/world/2016-06/07/c_129045154.htm" title="美联储主席对经济前景表示谨慎乐观 " target="_blank" mon="ct=0&amp;c=finannews&amp;pn=3&a=12"><img r_src="http://t2.baidu.com/it/u=http%3A%2F%2Fnews.xinhuanet.com%2Fworld%2F2016-06%2F07%2F129045154_14652678753981n.jpg&fm=30"/></a><a href="http://news.xinhuanet.com/world/2016-06/07/c_129045154.htm" mon="ct=0&amp;c=finannews&amp;pn=3&a=9"  class="txt" target="_blank">美联储主席对经济前景表示谨慎乐观 </a>
</div>
</div>
</div>
</div>
</div>
</div><div class="l-right-col" alog-group="log-finannews-right">
<div class="mod rbox" id="star-aside">
<div class="hd"><h3>股指期货数据</h3></div>
<div class="bd">
<iframe id="stock_frame" frameborder="0" scrolling="no" src="http://finance.sina.com.cn/iframe/1016/2016-03-03/9.html"></iframe>
<div id="stock_query">
<form action="http://biz.finance.sina.com.cn/suggest/lookup_n.php" id="sf2" name="sf2" target="_blank" onsubmit="return submitStockForm(this);" style="position: relative;">
<input type="text" name="q" id="wd2" autocomplete="off" value="代码/名称/拼音">
<input type="submit" value="查询" class="submit-btn" onmousedown="UserMonitor.send(event, 4, {col:'501', pn:6})">
<div class="suggest_panel" id="suggest1" style="display: none;"></div>
</form>
</div>
</div>
</div>
</div>
</div>
<a name="enternews" class="focustop-anchor"></a>
<div class="column clearfix" id="yule">
<div class="column-title-home" alog-group=entertainment-title>
<div class="column-title-border">
<h2><a href="http://yule.baidu.com/" target="_blank">娱乐</a><span class="cname">Entertainment</span></h2>
<div class="sub-class">
<a href="http://yule.baidu.com/n?cmd=1&class=film" target="_blank" >电影</a>
<a href="http://yule.baidu.com/n?cmd=1&class=tv" target="_blank" >电视</a>
<a href="http://yule.baidu.com/n?cmd=1&class=music" target="_blank" >音乐</a>
<a href="http://yule.baidu.com/n?cmd=1&class=zongyi" target="_blank" style="background: none; padding-right: 0; margin-right: 0;">综艺</a>
</div>
<span class="more"><a href="http://yule.baidu.com/" target="_blank">更多</a></span>
</div>
</div>
<div class="l-left-col col-mod" alog-group=entertainment-left>
<ul class="ulist focuslistnews">
<li class="bold-item">
<span class="dot"></span>
<a href="http://fun.youth.cn/gnzx/201606/t20160611_8106389.htm" mon="ct=0&amp;a=2&amp;c=enternews&pn=1" target="_blank">白玉兰奖揭晓 胡歌获视帝孙俪再度封后</a></li>
<li>
<a href="http://www.chinanews.com/yl/2016/06-09/7899516.shtml" mon="ct=0&amp;a=2&amp;c=enternews&pn=2" target="_blank">刘恺威透露杨幂私下非常温柔：只是在工作上比较..</a></li>
<li>
<a href="http://ent.china.com/gundong/11015422/20160611/22845689.html" mon="ct=0&amp;a=2&amp;c=enternews&pn=3" target="_blank">Makiyo月花4万多开吃老本 打算卖妈妈遗产</a></li>
<li>
<a href="http://culture.gmw.cn/newspaper/2016-06/11/content_113131403.htm" mon="ct=0&amp;a=2&amp;c=enternews&pn=4" target="_blank">电影《狂兽》 香港热拍投资过亿 </a></li>
<li>
<a href="http://www.cankaoxiaoxi.com/photo/20160610/1187510.shtml" mon="ct=0&amp;a=2&amp;c=enternews&pn=5" target="_blank">上海国际电影电视节“白玉兰绽放”红毯仪式举行</a></li>
<li>
<a href="http://news.xhby.net/system/2016/06/11/028903167.shtml" mon="ct=0&amp;a=2&amp;c=enternews&pn=6" target="_blank">黄晓明谈刘德华 “我们都是拼命三郎”</a></li>
</ul>
<ul class="ulist focuslistnews" >
<li class="bold-item">
<span class="dot"></span>
<a href="http://news.xhby.net/system/2016/06/11/028903175.shtml" mon="ct=0&amp;a=2&amp;c=enternews&pn=7" target="_blank">《极限2》“龟兔赛跑”</a></li>
<li>
<a href="http://www.sd.xinhuanet.com/news/yule/2016-06/11/c_1118939114.htm" mon="ct=0&amp;a=2&amp;c=enternews&pn=8" target="_blank">黄渤妻子长得比黄渤还黄渤 扒扒一个模子的明星夫..</a></li>
<li>
<a href="http://sports.163.com/16/0611/08/BP9300DF00051CA1.html" mon="ct=0&amp;a=2&amp;c=enternews&pn=9" target="_blank">曝奥多姆失控恐吓科勒 卡戴珊欲向法院申请禁令</a></li>
<li>
<a href="http://www.chinanews.com/yl/2016/06-10/7900181.shtml" mon="ct=0&amp;a=2&amp;c=enternews&pn=10" target="_blank">四代民谣音乐人云集扬州吟唱 数万乐迷享受音乐盛..</a></li>
<li>
<a href="http://fun.youth.cn/gnzx/201606/t20160611_8106404.htm" mon="ct=0&amp;a=2&amp;c=enternews&pn=11" target="_blank">阿娇晒与男友人亲密合影 比V卖萌超有活力</a></li>
<li>
<a href="http://news.youth.cn/jsxw/201606/t20160610_8104083.htm" mon="ct=0&amp;a=2&amp;c=enternews&pn=12" target="_blank">60岁吕良伟与太太逛街 全程打情骂俏</a></li>
</ul>
</div>
<div class="l-middle-col" alog-group=entertainment-middle>
<div class="mod">
<div class="hd">
<h3>娱乐图片</h3>
</div>
<div class="bd">
<div class="imagearea">
<div class="imagearea-top">
<div class="image-mask-item">
<a href="http://news.xinhuanet.com/overseas/2016-06/11/c_129051279.htm" target="_blank" class="item-image" mon="ct=0&amp;c=enternews&amp;pn=1&a=12" title="上海电视节白玉兰奖揭晓 《芈月传》登顶国剧“琅.."><img r_src="http://t1.baidu.com/it/u=http%3A%2F%2Fnews.xinhuanet.com%2Foverseas%2F2016-06%2F11%2F129051279_14656015093841n.jpg&fm=30" alt="上海电视节白玉兰奖揭晓 《芈月传》登顶国剧“琅.."/></a>
<a href="http://news.xinhuanet.com/overseas/2016-06/11/c_129051279.htm" target="_blank" class="item-title" title="上海电视节白玉兰奖揭晓 《芈月传》登顶国剧“琅.." mon="ct=0&amp;c=enternews&amp;pn=1&a=9">上海电视节白玉兰奖揭晓 《芈月传》登顶国剧“琅..</a>
</div>
</div>
<div class="imagearea-bottom">
<div class="image-list-item">
<a href="http://www.sd.xinhuanet.com/news/yule/2016-06/09/c_1119017146.htm" title="组图：钟丽缇携男友出游 张伦硕牵手继女关系好 " target="_blank" mon="ct=0&amp;c=enternews&amp;pn=2&a=12"><img r_src="http://t1.baidu.com/it/u=http%3A%2F%2Fwww.sd.xinhuanet.com%2Fnews%2Fyule%2F2016-06%2F09%2F1119017146_14654534397441n.jpg&fm=30"/></a><a href="http://www.sd.xinhuanet.com/news/yule/2016-06/09/c_1119017146.htm" mon="ct=0&amp;c=enternews&amp;pn=2&a=9"  class="txt" target="_blank">组图：钟丽缇携男友出游 张伦硕牵手继女关系好 </a>
</div>
<div class="image-list-item">
<a href="http://character.workercn.cn/361/201606/07/160607144133412.shtml" title="“新人”歌手陈松伶《跨界》出道（图）" target="_blank" mon="ct=0&amp;c=enternews&amp;pn=3&a=12"><img r_src="http://t2.baidu.com/it/u=http%3A%2F%2Fcharacter.workercn.cn%2Fhtml%2Ffiles%2F2016-06%2F07%2F20160607144133328329877.jpg&fm=30"/></a><a href="http://character.workercn.cn/361/201606/07/160607144133412.shtml" mon="ct=0&amp;c=enternews&amp;pn=3&a=9"  class="txt" target="_blank">“新人”歌手陈松伶《跨界》出道（图）</a>
</div>
</div>
</div>
</div>
</div>
</div><div class="l-right-col" alog-group="entertainment-right">
<div class="mod" id="yule-aside-star">
<div class="hd line"><h3><a href="http://yule.baidu.com/n?cmd=1&class=star&pn=1" target="_blank">明星</a></h3><a href="http://yule.baidu.com/n?cmd=1&class=star&pn=1" class="more" target="_blank">更多</a></div>
<div class="bd">
<div class="image-list">
<div class="image-list-wrapper">
<div class="image-list-item">
<a href="http://news.xinhuanet.com/overseas/2016-06/11/c_129051279.htm" title="上海电视节白玉兰奖揭晓 《芈月传》登顶国剧“琅.." target="_blank" mon="c=enternews&amp;ct=0&amp;col=17&amp;a=27&amp;pn=1"><img r_src="http://t2.baidu.com/it/u=http://news.xinhuanet.com/overseas/2016-06/11/129051279_14656015093841n.jpg&fm=30"/></a><a href="http://news.xinhuanet.com/overseas/2016-06/11/c_129051279.htm" class="txt" mon="c=enternews&amp;ct=0&amp;col=17&amp;a=27&amp;pn=1" target="_blank">上海电视节白玉兰奖揭晓 《芈月传》登顶国剧“琅..</a>
</div>
<div class="image-list-item">
<a href="http://news.xkb.com.cn/yule/2016/0611/433986.html" title="成龙感叹老得快" target="_blank" mon="c=enternews&amp;ct=0&amp;col=17&amp;a=27&amp;pn=2"><img r_src="http://t2.baidu.com/it/u=http://news.xkb.com.cn/uploads/2016-06-11/gmmsuzl4k1i.jpg&fm=30"/></a><a href="http://news.xkb.com.cn/yule/2016/0611/433986.html" class="txt" mon="c=enternews&amp;ct=0&amp;col=17&amp;a=27&amp;pn=2" target="_blank">成龙感叹老得快</a>
</div>
</div>
</div>
</div>
</div>
<div class="mod tbox" id="yule-aside-hotwords">
<div class="bd">
<ul class="ulist "  >
<li><a href="http://ent.qq.com/a/20160611/008941.htm" mon="col=13&amp;ct=0&amp;a=28&amp;c=enternews&pn=1" target="_blank">许玮甯分手阮经天14个月 被曝正感情回温中</a></li>
<li><a href="http://ent.qq.com/a/20160611/008616.htm" mon="col=13&amp;ct=0&amp;a=28&amp;c=enternews&pn=2" target="_blank">张智霖袁咏仪出席朋友婚礼 任贤齐吴镇宇也到了</a></li>
<li><a href="http://fun.youth.cn/yl24xs/201606/t20160610_8104444.htm" mon="col=13&amp;ct=0&amp;a=28&amp;c=enternews&pn=3" target="_blank">张杰直播做菜破纪录 为贫困学童筹集超过5万份免..</a></li>
<li><a href="http://ent.people.com.cn/n1/2016/0611/c1012-28425155.html" mon="col=13&amp;ct=0&amp;a=28&amp;c=enternews&pn=4" target="_blank">第22届上海电视节昨闭幕 孙俪二度摘得“白玉兰”</a></li>
<li><a href="http://ent.people.com.cn/n1/2016/0611/c1012-28425148.html" mon="col=13&amp;ct=0&amp;a=28&amp;c=enternews&pn=5" target="_blank">各剧组纷纷登场上影节 成龙范冰冰黄晓明&quot;大咖&quot;亮相</a></li>
<li><a href="http://ent.qq.com/a/20160611/008214.htm" mon="col=13&amp;ct=0&amp;a=28&amp;c=enternews&pn=6" target="_blank">彭于晏模仿郭富城，吓得我们都以为他真的来了</a></li>
<li><a href="http://www.takefoto.cn/viewnews-803442.html" mon="col=13&amp;ct=0&amp;a=28&amp;c=enternews&pn=7" target="_blank">张亚东导演处女作入围上影节 《湖边密林》进创投..</a></li>
</ul>
</div>
</div>
</div>
</div>
<a name="sportspicnews" class="focustop-anchor"></a>
<div class="column clearfix" alog-group=log-entertainment-picwall>
<div class="mod pic-wall" id="sports-picwall">
<div class="bd">
<div class="image-list">
<div class="image-list-wrapper">
<div class="image-list-item">
<a href="http://ent.ifeng.com/a/20160610/42632831_0.shtml?_zbs_baidu_news" title="刘亦菲二次元造型拍大片" target="_blank" mon="c=sportnews&amp;ct=0&amp;col=22&amp;pn=1&a=12"><img r_src="http://c.hiphotos.baidu.com/news/pic/item/4b90f603738da977136e661db851f8198618e347.jpg"/></a><a href="http://ent.ifeng.com/a/20160610/42632831_0.shtml?_zbs_baidu_news" mon="c=sportnews&amp;ct=0&amp;col=22&amp;pn=1&a=9"  class="txt" target="_blank">刘亦菲二次元造型拍大片</a>
</div>
<div class="image-list-item">
<a href="http://ent.aili.com/1475/2735381.html" title="撩妹!张智霖穿制服变机长" target="_blank" mon="c=sportnews&amp;ct=0&amp;col=22&amp;pn=2&a=12"><img r_src="http://e.hiphotos.baidu.com/news/pic/item/2934349b033b5bb5b041c0c83ed3d539b600bc76.jpg"/></a><a href="http://ent.aili.com/1475/2735381.html" mon="c=sportnews&amp;ct=0&amp;col=22&amp;pn=2&a=9"  class="txt" target="_blank">撩妹!张智霖穿制服变机长</a>
</div>
<div class="image-list-item">
<a href="http://ent.aili.com/1475/2735391.html" title="贾静雯穿比基尼性感火辣" target="_blank" mon="c=sportnews&amp;ct=0&amp;col=22&amp;pn=3&a=12"><img r_src="http://b.hiphotos.baidu.com/news/pic/item/2e2eb9389b504fc272725333eddde71190ef6dd3.jpg"/></a><a href="http://ent.aili.com/1475/2735391.html" mon="c=sportnews&amp;ct=0&amp;col=22&amp;pn=3&a=9"  class="txt" target="_blank">贾静雯穿比基尼性感火辣</a>
</div>
<div class="image-list-item">
<a href="http://ent.jiaoman.cc/tid-23711/" title="SHE合体众保镖护驾显大牌" target="_blank" mon="c=sportnews&amp;ct=0&amp;col=22&amp;pn=4&a=12"><img r_src="http://a.hiphotos.baidu.com/news/pic/item/ac4bd11373f082024ad8730943fbfbedab641bb9.jpg"/></a><a href="http://ent.jiaoman.cc/tid-23711/" mon="c=sportnews&amp;ct=0&amp;col=22&amp;pn=4&a=9"  class="txt" target="_blank">SHE合体众保镖护驾显大牌</a>
</div>
<div class="image-list-item">
<a href="http://ent.zdface.com/mxdt/starnews/native/2016-06-09/139125.shtml" title="井柏然搂Baby黄晓明吃醋 " target="_blank" mon="c=sportnews&amp;ct=0&amp;col=22&amp;pn=5&a=12"><img r_src="http://f.hiphotos.baidu.com/news/pic/item/10dfa9ec8a1363272efe2005998fa0ec08fac7f1.jpg"/></a><a href="http://ent.zdface.com/mxdt/starnews/native/2016-06-09/139125.shtml" mon="c=sportnews&amp;ct=0&amp;col=22&amp;pn=5&a=9"  class="txt" target="_blank">井柏然搂Baby黄晓明吃醋 </a>
</div>
</div>
</div>
</div>
</div>
</div>
<a name="sportsnews" class="focustop-anchor"></a>
<div class="column clearfix" id="tiyu">
<div class="column-title-home" alog-group=log-sports-title>
<div class="column-title-border">
<h2><a href="http://sports.baidu.com/" target="_blank">体育</a><span class="cname">Sports</span></h2>
<div class="sub-class">
<a href="http://sports.baidu.com/n?cmd=1&class=nba" target="_blank" >NBA</a>
<a href="http://sports.baidu.com/n?cmd=1&class=worldsoccer" target="_blank" >国际足球</a>
<a href="http://sports.baidu.com/n?cmd=1&class=chinasoccer" target="_blank" >国内足球</a>
<a href="http://sports.baidu.com/n?cmd=1&class=cba" target="_blank" >CBA</a>
<a href="http://sports.baidu.com/n?cmd=1&class=othersports" target="_blank" style="background: none; padding-right: 0; margin-right: 0;">综合体育</a>
</div>
<span class="more"><a href="http://sports.baidu.com/" target="_blank">更多</a></span>
</div>
</div>
<div class="l-left-col col-mod" alog-group=log-sports-left>
<ul class="ulist focuslistnews">
<li class="bold-item">
<span class="dot"></span>
<a href="http://www.cankaoxiaoxi.com/china/20160611/1186549.shtml" mon="ct=0&amp;a=2&amp;c=sportnews&pn=1" target="_blank">外媒称中国新富阶层愿花钱获得文化经历：赴美看NBA</a></li>
<li>
<a href="http://sports.sina.com.cn/g/euro/2016-06-11/doc-ifxszmaa1819930.shtml" mon="ct=0&amp;a=2&amp;c=sportnews&pn=2" target="_blank">欧洲杯揭幕战-神锋中柱 法国上半时平罗马尼亚 </a></li>
<li>
<a href="http://sports.163.com/16/0611/07/BP8USQN300051C89.html" mon="ct=0&amp;a=2&amp;c=sportnews&pn=3" target="_blank">刘健将做冯潇霆替身 粤媒支招恒大:严防毛剑卿</a></li>
<li>
<a href="http://sports.sina.com.cn/basketball/nba/2016-06-11/doc-ifxszmaa1825681.shtml" mon="ct=0&amp;a=2&amp;c=sportnews&pn=4" target="_blank">两代扣神聚齐总决赛！这场面太震撼(图) </a></li>
<li>
<a href="http://sports.sina.com.cn/g/laliga/2016-06-11/doc-ifxszmaa1825557.shtml" mon="ct=0&amp;a=2&amp;c=sportnews&pn=5" target="_blank">阿根廷美洲杯首发：天使伊瓜因领衔 梅西替补 </a></li>
<li>
<a href="http://sports.sina.com.cn/g/laliga/2016-06-09/doc-ifxszmaa1776269.shtml" mon="ct=0&amp;a=2&amp;c=sportnews&pn=6" target="_blank">皇马8000万大将确认美洲杯后手术 他带伤拼了90分..</a></li>
</ul>
<ul class="ulist focuslistnews" >
<li class="bold-item">
<span class="dot"></span>
<a href="http://sports.163.com/16/0611/08/BP90IN8B00051CA1.html" mon="ct=0&amp;a=2&amp;c=sportnews&pn=7" target="_blank">伊巴卡:杜兰特绝对会留守雷霆 维斯明年也会续约</a></li>
<li>
<a href="http://sports.sina.com.cn/go/2016-06-09/doc-ifxszkzy4994635.shtml" mon="ct=0&amp;a=2&amp;c=sportnews&pn=8" target="_blank">Al与李世石人机大战 百万奖金回馈孩子与棋界 </a></li>
<li>
<a href="http://sports.sina.com.cn/others/winter/2016-06-10/doc-ifxszmnz6985705.shtml" mon="ct=0&amp;a=2&amp;c=sportnews&pn=9" target="_blank">雪联世锦赛首次落户中国 两支雪上项目国家队新组 </a></li>
<li>
<a href="http://sports.163.com/16/0609/15/BP4MO38N00051CA1.html" mon="ct=0&amp;a=2&amp;c=sportnews&pn=10" target="_blank">科尔漂亮女儿遭骑士球迷肘击头部 G4要戴头盔了?</a></li>
<li>
<a href="http://sports.163.com/16/0611/07/BP8VG2U400051C89.html" mon="ct=0&amp;a=2&amp;c=sportnews&pn=11" target="_blank">富力2外援出战存疑 粤媒:若负绿城9天后或将垫底</a></li>
<li>
<a href="http://sports.sina.com.cn/others/boxing/2016-06-10/doc-ifxszmaa1815715.shtml" mon="ct=0&amp;a=2&amp;c=sportnews&pn=12" target="_blank">缅怀阿里 泰森参加阿里葬礼将成护棺者 </a></li>
</ul>
</div>
<div class="l-middle-col" alog-group=log-sports-middle>
<div class="mod">
<div class="hd">
<h3>体育图片</h3>
</div>
<div class="bd">
<div class="imagearea">
<div class="imagearea-top">
<div class="image-mask-item">
<a href="http://www.chinanews.com/ty/2016/06-11/7900304.shtml" target="_blank" class="item-image" mon="ct=0&amp;c=sportnews&amp;pn=1&a=12" title="欧洲杯揭幕战：奇兵世界波绝杀 法国2-1罗马尼亚 "><img r_src="http://t1.baidu.com/it/u=http%3A%2F%2Fwww.chinanews.com%2F2016%2F0611%2F201661154213.jpg&fm=30" alt="欧洲杯揭幕战：奇兵世界波绝杀 法国2-1罗马尼亚 "/></a>
<a href="http://www.chinanews.com/ty/2016/06-11/7900304.shtml" target="_blank" class="item-title" title="欧洲杯揭幕战：奇兵世界波绝杀 法国2-1罗马尼亚 " mon="ct=0&amp;c=sportnews&amp;pn=1&a=9">欧洲杯揭幕战：奇兵世界波绝杀 法国2-1罗马尼亚 </a>
</div>
</div>
<div class="imagearea-bottom">
<div class="image-list-item">
<a href="http://news.xinhuanet.com/sports/2016-06/10/c_1119019345.htm" title="欧洲杯将至 巴黎没感觉 " target="_blank" mon="ct=0&amp;c=sportnews&amp;pn=2&a=12"><img r_src="http://t1.baidu.com/it/u=http%3A%2F%2Fnews.xinhuanet.com%2Fsports%2F2016-06%2F10%2F1119019345_14655403828231n.jpg&fm=30"/></a><a href="http://news.xinhuanet.com/sports/2016-06/10/c_1119019345.htm" mon="ct=0&amp;c=sportnews&amp;pn=2&a=9"  class="txt" target="_blank">欧洲杯将至 巴黎没感觉 </a>
</div>
<div class="image-list-item">
<a href="http://news.xinhuanet.com/world/2016-06/11/c_129050780.htm" title="担忧寨卡传播 英奥运选手准备冷冻精子 " target="_blank" mon="ct=0&amp;c=sportnews&amp;pn=3&a=12"><img r_src="http://t1.baidu.com/it/u=http%3A%2F%2Fnews.xinhuanet.com%2Fworld%2F2016-06%2F11%2F129050780_14655578237521n.jpg&fm=30"/></a><a href="http://news.xinhuanet.com/world/2016-06/11/c_129050780.htm" mon="ct=0&amp;c=sportnews&amp;pn=3&a=9"  class="txt" target="_blank">担忧寨卡传播 英奥运选手准备冷冻精子 </a>
</div>
</div>
</div>
</div>
</div>
</div><div class="l-right-col" alog-group="log-sports-right">
<div class="mod rbox" id="sports-aside-nba">
<div class="hd line"><h3><a href="http://sports.baidu.com/n?cmd=1&class=nba&pn=1" target="_blank">NBA</a></h3><a href="http://sports.baidu.com/n?cmd=1&class=nba&pn=1" class="more" target="_blank">更多</a></div>
<div class="bd">
<div class="image-list">
<div class="image-list-wrapper">
<div class="image-list-item">
<a href="http://www.chinanews.com/ty/2016/06-09/7899486.shtml" title="骑士变阵缩短轮换制胜挽狂澜 勇士第四战须应变 " target="_blank" mon="ct=0&amp;a=27&amp;c=sportnews&amp;pn=1"><img r_src="http://t2.baidu.com/it/u=http%3A%2F%2Fwww.chinanews.com%2F2016%2F0609%2F201669124233.jpg&fm=30"/></a><a href="http://www.chinanews.com/ty/2016/06-09/7899486.shtml" mon="ct=0&amp;a=27&amp;c=sportnews&amp;pn=1"  class="txt" target="_blank">骑士变阵缩短轮换制胜挽狂澜 勇士第四战须应变 </a>
</div>
<div class="image-list-item">
<a href="http://www.pjtime.com/2016/5/412137565657.shtml" title="美科学家研发皮肤用集成电路" target="_blank" mon="ct=0&amp;a=27&amp;c=sportnews&amp;pn=2"><img r_src="http://t1.baidu.com/it/u=http%3A%2F%2Fwww.pjtime.com%2Fimg_UpArticle%2F2016-05%2F41213723118013.jpg&fm=30"/></a><a href="http://www.pjtime.com/2016/5/412137565657.shtml" mon="ct=0&amp;a=27&amp;c=sportnews&amp;pn=2"  class="txt" target="_blank">美科学家研发皮肤用集成电路</a>
</div>
</div>
</div>
</div>
</div>
<div class="mod tbox" id="sports-aside-cell" style="padding-top: 13px;">
<div class="hd line">
<h3><a href="http://huati.news.baidu.com/n?cmd=12&class=topic&tag=%CC%E5%D3%FD%C8%FC%CA%C2" target="_blank">体育话题</a></h3>
<a href="http://huati.news.baidu.com/n?cmd=12&class=topic&tag=%CC%E5%D3%FD%C8%FC%CA%C2" class="more" target="_blank">更多</a></div>
<div class="bd">
<ul class="ulist "  >
<li><a href="http://sports.qq.com/a/20160611/004699.htm" mon="&pn=1" target="_blank">英超拯救法国队欧洲杯梦想 出产超半数首发</a></li>
<li><a href="http://news.xinhuanet.com/sports/2016-06/11/c_129051131.htm" mon="&pn=2" target="_blank">中美投资者成法甲尼斯队大股东 </a></li>
<li><a href="http://sports.qq.com/a/20160611/000527.htm" mon="&pn=3" target="_blank">德甲新转播费紧追英超 一原因致俱乐部难增收</a></li>
<li><a href="http://sports.sina.com.cn/china/other/2016-06-11/doc-ifxszkzy5059792.shtml" mon="&pn=4" target="_blank">买遍意法！中资收购法甲劲旅股份获官方宣布 </a></li>
<li><a href="http://sports.163.com/16/0610/19/BP7JSRR900051C8V.html" mon="&pn=5" target="_blank">日本中场大将加盟塞维利亚 650万欧身价曾战德甲</a></li>
</ul>
</div>
</div>
</div>
</div><a name="autonews" class="focustop-anchor"></a>
<div class="column clearfix" id="col-auto">
<div class="column-title-home" alog-group=log-auto-title>
<div class="column-title-border">
<h2><a href="http://auto.baidu.com/" target="_blank">汽车</a><span class="cname">auto</span></h2>
<div class="sub-class">
<a href="http://auto.baidu.com/n?cmd=1&amp;class=autobuy&amp;pn=1" target="_blank" >新车</a>
<a href="http://auto.baidu.com/n?cmd=1&amp;class=daogou&amp;pn=1" target="_blank" >导购</a>
<a href="http://auto.baidu.com/n?cmd=1&amp;class=hangqing&amp;pn=1" target="_blank" >各地行情</a>
<a href="http://auto.baidu.com/n?cmd=1&amp;class=weixiu&amp;pn=1" target="_blank" style="background: none; padding-right: 0; margin-right: 0;">维修养护</a>
</div>
<span class="more"><a href="http://auto.baidu.com/" target="_blank">更多</a></span>
</div>
</div>
<div class="l-left-col col-mod" alog-group=log-auto-left>
<ul class="ulist focuslistnews">
<li class="bold-item">
<span class="dot"></span>
<a href="http://emotion.aili.com/1822/2735368.html" mon="&pn=1" target="_blank">一张图告诉你年轻人买啥车</a></li>
<li>
<a href="http://auto.ifeng.com/xinwen/20160609/1056508.shtml?_zbs_baidu_news" mon="&pn=2" target="_blank">9日起国内成品油价上调0.08-0.09元</a></li>
<li>
<a href="http://emotion.aili.com/1822/2735365.html" mon="&pn=3" target="_blank">汽车维修保养的流程 你了解多少？</a></li>
<li>
<a href="http://auto.ifeng.com/xinwen/20160609/1056509.shtml?_zbs_baidu_news" mon="&pn=4" target="_blank">江铃召回部分福特新世代全顺 共355辆</a></li>
<li>
<a href="http://emotion.aili.com/1822/2735364.html" mon="&pn=5" target="_blank">夏季车内如何迅速降温?</a></li>
<li>
<a href="http://auto.ifeng.com/diezhao/20160609/1056507.shtml?_zbs_baidu_news" mon="&pn=6" target="_blank">曝奔驰A级路试谍照 或2017年亮相</a></li>
</ul>
<ul class="ulist focuslistnews" >
<li class="bold-item">
<span class="dot"></span>
<a href="http://finance.huanqiu.com/roll/2016-06/9025444.html" mon="&pn=7" target="_blank">2016年北京新能源汽车个人指标或将于8月全部发完</a></li>
<li>
<a href="http://tech.huanqiu.com/news/2016-06/9023473.html" mon="&pn=8" target="_blank">日本制造为何走下神坛？日企诚信缺失</a></li>
<li>
<a href="http://finance.huanqiu.com/hlwjr/2016-06/9024759.html" mon="&pn=9" target="_blank">西媒：中国2035年将成全球最大无人驾驶汽车市场</a></li>
<li>
<a href="http://finance.huanqiu.com/roll/2016-06/9023585.html" mon="&pn=10" target="_blank">铸就国产品牌“传奇”——广汽传祺的供给侧改革..</a></li>
<li>
<a href="http://finance.huanqiu.com/roll/2016-06/9022819.html" mon="&pn=11" target="_blank">京津冀汽油重回6元时代</a></li>
<li>
<a href="http://news.cnr.cn/native/city/20160609/t20160609_522361195.shtml" mon="&pn=12" target="_blank">重庆濯水镇龙舟赛开赛致包茂高速部分路段拥堵严重</a></li>
</ul>
</div>
<div class="l-middle-col" alog-group=log-auto-middle>
<div class="mod">
<div class="hd">
<h3>汽车图片</h3>
</div>
<div class="bd">
<div class="imagearea">
<div class="imagearea-top">
<div class="image-mask-item">
<a href="http://news.xinhuanet.com/legal/2016-06/08/c_129048194.htm" target="_blank" class="item-image" mon="&amp;pn=1&a=12" title="“湘A-SB110”车主：车管所给的车牌 到哪都被查 "><img r_src="http://t2.baidu.com/it/u=http%3A%2F%2Fnews.xinhuanet.com%2Flegal%2F2016-06%2F08%2F129048194_14653764458341n.jpg&fm=30" alt="“湘A-SB110”车主：车管所给的车牌 到哪都被查 "/></a>
<a href="http://news.xinhuanet.com/legal/2016-06/08/c_129048194.htm" target="_blank" class="item-title" title="“湘A-SB110”车主：车管所给的车牌 到哪都被查 " mon="&amp;pn=1&a=9">“湘A-SB110”车主：车管所给的车牌 到哪都被查 </a>
</div>
</div>
<div class="imagearea-bottom">
<div class="image-list-item">
<a href="http://news.xinhuanet.com/auto/2016-06/07/c_129044670.htm" title="捷豹路虎起诉江铃汽车 车企“山寨”怪圈难破 " target="_blank" mon="&amp;pn=2&a=12"><img r_src="http://t1.baidu.com/it/u=http%3A%2F%2Fnews.xinhuanet.com%2Fauto%2F2016-06%2F07%2F129044670_14652615160001n.jpg&fm=30"/></a><a href="http://news.xinhuanet.com/auto/2016-06/07/c_129044670.htm" mon="&amp;pn=2&a=9"  class="txt" target="_blank">捷豹路虎起诉江铃汽车 车企“山寨”怪圈难破 </a>
</div>
<div class="image-list-item">
<a href="http://news.xinhuanet.com/auto/2016-06/08/c_129046830.htm" title="福特新款翼搏将11月亮相 搭1.5L三缸动力 " target="_blank" mon="&amp;pn=3&a=12"><img r_src="http://t3.baidu.com/it/u=http%3A%2F%2Fnews.xinhuanet.com%2Fauto%2F2016-06%2F08%2F129046830_14653443274511n.jpg&fm=30"/></a><a href="http://news.xinhuanet.com/auto/2016-06/08/c_129046830.htm" mon="&amp;pn=3&a=9"  class="txt" target="_blank">福特新款翼搏将11月亮相 搭1.5L三缸动力 </a>
</div>
</div>
</div>
</div>
</div>
</div><div class="l-right-col" alog-group="log-auto-right">
<div class="mod" id="auto-aside-xcdg">
<div class="hd line">
<h3><a href="http://auto.baidu.com/n?cmd=1&class=autobuy&pn=1" target="_blank">新车导购</a></h3>
<a href="http://auto.baidu.com/n?cmd=1&class=autobuy&pn=1" class="more" target="_blank">更多</a></div>
<div class="bd">
<div class="topic clearfix">
<div class="topic-pic">
<a href="http://auto.hexun.com/2016-06-11/184330948.html" mon="ct=0&amp;a=28&amp;c=autonews&pn=0" target="_blank">
<img r_src="http://t1.baidu.com/it/u=http%3A%2F%2Fauto.eastday.com%2Fimages%2Fthumbnailimg%2Fmonth_1606%2F20160608104926717.jpg&fm=30" class="mil"/>
</a>
</div>
<div class="topic-txt">
<h4 ><a href="http://auto.hexun.com/2016-06-11/184330948.html" mon="ct=0&amp;a=28&amp;c=autonews&pn=0" target="_blank">177马力 众泰T600 1.8T车型信息曝光</a></h4><p class="abstract">近日，中国汽车燃料消耗量网站公示了最新的汽车...</p><a href="http://auto.hexun.com/2016-06-11/184330948.html" class="detail" target="_blank">[详细]</a>
</div>
</div>
<ul class="ulist">
<li><a href="http://auto.sohu.com/20160610/n453837790.shtml" mon="ct=0&amp;a=28&amp;c=autonews&pn=2" target="_blank">卖得好，广汽乘用车今年就靠他了</a></li>
<li><a href="http://auto.tom.com/news/storys_93473.html" mon="ct=0&amp;a=28&amp;c=autonews&pn=3" target="_blank">宝马4系换搭新增压发动机 动力大幅提升</a></li>
</ul></div>
</div>
<div class="mod tbox" id="auto-aside-cell" style="padding-top: 23px;">
<div class="hd line">
<h3><a href="http://huati.news.baidu.com/n?cmd=12&class=topic&tag=%C6%FB%B3%B5%D7%CA%D1%B6" target="_blank">汽车资讯</a></h3>
<a href="http://huati.news.baidu.com/n?cmd=12&class=topic&tag=%C6%FB%B3%B5%D7%CA%D1%B6" class="more" target="_blank">更多</a></div>
<div class="bd">
<ul class="ulist "  >
<li><a href="http://gs.people.com.cn/n2/2016/0611/c366766-28484823.html" mon="&pn=1" target="_blank">遮阳山天华国际房车营地正式投入使用</a></li>
<li><a href="http://www.autohome.com.cn/news/201606/889505.html" mon="&pn=2" target="_blank">跨界小型车 雪佛兰注册Spark Activ商标</a></li>
<li><a href="http://auto.enorth.com.cn/system/2016/06/11/031012097.shtml" mon="&pn=3" target="_blank">大众计划退出新车挑战宝马i3 预计10月正式亮相</a></li>
<li><a href="http://auto.sohu.com/20160610/n453824617.shtml" mon="&pn=4" target="_blank">买新车、二手车都要注意 这些数字不懂吃大亏</a></li>
</ul>
</div>
</div>
</div>
</div><a name="housenews" class="focustop-anchor"></a>
<div class="column clearfix" id="col-house">
<div class="column-title-home" alog-group=log-house-title>
<div class="column-title-border">
<h2><a href="http://fangchan.news.baidu.com/" target="_blank">房产</a><span class="cname">House</span></h2>
<div class="sub-class">
<a href="http://news.baidu.com/n?cmd=1&amp;class=gddt" target="_blank" >各地动态</a>
<a href="http://news.baidu.com/n?cmd=1&amp;class=zcfx" target="_blank" >政策风向</a>
<a href="http://news.baidu.com/n?cmd=1&amp;class=shichangzoushi" target="_blank" style="background: none; padding-right: 0; margin-right: 0;">市场走势</a>
</div>
<span class="more"><a href="http://fangchan.news.baidu.com/" target="_blank">更多</a></span>
</div>
</div>
<div class="l-left-col col-mod" alog-group=log-house-left>
<ul class="ulist focuslistnews">
<li class="bold-item">
<span class="dot"></span>
<a href="http://www.cankaoxiaoxi.com/roll10/20160610/1187129.shtml" mon="ct=0&amp;a=2&amp;c=housenews&pn=1" target="_blank">十道买房高考题 看看你能得多少分</a></li>
<li>
<a href="http://www.cankaoxiaoxi.com/roll10/20160610/1187140.shtml" mon="ct=0&amp;a=2&amp;c=housenews&pn=2" target="_blank">到底谁更有钱？深圳人和上海人互不相让！</a></li>
<li>
<a href="http://www.cankaoxiaoxi.com/roll10/20160610/1187139.shtml" mon="ct=0&amp;a=2&amp;c=housenews&pn=3" target="_blank">中国房价最全预测 打算买房的人先把此文看完</a></li>
<li>
<a href="http://www.cankaoxiaoxi.com/roll10/20160610/1186909.shtml" mon="ct=0&amp;a=2&amp;c=housenews&pn=4" target="_blank">地王疯狂到底为哪般 专家:不是钱慌是地荒</a></li>
<li>
<a href="http://www.cankaoxiaoxi.com/roll10/20160610/1187138.shtml" mon="ct=0&amp;a=2&amp;c=housenews&pn=5" target="_blank">真涨见识了！掌握这些省钱习惯 让你早十年买房买车</a></li>
<li>
<a href="http://www.cankaoxiaoxi.com/roll10/20160610/1186905.shtml" mon="ct=0&amp;a=2&amp;c=housenews&pn=6" target="_blank">“以房养老”试点近两年 参与者寥寥曝四大风险</a></li>
</ul>
<ul class="ulist focuslistnews" >
<li class="bold-item">
<span class="dot"></span>
<a href="http://finance.huanqiu.com/roll/2016-06/9024968.html" mon="ct=0&amp;a=2&amp;c=housenews&pn=7" target="_blank">江西一些地方出台购房补贴政策 最高可达４万余元</a></li>
<li>
<a href="http://finance.huanqiu.com/roll/2016-06/9022933.html" mon="ct=0&amp;a=2&amp;c=housenews&pn=8" target="_blank">楼市下跌香港市民缘何不抄底</a></li>
<li>
<a href="http://finance.huanqiu.com/roll/2016-06/9025232.html" mon="ct=0&amp;a=2&amp;c=housenews&pn=9" target="_blank">端午节三亚机场进港国际游客大幅增长</a></li>
<li>
<a href="http://finance.huanqiu.com/hwtz/2016-06/9024780.html" mon="ct=0&amp;a=2&amp;c=housenews&pn=10" target="_blank">新西兰两银行出台新规限制海外买家投资房产</a></li>
<li>
<a href="http://finance.huanqiu.com/roll/2016-06/9023636.html" mon="ct=0&amp;a=2&amp;c=housenews&pn=11" target="_blank">“地王”密集出现 影响市场预期</a></li>
<li>
<a href="http://finance.huanqiu.com/roll/2016-06/9024879.html" mon="ct=0&amp;a=2&amp;c=housenews&pn=12" target="_blank">让文化遗产融入现代生活 商业开发如何把握好度</a></li>
</ul>
</div>
<div class="l-middle-col" alog-group=log-house-middle>
<div class="mod">
<div class="hd">
<h3>房产图片</h3>
</div>
<div class="bd">
<div class="imagearea">
<div class="imagearea-top">
<div class="image-mask-item">
<a href="http://photo.cankaoxiaoxi.com/roll10/2016/0610/1186944.shtml" target="_blank" class="item-image" mon="ct=0&amp;c=housenews&amp;pn=1&a=12" title="想不想试试？世界最奇葩的电梯大合集"><img r_src="http://a.hiphotos.baidu.com/news/pic/item/bf096b63f6246b6080063342e3f81a4c510fa2f8.jpg" alt="想不想试试？世界最奇葩的电梯大合集"/></a>
<a href="http://photo.cankaoxiaoxi.com/roll10/2016/0610/1186944.shtml" target="_blank" class="item-title" title="想不想试试？世界最奇葩的电梯大合集" mon="ct=0&amp;c=housenews&amp;pn=1&a=9">想不想试试？世界最奇葩的电梯大合集</a>
</div>
</div>
<div class="imagearea-bottom">
<div class="image-list-item">
<a href="http://www.changjiangtimes.com/2016/06/536347.html" title="对接国际枢纽 武汉着力推进高铁进机场" target="_blank" mon="ct=0&amp;c=housenews&amp;pn=2&a=12"><img r_src="http://t1.baidu.com/it/u=http%3A%2F%2Fwww.changjiangtimes.com%2Fupload_files%2Farticle%2F4122%2F201606%2F93466_tboyl__W020160609201560268897.jpg&fm=30"/></a><a href="http://www.changjiangtimes.com/2016/06/536347.html" mon="ct=0&amp;c=housenews&amp;pn=2&a=9"  class="txt" target="_blank">对接国际枢纽 武汉着力推进高铁进机场</a>
</div>
<div class="image-list-item">
<a href="http://www.ceh.com.cn/shpd/2016/06/928056.shtml" title="珠海市成为全国“生态文明示范”的榜样和标杆" target="_blank" mon="ct=0&amp;c=housenews&amp;pn=3&a=12"><img r_src="http://t2.baidu.com/it/u=http%3A%2F%2Fwww.ceh.com.cn%2Fupload%2FImage%2Fmrtp%2F2016%2F06%2F1_9280576458.jpg&fm=30"/></a><a href="http://www.ceh.com.cn/shpd/2016/06/928056.shtml" mon="ct=0&amp;c=housenews&amp;pn=3&a=9"  class="txt" target="_blank">珠海市成为全国“生态文明示范”的榜样和标杆</a>
</div>
</div>
</div>
</div>
</div>
</div><div class="l-right-col" alog-group="log-house-right">
<div class="mod tbox" id="house-aside-gddt">
<div class="hd" style="overflow: visible">
<h3><span id="city_name_1">各地</span>房产动态</h3><a id="change_city_1" class="select-btn house-select-btn" href="javascript:void(0);">切换城市</a>
</div>
<div class="bd">
<ul class="ulist " id="house_news" >
<li><a href="http://news.house365.com/gbk/szestate/system/2016/06/08/026418548.html" mon="c=housenews&amp;ct=0&amp;a=27&amp;col=9&pn=1" target="_blank">6月 七大苏州楼市新现象 日光盘已经成为历史</a></li>
<li><a href="http://sh.qq.com/a/20160611/008055.htm" mon="c=housenews&amp;ct=0&amp;a=27&amp;col=9&pn=2" target="_blank">有一种生活叫在上海</a></li>
<li><a href="http://www.efw.cn/news/n215140.html" mon="c=housenews&amp;ct=0&amp;a=27&amp;col=9&pn=3" target="_blank">热门楼盘人气不减6月首周楼市很有“存在感”</a></li>
<li><a href="http://www.efw.cn/news/n215139.html" mon="c=housenews&amp;ct=0&amp;a=27&amp;col=9&pn=4" target="_blank">太湖新城一居住地“未拍先火” 无锡会学苏州限地..</a></li>
</ul>
<div id="city_view_1" class="city_view house_view">
<div class="city_list city_list_1"></div>
<div id="btn_back_1" class="btn_back">返回</div>
<div id="btn_close_1" class="btn_close"></div>
<div class="up_triangle"></div>
</div>
<div id="status_1" class="loading">正在加载，请稍候......</div>
</div>
</div>
<div class="mod tbox" id="house-aside-cell" style="padding-top: 5px;">
<div class="hd line">
<h3><a href="http://huati.news.baidu.com/n?cmd=12&class=topic&tag=%B7%BF%B2%FA%D0%D0%D2%B5" target="_blank">房产话题</a></h3>
<a href="http://huati.news.baidu.com/n?cmd=12&class=topic&tag=%B7%BF%B2%FA%D0%D0%D2%B5" class="more" target="_blank">更多</a>
</div>
<div class="bd">
<ul class="ulist "  >
<li><a href="http://news.sina.com.cn/o/2016-06-11/doc-ifxszmnz7004083.shtml" mon="&pn=1" target="_blank">夫妻离婚后房产判给男方 女方拒腾房砍伤租客</a></li>
<li><a href="http://money.163.com/16/0610/10/BP6LFT8N00253B0H.html" mon="&pn=2" target="_blank">赫芬顿邮报创始人拟成立新公司 马云将投资</a></li>
<li><a href="http://money.163.com/16/0610/11/BP6OL9D100251LIE.html" mon="&pn=3" target="_blank">南山集团拟购买航空公司维珍澳大利亚20%股份</a></li>
<li><a href="http://news.sina.com.cn/c/nd/2016-06-10/doc-ifxszkzy5024421.shtml" mon="&pn=4" target="_blank">上海迪士尼物价引热议:一个肉包35元比日本还贵</a></li>
<li><a href="http://bj.house.163.com/16/0609/16/BP4P4TD900073SD3.html" mon="&pn=5" target="_blank">小半年销售破1000亿 碧桂园业绩同比大增161%</a></li>
<li><a href="http://xw.qq.com/gd/20160609019423/GDC2016060901942301" mon="&pn=6" target="_blank">广州外来人口无房产 户口也能迁入公共集体户</a></li>
</ul>
</div>
</div>
</div>
</div>
<a name="internet" class="focustop-anchor"></a>
<div class="column clearfix" id="hulianwang">
<div class="column-title-home" alog-group=log-internet-title>
<div class="column-title-border">
<h2><a href="http://internet.baidu.com/" target="_blank">互联网</a><span class="cname">Internet</span></h2>
<div class="sub-class">
<a href="http://internet.baidu.com/n?cmd=1&class=search_engine" target="_blank" >搜索引擎</a>
<a href="http://internet.baidu.com/n?cmd=1&class=e_commerce" target="_blank" >电子商务</a>
<a href="http://internet.baidu.com/n?cmd=1&class=chuanwenbl" target="_blank" >传闻爆料</a>
<a href="http://internet.baidu.com/n?cmd=1&class=interneteval" target="_blank" style="background: none; padding-right: 0; margin-right: 0;">互联网评论</a>
</div>
<span class="more"><a href="http://internet.baidu.com/" target="_blank">更多</a></span>
</div>
</div>
<div class="l-left-col col-mod" alog-group=log-internet-left>
<ul class="ulist focuslistnews">
<li class="bold-item">
<span class="dot"></span>
<a href="http://skylei.baijia.baidu.com/article/490839" mon="ct=0&amp;a=2&amp;c=internet&pn=1" target="_blank">邓亚萍离开人民日报跟俞敏洪创业 否认败光20亿元</a></li>
<li>
<a href="http://dtcaijing.baijia.baidu.com/article/490077" mon="ct=0&amp;a=2&amp;c=internet&pn=2" target="_blank">做区块链的想混出点名堂 傍上这两个顶级联盟才行</a></li>
<li>
<a href="http://kongfuf.baijia.baidu.com/article/490997" mon="ct=0&amp;a=2&amp;c=internet&pn=3" target="_blank">影视明星首登胡润慈善榜 Angelababy成最年轻慈善家</a></li>
<li>
<a href="http://yulediaochaju.baijia.baidu.com/article/490980" mon="ct=0&amp;a=2&amp;c=internet&pn=4" target="_blank">王思聪怒喷“阿怡代打”事件 电竞市场玩得太疯狂</a></li>
<li>
<a href="http://apple.baijia.baidu.com/article/490808" mon="ct=0&amp;a=2&amp;c=internet&pn=5" target="_blank">苹果正式对外公开App Store2.0 加入付费推广模式</a></li>
<li>
<a href="http://zhangguoren.baijia.baidu.com/article/490898" mon="ct=0&amp;a=2&amp;c=internet&pn=6" target="_blank">VR/AR投资Q1激增4倍：钱都流到了这些领域</a></li>
</ul>
<ul class="ulist focuslistnews" >
<li class="bold-item">
<span class="dot"></span>
<a href="http://yulezibenlun.baijia.baidu.com/article/491012" mon="ct=0&amp;a=2&amp;c=internet&pn=7" target="_blank">搬砖砸车炸自己 快手的主播都在想什么？</a></li>
<li>
<a href="http://liukuang.baijia.baidu.com/article/490966" mon="ct=0&amp;a=2&amp;c=internet&pn=8" target="_blank"> 在行分答估值超1亿美元 知识共享却成了伪命题</a></li>
<li>
<a href="http://synchuman.baijia.baidu.com/article/490502" mon="ct=0&amp;a=2&amp;c=internet&pn=9" target="_blank">Facebook人工智能的双翼：研究和应用两大实验室</a></li>
<li>
<a href="http://majihua.baijia.baidu.com/article/490446" mon="ct=0&amp;a=2&amp;c=internet&pn=10" target="_blank">小屏手机不是宝，也许只是苹果在声东击西</a></li>
<li>
<a href="http://newslab.baijia.baidu.com/article/490381" mon="ct=0&amp;a=2&amp;c=internet&pn=11" target="_blank">编程已是门槛级技能？新闻工作者该如何选择</a></li>
<li>
<a href="http://chaping.baijia.baidu.com/article/490619" mon="ct=0&amp;a=2&amp;c=internet&pn=12" target="_blank">上天入水无所不能，这只小蜜蜂要逆天了</a></li>
</ul>
</div>
<div class="l-middle-col" alog-group=log-internet-middle>
<div class="mod">
<div class="hd">
<h3>互联网图片</h3>
</div>
<div class="bd">
<div class="imagearea">
<div class="imagearea-top">
<div class="image-mask-item">
<a href="http://zhaglin.baijia.baidu.com/article/491147" target="_blank" class="item-image" mon="ct=0&amp;c=internet&amp;pn=1&a=12" title="联想Moto模块化挑战重重"><img r_src="http://c.hiphotos.baidu.com/news/q%3D100/sign=1b1ae9f1df2a60595410e51a1834342d/7aec54e736d12f2ef32dab5847c2d562853568d9.jpg" alt="联想Moto模块化挑战重重"/></a>
<a href="http://zhaglin.baijia.baidu.com/article/491147" target="_blank" class="item-title" title="联想Moto模块化挑战重重" mon="ct=0&amp;c=internet&amp;pn=1&a=9">联想Moto模块化挑战重重</a>
</div>
</div>
<div class="imagearea-bottom">
<div class="image-list-item">
<a href="http://xiaoqian.baijia.baidu.com/article/488830" title="不要恐慌 虚拟现实值得人类拥抱" target="_blank" mon="ct=0&amp;c=internet&amp;pn=2&a=12"><img r_src="http://f.hiphotos.baidu.com/news/q=100/sign=2e8d2952f01986184747eb847aec2e69/472309f790529822ef9895f0dfca7bcb0a46d45e.jpg"/></a><a href="http://xiaoqian.baijia.baidu.com/article/488830" mon="ct=0&amp;c=internet&amp;pn=2&a=9"  class="txt" target="_blank">不要恐慌 虚拟现实值得人类拥抱</a>
</div>
<div class="image-list-item">
<a href="http://wyh.baijia.baidu.com/article/488651" title="高考作文写VR是隐性的教育不公" target="_blank" mon="ct=0&amp;c=internet&amp;pn=3&a=12"><img r_src="http://f.hiphotos.baidu.com/news/q=100/sign=d1d01e47e3f81a4c2032e8c9e72b6029/00e93901213fb80ea60fcde43ed12f2eb9389423.jpg"/></a><a href="http://wyh.baijia.baidu.com/article/488651" mon="ct=0&amp;c=internet&amp;pn=3&a=9"  class="txt" target="_blank">高考作文写VR是隐性的教育不公</a>
</div>
</div>
</div>
</div>
</div>
</div><div class="l-right-col" alog-group="log-internet-right">
<div class="mod tbox" id="internet-aside-gsdt">
<div class="hd line"><h3><a href="http://internet.baidu.com/n?cmd=1&class=gsdt&pn=1" target="_blank">公司动态</a></h3><a href="http://internet.baidu.com/n?cmd=1&class=gsdt&pn=1" class="more" target="_blank">更多</a></div>
<div class="bd">
<ul class="ulist "  >
<li><a href="http://news.cnfol.com/it/20160611/22872050.shtml" mon="ct=0&amp;a=27&amp;c=internet&pn=1" target="_blank">传亚马逊将推单独流媒体音乐服务 每月9.99美元</a></li>
<li><a href="http://news.dahe.cn/2016/06-11/106973254.html" mon="ct=0&amp;a=27&amp;c=internet&pn=2" target="_blank">顶级经济学家更愿意去科技公司 </a></li>
<li><a href="http://finance.jrj.com.cn/2016/06/11075621054906.shtml" mon="ct=0&amp;a=27&amp;c=internet&pn=3" target="_blank">谷歌否认关于公司操纵希拉里搜索的指控 </a></li>
<li><a href="http://www.leiphone.com/news/201606/fR0bXkN6fvNr6b7r.html" mon="ct=0&amp;a=27&amp;c=internet&pn=4" target="_blank">医疗领域的Paypal：Simplee正在改变美国医疗支付</a></li>
</ul>
</div>
</div>
<div class="mod tbox" id="internet-aside-rwdt">
<div class="hd line"><h3><a href="http://internet.baidu.com/n?cmd=1&class=rwdt&pn=1" target="_blank">人物动态</a></h3><a href="http://internet.baidu.com/n?cmd=1&class=rwdt&pn=1" class="more" target="_blank">更多</a></div>
<div class="bd">
<ul class="ulist "  >
<li><a href="http://www.tmtpost.com/1830475.html" mon="ct=0&amp;a=28&amp;c=internet&pn=1" target="_blank">「掌柜攻略」创始人宋宣：内容创业入秋</a></li>
<li><a href="http://tech.sina.com.cn/i/2016-06-11/doc-ifxszkzy5060090.shtml" mon="ct=0&amp;a=28&amp;c=internet&pn=2" target="_blank">51Talk创始人黄佳佳：有信心降低市场营销成本</a></li>
<li><a href="http://news.cn3x.com.cn/content/2016-06/10/content_814616.htm" mon="ct=0&amp;a=28&amp;c=internet&pn=3" target="_blank">1号店”创始人于刚捐200万给母校红小和五中 </a></li>
<li><a href="http://tech.sina.com.cn/i/2016-06-10/doc-ifxszkzy5027652.shtml" mon="ct=0&amp;a=28&amp;c=internet&pn=4" target="_blank">KPCB创始人帕金斯去世：曾是谷歌亚马逊早期投资人</a></li>
<li><a href="http://tech.hexun.com/2016-06-08/184313348.html" mon="ct=0&amp;a=28&amp;c=internet&pn=5" target="_blank">聚力总裁米昕：依托苏宁转型文化 O2O 平台</a></li>
<li><a href="http://news.cri.cn/20160608/e265e392-dfe7-2f99-c8ed-e06019d81f05.html" mon="ct=0&amp;a=28&amp;c=internet&pn=6" target="_blank">维基解密创始人阿桑奇：谷歌政策使其与中国对立</a></li>
</ul>
</div>
</div>
</div>
</div><a name="internetplus" class="focustop-anchor"></a>
<div class="column clearfix" id="internet-plus">
<div class="column-title-home" alog-group=log-internetplus-left>
<div class="column-title-border">
<h2><a href="http://huati.news.baidu.com/?n&cmd=12&class=topic&tag=互联网%2B" target="_blank">互联网+</a><span class="cname">Internet+</span></h2>
<div class="sub-class">
<a href="http://huati.news.baidu.com/?n&cmd=12&class=topic&tag=互联网金融" target="_blank" >金融</a>
<a href="http://huati.news.baidu.com/?n&cmd=12&class=topic&tag=医疗健康" target="_blank" >医疗</a>
<a href="http://huati.news.baidu.com/?n&cmd=12&class=topic&tag=教育O2O" target="_blank" >教育</a>
<a href="http://huati.news.baidu.com/?n&cmd=12&class=topic&tag=房产O2O" target="_blank" >房产</a>
<a href="http://huati.news.baidu.com/?n&cmd=12&class=topic&tag=交通O2O" target="_blank" >交通</a>
<a href="http://huati.news.baidu.com/?n&cmd=12&class=topic&tag=互联网农业" target="_blank" >农业</a>
<a href="http://huati.news.baidu.com/?n&cmd=12&class=topic&tag=餐饮外卖" target="_blank" >餐饮</a>
<a href="http://huati.news.baidu.com/?n&cmd=12&class=topic&tag=本地生活O2O" target="_blank" style="background: none">生活服务</a>
</div>
<span class="more"><a href="http://huati.news.baidu.com/?n&cmd=12&class=topic&tag=互联网%2B" target="_blank">更多</a></span>
</div>
</div>
<div class="l-left-col col-mod" alog-group=log-internetplus-left>
<ul class="ulist focuslistnews">
<li class="bold-item">
<span class="dot"></span>
<a href="http://finance.sina.com.cn/roll/2016-06-11/doc-ifxszmnz7012578.shtml" mon="&pn=1" target="_blank">“互联网+物流”创新不断 资本布局步伐加快</a></li>
<li>
<a href="http://tech.163.com/16/0611/08/BP90SO8600097U7R.html" mon="&pn=2" target="_blank">主营业务持续亏损 58同城转型前景难料</a></li>
<li>
<a href="http://tech.163.com/16/0611/08/BP917TDO00097U7R.html" mon="&pn=3" target="_blank">连续七个季度净利下滑 搜房网深陷转型困局</a></li>
<li>
<a href="http://business.sohu.com/20160611/n453853305.shtml" mon="&pn=4" target="_blank">各地政府强化金融监管 多家P2P迫于整改压力选择退出</a></li>
<li>
<a href="http://news.qz828.com/system/2016/06/11/011141183.shtml" mon="&pn=5" target="_blank">打造四省九地市电商人才集聚高地</a></li>
<li>
<a href="http://tech.sina.com.cn/i/2016-06-11/doc-ifxszmnz7004078.shtml" mon="&pn=6" target="_blank">Uber在法国被罚80万欧元：因被判非法运营和商业欺诈</a></li>
</ul>
<ul class="ulist focuslistnews" >
<li class="bold-item">
<span class="dot"></span>
<a href="http://iof.hexun.com/2016-06-11/184284285.html" mon="&pn=7" target="_blank">半年回顾：中国互联网金融十大事件</a></li>
<li>
<a href="http://news.163.com/16/0611/00/BP86HNK90001124J.html" mon="&pn=8" target="_blank">盘点落马官员的风流日记：有官员情妇达136名</a></li>
<li>
<a href="http://news.163.com/16/0611/01/BP89M11K00014Q4P.html" mon="&pn=9" target="_blank">浙江余姚非法采石猖獗 有时一晚可赚三至五万</a></li>
<li>
<a href="http://news.163.com/16/0610/23/BP82M64T0001124J.html" mon="&pn=10" target="_blank">吕新华忆“你懂的”：当时没人给我周永康案提示</a></li>
<li>
<a href="http://news.163.com/photoview/00AP0001/2186740.html" mon="&pn=11" target="_blank">7旬老人缝制"虎头鞋"栩栩如生</a></li>
<li>
<a href="http://news.163.com/16/0610/20/BP7O77OE0001124J.html" mon="&pn=12" target="_blank">河北唐山12名副市长5人系挂职 媒体解析干部挂职</a></li>
</ul>
</div>
<div class="l-middle-col" alog-group=log-internetplus-middle>
<div class="mod">
<div class="hd">
<h3>互联网+图片</h3>
</div>
<div class="bd">
<div class="imagearea">
<div class="imagearea-top">
<div class="image-mask-item">
<a href="http://www.nbd.com.cn/articles/2016-06-11/1011887.html" target="_blank" class="item-image" mon="&amp;pn=1&a=12" title="杭州P2P行业整顿路线图："XX财富"等理财机构几乎“消失”"><img r_src="http://t10.baidu.com/it/u=http://image.nbd.com.cn/uploads/articles/thumbnails/246319/pbu455596_12.thumb_head.jpg&fm=36" alt="杭州P2P行业整顿路线图："XX财富"等理财机构几乎“消失”"/></a>
<a href="http://www.nbd.com.cn/articles/2016-06-11/1011887.html" target="_blank" class="item-title" title="杭州P2P行业整顿路线图："XX财富"等理财机构几乎“消失”" mon="&amp;pn=1&a=9">杭州P2P行业整顿路线图："XX财富"等理财机构几乎“消失”</a>
</div>
</div>
<div class="imagearea-bottom">
<div class="image-list-item">
<a href="http://finance.youth.cn/finance_gdxw/201606/t20160611_8106415.htm" title="文化产业占GDP比重3.86% 股权融资现状解析" target="_blank" mon="&amp;pn=2&a=12"><img r_src="http://t12.baidu.com/it/u=http://finance.youth.cn/finance_gdxw/201606/W020160611313230580101.jpg&fm=36"/></a><a href="http://finance.youth.cn/finance_gdxw/201606/t20160611_8106415.htm" mon="&amp;pn=2&a=9"  class="txt" target="_blank">文化产业占GDP比重3.86% 股权融资现状解析</a>
</div>
<div class="image-list-item">
<a href="http://tech.qq.com/a/20160611/005506.htm" title="投资51Talk赚到了4倍回报 起底雷军旗下顺为资本" target="_blank" mon="&amp;pn=3&a=12"><img r_src="http://t12.baidu.com/it/u=http://img1.gtimg.com/tech/pics/hv1/140/21/2082/135387545.png&fm=36"/></a><a href="http://tech.qq.com/a/20160611/005506.htm" mon="&amp;pn=3&a=9"  class="txt" target="_blank">投资51Talk赚到了4倍回报 起底雷军旗下顺为资本</a>
</div>
</div>
</div>
</div>
</div>
</div><div class="l-right-col" alog-group="log-internetplus-right">
<div class="mod tbox">
<div class="hd line"><h3><a href="http://huati.news.baidu.com/?n&cmd=12&class=topic&tag=互联网金融" target="_blank">互联网+金融</a></h3><a href="http://huati.news.baidu.com/?n&cmd=12&class=topic&tag=互联网金融" class="more" target="_blank">更多</a></div>
<div class="bd">
<ul class="ulist "  >
<li><a href="http://www.cnbeta.com/articles/509453.htm" mon="&pn=1" target="_blank">或在WWDC上公布：Apple Pay可用于网页购买支付</a></li>
<li><a href="http://business.sohu.com/20160611/n453853305.shtml" mon="&pn=2" target="_blank">各地政府强化金融监管 多家P2P迫于整改压力选择退出</a></li>
<li><a href="http://www.huxiu.com/article/151904/1.html?f=column_feed_article" mon="&pn=3" target="_blank">马云欲以“平台+金融+数据”再造一个阿里，蚂蚁金服2.5亿元入股中国私募数据服务商</a></li>
<li><a href="http://tech.sina.com.cn/i/2016-06-10/doc-ifxszmaa1803565.shtml" mon="&pn=4" target="_blank">传蚂蚁金服收购上海朝阳永续20%股份</a></li>
</ul>
</div>
</div>
<div class="mod tbox" style="padding-top: 16px;">
<div class="hd line"><h3><a href="http://huati.news.baidu.com/?n&cmd=12&class=topic&tag=医疗健康" target="_blank">互联网+医疗</a></h3><a href="http://huati.news.baidu.com/?n&cmd=12&class=topic&tag=医疗健康" class="more" target="_blank">更多</a></div>
<div class="bd">
<ul class="ulist "  >
<li><a href="http://tech.163.com/16/0609/08/BP3V31OS00097U7H.html" mon="&pn=1" target="_blank">马云入局 爱康国宾私有化争夺战有望终结</a></li>
<li><a href="http://tech.sina.com.cn/i/2016-06-09/doc-ifxszfak3436514.shtml" mon="&pn=2" target="_blank">国务院力推医疗大数据发展和规范：想用互联网改善医疗</a></li>
<li><a href="http://money.163.com/16/0608/17/BP29S8TS00254R91.html" mon="&pn=3" target="_blank">“撕斗结束”?美年健康：退出收购爱康国宾</a></li>
<li><a href="http://www.iceo.com.cn/com2013/2016/0608/301497.shtml" mon="&pn=4" target="_blank">马云发起的云锋基金突降，张黎刚及美年相继从爱康国宾私有化撤退</a></li>
<li><a href="http://www.youngchina.cn/lady/20160608/75136.html" mon="&pn=5" target="_blank">爱美尔医疗美容入驻京东医美汇 开启互联网+之路</a></li>
<li><a href="http://www.yicai.com/news/5025181.html" mon="&pn=6" target="_blank">美年健康退出收购爱康国宾</a></li>
</ul>
</div>
</div>
</div>
</div><a name="technews" class="focustop-anchor"></a>
<div class="column clearfix" id="col-tech">
<div class="column-title-home" alog-group=log-tech-title>
<div class="column-title-border">
<h2><a href="http://tech.baidu.com/" target="_blank">科技</a><span class="cname">Technology</span></h2>
<div class="sub-class">
<a href="http://tech.baidu.com/n?cmd=1&amp;class=techfocus&amp;pn=1" target="_blank" >科技焦点</a>
<a href="http://tech.baidu.com/n?cmd=1&amp;class=cell&amp;pn=1" target="_blank" >手机</a>
<a href="http://tech.baidu.com/n?cmd=1&amp;class=digital&amp;pn=1" target="_blank" >数码</a>
<a href="http://tech.baidu.com/n?cmd=4&amp;class=hardware&amp;pn=1" target="_blank" >硬件</a>
<a href="http://tech.baidu.com/n?cmd=1&amp;class=computer&amp;pn=1" target="_blank" >电脑</a>
<a href="http://tech.baidu.com/n?cmd=1&amp;class=yejie&amp;pn=1" target="_blank" >业界</a>
<a href="http://tech.baidu.com/n?cmd=1&amp;class=elec&amp;pn=1" target="_blank" style="background: none; padding-right: 0; margin-right: 0;">家电</a>
</div>
<span class="more"><a href="http://tech.baidu.com/" target="_blank">更多</a></span>
</div>
</div>
<div class="l-left-col col-mod" alog-group=log-tech-left>
<ul class="ulist focuslistnews">
<li class="bold-item">
<span class="dot"></span>
<a href="http://zhaglin.baijia.baidu.com/article/491147" mon="ct=0&amp;a=2&amp;c=techfocus&pn=1" target="_blank">模块化挑战重重，联想Moto难以重新定义智能手机</a></li>
<li>
<a href="http://apple.baijia.baidu.com/article/491338" mon="ct=0&amp;a=2&amp;c=techfocus&pn=2" target="_blank">iPhone 7 将有全新配色，会取代深空灰？</a></li>
<li>
<a href="http://kangsitanding.baijia.baidu.com/article/491368" mon="ct=0&amp;a=2&amp;c=techfocus&pn=3" target="_blank">VR产品如何才能吸引投资者？</a></li>
<li>
<a href="http://wangxinxi.baijia.baidu.com/article/491392" mon="ct=0&amp;a=2&amp;c=techfocus&pn=4" target="_blank">换色并改变升级策略：iPhone7难成爆款</a></li>
<li>
<a href="http://apple.baijia.baidu.com/article/490808" mon="ct=0&amp;a=2&amp;c=techfocus&pn=5" target="_blank">苹果正式对外公开App Store 2.0 加入付费推广模式</a></li>
<li>
<a href="http://guigumitan.baijia.baidu.com/article/490494" mon="ct=0&amp;a=2&amp;c=techfocus&pn=6" target="_blank">被微软“坑”了的诺基亚 就这样投奔了富士康</a></li>
</ul>
<ul class="ulist focuslistnews" >
<li class="bold-item">
<span class="dot"></span>
<a href="http://tech.hexun.com/2016-06-11/184330654.html" mon="ct=0&amp;a=2&amp;c=techfocus&pn=7" target="_blank">苹果WWDC有什么新品？ 听听Siri怎么说</a></li>
<li>
<a href="http://tech.qq.com/a/20160611/007568.htm" mon="ct=0&amp;a=2&amp;c=techfocus&pn=8" target="_blank">比尔盖茨新预测：10年内机器人将比人类更聪明</a></li>
<li>
<a href="http://news.enorth.com.cn/system/2016/06/11/031012141.shtml" mon="ct=0&amp;a=2&amp;c=techfocus&pn=9" target="_blank">津城再添苹果零售店 “果粉”带帐篷一早来排队</a></li>
<li>
<a href="http://www.pcpop.com/doc/2/2886/2886183.shtml" mon="ct=0&amp;a=2&amp;c=techfocus&pn=10" target="_blank">微软推新网站 加速企业采用Win10的速度</a></li>
<li>
<a href="http://business.sohu.com/20160610/n453818489.shtml" mon="ct=0&amp;a=2&amp;c=techfocus&pn=11" target="_blank">苹果推出官方竞价排名 小心你下载的APP！</a></li>
<li>
<a href="http://news.zol.com.cn/587/5877095.html" mon="ct=0&amp;a=2&amp;c=techfocus&pn=12" target="_blank">新MacBook Pro OLED触控板概念设计来袭</a></li>
</ul>
</div>
<div class="l-middle-col" alog-group=log-tech-middle>
<div class="mod">
<div class="hd">
<h3>科技图片</h3>
</div>
<div class="bd">
<div class="imagearea">
<div class="imagearea-top">
<div class="image-mask-item">
<a href="http://zhidao.baidu.com/daily/view?id=11954" target="_blank" class="item-image" mon="ct=0&amp;c=technnews&amp;pn=1&a=12" title="【招募】知道日报开放申请，快来入驻！"><img r_src="http://c.hiphotos.baidu.com/news/q%3D100/sign=7ba347fdb751f819f725074aeab64a76/21a4462309f79052da9386e80bf3d7ca7acbd55c.jpg" alt="【招募】知道日报开放申请，快来入驻！"/></a>
<a href="http://zhidao.baidu.com/daily/view?id=11954" target="_blank" class="item-title" title="【招募】知道日报开放申请，快来入驻！" mon="ct=0&amp;c=technnews&amp;pn=1&a=9">【招募】知道日报开放申请，快来入驻！</a>
</div>
</div>
<div class="imagearea-bottom">
<div class="image-list-item">
<a href="http://synchuman.baijia.baidu.com/article/491009" title="谷歌发论文介绍最新通用量子计算机原型" target="_blank" mon="ct=0&amp;c=technnews&amp;pn=2&a=12"><img r_src="http://g.hiphotos.baidu.com/news/crop%3D0%2C1%2C629%2C378%3Bw%3D638/sign=5c2a18a404f431ada89d19797606809e/c8177f3e6709c93d9e52f3c1973df8dcd1005460.jpg"/></a><a href="http://synchuman.baijia.baidu.com/article/491009" mon="ct=0&amp;c=technnews&amp;pn=2&a=9"  class="txt" target="_blank">谷歌发论文介绍最新通用量子计算机原型</a>
</div>
<div class="image-list-item">
<a href="http://themeursault.baijia.baidu.com/article/490657" title="微软小冰这样写高考作文" target="_blank" mon="ct=0&amp;c=technnews&amp;pn=3&a=12"><img r_src="http://e.hiphotos.baidu.com/news/q%3D100/sign=373d5a8dae1ea8d38c227004a70b30cf/d50735fae6cd7b899a96d7b5072442a7d9330e09.jpg"/></a><a href="http://themeursault.baijia.baidu.com/article/490657" mon="ct=0&amp;c=technnews&amp;pn=3&a=9"  class="txt" target="_blank">微软小冰这样写高考作文</a>
</div>
</div>
</div>
</div>
</div>
</div><div class="l-right-col" alog-group="log-tech-right">
<div class="mod tbox" id="tech-aside-cell">
<div class="hd line">
<h3><a href="http://tech.baidu.com/n?cmd=1&class=digital&pn=1" target="_blank">科技数码</a></h3>
<a href="http://tech.baidu.com/n?cmd=1&class=digital&pn=1" class="more" target="_blank">更多</a></div>
<div class="bd">
<div class="topic clearfix">
<div class="topic-pic">
<a href="http://www.cnii.com.cn/platform/2016-06/07/content_1738650.htm" mon="&a=12&pn=0" target="_blank">
<img r_src="http://t3.baidu.com/it/u=http%3A%2F%2Fwww.cnii.com.cn%2Fplatform%2Fimg%2Fattachement%2Fjpg%2Fsite2%2F20160607%2F00016c58d9fc18c0690822.jpg&fm=30" class="mil"/>
</a>
</div>
<div class="topic-txt">
<h4 style="height: 64px;"><a href="http://www.cnii.com.cn/platform/2016-06/07/content_1738650.htm" mon="&a=9&pn=0" target="_blank">微软iOS移植Win10工具重要更新：支持苹果CoreFo..</a></h4><a href="http://www.cnii.com.cn/platform/2016-06/07/content_1738650.htm" class="detail" target="_blank">[详细]</a>
</div>
</div>
</div>
</div>
<div class="mod" id="tech-aside-zrdl">
<div class="bd">
<ul class="ulist "  >
<li><a href="http://tech.hexun.com/2016-06-11/184330864.html" mon="&pn=1" target="_blank">每日值得买 爱国者电竞500W京东促销中</a></li>
<li><a href="http://news.zol.com.cn/587/5877279.html" mon="&pn=2" target="_blank">秒80%笔记本：iPad Pro特供版iOS10将发？</a></li>
<li><a href="http://gps.zol.com.cn/587/5872903.html" mon="&pn=3" target="_blank">支持社交功能 极路客Goluk G1京东现货</a></li>
<li><a href="http://gps.zol.com.cn/587/5872449.html" mon="&pn=4" target="_blank">入门机也高清拍摄 京东大智G350记录仪</a></li>
<li><a href="http://mst.zol.com.cn/587/5876435.html" mon="&pn=5" target="_blank">小而美 惠普x732高速闪存盘图赏</a></li>
<li><a href="http://tech.hexun.com/2016-06-11/184310191.html" mon="&pn=6" target="_blank">五十大影响力科技设备：仙女棒按摩器超越iPad</a></li>
<li><a href="http://mobile.zol.com.cn/slide/587/5877131_1.html" mon="&pn=7" target="_blank">让想象力生长 联想Tech World大会回顾</a></li>
<li><a href="http://www.techweb.com.cn/data/2016-06-10/2344948.shtml" mon="&pn=8" target="_blank">数据显示中国移动会话占全球总量10% </a></li>
</ul>
</div>
</div>
</div>
</div><a name="edunews" class="focustop-anchor"></a>
<div class="column clearfix" id="col-edu">
<div class="column-title-home" alog-group=log-edu-title>
<div class="column-title-border">
<h2><a href="http://jiaoyu.news.baidu.com/" target="_blank">教育</a><span class="cname">Education</span></h2>
<div class="sub-class">
<a href="http://news.baidu.com/n?cmd=1&amp;class=edunews&amp;pn=1" target="_blank" >教育焦点</a>
<a href="http://news.baidu.com/n?cmd=1&amp;class=exams&amp;pn=1" target="_blank" >考试</a>
<a href="http://news.baidu.com/n?cmd=1&amp;class=abroad&amp;pn=1" target="_blank" >留学</a>
<a href="http://news.baidu.com/n?cmd=1&amp;class=jiuye&amp;pn=1" target="_blank" style="background: none; padding-right: 0; margin-right: 0;">就业</a>
</div>
<span class="more"><a href="http://jiaoyu.news.baidu.com/" target="_blank">更多</a></span>
</div>
</div>
<div class="l-left-col col-mod" alog-group=log-edu-left>
<ul class="ulist focuslistnews">
<li class="bold-item">
<span class="dot"></span>
<a href="http://news.xinhuanet.com/politics/2016-06/11/c_129051050.htm" mon="&pn=1" target="_blank">引力波、“友谊的小船说翻就翻”等入清华自招考题 </a></li>
<li>
<a href="http://news.ycwb.com/2016-06/11/content_22236933.htm" mon="&pn=2" target="_blank">暑期孩子安全教育更要上心 首届青少年儿童安全教..</a></li>
<li>
<a href="http://news.youth.cn/jsxw/201606/t20160610_8104880.htm" mon="&pn=3" target="_blank">一个母亲的高考送餐食谱 60天饭菜几乎不重样</a></li>
<li>
<a href="http://edu.gmw.cn/newspaper/2016-06/11/content_113127738.htm" mon="&pn=4" target="_blank">“军嫂小屋”播撒无穷爱心 </a></li>
<li>
<a href="http://news.xinhuanet.com/local/2016-06/11/c_129051022.htm" mon="&pn=5" target="_blank">虚位以待专才“大咖” </a></li>
<li>
<a href="http://www.legaldaily.com.cn/index/content/2016-06/10/content_6665470.htm?node=20908" mon="&pn=6" target="_blank">80后好的哥左臣：与爱同行 传递希望</a></li>
</ul>
<ul class="ulist focuslistnews" >
<li class="bold-item">
<span class="dot"></span>
<a href="http://learning.sohu.com/20160610/n453825028.shtml" mon="&pn=7" target="_blank">成都七中初中学校2016年艺体特长生招生公告！</a></li>
<li>
<a href="http://news.youth.cn/jy/201606/t20160611_8106362.htm" mon="&pn=8" target="_blank">老师给学生颁情侣奖:称为减压 盘点雷人校规(图)</a></li>
<li>
<a href="http://edu.gmw.cn/newspaper/2016-06/11/content_113130513.htm" mon="&pn=9" target="_blank">高考阅卷应实行“资格准入” </a></li>
<li>
<a href="http://www.qstheory.cn/wp/2016-06/11/c_1119019888.htm" mon="&pn=10" target="_blank">最是浓浓端午情 </a></li>
<li>
<a href="http://edu.gmw.cn/newspaper/2016-06/10/content_113122802.htm" mon="&pn=11" target="_blank">诗歌如何传承传统文化 </a></li>
<li>
<a href="http://news.k618.cn/edus/201606/t20160611_7686804.html" mon="&pn=12" target="_blank">为防造假 教育部将随机复查“校园足球特色校” </a></li>
</ul>
</div>
<div class="l-middle-col" alog-group=log-edu-middle>
<div class="mod">
<div class="hd">
<h3>教育图片</h3>
</div>
<div class="bd">
<div class="imagearea">
<div class="imagearea-top">
<div class="image-mask-item">
<a href="http://cnews.chinadaily.com.cn/2016-06/09/content_25660855.htm" target="_blank" class="item-image" mon="&amp;pn=1&a=12" title="郭德纲科普：关于端午节快乐和端午安康到底该怎.."><img r_src="http://t1.baidu.com/it/u=http%3A%2F%2Fcnews.chinadaily.com.cn%2Fimg%2Fattachement%2Fjpg%2Fsite1%2F20160609%2F0024e83edef418c37dc82f.jpg&fm=30" alt="郭德纲科普：关于端午节快乐和端午安康到底该怎.."/></a>
<a href="http://cnews.chinadaily.com.cn/2016-06/09/content_25660855.htm" target="_blank" class="item-title" title="郭德纲科普：关于端午节快乐和端午安康到底该怎.." mon="&amp;pn=1&a=9">郭德纲科普：关于端午节快乐和端午安康到底该怎..</a>
</div>
</div>
<div class="imagearea-bottom">
<div class="image-list-item">
<a href="http://society.yunnan.cn/html/2016-06/07/content_4378889.htm" title="第4届中国—南亚博览会暨第24届昆交会志愿者上岗.." target="_blank" mon="&amp;pn=2&a=12"><img r_src="http://t3.baidu.com/it/u=http%3A%2F%2Fsociety.yunnan.cn%2Fimages%2Fattachement%2Fjpg%2Fsite2%2F20160607%2F002324a0a9e418c0fe7f41.jpg&fm=30"/></a><a href="http://society.yunnan.cn/html/2016-06/07/content_4378889.htm" mon="&amp;pn=2&a=9"  class="txt" target="_blank">第4届中国—南亚博览会暨第24届昆交会志愿者上岗..</a>
</div>
<div class="image-list-item">
<a href="http://epaper.jinghua.cn/html/2016-06/11/content_310054.htm" title="引力波、友谊的小船入清华自主招生考题" target="_blank" mon="&amp;pn=3&a=12"><img r_src="http://t1.baidu.com/it/u=http%3A%2F%2Fepaper.jinghua.cn%2Fimages%2F2016-06%2F11%2F004%2Fp72_b.jpg&fm=30"/></a><a href="http://epaper.jinghua.cn/html/2016-06/11/content_310054.htm" mon="&amp;pn=3&a=9"  class="txt" target="_blank">引力波、友谊的小船入清华自主招生考题</a>
</div>
</div>
</div>
</div>
</div>
</div><div class="l-right-col" alog-group="log-edu-right">
<div class="mod" id="edu-aside-topic">
<div class="hd line">
<h3><a href="http://huati.news.baidu.com/n?cmd=12&class=topic&tag=%BD%CC%D3%FDO2O" target="_blank">教育话题</a></h3>
<a href="http://huati.news.baidu.com/n?cmd=12&class=topic&tag=%BD%CC%D3%FDO2O" class="more" target="_blank">更多</a></div>
<div class="bd">
<div class="topic clearfix">
<div class="topic-pic">
<a href="http://www.cctime.com/html/2016-1-5/1124956.htm" mon="&a=12&pn=0" target="_blank">
<img r_src="http://t10.baidu.com/it/u=http://www.ruanwen.la/ueditor/php/upload/image/20160105/1451975160877977.jpg&fm=36" class="mil"/>
</a>
</div>
<div class="topic-txt">
<h4 style="height: 64px;"><a href="http://www.cctime.com/html/2016-1-5/1124956.htm" mon="&a=9&pn=0" target="_blank">武汉北大青鸟解读2016年10大IT热门岗位</a></h4><a href="http://www.cctime.com/html/2016-1-5/1124956.htm" class="detail" target="_blank">[详细]</a>
</div>
</div>
</div>
</div>
<div class="mod tbox" style="padding-top: 0;">
<div class="bd">
<ul class="ulist "  >
<li><a href="http://digi.dnkb.com.cn/dnkb/html/2016-01/12/content_408879.htm" mon="&pn=1" target="_blank">基金公司“牵手”互联网销售平台积极拓展投资者教育新阵地</a></li>
<li><a href="http://finance.sina.com.cn/roll/2016-01-10/doc-ifxnkvtn9693717.shtml" mon="&pn=2" target="_blank">互联网教育与精准扶贫</a></li>
<li><a href="http://it.sohu.com/20160109/n434014075.shtml" mon="&pn=3" target="_blank">中国大学MOOC三周年 网易宣布将进军K12</a></li>
<li><a href="http://www.citnews.com.cn/news/201601/4373.html" mon="&pn=4" target="_blank">新东方潘欣：移动互联学习已不可逆，百度传课多端发力前景可期</a></li>
<li><a href="http://epaper.gywb.cn/gywb/html/2016-01/06/content_454865.htm" mon="&pn=5" target="_blank">“互联网 +教育” 开启教育新模式</a></li>
<li><a href="http://www.sznews.com/news/content/2016-01/06/content_12701020.htm" mon="&pn=6" target="_blank">星级教育+：互联网教育生态体系</a></li>
<li><a href="http://www.jl.chinanews.com/news1-135948.html" mon="&pn=7" target="_blank">芥末堆创始人初九：百度传课做教育+互联网前景无限</a></li>
<li><a href="http://tech.hexun.com/2016-01-05/181592191.html" mon="&pn=8" target="_blank">如何玩转“互联网+教育”？</a></li>
</ul>
</div>
</div>
</div>
</div><a name="gamenews" class="focustop-anchor"></a>
<div class="column clearfix" id="col-game">
<div class="column-title-home" alog-group=game-title>
<div class="column-title-border">
<h2><a href="http://youxi.news.baidu.com/" target="_blank">游戏</a><span class="cname">Game</span></h2>
<div class="sub-class">
<a href="http://youxi.news.baidu.com/n?cmd=1&amp;class=netgames&amp;pn=0" target="_blank" >网络游戏</a>
<a href="http://youxi.news.baidu.com/n?cmd=1&amp;class=netgames&amp;pn=0" target="_blank" >电视游戏</a>
<a href="http://youxi.news.baidu.com/n?cmd=1&amp;class=dianzijingji&amp;pn=2" target="_blank" >电子竞技</a>
<a href="http://youxi.news.baidu.com/n?cmd=1&amp;class=remenyouxi&amp;pn=3" target="_blank" >热门游戏</a>
<a href="http://youxi.news.baidu.com/n?cmd=1&amp;class=WOW&amp;pn=4" target="_blank" style="background: none; padding-right: 0; margin-right: 0;">魔兽世界</a>
</div>
<span class="more"><a href="http://youxi.news.baidu.com/" target="_blank">更多</a></span>
</div>
</div>
<div class="l-left-col col-mod" alog-group=game-left>
<ul class="ulist focuslistnews">
<li class="bold-item">
<span class="dot"></span>
<a href="http://games.sina.com.cn/g/g/2016-06-11/fxszkzy5019836.shtml" mon="ct=0&amp;a=2&amp;c=gamenews&pn=1" target="_blank">秒变呆萌脸 超萌的《守望先锋》公仔不来一套？</a></li>
<li>
<a href="http://cnews.chinadaily.com.cn/2016-06/09/content_25659681.htm" mon="ct=0&amp;a=2&amp;c=gamenews&pn=2" target="_blank">LOL6月8日更新公告 6.11版本改动内容一览 </a></li>
<li>
<a href="http://cnews.chinadaily.com.cn/2016-06/09/content_25660795.htm" mon="ct=0&amp;a=2&amp;c=gamenews&pn=3" target="_blank">DNF死灵术士加点分析 DNF死灵术士玩法 </a></li>
<li>
<a href="http://www.dzwww.com/shandong/sdnews/201606/t20160610_14436063.htm" mon="ct=0&amp;a=2&amp;c=gamenews&pn=4" target="_blank">山东省科技馆上演游戏动漫顶级赛事</a></li>
<li>
<a href="http://games.sina.com.cn/t/n/2016-06-10/fxszkzy5038983.shtml" mon="ct=0&amp;a=2&amp;c=gamenews&pn=5" target="_blank">卡普空确认《街头霸王5》故事模式将在本月上线</a></li>
<li>
<a href="http://fight.pcgames.com.cn/617/6171076.html" mon="ct=0&amp;a=2&amp;c=gamenews&pn=6" target="_blank">马尼拉特锦赛 淘汰赛 败者组 NaVi vs Liquid</a></li>
</ul>
<ul class="ulist focuslistnews" >
<li class="bold-item">
<span class="dot"></span>
<a href="http://xyq.17173.com/content/06112016/073829395_1.shtml" mon="ct=0&amp;a=2&amp;c=gamenews&pn=7" target="_blank">我见过最快的直播：7技能须弥一本掉</a></li>
<li>
<a href="http://www.pcpop.com/doc/2/2882/2882834.shtml" mon="ct=0&amp;a=2&amp;c=gamenews&pn=8" target="_blank">《看门狗2》Steam中国区上市售价248元</a></li>
<li>
<a href="http://newgame.duowan.com/1606/329260718610.html" mon="ct=0&amp;a=2&amp;c=gamenews&pn=9" target="_blank">新游TOP榜：装甲风暴首入榜 封印者热度暴涨</a></li>
<li>
<a href="http://gameonline.yesky.com/19/102954519.shtml" mon="ct=0&amp;a=2&amp;c=gamenews&pn=10" target="_blank">《天下3》全新资料片"魔影幽篁"视频抢鲜版</a></li>
<li>
<a href="http://games.sina.com.cn/w/y/2016-06-07/fxsvenx3507693.shtml" mon="ct=0&amp;a=2&amp;c=gamenews&pn=11" target="_blank">吃货修炼秘籍 萌乐网《仙侠道2》演绎端午前传</a></li>
<li>
<a href="http://games.sina.com.cn/ol/n/2016-06-07/fxsvenx3508834.shtml" mon="ct=0&amp;a=2&amp;c=gamenews&pn=12" target="_blank">打破次元壁！《DNF》玩家办二次元毕业红毯秀</a></li>
</ul>
</div>
<div class="l-middle-col" alog-group=game-middle>
<div class="mod">
<div class="hd">
<h3>游戏图片</h3>
</div>
<div class="bd">
<div class="imagearea">
<div class="imagearea-top">
<div class="image-mask-item">
<a href="http://chanye.07073.com/guowai/1382185.html" target="_blank" class="item-image" mon="ct=0&amp;c=gamenews&amp;pn=1&a=12" title="暴雪与Facebook联手 推出好友直播功能"><img r_src="http://t2.baidu.com/it/u=http%3A%2F%2Fchanye.07073.com%2Fuploads%2Fallimg%2F160607%2F1624361335-0.png&fm=30" alt="暴雪与Facebook联手 推出好友直播功能"/></a>
<a href="http://chanye.07073.com/guowai/1382185.html" target="_blank" class="item-title" title="暴雪与Facebook联手 推出好友直播功能" mon="ct=0&amp;c=gamenews&amp;pn=1&a=9">暴雪与Facebook联手 推出好友直播功能</a>
</div>
</div>
<div class="imagearea-bottom">
<div class="image-list-item">
<a href="http://cnews.chinadaily.com.cn/2016-06/07/content_25639785.htm" title="《英雄联盟》lol 6.11版本更新内容 强势英雄一览 " target="_blank" mon="ct=0&amp;c=gamenews&amp;pn=2&a=12"><img r_src="http://t3.baidu.com/it/u=http%3A%2F%2Fcnews.chinadaily.com.cn%2Fimg%2Fattachement%2Fjpg%2Fsite1%2F20160607%2Fa41f726b573a18c0b1954d.jpg&fm=30"/></a><a href="http://cnews.chinadaily.com.cn/2016-06/07/content_25639785.htm" mon="ct=0&amp;c=gamenews&amp;pn=2&a=9"  class="txt" target="_blank">《英雄联盟》lol 6.11版本更新内容 强势英雄一览 </a>
</div>
<div class="image-list-item">
<a href="http://www.dzwww.com/yule/dy/201606/t20160607_14421833.htm" title="龙珠直播《魔兽》大电影首映式 唯青春永不散场" target="_blank" mon="ct=0&amp;c=gamenews&amp;pn=3&a=12"><img r_src="http://t2.baidu.com/it/u=http%3A%2F%2Fwww.dzwww.com%2Fyule%2Fdy%2F201606%2FW020160607502728428251.png&fm=30"/></a><a href="http://www.dzwww.com/yule/dy/201606/t20160607_14421833.htm" mon="ct=0&amp;c=gamenews&amp;pn=3&a=9"  class="txt" target="_blank">龙珠直播《魔兽》大电影首映式 唯青春永不散场</a>
</div>
</div>
</div>
</div>
</div>
</div><div class="l-right-col" alog-group="log-game-right">
<div class="mod" id="game-aside-topic">
<div class="hd line">
<h3><a href="http://huati.news.baidu.com/n?cmd=12&class=topic&tag=%D3%CE%CF%B7%B9%AB%CB%BE" target="_blank">游戏话题</a></h3>
<a href="http://huati.news.baidu.com/n?cmd=12&class=topic&tag=%D3%CE%CF%B7%B9%AB%CB%BE" class="more" target="_blank">更多</a></div>
<div class="bd">
<div class="topic clearfix">
<div class="topic-pic">
<a href="http://news.17173.com/content/2016-06-11/20160611004433491_1.shtml" mon="&a=12&pn=0" target="_blank">
<img r_src="http://t12.baidu.com/it/u=http://images.17173.com/2016/news/2016/06/10/hy0610ms02s.jpg&fm=36" class="mil"/>
</a>
</div>
<div class="topic-txt">
<h4 style="height: 64px;"><a href="http://news.17173.com/content/2016-06-11/20160611004433491_1.shtml" mon="&a=9&pn=0" target="_blank">韩网友看《魔兽》电影:暴雪的10年最佳礼物</a></h4><a href="http://news.17173.com/content/2016-06-11/20160611004433491_1.shtml" class="detail" target="_blank">[详细]</a>
</div>
</div>
</div>
</div>
<div class="mod tbox" style="padding-top: 0;">
<div class="bd">
<ul class="ulist "  >
<li><a href="http://www.yxdown.com/news/201606/297077.html" mon="&pn=1" target="_blank">这就尴尬了！当《魔兽》电影出现腾讯、暴雪LOGO时…</a></li>
<li><a href="http://www.yxdown.com/news/201606/297078.html" mon="&pn=2" target="_blank">育碧将永久封禁《全境封锁》作弊者 包括初犯的玩家</a></li>
<li><a href="http://www.ali213.net/news/html/2016-6/227949.html" mon="&pn=3" target="_blank">育碧关闭卡萨布兰卡分部！曾开发《雷曼：传奇》</a></li>
<li><a href="http://www.yxdown.com/news/201606/297054.html" mon="&pn=4" target="_blank">暴雪总部原来长这样！真不愧是“魔兽”和“屁股”的家</a></li>
<li><a href="http://games.sina.com.cn/y/n/2016-06-10/fxszkzy5032531.shtml" mon="&pn=5" target="_blank">Activision宣布《使命召唤XP》将携VR体验版回归</a></li>
<li><a href="http://www.cnbeta.com/articles/509289.htm" mon="&pn=6" target="_blank">育碧宣布关闭已成立18年的摩洛哥卡萨布兰卡工作室</a></li>
<li><a href="https://view.inews.qq.com/a/GAM2016061000236802" mon="&pn=7" target="_blank">魔兽从这里开始 暴雪总部原来长这样！</a></li>
<li><a href="http://www.yxdown.com/news/201606/297003.html" mon="&pn=8" target="_blank">暴雪推出《守望先锋》Funko公仔 萌感十足不容错过</a></li>
</ul>
</div>
</div>
</div>
</div><a name="discovery" class="focustop-anchor"></a>
<div class="column clearfix" id="col-discovery">
<div class="column-title-home" alog-group=log-discovery-title>
<div class="column-title-border">
<h2><a href="http://tech.baidu.com/n?cmd=1&class=discovery&pn=1" target="_blank">探索</a><span class="cname">Discovery</span></h2>
<div class="sub-class">
<a href="http://tech.baidu.com/n?cmd=4&amp;class=discovery&amp;pn=1" target="_blank" >探索焦点</a>
<a href="http://tech.baidu.com/n?cmd=1&amp;class=discovery&amp;pn=1" target="_blank" >科普新闻</a>
<a href="http://tech.baidu.com/n?cmd=4&amp;class=universe&amp;pn=1" target="_blank" >宇宙探索</a>
<a href="http://tech.baidu.com/n?cmd=4&amp;class=fun&amp;pn=1" target="_blank" >奇闻奇观</a>
<a href="http://tech.baidu.com/n?cmd=4&amp;class=civilization&amp;pn=1" target="_blank" >历史考古</a>
<a href="http://tech.baidu.com/n?cmd=4&amp;class=nature&amp;pn=1" target="_blank" style="background: none; padding-right: 0; margin-right: 0;">自然地理</a>
</div>
<span class="more"><a href="http://tech.baidu.com/n?cmd=1&class=discovery&pn=1" target="_blank">更多</a></span>
</div>
</div>
<div class="l-left-col col-mod" alog-group=log-discovery-left>
<ul class="ulist focuslistnews">
<li class="bold-item">
<span class="dot"></span>
<a href="http://vr.aili.com/article/976.html" mon="&pn=1" target="_blank">不想穷一生 那么你需要这些卡片机</a></li>
<li>
<a href="http://www.ttufo.com/bdnews/114049.html" mon="&pn=2" target="_blank">地球在宇宙中的地位：看完后被彻底震惊了</a></li>
<li>
<a href="http://www.360640.com/tushuo/201606089298.html" mon="&pn=3" target="_blank">揭秘北京北新桥的海眼的来历和诡异的故事</a></li>
<li>
<a href="http://www.ttufo.com/bdnews/114048.html" mon="&pn=4" target="_blank">准备好了?未来这15项科技将决定人类生死</a></li>
<li>
<a href="http://www.360640.com/tushuo/201606089294.html" mon="&pn=5" target="_blank">风水出问题：上海徐家汇港汇跳楼事件</a></li>
<li>
<a href="http://www.qiwen007.com/bdn/bts/30370.html" mon="&pn=6" target="_blank">富可敌国！揭秘中国最有钱的六个村</a></li>
</ul>
<ul class="ulist focuslistnews" >
<li class="bold-item">
<span class="dot"></span>
<a href="http://tech.huanqiu.com/news/2016-06/9025832.html" mon="&pn=7" target="_blank">“热木星”云层之下很可能隐藏着神秘水资源</a></li>
<li>
<a href="http://tech.huanqiu.com/news/2016-06/9025882.html" mon="&pn=8" target="_blank">霍金称短期内不可能发现外星生命 也不希望被找到</a></li>
<li>
<a href="http://it.sohu.com/20160610/n453845194.shtml" mon="&pn=9" target="_blank">NASA的望远镜揭示巨型黑洞快速形成机制</a></li>
<li>
<a href="http://www.kejixun.com/article/201606/180049.html" mon="&pn=10" target="_blank">黑洞进食之谜： 终于被科学家揭开</a></li>
<li>
<a href="http://news.qudong.com/article/339327.shtml" mon="&pn=11" target="_blank">银河系贯穿着一个暗物质圆盘？</a></li>
<li>
<a href="http://travel.sohu.com/20160610/n453835774.shtml" mon="&pn=12" target="_blank">周末哪里玩？唐山走一走</a></li>
</ul>
</div>
<div class="l-middle-col" alog-group=log-discovery-middle>
<div class="mod">
<div class="hd">
<h3>探索图片</h3>
</div>
<div class="bd">
<div class="imagearea">
<div class="imagearea-top">
<div class="image-mask-item">
<a href="http://www.ttufo.com/bdnews/114051.html" target="_blank" class="item-image" mon="&amp;pn=1&a=12" title="奇迹!810层阶梯后竟发现地底人类"><img r_src="http://b.hiphotos.baidu.com/news/pic/item/91ef76c6a7efce1b4d3c48fca751f3deb48f65f5.jpg" alt="奇迹!810层阶梯后竟发现地底人类"/></a>
<a href="http://www.ttufo.com/bdnews/114051.html" target="_blank" class="item-title" title="奇迹!810层阶梯后竟发现地底人类" mon="&amp;pn=1&a=9">奇迹!810层阶梯后竟发现地底人类</a>
</div>
</div>
<div class="imagearea-bottom">
<div class="image-list-item">
<a href="http://www.cnwnews.com/html/tech/cn_tx/jsty/20160601/806661.html" title="天文学家发现超大质量黑洞种子候选者" target="_blank" mon="&amp;pn=2&a=12"><img r_src="http://t3.baidu.com/it/u=http%3A%2F%2Fwww.cnwnews.com%2Fuploads%2Fallimg%2F160601%2F095504E64-0.jpg&fm=30"/></a><a href="http://www.cnwnews.com/html/tech/cn_tx/jsty/20160601/806661.html" mon="&amp;pn=2&a=9"  class="txt" target="_blank">天文学家发现超大质量黑洞种子候选者</a>
</div>
<div class="image-list-item">
<a href="http://www.pjtime.com/2016/5/412137565657.shtml" title="美科学家研发皮肤用集成电路" target="_blank" mon="&amp;pn=3&a=12"><img r_src="http://t1.baidu.com/it/u=http%3A%2F%2Fwww.pjtime.com%2Fimg_UpArticle%2F2016-05%2F41213723118013.jpg&fm=30"/></a><a href="http://www.pjtime.com/2016/5/412137565657.shtml" mon="&amp;pn=3&a=9"  class="txt" target="_blank">美科学家研发皮肤用集成电路</a>
</div>
</div>
</div>
</div>
</div>
</div><div class="l-right-col" alog-group="log-discovery-right">
<div class="mod" id="discovery-aside-topic">
<div class="hd line">
<h3><a href="http://huati.news.baidu.com/n?cmd=12&class=topic&tag=%BF%C6%D1%A7%CC%BD%CB%F7" target="_blank">探索话题</a></h3>
<a href="http://huati.news.baidu.com/n?cmd=12&class=topic&tag=%BF%C6%D1%A7%CC%BD%CB%F7" class="more" target="_blank">更多</a></div>
<div class="bd">
<div class="image-list">
<div class="image-list-wrapper">
<div class="image-list-item">
<a href="http://www.cnr.cn/lvyou/list/20160322/t20160322_521678241.shtml" title="娱乐圈未解之谜：黄晓明baby逛街再曝身高" target="_blank" mon="&amp;pn=1&a=12"><img r_src="http://t12.baidu.com/it/u=http://www.cnr.cn/lvyou/list/20160322/W020160322351428853301.jpg&fm=36"/></a><a href="http://www.cnr.cn/lvyou/list/20160322/t20160322_521678241.shtml" mon="&amp;pn=1&a=9"  class="txt" target="_blank">娱乐圈未解之谜：黄晓明baby逛街再曝身高</a>
</div>
<div class="image-list-item">
<a href="http://travel.china.com/happy/11167036/20160314/21919289.html" title="未解之谜：罗布泊传惊人消息 发现墓地宝藏(1)" target="_blank" mon="&amp;pn=2&a=12"><img r_src="http://t10.baidu.com/it/u=http://img2.utuku.china.com/600x0/travel/20160314/147d2239-b178-41bb-b751-6180a71eb527.jpg&fm=36"/></a><a href="http://travel.china.com/happy/11167036/20160314/21919289.html" mon="&amp;pn=2&a=9"  class="txt" target="_blank">未解之谜：罗布泊传惊人消息 发现墓地宝藏(1)</a>
</div>
</div>
</div>
</div>
</div>
<div class="mod tbox" style="padding-top: 0;">
<div class="bd">
<ul class="ulist "  >
<li><a href="http://lady.163.com/16/0309/18/BHO3T8N800264OFI.html" mon="&pn=1" target="_blank">男人未解之谜：痛经到底有多恐怖</a></li>
<li><a href="http://tech.sina.com.cn/d/a/2016-03-07/doc-ifxqafha0422221.shtml" mon="&pn=2" target="_blank">动物生殖能力大比拼：翻车鲀鱼一次产约3亿卵子</a></li>
<li><a href="http://history.gmw.cn/2016-03/07/content_19191497.htm" mon="&pn=3" target="_blank">世界七大恐怖考古发现 你知几个？ </a></li>
<li><a href="http://culture.people.com.cn/n1/2016/0306/c1013-28175123.html" mon="&pn=4" target="_blank">播报:养心殿2020年将修缮完毕 海昏侯墓4大未解之谜</a></li>
<li><a href="http://tech.sina.com.cn/d/v/2016-03-05/doc-ifxpzzhk2264358.shtml" mon="&pn=5" target="_blank">菲律宾男孩患多齿症长300颗牙齿 已拔40颗(图)</a></li>
<li><a href="http://tech.sina.com.cn/d/i/2016-03-05/doc-ifxqafha0387393.shtml" mon="&pn=6" target="_blank">量子计算核心突破!Shor算法实现或使密码成摆设</a></li>
<li><a href="http://tech.sina.com.cn/d/f/2016-03-05/doc-ifxqafha0386438.shtml" mon="&pn=7" target="_blank">英国科学家发现抗癌新免疫疗法</a></li>
</ul>
</div>
</div>
</div>
</div><a name="healthy" class="focustop-anchor"></a>
<div class="column clearfix" id="col-healthy">
<div class="column-title-home" alog-group=log-healthy-title>
<div class="column-title-border">
<h2><a href="http://lady.baidu.com/n?cmd=1&class=jiankang&pn=1&from=tab" target="_blank">健康</a><span class="cname">Health</span></h2>
<div class="sub-class">
<a href="http://lady.baidu.com/n?cmd=1&amp;class=jiankang&amp;pn=1&amp;from=tab" target="_blank" >健康养生</a>
<a href="http://lady.baidu.com/n?cmd=4&amp;class=jiankang&amp;pn=1" target="_blank" >最新健康</a>
<a href="http://lady.baidu.com/n?cmd=4&amp;class=meishijk&amp;pn=1" target="_blank" >美食健康</a>
<a href="http://lady.baidu.com/n?cmd=4&amp;class=baojian&amp;pn=1" target="_blank" style="background: none; padding-right: 0; margin-right: 0;">保健养生</a>
</div>
<span class="more"><a href="http://lady.baidu.com/n?cmd=1&class=jiankang&pn=1&from=tab" target="_blank">更多</a></span>
</div>
</div>
<div class="l-left-col col-mod" alog-group=log-healthy-left>
<ul class="ulist focuslistnews">
<li class="bold-item">
<span class="dot"></span>
<a href="http://emotion.aili.com/1822/2735361.html" mon="ct=0&amp;a=2&amp;c=jiankang&pn=1" target="_blank">真的假的！住在几楼寿命更长？</a></li>
<li>
<a href="http://ent.jiaoman.cc/tid-23717/" mon="ct=0&amp;a=2&amp;c=jiankang&pn=2" target="_blank">早期癌症长啥样？留意这些报警信号</a></li>
<li>
<a href="http://health.zdface.com/shbj/zjzl/2016-06-09/138950.shtml" mon="ct=0&amp;a=2&amp;c=jiankang&pn=3" target="_blank">手淫造成的阳痿早泄还有得救吗？</a></li>
<li>
<a href="http://emotion.aili.com/1822/2735362.html" mon="ct=0&amp;a=2&amp;c=jiankang&pn=4" target="_blank">一个星期不吃早餐会怎样？</a></li>
<li>
<a href="http://ent.jiaoman.cc/tid-23719/" mon="ct=0&amp;a=2&amp;c=jiankang&pn=5" target="_blank">女性朋友经期运动能减肥吗</a></li>
<li>
<a href="http://health.zdface.com/yyys/ccjk/2016-06-09/138956.shtml" mon="ct=0&amp;a=2&amp;c=jiankang&pn=6" target="_blank">健康迎端午 吃粽子的4个注意事项 </a></li>
</ul>
<ul class="ulist focuslistnews" >
<li class="bold-item">
<span class="dot"></span>
<a href="http://health.youth.cn/2016/201606/t20160610_8104929.htm" mon="ct=0&amp;a=2&amp;c=jiankang&pn=7" target="_blank">酸奶养胃又养生 四个时间喝酸奶最好</a></li>
<li>
<a href="http://health.youth.cn/2016/201606/t20160610_8105331.htm" mon="ct=0&amp;a=2&amp;c=jiankang&pn=8" target="_blank">这8种早餐伤脑又伤身 营养养生早餐的8条金标准</a></li>
<li>
<a href="http://health.huanqiu.com/health_promotion/2016-06/9025933.html" mon="ct=0&amp;a=2&amp;c=jiankang&pn=9" target="_blank">3个西瓜=1粒伟哥？8款健康养生水果男人要常吃</a></li>
<li>
<a href="http://baobao.sohu.com/20160611/n453851508.shtml" mon="ct=0&amp;a=2&amp;c=jiankang&pn=10" target="_blank">准妈妈每天怎么吃？看这就够了！</a></li>
<li>
<a href="http://health.gmw.cn/newspaper/2016-06/11/content_113128954.htm" mon="ct=0&amp;a=2&amp;c=jiankang&pn=11" target="_blank">150万元慈善物资赠给庄河“三无老人” </a></li>
<li>
<a href="http://health.sina.com.cn/hc/2016-06-11/doc-ifxszkzy5049711.shtml" mon="ct=0&amp;a=2&amp;c=jiankang&pn=12" target="_blank">一个鸡蛋五种功效</a></li>
</ul>
</div>
<div class="l-middle-col" alog-group=log-healthy-middle>
<div class="mod">
<div class="hd">
<h3>健康图片</h3>
</div>
<div class="bd">
<div class="imagearea">
<div class="imagearea-top">
<div class="image-mask-item">
<a href="http://health.zdface.com/shbj/rcbj/2016-06-09/138944.shtml" target="_blank" class="item-image" mon="ct=0&amp;c=jiankang&amp;pn=1&a=12" title="女人性生活规律的4个好处"><img r_src="http://d.hiphotos.baidu.com/news/pic/item/b3b7d0a20cf431ad7f20c00f4336acaf2edd9812.jpg" alt="女人性生活规律的4个好处"/></a>
<a href="http://health.zdface.com/shbj/rcbj/2016-06-09/138944.shtml" target="_blank" class="item-title" title="女人性生活规律的4个好处" mon="ct=0&amp;c=jiankang&amp;pn=1&a=9">女人性生活规律的4个好处</a>
</div>
</div>
<div class="imagearea-bottom">
<div class="image-list-item">
<a href="http://emotion.aili.com/1822/2735356.html" title="科学研究揭示为什么婴儿那么可爱" target="_blank" mon="ct=0&amp;c=jiankang&amp;pn=2&a=12"><img r_src="http://b.hiphotos.baidu.com/news/pic/item/b3fb43166d224f4a5b97f02501f790529822d1fe.jpg"/></a><a href="http://emotion.aili.com/1822/2735356.html" mon="ct=0&amp;c=jiankang&amp;pn=2&a=9"  class="txt" target="_blank">科学研究揭示为什么婴儿那么可爱</a>
</div>
<div class="image-list-item">
<a href="http://ent.jiaoman.cc/tid-23703/" title="枕边有一物让人短命10年！" target="_blank" mon="ct=0&amp;c=jiankang&amp;pn=3&a=12"><img r_src="http://e.hiphotos.baidu.com/news/pic/item/78310a55b319ebc489f0f5af8a26cffc1e17167f.jpg"/></a><a href="http://ent.jiaoman.cc/tid-23703/" mon="ct=0&amp;c=jiankang&amp;pn=3&a=9"  class="txt" target="_blank">枕边有一物让人短命10年！</a>
</div>
</div>
</div>
</div>
</div>
</div><div class="l-right-col" alog-group="log-healthy-right">
<div class="mod" id="healthy-aside-topic">
<div class="hd line">
<h3><a href="http://huati.news.baidu.com/n?cmd=12&class=topic&tag=%BD%A1%BF%B5" target="_blank">健康话题</a></h3>
<a href="http://huati.news.baidu.com/n?cmd=12&class=topic&tag=%BD%A1%BF%B5" class="more" target="_blank">更多</a></div>
<div class="bd">
<div class="topic clearfix">
<div class="topic-pic">
<a href="http://fashion.ifeng.com/a/20160611/40165259_0.shtml" mon="&a=12&pn=0" target="_blank">
<img r_src="http://t12.baidu.com/it/u=http://p0.ifengimg.com/a/2016_24/552606e7074ecb8_size106_w880_h1209.jpg&fm=36" class="mil"/>
</a>
</div>
<div class="topic-txt">
<h4 style="height: 64px;"><a href="http://fashion.ifeng.com/a/20160611/40165259_0.shtml" mon="&a=9&pn=0" target="_blank">萌到不行的卡通咖啡拉花(图)</a></h4><a href="http://fashion.ifeng.com/a/20160611/40165259_0.shtml" class="detail" target="_blank">[详细]</a>
</div>
</div>
</div>
</div>
<div class="mod tbox" style="padding-top: 0;">
<div class="bd">
<ul class="ulist "  >
<li><a href="http://fashion.ifeng.com/a/20160611/40165240_0.shtml" mon="&pn=1" target="_blank">晨练注意4点让你更长寿</a></li>
<li><a href="http://fashion.ifeng.com/a/20160611/40165244_0.shtml" mon="&pn=2" target="_blank">身上这地方长痣财运亨通</a></li>
<li><a href="http://www.youngchina.cn/live/20160611/76703.html" mon="&pn=3" target="_blank">5 种心血管常用药男女有别</a></li>
<li><a href="http://www.youngchina.cn/live/20160610/76299.html" mon="&pn=4" target="_blank">增肌不想碰到瓶颈，你得知道这些！</a></li>
<li><a href="http://health.qq.com/a/20160610/010292.htm" mon="&pn=5" target="_blank">皮肤突然变敏感？5大不良习惯导致敏感肌 </a></li>
<li><a href="http://fashion.ifeng.com/a/20160610/40165192_0.shtml" mon="&pn=6" target="_blank">吃这些东西白发变黑发</a></li>
<li><a href="http://fashion.ifeng.com/a/20160610/40165178_0.shtml" mon="&pn=7" target="_blank">枸杞怎么吃更长寿 枸杞泡水养肝明目</a></li>
<li><a href="http://fashion.ifeng.com/a/20160610/40165189_0.shtml" mon="&pn=8" target="_blank">男人生命中的5个“魔鬼时刻”</a></li>
</ul>
</div>
</div>
</div>
</div><a name="healthnews" class="focustop-anchor"></a>
<div class="column clearfix" id="col-lady">
<div class="column-title-home" alog-group=log-lady-title>
<div class="column-title-border">
<h2><a href="http://lady.baidu.com/" target="_blank">女人</a><span class="cname">Lady</span></h2>
<div class="sub-class">
<a href="http://lady.baidu.com/n?cmd=1&amp;class=chaoliufs" target="_blank" >潮流服饰</a>
<a href="http://lady.baidu.com/n?cmd=4&amp;class=nvrentx&amp;pn=1" target="_blank" >女性职场</a>
<a href="http://lady.baidu.com/n?cmd=4&amp;class=xingnanss&amp;pn=1" target="_blank" >型男时尚</a>
<a href="http://lady.baidu.com/n?cmd=1&amp;class=meironghf&amp;pn=1" target="_blank" >美容护肤</a>
<a href="http://lady.baidu.com/n?cmd=4&amp;class=meironghf&amp;pn=1" target="_blank" >美容新闻</a>
<a href="http://lady.baidu.com/n?cmd=4&amp;class=qinzimy&amp;pn=1" target="_blank" >亲子母婴</a>
<a href="http://lady.baidu.com/n?cmd=4&amp;class=hunjia&amp;pn=1" target="_blank" >婚嫁新人</a>
<a href="http://lady.baidu.com/n?cmd=1&amp;class=jianfei&amp;pn=1" target="_blank" >减肥健身</a>
<a href="http://lady.baidu.com/n?cmd=4&amp;class=jianfei&amp;pn=1" target="_blank" style="background: none; padding-right: 0; margin-right: 0;">减肥新闻</a>
</div>
<span class="more"><a href="http://lady.baidu.com/" target="_blank">更多</a></span>
</div>
</div>
<div class="l-left-col col-mod" alog-group=log-lady-left>
<ul class="ulist focuslistnews">
<li class="bold-item">
<span class="dot"></span>
<a href="http://emotion.aili.com/449/2734971.html" mon="ct=0&amp;a=2&amp;c=healthnews&pn=1" target="_blank">嬉戏的吻最激情 关于接吻的有趣秘密</a></li>
<li>
<a href="http://ent.jiaoman.cc/tid-23687/" mon="ct=0&amp;a=2&amp;c=healthnews&pn=2" target="_blank">有趣心理学 为何男人喜欢娶胖老婆</a></li>
<li>
<a href="http://beauty.zdface.com/mrhf/jfjb/ky/2016-06-09/138941.shtml" mon="ct=0&amp;a=2&amp;c=healthnews&pn=3" target="_blank">你脸都能摊鸡蛋了，还不看看怎么控油?</a></li>
<li>
<a href="http://emotion.aili.com/449/2734973.html" mon="ct=0&amp;a=2&amp;c=healthnews&pn=4" target="_blank">遇到奇葩男是一种怎样的体验？</a></li>
<li>
<a href="http://ent.jiaoman.cc/tid-23700/" mon="ct=0&amp;a=2&amp;c=healthnews&pn=5" target="_blank">爱上一个人的这9种真爱感觉你都有吗？</a></li>
<li>
<a href="http://fashion.zdface.com/cldp/lxdp/2016-06-09/138958.shtml" mon="ct=0&amp;a=2&amp;c=healthnews&pn=6" target="_blank">把紧身裤穿美的方法竟然不全靠瘦?!</a></li>
</ul>
<ul class="ulist focuslistnews" >
<li class="bold-item">
<span class="dot"></span>
<a href="http://finance.huanqiu.com/roll/2016-06/9025006.html" mon="ct=0&amp;a=2&amp;c=healthnews&pn=7" target="_blank">你吐的“槽”政府当成“宝”，上海市场监管引入..</a></li>
<li>
<a href="http://health.huanqiu.com/health_promotion/2016-06/9025785.html" mon="ct=0&amp;a=2&amp;c=healthnews&pn=8" target="_blank">夏天什么颜色衣服最防晒呢?竟然不是你想的那样</a></li>
<li>
<a href="http://health.huanqiu.com/healthindustry/2016-06/9025771.html" mon="ct=0&amp;a=2&amp;c=healthnews&pn=9" target="_blank">贿赂美国医生滥开药 加拿大威朗制药赔数千万美元</a></li>
<li>
<a href="http://health.huanqiu.com/health_news/2016-06/9024524.html" mon="ct=0&amp;a=2&amp;c=healthnews&pn=10" target="_blank">女子"喂"4岁男孩喝自己的血 孩子次日发高烧</a></li>
<li>
<a href="http://health.huanqiu.com/health_news/2016-06/9024520.html" mon="ct=0&amp;a=2&amp;c=healthnews&pn=11" target="_blank">小伙被蜈蚣咬伤 模仿白娘子"解毒"反中毒</a></li>
<li>
<a href="http://finance.huanqiu.com/gsjj/2016-06/9025295.html" mon="ct=0&amp;a=2&amp;c=healthnews&pn=12" target="_blank">新光药业产品售价不涨毛利暴增 募投产能难消化</a></li>
</ul>
</div>
<div class="l-middle-col" alog-group=log-lady-middle>
<div class="mod">
<div class="hd">
<h3>女人图片</h3>
</div>
<div class="bd">
<div class="imagearea">
<div class="imagearea-top">
<div class="image-mask-item">
<a href="http://ent.aili.com/1475/2735378.html" target="_blank" class="item-image" mon="ct=0&amp;c=healthnews&amp;pn=1&a=12" title="黄晓明温柔搂Baby腰秀恩爱"><img r_src="http://g.hiphotos.baidu.com/news/pic/item/0b7b02087bf40ad106ae4ad55f2c11dfa9ecceba.jpg" alt="黄晓明温柔搂Baby腰秀恩爱"/></a>
<a href="http://ent.aili.com/1475/2735378.html" target="_blank" class="item-title" title="黄晓明温柔搂Baby腰秀恩爱" mon="ct=0&amp;c=healthnews&amp;pn=1&a=9">黄晓明温柔搂Baby腰秀恩爱</a>
</div>
</div>
<div class="imagearea-bottom">
<div class="image-list-item">
<a href="http://ent.jiaoman.cc/tid-23691/" title="一辈子得剪一次这样的短发" target="_blank" mon="ct=0&amp;c=healthnews&amp;pn=2&a=12"><img r_src="http://b.hiphotos.baidu.com/news/pic/item/f3d3572c11dfa9ece368db216ad0f703918fc146.jpg"/></a><a href="http://ent.jiaoman.cc/tid-23691/" mon="ct=0&amp;c=healthnews&amp;pn=2&a=9"  class="txt" target="_blank">一辈子得剪一次这样的短发</a>
</div>
<div class="image-list-item">
<a href="http://health.zdface.com/nxjk/nxjkbk/2016-06-09/138992.shtml" title="孕妇妊娠纹修复的4个方法" target="_blank" mon="ct=0&amp;c=healthnews&amp;pn=3&a=12"><img r_src="http://a.hiphotos.baidu.com/news/pic/item/359b033b5bb5c9ea82048ed5dd39b6003af3b315.jpg"/></a><a href="http://health.zdface.com/nxjk/nxjkbk/2016-06-09/138992.shtml" mon="ct=0&amp;c=healthnews&amp;pn=3&a=9"  class="txt" target="_blank">孕妇妊娠纹修复的4个方法</a>
</div>
</div>
</div>
</div>
</div>
</div><div class="l-right-col" alog-group="log-lady-right">
<div class="mod" id="lady-aside-qinggan">
<div class="hd line">
<h3><a href="http://huati.news.baidu.com/n?cmd=12&class=topic&tag=%D0%C7%D7%F9" target="_blank">星座</a></h3>
<a href="http://huati.news.baidu.com/n?cmd=12&class=topic&tag=%D0%C7%D7%F9" class="more" target="_blank">更多</a>
</div>
<div class="bd">
<div class="topic clearfix">
<div class="topic-pic">
<a href="http://astro.sina.com.cn/v/ss/2016-06-10/doc-ifxsvenv6951993.shtml" mon="ct=0&amp;a=27&amp;c=healthnews&a=12&pn=0" target="_blank">
<img r_src="http://t12.baidu.com/it/u=http://n.sinaimg.cn/astro/transform/20160608/gHBL-fxsvenv6951797.jpg&fm=36" class="mil"/>
</a>
</div>
<div class="topic-txt">
<h4 style="height: 64px;"><a href="http://astro.sina.com.cn/v/ss/2016-06-10/doc-ifxsvenv6951993.shtml" mon="ct=0&amp;a=27&amp;c=healthnews&a=9&pn=0" target="_blank">12星座男的喜新厌旧指数有多高(组图)</a></h4><a href="http://astro.sina.com.cn/v/ss/2016-06-10/doc-ifxsvenv6951993.shtml" class="detail" target="_blank">[详细]</a>
</div>
</div>
</div>
</div>
<div class="mod tbox" id="lady-aside-topic" style="padding-top: 0;">
<div class="bd">
<ul class="ulist "  >
<li><a href="http://astro.sina.com.cn/xl/hl/2016-06-10/doc-ifxsvenx3338348.shtml" mon="ct=0&amp;a=28&amp;c=healthnews&pn=1" target="_blank">婚恋心理：男人把你当炮灰的7大原因(图)</a></li>
<li><a href="http://astro.sina.com.cn/v/ss/2016-06-10/doc-ifxsvenx3393440.shtml" mon="ct=0&amp;a=28&amp;c=healthnews&pn=2" target="_blank">宝宝有小情绪：12星座男吃醋变啥样(组图)</a></li>
<li><a href="http://astro.sina.com.cn/t/2016-06-10/doc-ifxszkzy4964697.shtml" mon="ct=0&amp;a=28&amp;c=healthnews&pn=3" target="_blank">两性测试：生了孩子你会打几折(图)</a></li>
<li><a href="http://astro.sina.com.cn/v/ss/2016-06-10/doc-ifxsvenx3374486.shtml" mon="ct=0&amp;a=28&amp;c=healthnews&pn=4" target="_blank">露馅：啥星座热恋前后差别吓坏宝宝(组图)</a></li>
<li><a href="http://astro.sina.com.cn/t/2016-06-10/doc-ifxszmaa1741314.shtml" mon="ct=0&amp;a=28&amp;c=healthnews&pn=5" target="_blank">个性测试：啥表现让你的异性缘减分(图)</a></li>
<li><a href="http://astro.sina.com.cn/t/aq/2016-06-10/doc-ifxszkzy4962785.shtml" mon="ct=0&amp;a=28&amp;c=healthnews&pn=6" target="_blank">爱情测试：你需要几只爱情备胎(图)</a></li>
<li><a href="http://astro.sina.com.cn/v/ss/2016-06-10/doc-ifxsvenx3227570.shtml" mon="ct=0&amp;a=28&amp;c=healthnews&pn=7" target="_blank">星座真心话：老司机魔羯总撩我怎么破(图)</a></li>
<li><a href="http://astro.sina.com.cn/v/ss/2016-06-10/doc-ifxsvenv6465081.shtml" mon="ct=0&amp;a=28&amp;c=healthnews&pn=8" target="_blank">星座真心话：双鱼默许魔羯撩妹玩暧昧(图)</a></li>
</ul>
</div>
</div>
</div>
</div><a name="healthpicwall" class="focustop-anchor"></a>
<div class="column clearfix" alog-group=log-lady-picwall>
<div class="mod pic-wall" id="women-picwall">
<div class="bd">
<div class="image-list">
<div class="image-list-wrapper">
<div class="image-list-item">
<a href="http://ent.ifeng.com/a/20160609/42632727_0.shtml?_zbs_baidu_news" title="沈梦辰短裙秀嫩腿" target="_blank" mon="c=healthnews&amp;ct=0&amp;col=21&amp;pn=1&a=12"><img r_src="http://d.hiphotos.baidu.com/news/pic/item/d1a20cf431adcbefe5259330a4af2edda3cc9ff7.jpg"/></a><a href="http://ent.ifeng.com/a/20160609/42632727_0.shtml?_zbs_baidu_news" mon="c=healthnews&amp;ct=0&amp;col=21&amp;pn=1&a=9"  class="txt" target="_blank">沈梦辰短裙秀嫩腿</a>
</div>
<div class="image-list-item">
<a href="http://fashion.ifeng.com/a/20160609/40165142_0.shtml?_zbs_baidu_news" title="当红“健身少女”秀一字马" target="_blank" mon="c=healthnews&amp;ct=0&amp;col=21&amp;pn=2&a=12"><img r_src="http://g.hiphotos.baidu.com/news/pic/item/c9fcc3cec3fdfc037e9e0e8edc3f8794a4c22626.jpg"/></a><a href="http://fashion.ifeng.com/a/20160609/40165142_0.shtml?_zbs_baidu_news" mon="c=healthnews&amp;ct=0&amp;col=21&amp;pn=2&a=9"  class="txt" target="_blank">当红“健身少女”秀一字马</a>
</div>
<div class="image-list-item">
<a href="http://ent.jiaoman.cc/tid-23689/" title="五个脱单秘方迅速摆脱单身" target="_blank" mon="c=healthnews&amp;ct=0&amp;col=21&amp;pn=3&a=12"><img r_src="http://d.hiphotos.baidu.com/news/pic/item/a1ec08fa513d26970b06e56b5dfbb2fb4316d82b.jpg"/></a><a href="http://ent.jiaoman.cc/tid-23689/" mon="c=healthnews&amp;ct=0&amp;col=21&amp;pn=3&a=9"  class="txt" target="_blank">五个脱单秘方迅速摆脱单身</a>
</div>
<div class="image-list-item">
<a href="http://d.youth.cn/shrgch/201606/t20160610_8103253.htm" title="杨钰莹包粽子满是文艺气息" target="_blank" mon="c=healthnews&amp;ct=0&amp;col=21&amp;pn=4&a=12"><img r_src="http://b.hiphotos.baidu.com/news/pic/item/50da81cb39dbb6fda8a309100124ab18972b3708.jpg"/></a><a href="http://d.youth.cn/shrgch/201606/t20160610_8103253.htm" mon="c=healthnews&amp;ct=0&amp;col=21&amp;pn=4&a=9"  class="txt" target="_blank">杨钰莹包粽子满是文艺气息</a>
</div>
<div class="image-list-item">
<a href="http://ent.aili.com/1475/2735394.html" title="好丈夫!李咏穿背心变煮夫" target="_blank" mon="c=healthnews&amp;ct=0&amp;col=21&amp;pn=5&a=12"><img r_src="http://d.hiphotos.baidu.com/news/pic/item/f3d3572c11dfa9eccd19b9216ad0f703918fc1d5.jpg"/></a><a href="http://ent.aili.com/1475/2735394.html" mon="c=healthnews&amp;ct=0&amp;col=21&amp;pn=5&a=9"  class="txt" target="_blank">好丈夫!李咏穿背心变煮夫</a>
</div>
</div>
</div>
</div>
</div>
</div>
<a name="socialnews" class="focustop-anchor"></a>
<div class="mod-social column clearfix" id="shehui">
<div class="column-title-home" alog-group=log-social-title>
<div class="column-title-border">
<h2><a href="http://shehui.news.baidu.com/" target="_blank">社会</a><span class="cname">Society</span></h2>
<div class="sub-class">
<a href="http://shehui.news.baidu.com/n?cmd=1&class=zqsk" target="_blank" style="background: none; padding-right: 0; margin-right: 0;">真情时刻</a>
</div>
<span class="more"><a href="http://shehui.news.baidu.com/" target="_blank">更多</a></span>
</div>
</div>
<div class="l-left-col col-mod" alog-group=log-social-left>
<ul class="ulist focuslistnews">
<li class="bold-item">
<span class="dot"></span>
<a href="http://www.cankaoxiaoxi.com/roll10/20160610/1187102.shtml" mon="ct=0&amp;a=2&amp;c=socianews&pn=1" target="_blank">女大学生诉生父索抚养费败诉 法院：自己赚去</a></li>
<li>
<a href="http://www.cankaoxiaoxi.com/roll10/20160610/1187098.shtml" mon="ct=0&amp;a=2&amp;c=socianews&pn=2" target="_blank">教师高考前去世 学生用“最后一课”点烛光祭奠</a></li>
<li>
<a href="http://shehui.rmzxb.com.cn/c/2016-06-10/860534.shtml" mon="ct=0&amp;a=2&amp;c=socianews&pn=3" target="_blank">街头汽车被贴“高仿罚单” 律师称违反广告法</a></li>
<li>
<a href="http://www.cankaoxiaoxi.com/roll10/20160610/1187112.shtml" mon="ct=0&amp;a=2&amp;c=socianews&pn=4" target="_blank">媒体：大学生“滚床单包粽子”是亵渎传统文化</a></li>
<li>
<a href="http://www.qiwen007.com/bdn/bsh/30396.html" mon="ct=0&amp;a=2&amp;c=socianews&pn=5" target="_blank">世界六大著名“鬼屋”接受预定 你敢住吗？</a></li>
<li>
<a href="http://bbs.xinjunshi.com/a/20160610/310058.html?baidu" mon="ct=0&amp;a=2&amp;c=socianews&pn=6" target="_blank">25岁高富帅变卖家产带一家四口环游世界</a></li>
</ul>
<ul class="ulist focuslistnews" >
<li class="bold-item">
<span class="dot"></span>
<a href="http://shehui.rmzxb.com.cn/c/2016-06-10/860557.shtml" mon="ct=0&amp;a=2&amp;c=socianews&pn=7" target="_blank">小伙被蜈蚣咬伤 模仿白娘子“解毒”反中毒</a></li>
<li>
<a href="http://bbs.miercn.com/bdnews/201606/740500.html" mon="ct=0&amp;a=2&amp;c=socianews&pn=8" target="_blank">男子凌晨带“充气娃娃”进影院 并为其买票</a></li>
<li>
<a href="http://www.qiwen007.com/bdn/bsh/30395.html" mon="ct=0&amp;a=2&amp;c=socianews&pn=9" target="_blank">山东两车相撞黑衣女司机10秒换车牌 路人惊呆</a></li>
<li>
<a href="http://news.ubetween.com/2016/society_0610/238907.html" mon="ct=0&amp;a=2&amp;c=socianews&pn=10" target="_blank">蜂后带队逃出蜂房 养蜂大爷无奈四处“赎蜂”</a></li>
<li>
<a href="http://shehui.rmzxb.com.cn/c/2016-06-10/860553.shtml" mon="ct=0&amp;a=2&amp;c=socianews&pn=11" target="_blank">“洋妞”跟社区大妈学包粽子 最快1分钟1个</a></li>
<li>
<a href="http://finance.huanqiu.com/cjrd/2016-06/9025993.html" mon="ct=0&amp;a=2&amp;c=socianews&pn=12" target="_blank">文玩核桃价格暴跌从数千到几十 盲目种植引危机</a></li>
</ul>
</div>
<div class="l-middle-col" alog-group=log-social-middle>
<div class="mod">
<div class="hd">
<h3>社会图片</h3>
</div>
<div class="bd">
<div class="imagearea">
<div class="imagearea-top">
<div class="image-mask-item">
<a href="http://hot.qianyan001.com/20160609/198899_1.html" target="_blank" class="item-image" mon="ct=0&amp;c=socianews&amp;pn=1&a=12" title="美女回国等他出考场表白"><img r_src="http://g.hiphotos.baidu.com/news/pic/item/7a899e510fb30f2463ce6735c095d143ad4b03ab.jpg" alt="美女回国等他出考场表白"/></a>
<a href="http://hot.qianyan001.com/20160609/198899_1.html" target="_blank" class="item-title" title="美女回国等他出考场表白" mon="ct=0&amp;c=socianews&amp;pn=1&a=9">美女回国等他出考场表白</a>
</div>
</div>
<div class="imagearea-bottom">
<div class="image-list-item">
<a href="http://bbs.miercn.com/bdnews/201606/740476.html" title="富二代炫富不算啥 一代更夸张" target="_blank" mon="ct=0&amp;c=socianews&amp;pn=2&a=12"><img r_src="http://b.hiphotos.baidu.com/news/pic/item/f7246b600c3387446f30a44a590fd9f9d72aa00b.jpg"/></a><a href="http://bbs.miercn.com/bdnews/201606/740476.html" mon="ct=0&amp;c=socianews&amp;pn=2&a=9"  class="txt" target="_blank">富二代炫富不算啥 一代更夸张</a>
</div>
<div class="image-list-item">
<a href="http://www.51junshi.com/bdnews/thread_224735_1.html" title="大学生穿古装送环卫粽子" target="_blank" mon="ct=0&amp;c=socianews&amp;pn=3&a=12"><img r_src="http://f.hiphotos.baidu.com/news/pic/item/359b033b5bb5c9ea84a388d5dd39b6003af3b3b0.jpg"/></a><a href="http://www.51junshi.com/bdnews/thread_224735_1.html" mon="ct=0&amp;c=socianews&amp;pn=3&a=9"  class="txt" target="_blank">大学生穿古装送环卫粽子</a>
</div>
</div>
</div>
</div>
</div>
</div><div class="l-right-col" alog-group="log-social-right">
<div class="mod tbox" id="social-tophit">
<div class="hd"><h3>社会新闻排行榜</h3></div>
<div class="bd">
<ul class="ulist "  >
<li><a href="http://m6.chinaiiss.com/html/20166/9/a83c31.html" mon="c=socianews&amp;ct=0&amp;a=27&amp;col=7&pn=1" target="_blank">四川“脑瘫”女生优先进考场：希望能做一名翻译</a></li>
<li><a href="http://www.360640.com/tushuo/201606099300.html" mon="c=socianews&amp;ct=0&amp;a=27&amp;col=7&pn=2" target="_blank">女子梦游中坠楼 被广告雨棚接住安然无恙</a></li>
<li><a href="http://m6.chinaiiss.com/html/20166/9/a83c33.html" mon="c=socianews&amp;ct=0&amp;a=27&amp;col=7&pn=3" target="_blank">佛山警察对天鸣枪示警 流弹致死五楼一男子</a></li>
<li><a href="http://www.360640.com/tushuo/201606099304.html" mon="c=socianews&amp;ct=0&amp;a=27&amp;col=7&pn=4" target="_blank">男子偷走锦鲤卖不出 煮火锅一口吃掉“3万元”</a></li>
<li><a href="http://bbs.xinjunshi.com/a/20160610/310058.html?baidu" mon="c=socianews&amp;ct=0&amp;a=27&amp;col=7&pn=5" target="_blank">25岁高富帅变卖家产带一家四口环游世界</a></li>
<li><a href="http://m6.chinaiiss.com/html/20166/9/a83c32.html" mon="c=socianews&amp;ct=0&amp;a=27&amp;col=7&pn=6" target="_blank">女子隆胸后搭公交遇急刹 左胸被撞一分为二</a></li>
</ul>
</div>
</div>
<div class="mod" id="social-video">
<div class="hd"><h3>社会视频</h3></div>
<div class="bd">
<div class="vlist-wrapper">
<ul class="vlist clearfix " >
<li><a href="http://v.china.com.cn/news/2016-06/11/content_38641613.htm" mon="c=socianews&amp;ct=0&amp;col=20&amp;a=28&pn=1" class="video-img" title="" target="_blank"><img r_src="http://t3.baidu.com/it/u=3849224101,2962391027&fm=20"/><span class="play"></span></a><a href="http://v.china.com.cn/news/2016-06/11/content_38641613.htm" mon="c=socianews&amp;ct=0&amp;col=20&amp;a=28&pn=1" class="video-txt" target="_blank">车祸后女司机10秒换</a></li>
<li><a href="http://v.china.com.cn/news/2016-06/11/content_38641607.htm" mon="c=socianews&amp;ct=0&amp;col=20&amp;a=28&pn=2" class="video-img" title="" target="_blank"><img r_src="http://t3.baidu.com/it/u=3407751023,2268114398&fm=20"/><span class="play"></span></a><a href="http://v.china.com.cn/news/2016-06/11/content_38641607.htm" mon="c=socianews&amp;ct=0&amp;col=20&amp;a=28&pn=2" class="video-txt" target="_blank">男子被蜈蚣咬伤 模</a></li>
</ul>
</div>
</div>
</div>
</div>
</div><a name="milnews" class="focustop-anchor"></a>
<div class="column clearfix" id="junshi">
<div class="column-title-home" alog-group=log-mil-title>
<div class="column-title-border">
<h2><a href="http://mil.news.baidu.com/" target="_blank">军事</a><span class="cname">Military</span></h2>
<div class="sub-class">
<a href="http://mil.news.baidu.com/n?cmd=1&class=zhongguojq" target="_blank" >中国军情</a>
<a href="http://mil.news.baidu.com/n?cmd=1&class=taihaijj" target="_blank" >台海聚焦</a>
<a href="http://mil.news.baidu.com/n?cmd=1&class=guojijq" target="_blank" style="background: none; padding-right: 0; margin-right: 0;">国际军情</a>
</div>
<span class="more"><a href="http://mil.news.baidu.com/" target="_blank">更多</a></span>
</div>
</div>
<div class="l-left-col col-mod" alog-group=log-mil-left>
<ul class="ulist focuslistnews">
<li class="bold-item">
<span class="dot"></span>
<a href="http://bbs.miercn.com/bdnews/201606/740453.html" mon="ct=0&amp;a=2&amp;c=mil&pn=1" target="_blank">中国国防部回应中俄军舰进钓岛：他国无权指责</a></li>
<li>
<a href="http://news.ifeng.com/a/20160609/48948412_0.shtml?_zbs_baidu_news" mon="ct=0&amp;a=2&amp;c=mil&pn=2" target="_blank">北约在波兰搞3万人大军演 称东部面临混合战争</a></li>
<li>
<a href="http://bbs.miercn.com/bdnews/201606/740430.html" mon="ct=0&amp;a=2&amp;c=mil&pn=3" target="_blank">美报告称中国逆转日本东海优势 日向美表达忧虑</a></li>
<li>
<a href="http://hot.qianyan001.com/20160609/198895_1.html" mon="ct=0&amp;a=2&amp;c=mil&pn=4" target="_blank">美国称法国防长鼓吹欧洲巡航南海 美国很高兴</a></li>
<li>
<a href="http://www.51junshi.com/bdnews/thread_224727_1.html" mon="ct=0&amp;a=2&amp;c=mil&pn=5" target="_blank">日本称中国军舰首次巡航钓鱼岛 与美国合作监视</a></li>
<li>
<a href="http://bbs.xinjunshi.com/a/20160610/310026.html?baidu" mon="ct=0&amp;a=2&amp;c=mil&pn=6" target="_blank">中俄4艘军舰同时在钓鱼岛附近与日舰对峙</a></li>
</ul>
<ul class="ulist focuslistnews" >
<li class="bold-item">
<span class="dot"></span>
<a href="http://news.ifeng.com/a/20160609/48948375_0.shtml?_zbs_baidu_news" mon="ct=0&amp;a=2&amp;c=mil&pn=7" target="_blank">中国在美济礁建南沙最高灯塔 灯光射程20多海里</a></li>
<li>
<a href="http://www.51junshi.com/bdnews/thread_224728_1.html" mon="ct=0&amp;a=2&amp;c=mil&pn=8" target="_blank">俄罗斯无法复制或掌握中国新一代高铁技术</a></li>
<li>
<a href="http://hot.qianyan001.com/20160609/198893_1.html" mon="ct=0&amp;a=2&amp;c=mil&pn=9" target="_blank">日防相称中方拦截美机属危险行为 或致不测事态</a></li>
<li>
<a href="http://m6.chinaiiss.com/html/20166/9/a83c2c.html" mon="ct=0&amp;a=2&amp;c=mil&pn=10" target="_blank">美军升级版“艾布拉姆斯”坦克揭秘</a></li>
<li>
<a href="http://bbs.xinjunshi.com/a/20160610/310041.html?baidu" mon="ct=0&amp;a=2&amp;c=mil&pn=11" target="_blank">中印开展核潜艇竞赛 双方都噪音大被发现</a></li>
<li>
<a href="http://www.cankaoxiaoxi.com/world/20160611/1187706.shtml" mon="ct=0&amp;a=2&amp;c=mil&pn=12" target="_blank">外媒:俄未对驶入钓鱼岛作出回应 日忧局势更复杂</a></li>
</ul>
</div>
<div class="l-middle-col" alog-group=log-mil-middle>
<div class="mod">
<div class="hd">
<h3>军事图片</h3>
</div>
<div class="bd">
<div class="imagearea">
<div class="imagearea-top">
<div class="image-mask-item">
<a href="http://bbs.miercn.com/bdnews/201606/740455.html" target="_blank" class="item-image" mon="ct=0&amp;c=mil&amp;pn=1&a=12" title="最美以色列女兵"><img r_src="http://b.hiphotos.baidu.com/news/pic/item/9213b07eca806538973c54259fdda144ad348236.jpg" alt="最美以色列女兵"/></a>
<a href="http://bbs.miercn.com/bdnews/201606/740455.html" target="_blank" class="item-title" title="最美以色列女兵" mon="ct=0&amp;c=mil&amp;pn=1&a=9">最美以色列女兵</a>
</div>
</div>
<div class="imagearea-bottom">
<div class="image-list-item">
<a href="http://bbs.miercn.com/bdnews/201606/740457.html" title="苏联激光坦克能晃瞎敌军" target="_blank" mon="ct=0&amp;c=mil&amp;pn=2&a=12"><img r_src="http://g.hiphotos.baidu.com/news/pic/item/4034970a304e251f7c9317ceaf86c9177f3e53a4.jpg"/></a><a href="http://bbs.miercn.com/bdnews/201606/740457.html" mon="ct=0&amp;c=mil&amp;pn=2&a=9"  class="txt" target="_blank">苏联激光坦克能晃瞎敌军</a>
</div>
<div class="image-list-item">
<a href="http://hot.qianyan001.com/20160609/198897_1.html" title="美在南海纪念中途岛海战" target="_blank" mon="ct=0&amp;c=mil&amp;pn=3&a=12"><img r_src="http://h.hiphotos.baidu.com/news/pic/item/91ef76c6a7efce1b22493bfca751f3deb48f65a2.jpg"/></a><a href="http://hot.qianyan001.com/20160609/198897_1.html" mon="ct=0&amp;c=mil&amp;pn=3&a=9"  class="txt" target="_blank">美在南海纪念中途岛海战</a>
</div>
</div>
</div>
</div>
</div>
</div><div class="l-right-col" alog-group="log-mil-right">
<div class="mod tbox" id="mil-aside-video">
<div class="hd"><h3>热门点击</h3></div>
<div class="bd">
<ol class="olist " id="">
<li><span class="listnum num1"></span><a href="http://bbs.miercn.com/bdnews/201606/740450.html" target="_blank" title="美称中国巨型半潜船下水 正打造海上支援平台" mon="ct=0&amp;a=2&amp;c=mil&pn=1">美称中国巨型半潜船下水 正打造海上支援平台</a></li>
<li><span class="listnum num2"></span><a href="http://hot.qianyan001.com/20160609/198892_1.html" target="_blank" title="美海军最高官员南海登航母 妄称要保障南海和平" mon="ct=0&amp;a=2&amp;c=mil&pn=2">美海军最高官员南海登航母 妄称要保障南海和平</a></li>
<li><span class="listnum num3"></span><a href="http://bbs.xinjunshi.com/a/20160610/310027.html?baidu" target="_blank" title="中国正研制时速400公里高铁 可适用于跨国铁路" mon="ct=0&amp;a=2&amp;c=mil&pn=3">中国正研制时速400公里高铁 可适用于跨国铁路</a></li>
<li><span class="listnum num4"></span><a href="http://m6.chinaiiss.com/html/20166/9/a83c2e.html" target="_blank" title="俄“贝加尔”问世，步兵战车火力发展剑指何方？" mon="ct=0&amp;a=2&amp;c=mil&pn=4">俄“贝加尔”问世，步兵战车火力发展剑指何方？</a></li>
<li><span class="listnum num5"></span><a href="http://www.51junshi.com/bdnews/thread_224730_1.html" target="_blank" title="日本放言帮东南亚在南海抗衡中国：为配合美国" mon="ct=0&amp;a=2&amp;c=mil&pn=5">日本放言帮东南亚在南海抗衡中国：为配合美国</a></li>
</ol>
</div>
</div>
<div class="mod tbox" id="mil-aside-jq">
<div class="hd line"><h3><a href="http://mil.news.baidu.com/n?cmd=1&class=zhongguojq&pn=1" target="_blank">中国军情</a></h3><a href="http://mil.news.baidu.com/n?cmd=1&class=zhongguojq&pn=1" class="more" target="_blank">更多</a></div>
<div class="bd">
<ul class="ulist "  >
<li><a href="http://news.youth.cn/js/201606/t20160611_8106498.htm" mon="ct=0&amp;a=28&amp;c=mil&pn=1" target="_blank">解放军潜艇首次齐射四枚导弹 艇身猛烈震动</a></li>
<li><a href="http://v.cqnews.net/first/2016-06/11/content_37172356.htm" mon="ct=0&amp;a=28&amp;c=mil&pn=2" target="_blank">霸气！中国战舰驶入钓鱼岛附近海域 他国无权说三..</a></li>
<li><a href="http://mil.news.sina.com.cn/jssd/2016-06-10/doc-ifxszkzy5042962.shtml" mon="ct=0&amp;a=28&amp;c=mil&pn=3" target="_blank">深度：解析俄罗斯三艘军舰为何会出现在钓鱼岛海域</a></li>
<li><a href="http://news.online.sh.cn/news/gb/content/2016-06/11/content_7892864.htm" mon="ct=0&amp;a=28&amp;c=mil&pn=4" target="_blank">中美最强神盾舰舱内设施谁更好 052D舰毫不逊色 </a></li>
<li><a href="http://news.cri.cn/20160610/67428725-4c4e-42b2-697a-c0c5cfaaec14.html" mon="ct=0&amp;a=28&amp;c=mil&pn=5" target="_blank">“蓝色突击-2016”中泰联训中方官兵返程回国(组图)</a></li>
</ul>
</div>
</div>
</div>
</div><a name="imagenews" class="focustop-anchor"></a>
<div class="column clearfix" id="tupianxinwen">
<div class="column-title-home" >
<div class="column-title-border">
<h2><a style="text-decoration:none;">图片新闻</a><span class="cname">Photos</span></h2>
</div>
</div>
<div class="mod" id="image-list-news" alog-group="log-photos-all">
<div class="bd">
<div class="image-list">
<div class="image-list-wrapper">
<div class="image-list-item">
<a href="http://www.51junshi.com/bdnews/thread_224732_1.html" title="《微微》郑爽杨洋快吻上" target="_blank" mon="c=picnews&amp;ct=0&amp;col=24&amp;pn=1&a=12"><img r_src="http://g.hiphotos.baidu.com/news/pic/item/b90e7bec54e736d1b406673e93504fc2d56269eb.jpg"/></a><a href="http://www.51junshi.com/bdnews/thread_224732_1.html" mon="c=picnews&amp;ct=0&amp;col=24&amp;pn=1&a=9"  class="txt" target="_blank">《微微》郑爽杨洋快吻上</a>
</div>
<div class="image-list-item">
<a href="http://bbs.miercn.com/bdnews/201606/740477.html" title="高富帅变卖家产环游世界" target="_blank" mon="c=picnews&amp;ct=0&amp;col=24&amp;pn=2&a=12"><img r_src="http://a.hiphotos.baidu.com/news/pic/item/b90e7bec54e736d1b419673e93504fc2d56269fa.jpg"/></a><a href="http://bbs.miercn.com/bdnews/201606/740477.html" mon="c=picnews&amp;ct=0&amp;col=24&amp;pn=2&a=9"  class="txt" target="_blank">高富帅变卖家产环游世界</a>
</div>
<div class="image-list-item">
<a href="http://travel.ifeng.com/a/20160609/41620981_0.shtml?_zbs_baidu_news" title="小长假国内十大绝美旅行地" target="_blank" mon="c=picnews&amp;ct=0&amp;col=24&amp;pn=3&a=12"><img r_src="http://g.hiphotos.baidu.com/news/pic/item/6d81800a19d8bc3e775fecfc8a8ba61ea8d345b5.jpg"/></a><a href="http://travel.ifeng.com/a/20160609/41620981_0.shtml?_zbs_baidu_news" mon="c=picnews&amp;ct=0&amp;col=24&amp;pn=3&a=9"  class="txt" target="_blank">小长假国内十大绝美旅行地</a>
</div>
<div class="image-list-item">
<a href="http://hot.qianyan001.com/20160608/198640_1.html" title="战斗吧男神井柏然喂猪" target="_blank" mon="c=picnews&amp;ct=0&amp;col=24&amp;pn=4&a=12"><img r_src="http://b.hiphotos.baidu.com/news/pic/item/8ad4b31c8701a18bb373ff7a962f07082838fe6f.jpg"/></a><a href="http://hot.qianyan001.com/20160608/198640_1.html" mon="c=picnews&amp;ct=0&amp;col=24&amp;pn=4&a=9"  class="txt" target="_blank">战斗吧男神井柏然喂猪</a>
</div>
<div class="image-list-item">
<a href="http://bbs.xinjunshi.com/a/20160610/310055.html?baidu" title="球星太太团晒奢靡照比美" target="_blank" mon="c=picnews&amp;ct=0&amp;col=24&amp;pn=5&a=12"><img r_src="http://a.hiphotos.baidu.com/news/pic/item/0dd7912397dda14428e78684bab7d0a20cf4861e.jpg"/></a><a href="http://bbs.xinjunshi.com/a/20160610/310055.html?baidu" mon="c=picnews&amp;ct=0&amp;col=24&amp;pn=5&a=9"  class="txt" target="_blank">球星太太团晒奢靡照比美</a>
</div>
<div class="image-list-item">
<a href="http://hot.qianyan001.com/20160609/198900_1.html" title="美国蓝眼萌宠走红" target="_blank" mon="c=picnews&amp;ct=0&amp;col=24&amp;pn=6&a=12"><img r_src="http://e.hiphotos.baidu.com/news/pic/item/0823dd54564e92586d4f53d89482d158ccbf4e89.jpg"/></a><a href="http://hot.qianyan001.com/20160609/198900_1.html" mon="c=picnews&amp;ct=0&amp;col=24&amp;pn=6&a=9"  class="txt" target="_blank">美国蓝眼萌宠走红</a>
</div>
<div class="image-list-item">
<a href="http://emotion.aili.com/1822/2735373.html" title="迪斯尼里的公主竟是一小哥" target="_blank" mon="c=picnews&amp;ct=0&amp;col=24&amp;pn=7&a=12"><img r_src="http://h.hiphotos.baidu.com/news/pic/item/d439b6003af33a879c9cd52cce5c10385343b517.jpg"/></a><a href="http://emotion.aili.com/1822/2735373.html" mon="c=picnews&amp;ct=0&amp;col=24&amp;pn=7&a=9"  class="txt" target="_blank">迪斯尼里的公主竟是一小哥</a>
</div>
<div class="image-list-item">
<a href="http://www.qiwen007.com/bdn/bts/30405.html" title="古代女人竟倒挂避孕？" target="_blank" mon="c=picnews&amp;ct=0&amp;col=24&amp;pn=8&a=12"><img r_src="http://h.hiphotos.baidu.com/news/pic/item/a8ec8a13632762d0b4467089a8ec08fa513dc688.jpg"/></a><a href="http://www.qiwen007.com/bdn/bts/30405.html" mon="c=picnews&amp;ct=0&amp;col=24&amp;pn=8&a=9"  class="txt" target="_blank">古代女人竟倒挂避孕？</a>
</div>
<div class="image-list-item">
<a href="http://m6.chinaiiss.com/html/20166/9/a83c3e.html" title="商丘9岁女娃参加高考" target="_blank" mon="c=picnews&amp;ct=0&amp;col=24&amp;pn=9&a=12"><img r_src="http://f.hiphotos.baidu.com/news/pic/item/f703738da9773912ac845157f0198618367ae262.jpg"/></a><a href="http://m6.chinaiiss.com/html/20166/9/a83c3e.html" mon="c=picnews&amp;ct=0&amp;col=24&amp;pn=9&a=9"  class="txt" target="_blank">商丘9岁女娃参加高考</a>
</div>
<div class="image-list-item">
<a href="http://emotion.aili.com/1822/2735372.html" title="2米高女子高人一等的生活" target="_blank" mon="c=picnews&amp;ct=0&amp;col=24&amp;pn=10&a=12"><img r_src="http://e.hiphotos.baidu.com/news/pic/item/35a85edf8db1cb13f37ed425d554564e92584bf5.jpg"/></a><a href="http://emotion.aili.com/1822/2735372.html" mon="c=picnews&amp;ct=0&amp;col=24&amp;pn=10&a=9"  class="txt" target="_blank">2米高女子高人一等的生活</a>
</div>
</div>
</div>
</div>
</div>
</div><ul id="goTop" class="mod-sidebar">
<li class="item qr-code button-rotate" data-text="二维码">
<a href="javascript:;">二维码</a>
</li>
<li class="qr-code-container clearfix">
<span class="item-container left">
<span class="img-container">
<img src="http://ns2.bdstatic.com/static/fisp_static/common/img/sidebar/1014720a_385933c.png"/>
</span>
</span>
<span class="item-container right">
<p class="title">百度新闻客户端</p>
<ul>
<li>扫描二维码下载</li>
<li>随时随地收看更多新闻</li>
</ul>
</span>
</li>
<li class="item favorite button-rotate" data-text="收藏本站">
<a href="javascript:;">收藏本站</a>
</li>
<li class="item hotword button-rotate" data-text="热词">
<a href="http://news.baidu.com/n?cmd=1&class=reci">热词</a>
</li>
<li class="item media button-rotate" data-text="传媒">
<a href="http://media.baidu.com">传媒</a>
</li>
<li class="item search button-rotate" data-text="搜索">
<a href="javascript:;" id="search-btn">搜索</a>
</li>
<li class="item feedback button-rotate" id="feedbackbtn" data-text="用户反馈">
<a href="javascript:;">用户反馈</a>
</li>
<li class="item gotop">
<a id="gotop_btn" onclick="window.scroll(0, 0)"></a>
</li>
<li class="searchbox">
<span class="close-btn"></span>
<form target="_blank" action="http://news.baidu.com/ns" name="sbaidu" method="get">
<input type="hidden" name="tn" value="news"/>
<input type="hidden" name="from" value="news"/>
<input type="hidden" name="cl" value="2"/>
<input type="hidden" name="rn" value="20"/>
<input type="hidden" name="ct" value="1"/>
<input class="searchInput" type="text" value="输入搜索词" name="word" autocomplete="off" tabindex="1" maxlength="100"/>
<button class="submit-btn" type="submit">搜索</button>
</form>
</li>
<li class="close-tip">收起<i class="arrow"></i></li>
</ul>
<style>
#goTop{
    position: fixed;
    width: 54px;
    left: 50%;
    margin-left: 502px;
    bottom: 20px;
    _position: absolute;
    _top: expression(eval(document.documentElement.scrollTop || document.body.scrollTop)+eval(document.documentElement.clientHeight || document.body.clientHeight)-361+'px');
    z-index:998;
}
</style>

</div>

<div id="footerwrapper">
<div class="bottombar" alog-group="log-footer-bottombar" alog-alias="hunter-start-bottombar">
<div class="bottombar-inner clearfix">
<div class="bot-left">
<div class="title-container">
<i class="icon">&nbsp;</i>
<h4>更多精彩内容</h4>
</div>
<div class="qrcode-container clearfix">
<div class="img-container">
<img src="http://ns2.bdstatic.com/static/fisp_static/common/img/footer/1014720b_120b2c9.png">
</div>
<div class="link-container">
<a href="http://downpack.baidu.com/baidunews_AndroidPhone_1014720b.apk" target="_blank">Android版下载</a>
<a href="https://itunes.apple.com/cn/app/id482820737" target="_blank">iPhone版下载</a>
</div>
<p class="info">扫描二维码, 收看更多新闻</p>
</div>
</div>
<div class="bot-center">
<div class="title-container">
<i class="icon">&nbsp;</i>
<h4>相关功能</h4>
</div>
<ul class="item-container clearfix">
<li class="item item-01"><a href="http://www.baidu.com/search/rss.html" target="_blank">新闻订阅</a></li>
<li class="item item-02"><a href="http://news.baidu.com/n?bypass=lamp&m=pagesother&v=newsgx" target="_blank">个性化新闻</a></li>
<li class="item item-03"><a href="http://newsalert.baidu.com/na?cmd=0" target="_blank">邮件新闻订阅</a></li>
<li class="item item-04"><a href="http://news.baidu.com/n?cmd=6&loc=0&name=%B1%B1%BE%A9" target="_blank">地区新闻</a></li>
<li class="item item-05"><a href="http://news.baidu.com/history.html" target="_blank">历史新闻</a></li>
<li class="item item-06"><a href="http://news.baidu.com/newscode.html" target="_blank">新闻免费代码</a></li>
</ul>
</div>
<div class="bot-right">
<div class="title-container">
<i class="icon">&nbsp;</i>
<h4>百度新闻独家出品</h4>
</div>
<ol>
<li>1. 新闻由机器选取每5分钟自动更新</li>
<li>2. 百度新闻搜索源于互联网新闻网站和频道，系统自动分类排序</li>
<li>3. 百度不刊登或转载任何完整的新闻内容</li>
</ol>
</div>
</div>
</div>
<div style="font-size:12px;text-align:center;">
责任编辑：胡彦BN098 刘石娟BN068 谢建BN085 李芳雨BN091 储信艳BN087 焦碧碧BN084 禤聪BN095 王鑫BN060 崔超BN071</div>
<div id="footer" alog-group="log-footer" alog-alias="hunter-start-footer">
<a href="http://tousu.baidu.com/news/add">投诉中心</a>
<span>京公网安备11000002000001号</span>
<a href="http://news.baidu.com/licence.html">互联网新闻信息服务许可</a>
<span>&copy;2016Baidu</span>
<a class="cy" href="http://www.baidu.com/duty/">使用百度前必读</a>
<a target="_blank" class="img-link img-link1" href="http://net.china.cn/chinese/index.htm">
</a>
<a target="_blank" class="img-link img-link2" href="http://www.bj.cyberpolice.cn/index.htm">
</a>
<a target="_blank" class="img-link img-link3" href="http://www.bjjubao.org/">
</a>
</div>
</div>
<style>
.focustop-anchor{
    height:0;
    line-height:0;
    font-size:0;
}
#headerwrapper{
    width:100%;
}
</style>
</body><script type="text/javascript" src="http://ns0.bdstatic.com/static/fisp_static/common/lib/mod_b818356.js"></script>
<script type="text/javascript">require.resourceMap({"res":{"common:widget/lib/tangram/base/base.js":{"url":"http://ns0.bdstatic.com/static/common/widget/lib/tangram/base/base_e37cc01.js","pkg":"common:p0"},"common:widget/lib/magic/magic.js":{"url":"http://ns0.bdstatic.com/static/common/widget/lib/magic/magic_56edf31.js","pkg":"common:p0"},"common:widget/lib/magic/Base/Base.js":{"url":"http://ns0.bdstatic.com/static/common/widget/lib/magic/Base/Base_50a505e.js","pkg":"common:p0","deps":["common:widget/lib/tangram/base/base.js","common:widget/lib/magic/magic.js"]},"common:widget/lib/magic/control/control.js":{"url":"http://ns0.bdstatic.com/static/common/widget/lib/magic/control/control_5c7cfca.js","pkg":"common:p0","deps":["common:widget/lib/tangram/base/base.js","common:widget/lib/magic/magic.js"]},"common:widget/lib/magic/control/Layer/Layer.js":{"url":"http://ns0.bdstatic.com/static/common/widget/lib/magic/control/Layer/Layer_ccd8d01.js","pkg":"common:p0","deps":["common:widget/lib/tangram/base/base.js","common:widget/lib/magic/magic.js","common:widget/lib/magic/Base/Base.js","common:widget/lib/magic/control/control.js"]},"common:widget/lib/magic/Mask/Mask.js":{"url":"http://ns0.bdstatic.com/static/common/widget/lib/magic/Mask/Mask_d1105f9.js","pkg":"common:p0","deps":["common:widget/lib/tangram/base/base.js","common:widget/lib/magic/magic.js","common:widget/lib/magic/control/Layer/Layer.js"]},"common:widget/lib/magic/setup/setup.js":{"url":"http://ns0.bdstatic.com/static/common/widget/lib/magic/setup/setup_8207eff.js","pkg":"common:p0","deps":["common:widget/lib/tangram/base/base.js","common:widget/lib/magic/magic.js"]},"common:widget/lib/magic/_query/_query.js":{"url":"http://ns0.bdstatic.com/static/common/widget/lib/magic/_query/_query_a974d80.js","pkg":"common:p0","deps":["common:widget/lib/tangram/base/base.js","common:widget/lib/magic/magic.js"]},"common:widget/lib/magic/control/Tab/Tab.js":{"url":"http://ns0.bdstatic.com/static/common/widget/lib/magic/control/Tab/Tab_6e3b376.js","pkg":"common:p0","deps":["common:widget/lib/tangram/base/base.js","common:widget/lib/magic/magic.js","common:widget/lib/magic/Base/Base.js","common:widget/lib/magic/control/control.js","common:widget/lib/magic/_query/_query.js"]},"common:widget/lib/magic/setup/tab/tab.js":{"url":"http://ns0.bdstatic.com/static/common/widget/lib/magic/setup/tab/tab_7ca296e.js","pkg":"common:p0","deps":["common:widget/lib/tangram/base/base.js","common:widget/lib/magic/magic.js","common:widget/lib/magic/setup/setup.js","common:widget/lib/magic/control/Tab/Tab.js"]},"common:widget/lib/magic/control/Dialog/Dialog.js":{"url":"http://ns0.bdstatic.com/static/common/widget/lib/magic/control/Dialog/Dialog_c2b9c1a.js","pkg":"common:p0","deps":["common:widget/lib/tangram/base/base.js","common:widget/lib/magic/magic.js","common:widget/lib/magic/control/Layer/Layer.js"]},"common:widget/lib/magic/Background/Background.js":{"url":"http://ns0.bdstatic.com/static/common/widget/lib/magic/Background/Background_353ebd3.js","pkg":"common:p0","deps":["common:widget/lib/tangram/base/base.js","common:widget/lib/magic/magic.js","common:widget/lib/magic/Base/Base.js"]},"common:widget/lib/magic/Dialog/Dialog.js":{"url":"http://ns0.bdstatic.com/static/common/widget/lib/magic/Dialog/Dialog_239df5f.js","pkg":"common:p0","deps":["common:widget/lib/tangram/base/base.js","common:widget/lib/magic/magic.js","common:widget/lib/magic/control/Dialog/Dialog.js","common:widget/lib/magic/Background/Background.js"]},"common:widget/lib/magic/control/Dialog/$mask/$mask.js":{"url":"http://ns0.bdstatic.com/static/common/widget/lib/magic/control/Dialog/$mask/$mask_50466b3.js","pkg":"common:p0","deps":["common:widget/lib/tangram/base/base.js","common:widget/lib/magic/magic.js","common:widget/lib/magic/control/Dialog/Dialog.js","common:widget/lib/magic/Mask/Mask.js"]},"common:widget/ui/jquery/jquery.js":{"url":"http://ns0.bdstatic.com/static/common/widget/ui/jquery/jquery_5d7279d.js","pkg":"common:p1"},"common:widget/ui/jquery/jquery.cookie.js":{"url":"http://ns0.bdstatic.com/static/common/widget/ui/jquery/jquery.cookie_e1f1479.js","pkg":"common:p1"},"common:widget/banner_ad/banner_ad.js":{"url":"http://ns0.bdstatic.com/static/common/widget/banner_ad/banner_ad_5c31727.js","pkg":"common:p1","deps":["common:widget/ui/jquery/jquery.js","common:widget/ui/jquery/jquery.cookie.js"]},"common:widget/banner_ad/banner_ad_data.js":{"url":"http://ns0.bdstatic.com/static/common/widget/banner_ad/banner_ad_data_aff68ed.js","pkg":"common:p1"},"common:widget/dep/jQuery/plugins/jquery.lavalamp.js":{"url":"http://ns0.bdstatic.com/static/common/widget/dep/jQuery/plugins/jquery.lavalamp_5a9954b.js","pkg":"common:p1"},"common:widget/favorite/favorite.js":{"url":"http://ns0.bdstatic.com/static/common/widget/favorite/favorite_629bb5e.js","pkg":"common:p1","deps":["common:widget/ui/jquery/jquery.js","common:widget/ui/jquery/jquery.cookie.js"]},"common:widget/feedback/feedback.js":{"url":"http://ns0.bdstatic.com/static/common/widget/feedback/feedback_616d46e.js","pkg":"common:p1","deps":["common:widget/ui/jquery/jquery.js","common:widget/ui/jquery/jquery.cookie.js"]},"common:widget/fixedpannel/fixedpannel.js":{"url":"http://ns0.bdstatic.com/static/common/widget/fixedpannel/fixedpannel_bf4dc4c.js","pkg":"common:p1","deps":["common:widget/lib/tangram/base/base.js","common:widget/lib/magic/magic.js","common:widget/lib/magic/control/Layer/Layer.js","common:widget/lib/magic/Mask/Mask.js","common:widget/lib/magic/setup/tab/tab.js","common:widget/lib/magic/Dialog/Dialog.js"]},"common:widget/footer/statistics.js":{"url":"http://ns0.bdstatic.com/static/common/widget/footer/statistics_d71c14d.js","pkg":"common:p1","deps":["common:widget/ui/jquery/jquery.js"]},"common:widget/hunter/hunter.js":{"url":"http://ns0.bdstatic.com/static/common/widget/hunter/hunter_2113114.js","pkg":"common:p1"},"common:widget/navbar/navbar.js":{"url":"http://ns0.bdstatic.com/static/common/widget/navbar/navbar_3ad387b.js","pkg":"common:p1","deps":["common:widget/dep/jQuery/plugins/jquery.lavalamp.js","common:widget/ui/jquery/jquery.js"]},"common:widget/searchbox/searchbox.js":{"url":"http://ns0.bdstatic.com/static/common/widget/searchbox/searchbox_4c1f361.js","pkg":"common:p1","deps":["common:widget/lib/tangram/base/base.js"]},"common:widget/searchbox/searchboxActive.js":{"url":"http://ns0.bdstatic.com/static/common/widget/searchbox/searchboxActive_f139a7f.js","pkg":"common:p1","deps":["common:widget/ui/jquery/jquery.js"]},"common:widget/searchbox/searchradio.js":{"url":"http://ns0.bdstatic.com/static/common/widget/searchbox/searchradio_e67ae37.js","pkg":"common:p1","deps":["common:widget/ui/jquery/jquery.js"]},"common:widget/second_navbar/fold.js":{"url":"http://ns0.bdstatic.com/static/common/widget/second_navbar/fold_b1dea17.js","pkg":"common:p1","deps":["common:widget/ui/jquery/jquery.js"]},"common:widget/show_top_qrcode/show_top_qrcode.js":{"url":"http://ns0.bdstatic.com/static/common/widget/show_top_qrcode/show_top_qrcode_db04dfa.js","pkg":"common:p1","deps":["common:widget/ui/jquery/jquery.js"]},"common:widget/sidebar/sidebar.js":{"url":"http://ns0.bdstatic.com/static/common/widget/sidebar/sidebar_2e986db.js","pkg":"common:p1","deps":["common:widget/ui/jquery/jquery.js","common:widget/feedback/feedback.js"]},"common:widget/ui/jquery/jquery-ui.min.js":{"url":"http://ns0.bdstatic.com/static/common/widget/ui/jquery/jquery-ui.min_793696a.js","pkg":"common:p1"},"common:widget/ui/jquery/jquery.animateEvents.js":{"url":"http://ns0.bdstatic.com/static/common/widget/ui/jquery/jquery.animateEvents_fa2738c.js","pkg":"common:p1"},"common:widget/ui/vs/vs.js":{"url":"http://ns0.bdstatic.com/static/common/widget/ui/vs/vs_ac8f6e6.js","pkg":"common:p1","deps":["common:widget/lib/tangram/base/base.js"]},"common:widget/ui/vs/observer/observer.js":{"url":"http://ns0.bdstatic.com/static/common/widget/ui/vs/observer/observer_7031f75.js","pkg":"common:p1"},"common:widget/ui/vs/ContentPlayer/ContentPlayer.js":{"url":"http://ns0.bdstatic.com/static/common/widget/ui/vs/ContentPlayer/ContentPlayer_cfa437e.js","pkg":"common:p1","deps":["common:widget/lib/tangram/base/base.js","common:widget/ui/vs/vs.js","common:widget/ui/vs/observer/observer.js"]},"common:widget/ui/vs/DynamicList/DynamicList.js":{"url":"http://ns0.bdstatic.com/static/common/widget/ui/vs/DynamicList/DynamicList_757360e.js","pkg":"common:p1","deps":["common:widget/lib/tangram/base/base.js","common:widget/ui/vs/vs.js","common:widget/ui/vs/observer/observer.js"]},"common:widget/ui/vs/ScrollView/ScrollView.js":{"url":"http://ns0.bdstatic.com/static/common/widget/ui/vs/ScrollView/ScrollView_e529192.js","pkg":"common:p1","deps":["common:widget/lib/tangram/base/base.js","common:widget/ui/vs/vs.js"]},"common:widget/ui/vs/Slide/Slide.js":{"url":"http://ns0.bdstatic.com/static/common/widget/ui/vs/Slide/Slide_bcb1535.js","pkg":"common:p1","deps":["common:widget/ui/jquery/jquery.js"]},"common:widget/ui/vs/citylist/citylist.js":{"url":"http://ns0.bdstatic.com/static/common/widget/ui/vs/citylist/citylist_39082c3.js","pkg":"common:p1"},"common:widget/ui/vs/clickMonitor/clickMonitor.js":{"url":"http://ns0.bdstatic.com/static/common/widget/ui/vs/clickMonitor/clickMonitor_4f27fb7.js","pkg":"common:p1","deps":["common:widget/lib/tangram/base/base.js"]},"common:widget/ui/vs/delayload/delayload.js":{"url":"http://ns0.bdstatic.com/static/common/widget/ui/vs/delayload/delayload_5eb105b.js","pkg":"common:p1","deps":["common:widget/lib/tangram/base/base.js"]},"common:widget/ui/vs/enterState/enterState.js":{"url":"http://ns0.bdstatic.com/static/common/widget/ui/vs/enterState/enterState_43fa202.js","pkg":"common:p1","deps":["common:widget/lib/tangram/base/base.js"]},"common:widget/ui/vs/imgLazyLoad/ImglazyLoad.js":{"url":"http://ns0.bdstatic.com/static/common/widget/ui/vs/imgLazyLoad/ImglazyLoad_f2b8599.js","pkg":"common:p1"},"common:widget/ui/vs/slider/slider.js":{"url":"http://ns0.bdstatic.com/static/common/widget/ui/vs/slider/slider_32bdf45.js","pkg":"common:p1","deps":["common:widget/lib/tangram/base/base.js"]},"common:widget/ui/vs/suggestion/suggestion.js":{"url":"http://ns0.bdstatic.com/static/common/widget/ui/vs/suggestion/suggestion_330175f.js","pkg":"common:p1","deps":["common:widget/lib/tangram/base/base.js"]},"common:widget/ui/vs/utils/utils.js":{"url":"http://ns0.bdstatic.com/static/common/widget/ui/vs/utils/utils_73e2453.js","pkg":"common:p1"},"focustop:widget/col_house/col_house.js":{"url":"http://ns0.bdstatic.com/static/focustop/widget/col_house/col_house_9e8018e.js","pkg":"focustop:p0","deps":["common:widget/ui/vs/DynamicList/DynamicList.js","common:widget/ui/vs/vs.js","common:widget/lib/tangram/base/base.js","common:widget/ui/vs/citylist/citylist.js","common:widget/ui/jquery/jquery.js"]},"focustop:widget/col_localnews/col_localnews.js":{"url":"http://ns0.bdstatic.com/static/focustop/widget/col_localnews/col_localnews_91200d1.js","pkg":"focustop:p0","deps":["common:widget/ui/vs/DynamicList/DynamicList.js","common:widget/ui/vs/vs.js","common:widget/lib/tangram/base/base.js","common:widget/ui/vs/citylist/citylist.js","common:widget/ui/jquery/jquery.js"]},"focustop:widget/col_media/col_media.js":{"url":"http://ns0.bdstatic.com/static/focustop/widget/col_media/col_media_6db3580.js","pkg":"focustop:p0"},"focustop:widget/hotrollnews/hotrollnews.js":{"url":"http://ns0.bdstatic.com/static/focustop/widget/hotrollnews/hotrollnews_fd29514.js","pkg":"focustop:p0","deps":["common:widget/lib/tangram/base/base.js"]},"focustop:widget/hotwords/hotwords.js":{"url":"http://ns0.bdstatic.com/static/focustop/widget/hotwords/hotwords_fc932a0.js","pkg":"focustop:p0","deps":["common:widget/ui/jquery/jquery.js"]},"focustop:widget/hx_stock/hx_stock.js":{"url":"http://ns0.bdstatic.com/static/focustop/widget/hx_stock/hx_stock_5f0ec17.js","pkg":"focustop:p0","deps":["common:widget/lib/tangram/base/base.js","common:widget/ui/vs/vs.js"]},"focustop:widget/mod_baijia/mod_baijia.js":{"url":"http://ns0.bdstatic.com/static/focustop/widget/mod_baijia/mod_baijia_9796079.js","pkg":"focustop:p0","deps":["common:widget/lib/tangram/base/base.js"]},"focustop:widget/mod_headline_tab/mod_headline_recommend.js":{"url":"http://ns0.bdstatic.com/static/focustop/widget/mod_headline_tab/mod_headline_recommend_21b84c7.js","pkg":"focustop:p0","deps":["common:widget/ui/jquery/jquery.js"]},"focustop:widget/mod_headline_tab/mod_headline_tab.js":{"url":"http://ns0.bdstatic.com/static/focustop/widget/mod_headline_tab/mod_headline_tab_a669fe4.js","pkg":"focustop:p0","deps":["common:widget/ui/jquery/jquery.js","common:widget/ui/jquery/jquery.cookie.js","focustop:widget/mod_headline_tab/mod_headline_recommend.js"]},"focustop:widget/mod_pagination/mod_pagination.js":{"url":"http://ns0.bdstatic.com/static/focustop/widget/mod_pagination/mod_pagination_a874d71.js","pkg":"focustop:p0"}},"pkg":{"common:p0":{"url":"http://ns0.bdstatic.com/static/fisp_static/common/framework_static_include/framework_static_include_ce87dbe.js"},"common:p1":{"url":"http://ns0.bdstatic.com/static/fisp_static/common/module_static_include/module_static_include_caee648.js"},"focustop:p0":{"url":"http://ns0.bdstatic.com/static/fisp_static/focustop/focustop/focustop_82a1184.js"}}});</script><script type="text/javascript" src="http://ns0.bdstatic.com/static/fisp_static/common/module_static_include/module_static_include_caee648.js"></script>
<script type="text/javascript" src="http://ns0.bdstatic.com/static/fisp_static/common/framework_static_include/framework_static_include_ce87dbe.js"></script>
<script type="text/javascript" src="http://ns0.bdstatic.com/static/fisp_static/focustop/focustop/focustop_82a1184.js"></script>
<script type="text/javascript">!function(){	    void function(g,f,j,c,h,d,b){g.alogObjectName=h,g[h]=g[h]||function(){(g[h].q=g[h].q||[]).push(arguments)},g[h].l=g[h].l||+new Date,d=f.createElement(j),d.async=!0,d.src=c,b=f.getElementsByTagName(j)[0],b.parentNode.insertBefore(d,b)}(window,document,"script","http://img.baidu.com/hunter/alog/alog.min.js","alog");void function(){function c(){return;}window.PDC={mark:function(a,b){alog("speed.set",a,b||+new Date);alog.fire&&alog.fire("mark")},init:function(a){alog("speed.set","options",a)},view_start:c,tti:c,page_ready:c}}();void function(n){var o=!1;n.onerror=function(n,e,t,c){var i=!0;return!e&&/^script error/i.test(n)&&(o?i=!1:o=!0),i&&alog("exception.send","exception",{msg:n,js:e,ln:t,col:c}),!1},alog("exception.on","catch",function(n){alog("exception.send","exception",{msg:n.msg,js:n.path,ln:n.ln,method:n.method,flag:"catch"})})}(window);
	}();
!function(){ 
		alog('speed.set', 'ht', +new Date); 
	}();
!function(){	require.async('common:widget/show_top_qrcode/show_top_qrcode.js', function(showqrcode) {
		showqrcode.init();
	});
}();
!function(){    require.async(["common:widget/lib/tangram/base/base.js", "common:widget/searchbox/searchbox.js", "common:widget/ui/vs/suggestion/suggestion.js"], function(baidu,searchbox,suggestion){
        baidu.dom.ready(function(){
            searchbox();
            if (navigator.cookieEnabled && !/sug?=0/.test(document.cookie)){
                    suggestion();
            }

        });
    });
}();
!function(){    require.async(['common:widget/searchbox/searchradio.js', 'common:widget/searchbox/searchboxActive.js'], function(searchRadio, searchboxActive) {
        searchRadio();
        searchboxActive();
    });
}();
!function(){    require.async(['common:widget/navbar/navbar.js'],
        function (mod) {
            mod.init();
        }
    );
}();
!function(){		var extraInfo = {
			m: 11, 
			c: 'top'
		};
		require.async('common:widget/ui/vs/clickMonitor/clickMonitor.js', function(clickMonitor){
		    clickMonitor.init('TOP');
		});
	    require.async(['common:widget/lib/tangram/base/base.js', 'common:widget/ui/vs/delayload/delayload.js'],function(baidu,delayload){
	      baidu.dom.ready(function(){
	        //图片延迟加载
	        var delay=new delayload();
	            
	        delay.init();
	        delay.delayLoader(1);
	        delay.bindUI();
	      });
	    });

		var PAGE_DATA = {
		    "guess_list_num": 0,
		    "guess_jsonp_status" : true
		};
	}();
!function(){        require.async('focustop:widget/mod_headline_tab/mod_headline_tab.js', function (Tab) {
            $(function () {
                var tab = new Tab(0);
                tab.init();
            });
        });
    }();
!function(){  require.async(["common:widget/lib/tangram/base/base.js", "common:widget/ui/vs/ContentPlayer/ContentPlayer.js"], function(T, I) {
    var G = T.dom.g;
    var on = T.event.on;
    var imgList = [];
    var cpOptions_1 = {
      getBtns: function(){
        var a, btns;
            btns = G('imgNav').getElementsByTagName('a');
            a = [];
            for(var i=btns.length - 1; i>=0; i--){
                a.push(btns[i]);
            }
            return a;
      },
      mainViewContainer: G('imgView'),
      prevBtn: G('imgplayer-prev'),
      nextBtn: G('imgplayer-next'),
      changeAction: 'mouseover',
      subViewContainer: G('imgTitle'),
      style: {on: 'active', off: ''},
      mainViewTpl: '<a href="#{url}" target="_blank" mon="c=top&a=12&col=4&pn=#{index}"><img src="#{imgUrl}"></a>',
      subViewTpl: '<a href="#{url}" target="_blank" mon="col=4&a=9&ct=1&pn=#{index}"><strong>#{title}</strong>#{abs}</a>',
      curIndex: 0,
      data: [],
      interval: 5000
    };
  
                          cpOptions_1.data.push({
          "index": 1,
          //"title": "",
          "title": "硝烟中的以色列：“我们创新为生存”",
          "url": "http:\/\/baijia.baidu.com\/",
          "imgUrl": "http:\/\/h.hiphotos.baidu.com\/news\/q%3D100\/sign=a4b5af09a98b87d65642af1f37092860\/f31fbe096b63f6247cc9243b8f44ebf81a4ca375.jpg",
          "abs": "",
          "meadia": ""
        });
        imgList.push({"url":"http:\/\/baijia.baidu.com\/"});
                                cpOptions_1.data.push({
          "index": 2,
          //"title": "",
          "title": "巴黎环卫工人欧洲杯期间罢工 街道垃圾堆积如山",
          "url": "http:\/\/pic.chinadaily.com.cn\/2016-06\/11\/content_25669517.htm",
          "imgUrl": "http:\/\/f.hiphotos.baidu.com\/news\/q%3D100\/sign=7a51f40f3dfae6cd0ab4af613fb30f9e\/b21c8701a18b87d6ca05be270f0828381f30fd47.jpg",
          "abs": "",
          "meadia": ""
        });
        imgList.push({"url":"http:\/\/pic.chinadaily.com.cn\/2016-06\/11\/content_25669517.htm"});
                                cpOptions_1.data.push({
          "index": 3,
          //"title": "",
          "title": "合肥男子乘热气球求婚 现场上交房、车和工资卡",
          "url": "http:\/\/photo.cankaoxiaoxi.com\/roll10\/2016\/0611\/1187683.shtml",
          "imgUrl": "http:\/\/b.hiphotos.baidu.com\/news\/q%3D100\/sign=d998580604f3d7ca0af63b76c21ebe3c\/d1a20cf431adcbef37b3613ea4af2edda3cc9f06.jpg",
          "abs": "",
          "meadia": ""
        });
        imgList.push({"url":"http:\/\/photo.cankaoxiaoxi.com\/roll10\/2016\/0611\/1187683.shtml"});
                                cpOptions_1.data.push({
          "index": 4,
          //"title": "",
          "title": "魔幻甜点 俄罗斯烘焙师打造大理石镜面蛋糕",
          "url": "http:\/\/pic.chinadaily.com.cn\/2016-06\/11\/content_25669497_4.htm",
          "imgUrl": "http:\/\/d.hiphotos.baidu.com\/news\/q%3D100\/sign=f869b66c0b4f78f0860b9ef349310a83\/63d9f2d3572c11dfaa68971b6b2762d0f703c248.jpg",
          "abs": "",
          "meadia": ""
        });
        imgList.push({"url":"http:\/\/pic.chinadaily.com.cn\/2016-06\/11\/content_25669497_4.htm"});
                                cpOptions_1.data.push({
          "index": 5,
          //"title": "",
          "title": "女大学生回家过端午 遇爆炸不幸身亡",
          "url": "http:\/\/news.ifeng.com\/a\/20160611\/48953656_0.shtml?_zbs_baidu_news",
          "imgUrl": "http:\/\/h.hiphotos.baidu.com\/news\/q%3D100\/sign=6746112125f5e0fee8188d016c6034e5\/4610b912c8fcc3ce54a4d70b9a45d688d43f20a5.jpg",
          "abs": "",
          "meadia": ""
        });
        imgList.push({"url":"http:\/\/news.ifeng.com\/a\/20160611\/48953656_0.shtml?_zbs_baidu_news"});
                                cpOptions_1.data.push({
          "index": 6,
          //"title": "",
          "title": "一条特立独行的狗 模仿主人坐着看视频",
          "url": "http:\/\/photo.cankaoxiaoxi.com\/roll10\/2016\/0611\/1187553.shtml",
          "imgUrl": "http:\/\/h.hiphotos.baidu.com\/news\/q%3D100\/sign=6612a8d69482d158bd825db1b00a19d5\/dcc451da81cb39db01e6496ed8160924ab1830e7.jpg",
          "abs": "",
          "meadia": ""
        });
        imgList.push({"url":"http:\/\/photo.cankaoxiaoxi.com\/roll10\/2016\/0611\/1187553.shtml"});
                                cpOptions_1.data.push({
          "index": 7,
          //"title": "",
          "title": "刘亦菲的奇幻造型 二次元粉发美翻啦",
          "url": "http:\/\/photo.cankaoxiaoxi.com\/roll10\/2016\/0611\/1187569.shtml",
          "imgUrl": "http:\/\/c.hiphotos.baidu.com\/news\/q%3D100\/sign=23b8a813b851f819f725074aeab54a76\/21a4462309f790528288690604f3d7ca7bcbd576.jpg",
          "abs": "",
          "meadia": ""
        });
        imgList.push({"url":"http:\/\/photo.cankaoxiaoxi.com\/roll10\/2016\/0611\/1187569.shtml"});
                                cpOptions_1.data.push({
          "index": 8,
          //"title": "",
          "title": "女孩落水 姐姐奶奶施救均溺亡",
          "url": "http:\/\/photo.cankaoxiaoxi.com\/roll10\/2016\/0611\/1187551.shtml",
          "imgUrl": "http:\/\/a.hiphotos.baidu.com\/news\/q%3D100\/sign=710228f28a8ba61ed9eecc2f713497cc\/962bd40735fae6cdbbbe855907b30f2442a70ffb.jpg",
          "abs": "",
          "meadia": ""
        });
        imgList.push({"url":"http:\/\/photo.cankaoxiaoxi.com\/roll10\/2016\/0611\/1187551.shtml"});
            
    var index = 0 ;
    var url = location.href.substr(location.href.indexOf("?")+1).split("&");
    var key ;
    for(var i = 0 ; i < url.length ; i++){
       var tmp = url[i].split("=");
       if(tmp&&tmp.length>0&&tmp[0]=="lb"){
           key = tmp[1];
       }
    }
    for(var p in imgList){
       if(imgList[p].url == key){
           index = p ;
       }
    }
    cpOptions_1.curIndex = index;
    var cp_1 = new I.Model(cpOptions_1);

    on(window, 'load', function(){
       cp_1.play(index+1);
    });

    var controlers = baidu.dom.query('#imgNav a');
    baidu.each(controlers, function(item,i){
        baidu.on(item,'mouseover',function(e){
            UserMonitor.send(e, 6, {c: "top", a:"51", col: "4", ct: "1", m: "11", pn: 8-i});
            window.alog && alog("monkey.fire", "record", {
                type: "click",
                target: item
            });
        });
    });
  });
}();
!function(){
    /*var ___lis___ = $(".hotwords li"),___images___ = $('.hotwords img'),___words___=$('.hotwords_li_a');
    $.each(___images___,function(i,item){
        var $item = $(item),
        src = $item.attr('m_m_src'),
        _img = new Image();
        _img.onload = function(){

            $item.attr('src', src);
            if(_img.width > _img.height){
                if($item.parents('li').width() > 68){
                    $item.css('width', '139px');
                }else{
                    $item.css('height', '68px');

                }
            }else{
                $item.css('width',$item.parents('li').width());
            }
            _img.onload = null;
        }
        _img.src = src;
    });
    $.each(___lis___,function(i,item){
        $(item).mouseenter(function(e){
        $('.detail',this).animate({top:'0px'},200,function(){});

        });
        $(item).mouseleave(function(e){
        $('.detail',this).animate({top:'68px'},200,function(){});
        });
    });
    $.each(___words___, function(i, item) {
        $(item).find('img').length == 0 && $(item).css({"padding-top": (68 - item.offsetHeight)/2 + "px"}) || $(item).css({"padding": 0, 'width':$(item).width()+9+'px'});
        $(item).css({
            "visibility": "visible"
        });
    });*/



    require.async('focustop:widget/hotwords/hotwords.js', function (mod) {
        mod.init();
    });

}();
!function(){    require.async('focustop:widget/mod_baijia/mod_baijia.js', function(tab){
       var tab =  new tab({
            container : 'nba-tab',
            event : 'mouseover'
       }).setup();
    });
}();
!function(){	    void function(e,t){for(var n=t.getElementsByTagName("img"),a=+new Date,i=[],o=function(){this.removeEventListener&&this.removeEventListener("load",o,!1),i.push({img:this,time:+new Date})},s=0;s<n.length;s++)!function(){var e=n[s];e.addEventListener?!e.complete&&e.addEventListener("load",o,!1):e.attachEvent&&e.attachEvent("onreadystatechange",function(){"complete"==e.readyState&&o.call(e,o)})}();alog("speed.set",{fsItems:i,fs:a})}(window,document);
	}();
!function(){    require.async('focustop:widget/col_localnews/col_localnews.js', function(initLocalHotNews){

        //地方新闻和各地房产新闻共享LocalNewsConfig配置
        window.LocalNewsConfig = {
            cookieName: 'LOCALGX',
            cookieDomain: 'news.baidu.com',
            defaultFailedLocalCity: '北京',
            defaultLocalCityID:0,
            defaultHouseCity: '北京',
            defaultFailedHouseCity: '各地',
            htmlTpl: {
                more_link: '<a target="_blank" href="/n?cmd=6&loc=#{locID}&name=#{city_name}&locname=#{city_name}&locid=#{locID}" id="more-link" style="visibility: visible;">更多</a> ',
                more_link_sh: '<a target="_blank" href="http://sh.news.baidu.com/" id="more-link" style="visibility: visible;">更多</a> ',
                city_list: '<a href="javascript:void(0);" mon="col=10&locname=#{city_name}&locid=#{locID}" prop="#{prop}">#{title}</a> ',
                city_name_link: '<a href="/n?cmd=6&loc=#{locID}&name=#{city_name}&locname=#{city_name}&locid=#{locID}" target="_blank" class="#{class_name}"><b>#{city_name}</b>新闻</a>',
                city_name_link_sh: '<a href="http://sh.news.baidu.com/" target="_blank" class="#{class_name}"><b>#{city_name}</b>新闻</a>',
                city_name_no_link: '<b>#{city_name}</b>新闻',
                local_news: '<li><span class="num num-#{index}">#{index_pad}</span><a href="#{url}" mon="c=civilnews&ct=0&a=27&col=8&locname=#{city_name}&locid=#{locID}" target="_blank">#{title}</a></li>',
                //local_news_sh: '<li><span class="num num-#{index}">#{index_pad}</span><a href="http://sh.news.baidu.com/" mon="c=civilnews&ct=0&a=27&col=8&locname=#{city_name}&locid=#{locID}" target="_blank">#{title}</a></li>',
                house_news: '<li><span class="num num-#{index}">#{index_pad}</span><a href="#{url}" mon="c=housenews&ct=0&a=27&col=9" target="_blank">#{title}</a></li>',
                local_news_top : '<li class="top-localnews"><h4><a href="#{url}" mon="c=civilnews&ct=0&a=27&col=8&locname=#{city_name}&locid=#{locID}" target="_blank">#{title}</a></h4><p><a href="#{url}" mon="c=civilnews&ct=0&a=27&col=8&locname=#{city_name}&locid=#{locID}" target="_blank"><img src="#{imgUrl}"></a>#{abs}</p></li>',
                local_news_top_noimg : '<li class="top-localnews" style="height:80px"><h4><a href="#{url}" mon="c=civilnews&ct=0&a=27&col=8&locname=#{city_name}&locid=#{locID}" target="_blank">#{title}</a></h4><p>#{abs}</p></li>',
                focus : '<li><a href="#{url}" mon="c=civilnews&ct=0&a=27&col=8&locname=#{city_name}&locid=#{locID}" target="_blank">#{title}</a></li>',
                focus_bold : '<li class="bold-item"><span class="dot"></span><a href="#{url}" mon="c=civilnews&ct=0&a=27&col=8&locname=#{city_name}&locid=#{locID}" target="_blank">#{title}</a></li>',
                pic : '<div class="image-mask-item"><a href="#{url}" target="_blank" class="item-image" mon="c=civilnews&ct=0&a=27&col=8&locname=#{city_name}&locid=#{locID}"><img src="#{imgUrl}"/></a><a href="#{url}" target="_blank" class="item-title" mon="">#{title}</a></div>',
                other : '<li><a href="#{url}" mon="c=civilnews&ct=0&a=27&col=8&locname=#{city_name}&locid=#{locID}" target="_blank">#{title}</a></li>'
            },
            timeout: 5000
        }
        initLocalHotNews({
            pageType: 'TOP',
            request: {
                url: '/n?m=rddata&v=index_data&rn1=17',
                callback : 'bdNewsJsonCallBack'
            },
            //data: city.localCities,
            triggerLevel: 2,
            statusID: 'status',
            cityNameID: 'city_name',
            pmoreLinkID: 'p-more-link',
            moreLinkID: 'more-link',
            cityViewID: 'city_view',
            changeCityID: 'change-city',
            closeBtnID: 'btn_close',
            backBtnID: 'btn_back',
            localNewsID:{
                focus : 'localnews-focus',
                pic : 'localnews-pic',
                other :'localnews-zixun'
            },
            maxItemsShown: 10,
            timeout: LocalNewsConfig.timeout
        });
    });
}();
!function(){    require.async('focustop:widget/hx_stock/hx_stock.js',function(hxSuggestion){
        baidu.dom.ready(function(){
            hxSuggestion.init({
                form : baidu.g('sf2'),//sf为搜索框form的id
                input : baidu.g('wd2'),//wd为输入框的id
                url : 'http://news.baidu.com/n?m=rddata&v=stocksug&wd=',
                id : 'suggest1',
                needSubmitForm : true,
                mutipleSupport : true,
                tipInfo : '请使用半角逗号","分隔多只股票'
            });
        });
    });
}();
!function(){    require.async('focustop:widget/col_house/col_house.js', function(initLocalHouseNews){
      var LocalNewsConfig = {
            cookieName: 'LOCALGX',
            cookieDomain: 'news.baidu.com',
            defaultFailedLocalCity: '港澳台',
            defaultLocalCityID:0,
            defaultHouseCity: '北京',
            defaultFailedHouseCity: '各地',
            htmlTpl: {
                more_link: '<a target="_blank" class="more" href="http://news.baidu.com/n?cmd=6&loc=0&name=#{city_name}&locname=#{city_name}&locid=#{locID}" id="more-link" style="visibility: visible;">更多</a> ',
                //more_link_sh: '<a target="_blank" class="more" href="http://sh.news.baidu.com/" id="more-link" style="visibility: visible;">更多</a> ',
                city_list: '<a href="javascript:void(0);" mon="col=10&locname=#{city_name}&locid=#{locID}" prop="#{prop}">#{title}</a> ',
                city_name_link: '<a href="http://news.baidu.com/n?cmd=6&loc=0&name=#{city_name}&locname=#{city_name}&locid=#{locID}" target="_blank" class="#{class_name}"><b>#{city_name}</b>新闻</a>',
               //city_name_link_sh: '<a href="http://sh.news.baidu.com/" target="_blank" class="#{class_name}"><b>#{city_name}</b>新闻</a>',
                city_name_no_link: '<b>#{city_name}</b>新闻',
                local_news: '<li><span class="num num-#{index}">#{index_pad}</span><a href="#{url}" mon="c=civilnews&ct=0&a=27&col=8&locname=#{city_name}&locid=#{locID}" target="_blank">#{title}</a></li>',
                //local_news_sh: '<li><span class="num num-#{index}">#{index_pad}</span><a href="http://sh.news.baidu.com/" mon="c=civilnews&ct=0&a=27&col=8&locname=#{city_name}&locid=#{locID}" target="_blank">#{title}</a></li>',
                house_news: '<li><span class="num num-#{index}">#{index_pad}</span><a href="#{url}" mon="c=housenews&ct=0&a=27&col=9" target="_blank">#{title}</a></li>',
                local_news_top : '<li class="top-localnews"><h4><a href="#{url}" mon="c=civilnews&ct=0&a=27&col=8&locname=#{city_name}&locid=#{locID}" target="_blank">#{title}</a></h4><p><a href="#{url}" mon="c=civilnews&ct=0&a=27&col=8&locname=#{city_name}&locid=#{locID}" target="_blank"><img src="#{imgUrl}"></a>#{abs}</p></li>',
                local_news_top_noimg : '<li class="top-localnews" style="height:80px"><h4><a href="#{url}" mon="c=civilnews&ct=0&a=27&col=8&locname=#{city_name}&locid=#{locID}" target="_blank">#{title}</a></h4><p>#{abs}</p></li>'
            },
            timeout: 5000
        };

        baidu.dom.ready(function(){
            initLocalHouseNews({
                request: {
                    //url: 'http://news.baidu.com/json/local/house/',
                    url: '/n?m=rddata&v=index_data&type=house&fr=index&rn2=5',
                    callback: 'bdNewsJsonCallBack_1'
                },
                //data: city.houseCities,
                triggerLevel: 2,
                statusID: 'status_1',
                cityNameID: 'city_name_1',
                cityViewID: 'city_view_1',
                changeCityID: 'change_city_1',
                closeBtnID: 'btn_close_1',
                backBtnID: 'btn_back_1',
                localNewsID: 'house_news',
                maxItemsShown: 4,
                timeout: LocalNewsConfig.timeout
            });
        });
    });
}();
!function(){require.async(['common:widget/sidebar/sidebar.js'],
    function (Sidebar) {
        $(function () {
            var sidebar = new Sidebar();
            sidebar.init();
        });
    }
);
}();
!function(){    require.async(['common:widget/footer/statistics.js'], function (mod) {
        // 页面加载后，向biglog发送一个pv统计，传入hostname区分产品和频道
        mod.postReferToBiglog();
        // 页面加载后，初始化发送往百度统计的打点
        mod.initClickPostToTongji();
        // 页面加载后，向百度统计发送页面的refer
        mod.postReferToTongji();
    });
}();
!function(){    document.write("<img src='/nocache/mp/b.jpg?cmd=3&"+Math.random()+"' style='display:none;'>");    
    document.write("<img id='cgif' src='http://c.baidu.com/c.gif?t=5&p=1&"+Math.random()+"' style='display:none'>");
}();
!function(){	var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
	document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fe9e114d958ea263de46e080563e254c4' type='text/javascript'%3E%3C/script%3E"));
}();
!function(){	require.async('common:widget/lib/tangram/base/base.js',function(baidu){
	    baidu.each(baidu.dom.query('img'),function(item){	
	        if(/eiv.baidu.com\/hmt\/icon/.test(baidu.dom.getAttr(item, 'src'))){
	            item.style.display = 'none';		
	        }
	    });
	});
}();
!function(){    require.async(['common:widget/hunter/hunter.js'],
        function (mod) {
            if (location.search.indexOf('hunterrandom=0') >= 0) {
                // url的search中有 hunterrandom=0 则忽略限流
                mod.init(73791);
            } else if (parseInt(Math.random().toString().slice(2)) % 10 === 0) {
                // 限制流量，只传10%的统计量
                mod.init(73791);
            }
        }
    );
}();
!function(){        $(function() {
            alog('speed.set', 'drt', +new Date);
        });

        window.alogObjectConfig = {
            product: '107',
            page: 'newspc_107',

            // 性能
            speed: {
                sample: '0.15'
            },

            // js异常
            exception: {
                sample: '0.08'
            },

            // 新特性
            feature: {
                sample: '0.08'
            },

            csp: {
                sample: '0.15',
                'default-src': [
                    {match: '*bae.baidu.com', target: 'Accept,Warn'},
                    {match: '*.baidu.com,*.bdstatic.com,*.bdimg.com,localhost,*.hao123.com,*.hao123img.com', target: 'Accept'},
                    {match: /^(127|172|192|10)(\.\d+){3}$/, target: 'Accept'},
                    {match: '*', target: 'Accept,Warn'}
                ]
            }
        };
        void function(a,b,c,d,e,f){function g(b){a.attachEvent?a.attachEvent("onload",b,!1):a.addEventListener&&a.addEventListener("load",b)}function h(a,c,d){d=d||15;var e=new Date;e.setTime((new Date).getTime()+1e3*d),b.cookie=a+"="+escape(c)+";path=/;expires="+e.toGMTString()}function i(a){var c=b.cookie.match(new RegExp("(^| )"+a+"=([^;]*)(;|$)"));return null!=c?unescape(c[2]):null}function j(){var a=i("PMS_JT");if(a){h("PMS_JT","",-1);try{a=a.match(/{["']s["']:(\d+),["']r["']:["']([\s\S]+)["']}/),a=a&&a[1]&&a[2]?{s:parseInt(a[1]),r:a[2]}:{}}catch(c){a={}}a.r&&b.referrer.replace(/#.*/,"")!=a.r||alog("speed.set","wt",a.s)}}if(a.alogObjectConfig){var k=a.alogObjectConfig.sample,l=a.alogObjectConfig.rand;if("https:"===a.location.protocol){if(d="https://gss2.bdstatic.com/70cFsjip0QIZ8tyhnq"+d,!k||!l)return}else d="http://img.baidu.com"+d;k&&l&&l>k||(g(function(){alog("speed.set","lt",+new Date),e=b.createElement(c),e.async=!0,e.src=d+"?v="+~(new Date/864e5),f=b.getElementsByTagName(c)[0],f.parentNode.insertBefore(e,f)}),j())}}(window,document,"script","/hunter/alog/dp.min.js");
    }();
!function(){        $.ready(function() {
            alog('speed.set', 'drt', +new Date);
        });
    }();</script></html>
<script type="text/javascript"> var isLogin = false;</script><!--ecombegin--><script type="text/javascript">require.async("common:widget/ui/vs/enterState/enterState.js", function(enterState){enterState("", "")});</script><!--ecomend-->