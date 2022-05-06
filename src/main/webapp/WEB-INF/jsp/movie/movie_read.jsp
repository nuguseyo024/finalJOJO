<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.io.PrintWriter"%>
<%@ include file="../user/header.jsp"%>

<%
// 	String b_user_id  = (String) session.getAttribute("b_user_id");
// 	String user_id = null;
// 	if(session.getAttribute("user_id")!=null){
// 		user_id = (String) session.getAttribute("user_id");
// 	}else if(user_id==null){
// 		PrintWriter script = response.getWriter();
// 		script.println("<script>");
// 		script.println("alert('로그인을 해주세요!')");
// 		script.println("location.href='/login'");
// 		script.println("</script>");
// 	}
%>

<!DOCTYPE html>
<html lang="en" class="no-js">
   <head>
      <!-- Meta -->
      <title>movie_list</title>
      <script>
		function logout() {
			if(!confirm('로그아웃 하시겠습니까?')) return;
			$.ajax({
				url:'/logout',
				method:'get',
				dataType:'json',
				cache:false,
				success:function(res) {
					alert(res.logoutok ? '로그아웃 성공' : '로그아웃 실패');
					if (res.logoutok) {
						location.href="/main";
					}
				},
				error:function(xhr,status,err) {
					alert('error:' + err);
				} 
			});
			return false;
		}
		
		function search() {
			var keyword = $('#keyword').val();
			alert(keyword);
			location.href = "/movie/movie_searchList/" + keyword;
		}
	  </script>
      <meta charset="UTF-8">
      <meta name="description" content="Free HTML template">
      <meta name="keywords" content="HTML, template, free">
      <meta name="author" content="Nicola Tolin">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- Styles -->
      <link href="../resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
      <link href="../resources/vendor/animate/animate.css" rel="stylesheet" type="text/css"/>
      <link href="../resources/css/style.css" rel="stylesheet" type="text/css"/>
   </head>
   <body>

