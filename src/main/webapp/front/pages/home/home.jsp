<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
  <meta charset="UTF-8">
  <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0' />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>首页</title>
  <link rel="stylesheet" href="../../layui/css/layui.css">
  <link rel="stylesheet" type="text/css" href="../../xznstatic/css/iconfont.css">
  <link rel="stylesheet" type="text/css" href="../../xznstatic/css/color.css">
  <link rel="stylesheet" type="text/css" href="../../xznstatic/css/global.css">
  <link rel="stylesheet" type="text/css" href="../../xznstatic/css/page.css">
  <link rel="stylesheet" type="text/css" href="../../xznstatic/css/uzlist.css">
  <link rel="stylesheet" type="text/css" href="../../xznstatic/css/animate.min.css">
  <link rel="stylesheet" type="text/css" href="../../xznstatic/css/fancybox.css" />
  <script type="text/javascript" src="../../xznstatic/js/jquery.min.js"></script>
  <script type="text/javascript" src="../../xznstatic/js/superslide.2.1.1.min.js"></script>
  <script type="text/javascript" src="../../xznstatic/js/wow.min.js"></script>
  <script type="text/javascript" src="../../xznstatic/js/fancybox.js"></script>
  <script type="text/javascript">
    var CATID = "0",
      BCID = "0",
      NAVCHILDER = "",
      ONCONTEXT = 0,
      ONCOPY = 0,
      ONSELECT = 0;
  </script>
  <script type="text/javascript" src="../../xznstatic/js/common.js"></script>
</head>

<body>
  <div id="app">
    <div class="layui-carousel" id="swiper">
      <div carousel-item id="swiper-item">
        <div v-for="(item,index) in swiperList" v-bind:key="index">
          <img class="swiper-item" :src="item.img" width="100%" height="400px">
        </div>
      </div>
    </div>

    <div class="plate">
      <div class="plate-pic picture-a after tb80 back-white" style='background:#fff;'>
        <div class="container">
          <div class="comm-title">
            <div class="title">
              <h3>小吃信息推荐</h3>
              <p>Recommend</p>
            </div>
          </div>
          <div class="picture-lists">
            <ul class="wul105">
              <li v-for="(item,index) in xiaochixinxiRecommend" v-bind:key="index">
                <a target="_self" :href="'../xiaochixinxi/detail.jsp?id='+item.id">
                  <div class="posi-img">
                    <img :src="item.meishitupian?item.meishitupian.split(',')[0]:''" width="385" height="220" />
                  </div>
                  <div class="remark">
                    <h5>{{item.xiaochimingcheng}}</h5>
                  </div>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>


      <div class="plate-pic picture-a after tb80 back-white" style='background:#fff;'>
        <div class="container">
          <div class="comm-title">
            <div class="title">
              <h3>小吃信息展示</h3>
              <p>DATA SHOW</p>
            </div>
          </div>
          <div class="picture-lists">
            <ul class="wul105">
              <li v-for="(item,index) in xiaochixinxiList" v-bind:key="index">
                <a target="_self" :href="'../xiaochixinxi/detail.jsp?id='+item.id">
                  <div class="posi-img">
                    <img :src="item.meishitupian?item.meishitupian.split(',')[0]:''" width="385" height="220" />
                  </div>
                  <div class="remark">
                    <h5>{{item.xiaochimingcheng}}</h5>
                    <p v-if="item.price">{{item.price}} RMB</p>
                  </div>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="plate-pic picture-a after tb80 back-white" style='background:#fff;'>
        <div class="container">
          <div class="comm-title">
            <div class="title">
              <h3>门店信息展示</h3>
              <p>DATA SHOW</p>
            </div>
          </div>
          <div class="picture-lists">
            <ul class="wul105">
              <li v-for="(item,index) in mendianxinxiList" v-bind:key="index">
                <a target="_self" :href="'../mendianxinxi/detail.jsp?id='+item.id">
                  <div class="posi-img">
                    <img :src="item.mendiantupian?item.mendiantupian.split(',')[0]:''" width="385" height="220" />
                  </div>
                  <div class="remark">
                    <h5>{{item.mendianmingcheng}}</h5>
                    <p v-if="item.price">{{item.price}} RMB</p>
                  </div>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <div class="footer footer-a back-black" style='background:#F67280;'>
      <div class="container">
        <div class="footer-text center">
          <div class="links">
            <span v-text="projectName"></span>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script src="../../layui/layui.js"></script>
  <script src="../../js/vue.js"></script>
  <script src="../../js/config.js"></script>
  <script src="../../modules/config.js"></script>
  <script src="../../js/utils.js"></script>

  <script>
    var vue = new Vue({
      el: '#app',
      data: {
        projectName: projectName,
        swiperList: [{
          img: '../../img/banner.jpg'
        }],
      xiaochixinxiRecommend: [],

      xiaochixinxiList: [],
      mendianxinxiList: [],
        newsList: []
      },
      filters: {
        newsDesc: function(val) {
          if (val) {
            val = val.replace(/<[^<>]+>/g, '').replace(/undefined/g, '');
            if (val.length > 60) {
              val = val.substring(0, 60);
            }

            return val;
          }
          return '';
        }
      },
      methods: {
        jump(url) {
          jump(url)
        }
      }
    });

    layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery'], function() {
      var layer = layui.layer;
      var element = layui.element;
      var form = layui.form;
      var carousel = layui.carousel;
      var http = layui.http;
      var jquery = layui.jquery;

      http.request('config/list', 'get', {
        page: 1,
        limit: 5
      }, function(res) {
        if (res.data.list.length > 0) {
          var swiperItemHtml = '';
          for (let item of res.data.list) {
            if (item.name.indexOf('picture') >= 0 && item.value && item.value != "" && item.value != null) {
              swiperItemHtml +=
                '<div>' +
                '<img class="swiper-item" src="' + item.value + '" width="100%" height="400px">' +
                '</div>';
            }
          }
          jquery('#swiper-item').html(swiperItemHtml);
          // 轮播图
          carousel.render({
            elem: '#swiper',
            width: '100%',
            height: '400px',
            arrow: 'always',
            anim: 'fade',
            interval: 1800,
            indicator: 'inside'
          });
        }
      });
              

      http.request(`xiaochixinxi/autoSort`, 'get', {
        page: 1,
        limit: 6
      }, function(res) {
        vue.xiaochixinxiRecommend = res.data.list;
      });

      http.request(`xiaochixinxi/list`, 'get', {
        page: 1,
        limit: 6
      }, function(res) {
        vue.xiaochixinxiList = res.data.list;
      });
      http.request(`mendianxinxi/list`, 'get', {
        page: 1,
        limit: 6
      }, function(res) {
        vue.mendianxinxiList = res.data.list;
      });
    });
  </script>
</body>

</html>