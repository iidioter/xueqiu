define(function(require,exports,module){function e(e){return xqBridge.hideLoading(),e&&6e4==e.result_code?!0:void(!e||70005!=e.result_code&&70006!=e.result_code?xqBridge.alert(e&&(e.error_description||e.msg)?{message:e.msg||e.error_description,success:function(){xqBridge.redirect({type:"POP_CANCEL"})}}:{message:"网络错误",success:function(){xqBridge.redirect({type:"POP_CANCEL"})}}):xqBridge.redirect({type:"POP_CANCEL"}))}xqBridge.trackEvent("myaccount");var t=require("template/trade/trade-broker-list.js"),i=require("template/trade/trade-account-info.js"),n=require("template/trade/trade-position-list.js");module.exports={init:function(){var t=this;Util.parseParams().from&&xqBridge.trackEvent("myaccount_"+Util.parseParams().from),xqBridge.getUserInfo({success:function(e){window.userInfo=e?e:{},e&&!e.uid&&(xqBridge.hideLoading(),xqBridge.alert({message:"请先登录雪球",success:function(){xqBridge.redirect({type:"POP_CANCEL"})}})),e&&e.stColor&&$("body").addClass("oppositeColor"),t.isBindEvent||(t.bindEvent(),t.isBindEvent=!0),t.checkBind()},error:function(t){e(t)}})},checkBind:function(){var t=this;Util.checkBindBroker({success:function(e){e?t.getAccountData(Util.parseParams().scode):($(".unbind").removeClass("fn-hide"),$(".my-broker-account").addClass("fn-hide"),t.setToolbar(!0),xqBridge.hideLoading())},error:function(t){e(t)}})},getAccountInfo:function(){var e=jQuery.Deferred(),t=this;return xqBridge.request({url:"/tc/fund/query.json",type:"GET",data:{aid:t.aid,tid:t.tid},success:function(t){e.resolve(t)},error:function(t){e.reject(t)}}),e.promise()},getPositionList:function(){var e=jQuery.Deferred(),t=this;return xqBridge.request({url:"/tc/position/list.json",type:"GET",data:{aid:t.aid},success:function(t){e.resolve(t)},error:function(t){e.reject(t)}}),e.promise()},renderNullData:function(){$(".account-info").html(i({data:{accountInfo:{asset_balance:0,begin_balance:null,buy_frozen_balance:null,cur:"CNY",current_balance:0,enable_balance:0,fetch_balance:0,fetch_cash:null,foregift_balance:null,frozen_balance:null,fund_balance:null,market_value:0,mortgage_balance:null,unfrozen_balance:null},total_income_balance:0}})),$(".stocks-list tbody").html(n({data:{positions:[]}}))},renderWidgets:function(){var e=this;e.setToolbar(),$(".unbind").addClass("fn-hide"),$(".my-broker-account").removeClass("fn-hide"),e.myScroll&&($(".pullDownTime span").html(moment(new Date).format("YYYY-MM-DD HH:mm:ss")),e.myScroll.refresh()),setTimeout(function(){seajs.use("ad-banner.js",function(e){e.init("mySecurities_ad","mySecurities_closeAd")})},200)},fixAccountInfoData:function(e,t){function i(e,t){var i="",n="";return t=t||"",_.isUndefined(e)||_.isNull(e)?{number:"-"+t,style:n}:("%"==t&&(e*=100),e>0?(i="+"+e.toFixed(2),n="stock_up"):(i=e.toFixed(2),0>e&&(n="stock_down")),t&&(i+=t),{number:i,style:n})}var n={accountInfo:e.result_data[0]},r=i(t.total_income_balance);n.total_income_balance=r.number,n.totalIncomeStyle=r.style;var o=i(t.day_income_rate,"%"),s=i(t.day_income_balance);return n.day_income_balance=s.number,n.day_income_rate=o.number,n.dayIncomeStyle=s.style,n},getAccountData:function(){var e=this,r=window.userInfo.brokerList,o=_.find(r,function(e){return e.is_default});r.length&&!o&&(o=_.first(r),o.is_default=!0),e.broker=o;var s=o.aid;e.aid=s,e.tid=o.tid,$(".broker-list").html(t({data:{brokers:r}})),$.when(e.getAccountInfo(),e.getPositionList()).then(function(t,r){if(6e4==t.result_code&&6e4==r.result_code)$(".account-info").html(i({data:e.fixAccountInfoData(t,r)})),$(".stocks-list tbody").html(n({data:{positions:r.result_data}}));else{e.renderNullData();var o=_.find([t,r],function(e){return 6e4!=e.result_code}),s=o.msg||"获取数据出错，请下拉刷新重新获取。";Util.showError(s)}xqBridge.hideLoading(),e.renderWidgets()}).fail(function(t){xqBridge.hideLoading(),t&&(70006==t.result_code?(e.renderNullData(),e.renderWidgets(),Util.showError("为确保交易安全，请下拉刷新重新登录证券账户")):t.msg&&Util.showError(t.msg))})},setToolbar:function(e){var t=this,i=[{title:"下单",action:function(){xqBridge.trackEvent("mySecurities_trade"),xqBridge.redirect({url:"/broker/trade",type:"PUSH",success:function(){},cancel:function(){t.init()}})},highlight:!0},{title:"委托单",action:function(){xqBridge.redirect({url:"/broker/orders?aid="+t.aid,type:"PUSH",success:function(){},cancel:function(){t.init()}})}},{title:"交易记录",action:function(){xqBridge.redirect({url:"/broker/trade-history",type:"PUSH",success:function(){},cancel:function(){t.init()}})}}];this.broker&&this.broker.bank_trans&&i.push({title:"银证转账",action:function(){xqBridge.trackEvent("mySecurities_bank"),xqBridge.redirect({url:"/broker/transfer",type:"PUSH",success:function(){},cancel:function(){t.init()}})}}),Util.appVersion()>6.2&&(window.isSetToolbar=!1),e&&(i=[]),xqBridge.setToolbar({name:"setToolbar",buttons:i})},bindEvent:function(){function e(e){i||e.preventDefault()}var t=this,i=navigator.userAgent.indexOf("iPhone")>-1;if(xqBridge.setRightNavigationButton({title:"管理",action:function(){xqBridge.trackEvent("mySecurities_secManage"),xqBridge.redirect({url:"/broker/config",type:"PUSH",success:function(){t.init()},cancel:function(){t.init()}})}}),$("body").on("click","tbody tr",function(){xqBridge.trackEvent("mySecurities_stockClick");var e=$(this).data("symbol");if(e.indexOf("SH")>-1||e.indexOf("SZ")>-1)xqBridge.redirect({url:"http://xueqiu.com/S/"+e,type:"PUSH",success:function(){},cancel:function(){t.init()}});else if(!$("tbody").hasClass("disabled")){$("tbody").addClass("disabled");var i=this;xqBridge.redirect({url:"/broker/trade?scode="+$(i).data("scode"),type:"PUSH",success:function(){},cancel:function(){$("tbody").removeClass("disabled"),t.init()}})}}),i&&$("body").on("touchmove",function(e){e.originalEvent.pageY>$(window).height()&&t.myScroll&&t.isRefreshing&&t.myScroll._resetPos(200)}),window.iScroll&&!this.myScroll){var n=$("#pullDown"),r=$(".pullDownText"),o=n.outerHeight();$(".pullDownTime span").html(moment(new Date).format("YYYY-MM-DD HH:mm:ss")),this.myScroll=new window.iScroll("wrapper",{useTransition:!i,onBeforeScrollStart:e,topOffset:o,preventDefault:!i,onRefresh:function(){n.hasClass("loading")&&(n.removeClass("loading"),r.html("下拉刷新"))},onScrollMove:function(){this.y>5&&!n.hasClass("flip")?(n.addClass("flip"),r.html("释放刷新"),t.isRefreshing=!0,this.minScrollY=0):this.y<5&&n.hasClass("flip")&&(n.removeClass("flip"),r.html("下拉刷新"),this.minScrollY=-o)},onScrollEnd:function(){t.isRefreshing=!1,n.hasClass("flip")&&this.y>=0&&(n.addClass("loading"),r.html("数据载入中..."),t.init())}})}$("body").on("click",".broker-list .broker",function(){var e=$(this).parent(),i=$(this),n=$(".broker-list");if(e.hasClass("select-list")){if(e.hasClass("selected"))return!1;e.addClass("selected"),e.siblings().removeClass("selected"),xqBridge.trackEvent("mySecurities_switch");var r=i.data("aid");xqBridge.showLoading(),xqBridge.request({url:"/tc/securities/default.json",type:"POST",data:{changetoaid:r},success:function(e){6e4==e.result_code&&($(".select-list").hide(),$(".overlay").hide(),n.removeClass("expand"),t.init())},error:function(){xqBridge.hideLoading(),Util.showError("切换账号出错")}})}else{var o=$(this).find(".arrow");if(!o.length)return!1;var s=$(".select-list");s.is(":hidden")?(s.show(),$(".overlay").show(),n.addClass("expand")):(s.hide(),$(".overlay").hide(),n.removeClass("expand"))}}),$("body").on("click",".overlay",function(){$(this).hide(),$(".broker-list").removeClass("expand"),$(".select-list").hide()}),$("body").on("click",".bind-button",function(){xqBridge.trackEvent("mySecurities_bind"),xqBridge.redirect({url:"/broker/bind-list",type:"MODAL",success:function(){t.init()}})}),$("body").on("click",".open-button",function(){xqBridge.trackEvent("mySecurities_open"),xqBridge.redirect({url:"/broker/open-list",type:"MODAL",success:function(){t.init()}})}),$("body").on("click",".new",function(){xqBridge.trackEvent("mySecurities_guide");var e=$(this).find("a").attr("href");return xqBridge.redirect({url:e,type:"PUSH"}),!1})}}});