<tbody><tr>
      <td height="15" colspan="2"></td>
    </tr>
    <tr>
      <td height="2" style="background:#eeeeee;" colspan="2"></td>
    </tr>
    <tr>
      <td width="530" valign="top">
        <!-- 상품 이미지 -->
        <div id="goods_thumbs">
          <table cellpadding="0" cellspacing="0" style="width:400px;">
            <tbody><tr>
              <td>
                <div class="slides_container hide" style="margin: auto; width: 400px; display: block;">
                      <a href="#" style="width:100%;display:inline-block;">
                        <img src="/data/goods/1/2019/06/2404_tmp_8123c7bc840b78a22c3371109824b12d7486view.jpg" width="400" onerror="this.src='/data/skin/leisure_dynamic_2/images/common/noimage.gif'" title="">
                      </a>
                </div>
                <!--<div class="clearbox" style="margin:5px auto 0 auto; width:400px;">
                <div class="fleft"><a href="javascript:popup('zoom?no=2404&popup=1',800,980,'no')"><img src="/data/skin/leisure_dynamic_2/images/icon/icon_zoom.gif" hspace="1" /></a></div>
                <div class="fright"><span class="snsbox hand "><img src="/data/skin/leisure_dynamic_2/images/board/icon/sns_f0.gif" alt="페이스북"  title="페이스북"  valign="middle" onclick="snsWin('fa','%EC%B9%98%EC%A6%88%ED%80%B8+-+%EC%B9%98%EC%A6%88%EC%A0%84%EB%AC%B8%EC%87%BC%ED%95%91%EB%AA%B0', '%EA%B7%B8%EB%9E%91%EB%8F%84%EB%A5%B4+%ED%8A%B8%EB%9F%AC%ED%94%8C+%EA%B3%A0%EB%8B%A4%EC%B9%98%EC%A6%88+200g+%28%EC%84%9C%EC%96%91%EC%86%A1%EB%A1%9C0.8%25%29', '', 'http%3A%2F%2Fcheesequeen.co.kr%2Fgoods%2Fview%3F%26no%3D2404','','','','');" /></span>&nbsp;<span class="snsbox hand "><img src="/data/skin/leisure_dynamic_2/images/board/icon/sns_t0.gif" alt="트위터"  title="트위터"  valign="middle" onclick="snsWin('tw','%EC%B9%98%EC%A6%88%ED%80%B8+-+%EC%B9%98%EC%A6%88%EC%A0%84%EB%AC%B8%EC%87%BC%ED%95%91%EB%AA%B0', '%EA%B7%B8%EB%9E%91%EB%8F%84%EB%A5%B4+%ED%8A%B8%EB%9F%AC%ED%94%8C+%EA%B3%A0%EB%8B%A4%EC%B9%98%EC%A6%88+200g+%28%EC%84%9C%EC%96%91%EC%86%A1%EB%A1%9C0.8%25%29', '', 'http%3A%2F%2Fcheesequeen.co.kr%2Fgoods%2Fview%3Fno%3D2404','','http://cheesequeen.co.kr/data/goods/1/2019/06/2404_tmp_8123c7bc840b78a22c3371109824b12d7486list1.jpg','230','230');" /></span>&nbsp;<span class="snsbox hand "><img src="/data/skin/leisure_dynamic_2/images/board/icon/sns_g0.gif" alt="구글+"  title="구글+"  valign="middle" onclick="snsWin('go','%EC%B9%98%EC%A6%88%ED%80%B8+-+%EC%B9%98%EC%A6%88%EC%A0%84%EB%AC%B8%EC%87%BC%ED%95%91%EB%AA%B0', '%EA%B7%B8%EB%9E%91%EB%8F%84%EB%A5%B4+%ED%8A%B8%EB%9F%AC%ED%94%8C+%EA%B3%A0%EB%8B%A4%EC%B9%98%EC%A6%88+200g+%28%EC%84%9C%EC%96%91%EC%86%A1%EB%A1%9C0.8%25%29', '', 'http%3A%2F%2Fcheesequeen.co.kr%2Fgoods%2Fview%3Fno%3D2404','','http://cheesequeen.co.kr/data/goods/1/2019/06/2404_tmp_8123c7bc840b78a22c3371109824b12d7486list1.jpg','230','230');" /></span>&nbsp;</div>
                </div>-->
              </td>
            </tr>
          </tbody></table>
        </div>
        <!-- 상품 썸네일 이미지 스크롤 -->
        <script type="text/javascript">goods_thumbs_scroll();</script>
        <!-- 상품 썸네일 이미지 스크롤 -->
      </td>
      <td style="padding-right:0px;" valign="top">
          <input type="hidden" name="goodsSeq" value="2404">
          <!-- 상품 스펙 -->
          <table width="100%" cellpadding="0" cellspacing="0" border="0">
            <tbody><tr>
              <td height="0">
                <!--할인율 표기 시작-->
                <!--할인율 표기 끝-->
              </td>
            </tr>
            <tr><td height="14"></td></tr>
            <!-- 상품 짧은 설명 시작 -->
            <tr>
              <td>
                <span class="short_desc">네덜란드산 고다치즈에 최상급 트러플을 곱게 갈아넣었어요</span>
              </td>
            </tr>
            <!-- 상품 짧은 설명 끝 -->
            <tr><td height="5"></td></tr>
            <!-- 상품명 시작 -->
            <tr>
              <td style="position: relative;">
                <span class="goods_name">그랑도르 트러플 고다치즈 200g (서양송로0.8%)<br></span>
              </td>
            </tr>
            <!-- 상품명 끝 -->
            <!-- 아이콘 시작 -->
            <!-- 아이콘 끝 -->
            <tr><td height="10"></td></tr>
            <tr><td style="position:relative; top:4px; left:0px" height="1" bgcolor="cccccc"></td></tr>
            <tr><td height="10"></td></tr>
            <tr>
              <td>
                <table class="goods_spec_table" width="100%" cellpadding="0" cellspacing="3" border="0">
                  <colgroup><col width="100">
                  <!-- 판매가격 시작-->
                  </colgroup><tbody><tr style="height:54px;">
                    <th valign="top" style="padding-top:5px;">판매가</th>
                    <td style="position: relative;"> <!-- 페북공유버튼을 위해 positoin:relative  -->
                        <!-- 할인내역 시작 -->
                        <!-- 할인내역 끝 -->
                        <b class="price">14,200</b><b style="font-size:10px; font-size:14px; color:#ff5500;">원</b>
                        <style>
                          .btn_share {
                            background-image: url("/data/skin/leisure_dynamic_2/images/icon_share.gif");
                            background-size: cover;
                            background-repeat: no-repeat;
                            background-position: center;
                            width: 50px;
                            height: 38px;
                            cursor: pointer;
                            position: absolute;
                            top: 50%;
                            right: 0;
                            margin-top: -19px;
                          }
                        </style>
                          <div class="btn_share btn_share_logout" data-goods-seq="2404"></div>
                    </td>
                  </tr>
                  <!-- 판매가격 끝 -->
                  <tr>
                    <td colspan="2" height="5"></td>
                  </tr>
                  <!-- 이벤트 시작 -->
                  <!-- 이벤트 끝 -->
                  <!-- 복수구매 할인 시작 -->
                  <!-- 복수구매 할인 끝 -->
                  <!-- 모바일 시작 -->
                  <!-- 모바일 끝 -->
                  <!-- 좋아요 시작 -->
                  <!-- 좋아요 끝 -->
                  <!-- 쿠폰 시작 -->
                  <!-- 쿠폰 끝 -->

                  <!-- 프로모션코드 시작 --
                  ----
                  <th>할인코드</th>
                  <td>[79394] 50% 할인(최대 1,000,000원)</td>
                  </tr>
                  --- --
                  -- 프로모션코드 끝 -->

                  <!-- 유입경로 시작 -->
                  <!-- 유입경로 끝 -->
                  <tr><td colspan="2" height="1" bgcolor="eaeaea"></td></tr>
                  <!-- 사은품 표기 시작 -->
                  <!-- 사은품 표기 끝 -->
                  <!-- 적립금 시작 -->
                  <!-- 적립금 끝 -->
                  <!-- 네이버 마일리지 시작 -->
                  <!-- 네이버 마일리지 끝 -->
                  <!-- 상품후기 시작 -->
                  <!-- 상품후기 끝 -->

                  <!-- 배송 시작 -->
                  <!-- 배송 끝 -->

                  <!-- 브랜드 시작 -->
                  <!-- 브랜드 끝 -->
                  <!-- 고객평가 시작 -->
                  <!--<tr><td colspan="2" height="14"></td></tr>
                  <tr>
                    <th>고객평가</th>
                    <td>
                      64건&nbsp;
                      <span class="orange">★★★★★</span><span class="gray"></span>
                      <font style="color:#ee6600; font-family:tahoma">5/5</font>
                    </td>
                  </tr>-->
                  <!-- 고객평가 끝 -->
                  <!-- 추가 정보 시작 -->
                  <!-- 추가 정보 끝 -->
                  <tr><td colspan="2" height="8"></td></tr>
                </tbody></table>
                  <!-- 필수옵션 시작 -->
                  <table class="goods_spec_table" width="100%" cellpadding="0" cellspacing="3" border="0">
                    <colgroup><col width="100">
                    </colgroup><tbody><tr>
                      <th>수량</th>
                      <td>
                        <input type="hidden" name="option[0][]" value="">
                        <input type="hidden" name="optionTitle[0][]" value="">
                        <table align="left" border="0" cellpadding="1" cellspacing="0">
                          <tbody><tr>
                            <td>
                              <input type="text" name="optionEa[]" value="1" style="width:25px; height:15px;">
                            </td>
                            <td align="right" style="font-size:0px;">
                              <div><img src="/data/skin/leisure_dynamic_2/images/design/btn_num_plus.gif" class="hand eaPlus"></div>
                              <div><img src="/data/skin/leisure_dynamic_2/images/design/btn_num_minus.gif" class="hand eaMinus"></div>
                              <div style="display:none" class="optionPrice">14200</div>
                            </td>
                            <td>개</td>
                          </tr>
                        </tbody></table>
                      </td>
                    </tr>
                  </tbody></table>
                  <!-- 필수옵션 끝 -->
                  <!-- 추가옵션 시작 -->
                  <!-- 추가옵션 끝 -->
                  <div class="goods_quantity_table_container" style="display:none">
                    <table class="goods_quantity_table" width="100%" cellpadding="0" cellspacing="0" border="0">
                      <colgroup><col><col width="70"><col width="90">
                    </colgroup></table>
                  </div>
                  <!--추가입력옵션 시작-->
                <!-- 추가입력옵션 끝 -->
              </td>
            </tr>
            <tr><td colspan="2" height="8"></td></tr>
            <!-- 총 상품 금액 표기 시작-->
            <tr><td height="1" bgcolor="cccccc"></td></tr>
            <tr><td height="20"></td></tr>
            <tr>
              <td>
                <table align="right" cellpadding="0" cellspacing="0" border="0">
                  <tbody><tr>
                    <td valign="bottom" class="fx12" style="font-size:14px;padding-bottom:4px;"><b>총 상품금액</b></td>
                    <td width="25"></td>
                    <td class="total_goods_price">
                      <span id="total_goods_price" style="margin-right:10px; font-size:24px;font-family:tahoma;color:#ff3528;font-weight:bold;letter-spacing:-1px;">14,200</span><font style="font-family:tahoma;color:#ff3528;font-weight:bold;font-size:14px;">원</font>
                    </td>
                  </tr>
                </tbody></table>
              </td>
            </tr>
            <!-- 총 상품 금액 표기 끝 -->
            <tr><td height="15"></td></tr>
            <tr><td><a href="../board/view?id=notice&amp;seq=99" target="_blank"><img src="/data/skin/leisure_dynamic_2/images/Untitled-2.jpg" alt="" title=""></a><br></td></tr>
          </tbody></table>
      </td>
    </tr>
    <tr>
      <td height="30px" colspan="2"></td>
    </tr>
    <tr>
      <td valign="top">
        <!-- 네이버체크아웃 시작-->
            <div align="right" style="margin-right: 10px;" class="element_naverpay">
              <div id="additional_question_2_msg" class="additional_question_msg" style="display: block;">
                토요일 수령이 어려우신 경우, <span>배송메세지</span>에<br>
                <span>토요일수령불가</span>라고 꼭 기재해주세요.<br>
                미기재로 인한 문제발생시<br>
                치즈퀸은 책임지지 않습니다.
              </div>
              <div id="additional_question_3_msg" class="additional_question_msg">
                
              </div>
              <div id="additional_question_4_msg" class="additional_question_msg">
                치즈퀸의 당일발송마감시각은 평일오후4시입니다. 금요일 오후 4시 이후 주문은 월요일에 발송될 예정입니다.
              </div>
              <div>
                <script type="text/javascript" src="https://pay.naver.com/customer/js/naverPayButton.js" charset="UTF-8"></script><script type="text/javascript" src="https://pay.naver.com/customer/js/innerNaverPayButton.js?site_preference=normal&amp;458838" charset="UTF-8"></script><link id="NAVER_PAY_STYLE" type="text/css" rel="stylesheet" href="https://img.pay.naver.net/static/css/button/button2.css?458838">

<script type="text/javascript" src="/app/javascript/js/common-function.js"></script>
<script type="text/javascript">
function naverpay_submit(mode,shippingType){

	loadingStart("",{segments: 12, width: 15.5, space: 6, length: 13, color: '#000000', speed: 1.5});

	if(mode == "direct"){
		if (typeof check_option == 'function') {
			if( !check_option() ){
				return;
			}
		}
		var f = $("form[name='goodsForm']");
	}else{
		var f = $("form[name='cart_form']");
	}
	f.attr("action","../naverpay/buy?mode="+mode+"&shippingType="+shippingType);
	f[0].submit();
	f.attr("action","../order/add");
	//closeDialog('naverpay_postpaid');

}

function buy_nc(){

	var w = 400;
	var h = 210;

naverpay_submit('direct','delivery');
}

function not_buy_nc(){
var h = 150;	openDialogAlert("",450,h);
}

function wishlist_nc(){

	// 네이버 체크아웃으로 찜 정보를 등록하는 가맹점 페이지 팝업 창 생성.
	var f = $("form[name='goodsForm']");
	f.attr("action","../naverpay/zzim");

	window.open("/data/index.php","zzim","scrollbars=yes,width=400,height=267");
	f.attr("target","zzim");
	f[0].submit();
	f.attr("target","actionFrame");
	f.attr("action","../order/add");
	return false;
}

</script>

<div id="nhn_btn" style="text-align:right;margin-top:10px;margin-right:5px;">
	<script type="text/javascript">
	//<![CDATA[
	var enable			= 'Y';
	var buy_npay		= buy_nc;
	var goods_status	= '';
	// 품절등과 같은 이유에 따라 버튼을 비활성화할 필요가 있을 경우
	try{
		naver.NaverPayButton.apply({
			BUTTON_KEY:"16D3655F-D4C5-4F25-9E2B-BE69AC0A90AF", // 네이버페이에서 할당받은 버튼 KEY 를 입력하세요.
			TYPE: "A", // 버튼 타입
			COLOR: 1,  // 버튼 색
			COUNT: 1,	// 버튼 개수 설정. 구매하기 버튼만 있으면 1, 찜하기 버튼과 함께 있으면 2를 입력한다.
			ENABLE: enable,			// 품절등과 같은 이유에 따라 버튼을 비활성화할 필요가 있을 경우
			BUY_BUTTON_HANDLER: buy_npay, // 구매하기 버튼 이벤트 Handler 함수 등록, 품절인 경우 not_buy_nc 함수 사용
			WISHLIST_BUTTON_HANDLER:wishlist_nc, // 찜하기 버튼 이벤트 Handler 함수 등록
			"":""
		});
	}catch(e){
	}

	//]]></script><div id="NC_ID_1651817727832950" class="npay_storebtn_bx npay_type_A_1">	<div id="NPAY_BUTTON_BOX_ID" class="npay_button_box ">		<div class="npay_button">			<div class="npay_text"><span class="npay_blind">NAVER 네이버 ID로 간편구매 네이버페이</span></div>				<table class="npay_btn_list" cellspacing="0" cellpadding="0"><tbody><tr>    <td class="npay_btn_item">        <a id="NPAY_BUY_LINK_IDNC_ID_1651817727832950" href="#" class="npay_btn_link npay_btn_pay btn_green" style="box-sizing:content-box; " title="새창"><span class="npay_blind">네이버페이 구매하기</span></a>    </td></tr></tbody></table>		</div>		<div id="NPAY_EVENT_ID" class="npay_event">			<a id="NPAY_PROMOTION_PREV_IDNC_ID_1651817727832950" href="#" class="npay_more npay_more_prev"><span class="npay_blind">이전</span></a>			<p id="NPAY_PROMOTION_IDNC_ID_1651817727832950" class="npay_event_text"><strong class="event_title">충전결제혜택</strong><a class="event_link" href="https://campaign.naver.com/event/pointpay" target="_blank" title="새창">최대 3%적립 + 소득공제</a></p>			<a id="NPAY_PROMOTION_NEXT_IDNC_ID_1651817727832950" href="#" class="npay_more npay_more_next"><span class="npay_blind">다음</span></a>		</div>	</div></div>
</div>


              </div>
            </div>
        <!-- 네이버체크아웃 끝-->
        <style>
          .additional_question_msg {
            font-size: 13px;
            line-height: 20px;
            float: left;
            color: red;
            width: 240px;
            word-break: keep-all;
            display: none;
          }
          .additional_question_msg span {
            font-weight: bold;
          }
        </style>
      </td>
      <td valign="top">
        <div style="margin-top: 10px;">
          <img style="margin-right:14px;" src="/data/skin/leisure_dynamic_2/images/buttons/btn_buy.jpg" title="" alt="" id="buy" class="hand">
          <img style="" name="addCart" src="/data/skin/leisure_dynamic_2/images/buttons/btn_cart.jpg" title="" alt="" id="addCart" class="hand">
          <!--<a href="../mypage/wish_add?seqs[]=2404" target="actionFrame"><img src="/data/skin/leisure_dynamic_2/images/buttons/btn_wish.jpg"/></a>-->
        </div>
      </td>
    </tr>
    <tr>
      <td height="60px" colspan="2"></td>
    </tr>
  </tbody>




	<div>
 		<p><img src="${movie.poster_url }"></p>
	</div>

</body>
</html>