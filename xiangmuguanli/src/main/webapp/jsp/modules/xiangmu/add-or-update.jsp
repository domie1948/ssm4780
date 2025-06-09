<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑项目</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">项目管理</li>
                        <li class="breadcrumb-item active">编辑项目</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">项目信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6 aaaaaa xiangmuguanliyuan">
                                        <label>项目管理员</label>
                                        <div>
                                            <select id="xiangmuguanliyuanSelect" name="xiangmuguanliyuanSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 xiangmuguanliyuan">
                                        <label>项目管理人姓名</label>
                                        <input id="xiangmuguanliyuanName" name="xiangmuguanliyuanName" class="form-control"
                                               placeholder="项目管理人姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6 xiangmuguanliyuan">
                                        <label>项目管理人手机号</label>
                                        <input id="xiangmuguanliyuanPhone" name="xiangmuguanliyuanPhone" class="form-control"
                                               placeholder="项目管理人手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 xiangmuguanliyuan">
                                        <label>项目管理人身份证号</label>
                                        <input id="xiangmuguanliyuanIdNumber" name="xiangmuguanliyuanIdNumber" class="form-control"
                                               placeholder="项目管理人身份证号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 xiangmuguanliyuan">
                                        <label>项目管理人照片</label>
                                        <img id="xiangmuguanliyuanPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6 aaaaaa xuqiu">
                                        <label>需求</label>
                                        <div>
                                            <select id="xuqiuSelect" name="xuqiuSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 xuqiu">
                                        <label>需求名称</label>
                                        <input id="xuqiuName" name="xuqiuName" class="form-control"
                                               placeholder="需求名称" readonly>
                                    </div>
                                    <div class="form-group col-md-6 xuqiu">
                                        <label>需求类型</label>
                                        <input id="xuqiuValue" name="xuqiuValue" class="form-control"
                                               placeholder="需求类型" readonly>
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="xiangmuguanliyuanId" name="xiangmuguanliyuanId" type="hidden">
                                <input id="xuqiuId" name="xuqiuId" type="hidden">
                                    <div class="form-group col-md-6">
                                        <label>项目名称</label>
                                        <input id="xiangmuName" name="xiangmuName" class="form-control"
                                               placeholder="项目名称">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>项目类型</label>
                                        <select id="xiangmuTypesSelect" name="xiangmuTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group  col-md-6">
                                        <label>项目详情</label>
                                        <input id="xiangmuContentupload" name="file" type="file">
                                        <script id="xiangmuContentEditor" type="text/plain"
                                                style="width:100%;height:230px;"></script>
                                        <script type = "text/javascript" >
                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                        //相见文档配置属于你自己的编译器
                                        var xiangmuContentUe = UE.getEditor('xiangmuContentEditor', {
                                            toolbars: [
                                                [
                                                    'undo', //撤销
                                                    'bold', //加粗
                                                    'redo', //重做
                                                    'underline', //下划线
                                                    'horizontal', //分隔线
                                                    'inserttitle', //插入标题
                                                    'cleardoc', //清空文档
                                                    'fontfamily', //字体
                                                    'fontsize', //字号
                                                    'paragraph', //段落格式
                                                    'inserttable', //插入表格
                                                    'justifyleft', //居左对齐
                                                    'justifyright', //居右对齐
                                                    'justifycenter', //居中对
                                                    'justifyjustify', //两端对齐
                                                    'forecolor', //字体颜色
                                                    'fullscreen', //全屏
                                                    'edittip ', //编辑提示
                                                    'customstyle', //自定义标题
                                                ]
                                            ]
                                        });
                                        </script>
                                        <input type="hidden" name="xiangmuContent" id="xiangmuContent-input">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>项目状态</label>
                                        <select id="xiangmuZhuangtaiTypesSelect" name="xiangmuZhuangtaiTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-12 mb-3">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                        <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                    </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "xiangmu";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var xiangmuTypesOptions = [];
    var xiangmuZhuangtaiTypesOptions = [];
        <!-- 级联表的下拉框数组 -->
    var xiangmuguanliyuanOptions = [];
    var xuqiuOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

        $('#xiangmuContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('xiangmuContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
            if(window.sessionStorage.getItem('role') != '项目管理员'){//当前登录用户不为这个
                if($("#xiangmuguanliyuanId") !=null){
                    var xiangmuguanliyuanId = $("#xiangmuguanliyuanId").val();
                    if(xiangmuguanliyuanId == null || xiangmuguanliyuanId =='' || xiangmuguanliyuanId == 'null'){
                        alert("项目管理员不能为空");
                        return;
                    }
                }
            }
            if(window.sessionStorage.getItem('role') != '需求'){//当前登录用户不为这个
                if($("#xuqiuId") !=null){
                    var xuqiuId = $("#xuqiuId").val();
                    if(xuqiuId == null || xuqiuId =='' || xuqiuId == 'null'){
                        alert("需求不能为空");
                        return;
                    }
                }
            }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';

            }
            httpJson("xiangmu/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addxiangmu');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        function xiangmuTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=xiangmu_types", "GET", {}, (res) => {
                if(res.code == 0){
                    xiangmuTypesOptions = res.data.list;
                }
            });
        }
        function xiangmuZhuangtaiTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=xiangmu_zhuangtai_types", "GET", {}, (res) => {
                if(res.code == 0){
                    xiangmuZhuangtaiTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->
        function xiangmuguanliyuanSelect() {
            //填充下拉框选项
            http("xiangmuguanliyuan/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    xiangmuguanliyuanOptions = res.data.list;
                }
            });
        }

        function xiangmuguanliyuanSelectOne(id) {
            http("xiangmuguanliyuan/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                xiangmuguanliyuanShowImg();
                xiangmuguanliyuanShowVideo();
                xiangmuguanliyuanDataBind();
            }
        });
        }
        function xuqiuSelect() {
            //填充下拉框选项
            http("xuqiu/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    xuqiuOptions = res.data.list;
                }
            });
        }

        function xuqiuSelectOne(id) {
            http("xuqiu/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                xuqiuShowImg();
                xuqiuShowVideo();
                xuqiuDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationXiangmutypesSelect(){
            var xiangmuTypesSelect = document.getElementById('xiangmuTypesSelect');
            if(xiangmuTypesSelect != null && xiangmuTypesOptions != null  && xiangmuTypesOptions.length > 0 ){
                for (var i = 0; i < xiangmuTypesOptions.length; i++) {
                    xiangmuTypesSelect.add(new Option(xiangmuTypesOptions[i].indexName,xiangmuTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationXiangmuzhuangtaitypesSelect(){
            var xiangmuZhuangtaiTypesSelect = document.getElementById('xiangmuZhuangtaiTypesSelect');
            if(xiangmuZhuangtaiTypesSelect != null && xiangmuZhuangtaiTypesOptions != null  && xiangmuZhuangtaiTypesOptions.length > 0 ){
                for (var i = 0; i < xiangmuZhuangtaiTypesOptions.length; i++) {
                    xiangmuZhuangtaiTypesSelect.add(new Option(xiangmuZhuangtaiTypesOptions[i].indexName,xiangmuZhuangtaiTypesOptions[i].codeIndex));
                }
            }
        }

        function initializationxiangmuguanliyuanSelect() {
            var xiangmuguanliyuanSelect = document.getElementById('xiangmuguanliyuanSelect');
            if(xiangmuguanliyuanSelect != null && xiangmuguanliyuanOptions != null  && xiangmuguanliyuanOptions.length > 0 ) {
                for (var i = 0; i < xiangmuguanliyuanOptions.length; i++) {
                        xiangmuguanliyuanSelect.add(new Option(xiangmuguanliyuanOptions[i].xiangmuguanliyuanName, xiangmuguanliyuanOptions[i].id));
                }

                $("#xiangmuguanliyuanSelect").change(function(e) {
                        xiangmuguanliyuanSelectOne(e.target.value);
                });
            }

        }

        function initializationxuqiuSelect() {
            var xuqiuSelect = document.getElementById('xuqiuSelect');
            if(xuqiuSelect != null && xuqiuOptions != null  && xuqiuOptions.length > 0 ) {
                for (var i = 0; i < xuqiuOptions.length; i++) {
                        xuqiuSelect.add(new Option(xuqiuOptions[i].xuqiuName, xuqiuOptions[i].id));
                }

                $("#xuqiuSelect").change(function(e) {
                        xuqiuSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->

        var xiangmuTypesSelect = document.getElementById("xiangmuTypesSelect");
        if(xiangmuTypesSelect != null && xiangmuTypesOptions != null  && xiangmuTypesOptions.length > 0 ) {
            for (var i = 0; i < xiangmuTypesOptions.length; i++) {
                if (xiangmuTypesOptions[i].codeIndex == ruleForm.xiangmuTypes) {//下拉框value对比,如果一致就赋值汉字
                        xiangmuTypesSelect.options[i].selected = true;
                }
            }
        }

        var xiangmuZhuangtaiTypesSelect = document.getElementById("xiangmuZhuangtaiTypesSelect");
        if(xiangmuZhuangtaiTypesSelect != null && xiangmuZhuangtaiTypesOptions != null  && xiangmuZhuangtaiTypesOptions.length > 0 ) {
            for (var i = 0; i < xiangmuZhuangtaiTypesOptions.length; i++) {
                if (xiangmuZhuangtaiTypesOptions[i].codeIndex == ruleForm.xiangmuZhuangtaiTypes) {//下拉框value对比,如果一致就赋值汉字
                        xiangmuZhuangtaiTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
            var xiangmuguanliyuanSelect = document.getElementById("xiangmuguanliyuanSelect");
            if(xiangmuguanliyuanSelect != null && xiangmuguanliyuanOptions != null  && xiangmuguanliyuanOptions.length > 0 ) {
                for (var i = 0; i < xiangmuguanliyuanOptions.length; i++) {
                    if (xiangmuguanliyuanOptions[i].id == ruleForm.xiangmuguanliyuanId) {//下拉框value对比,如果一致就赋值汉字
                        xiangmuguanliyuanSelect.options[i+1].selected = true;
                        $("#xiangmuguanliyuanSelect" ).selectpicker('refresh');
                    }
                }
            }
            var xuqiuSelect = document.getElementById("xuqiuSelect");
            if(xuqiuSelect != null && xuqiuOptions != null  && xuqiuOptions.length > 0 ) {
                for (var i = 0; i < xuqiuOptions.length; i++) {
                    if (xuqiuOptions[i].id == ruleForm.xuqiuId) {//下拉框value对比,如果一致就赋值汉字
                        xuqiuSelect.options[i+1].selected = true;
                        $("#xuqiuSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
        if (ruleForm.xiangmuContent != null && ruleForm.xiangmuContent != 'null' && ruleForm.xiangmuContent != '' && $("#xiangmuContentupload").length>0) {

            var xiangmuContentUeditor = UE.getEditor('xiangmuContentEditor');
            xiangmuContentUeditor.ready(function () {
                var mes = '';
                if(ruleForm.xiangmuContent != null){
                    mes = ''+ ruleForm.xiangmuContent;
                    mes = mes.replace(/\n/g, "<br>");
                }
                xiangmuContentUeditor.setContent(mes);
            });
        }
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
        if($("#xiangmuContentupload").length>0) {
            var xiangmuContentEditor = UE.getEditor('xiangmuContentEditor');
            if (xiangmuContentEditor.hasContents()) {
                $('#xiangmuContent-input').attr('value', xiangmuContentEditor.getPlainTxt());
            }
        }
    }
    //数字检查
        <!-- 当前表的数字检查 -->

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addxiangmu');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                xiangmuguanliyuanId: "required",
                xuqiuId: "required",
                xiangmuName: "required",
                xiangmuTypes: "required",
                xiangmuContent: "required",
                insertTime: "required",
                xiangmuZhuangtaiTypes: "required",
            },
            messages: {
                xiangmuguanliyuanId: "项目管理员不能为空",
                xuqiuId: "需求不能为空",
                xiangmuName: "项目名称不能为空",
                xiangmuTypes: "项目类型不能为空",
                xiangmuContent: "项目详情不能为空",
                insertTime: "添加时间不能为空",
                xiangmuZhuangtaiTypes: "项目状态不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addxiangmu = window.sessionStorage.getItem("addxiangmu");
        if (addxiangmu != null && addxiangmu != "" && addxiangmu != "null") {
            //注册表单验证
            $(validform());
            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("xiangmu/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
            laydate.render({
                elem: '#insertTime-input'
                ,type: 'datetime'
            });
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        xiangmuguanliyuanDataBind();
        xuqiuDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#xiangmuguanliyuanId").val(ruleForm.xiangmuguanliyuanId);
        $("#xuqiuId").val(ruleForm.xuqiuId);
        $("#xiangmuName").val(ruleForm.xiangmuName);
        $("#xiangmuContent").val(ruleForm.xiangmuContent);
        $("#insertTime-input").val(ruleForm.insertTime);

    }
    <!--  级联表的数据回显  -->
    function xiangmuguanliyuanDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#xiangmuguanliyuanId").val(ruleForm.id);

        $("#xiangmuguanliyuanName").val(ruleForm.xiangmuguanliyuanName);
        $("#xiangmuguanliyuanPhone").val(ruleForm.xiangmuguanliyuanPhone);
        $("#xiangmuguanliyuanIdNumber").val(ruleForm.xiangmuguanliyuanIdNumber);
    }

    function xuqiuDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#xuqiuId").val(ruleForm.id);

        $("#chanpinjingliId").val(ruleForm.chanpinjingliId);
        $("#xuqiuName").val(ruleForm.xuqiuName);
        $("#xuqiuValue").val(ruleForm.xuqiuValue);
        $("#insertTime").val(ruleForm.insertTime);
        $("#xuqiuContent").val(ruleForm.xuqiuContent);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        xiangmuguanliyuanShowImg();
        xuqiuShowImg();
    }


    <!--  级联表的图片  -->

    function xiangmuguanliyuanShowImg() {
        $("#xiangmuguanliyuanPhotoImg").attr("src",ruleForm.xiangmuguanliyuanPhoto);
    }


    function xuqiuShowImg() {
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        xiangmuguanliyuanShowVideo();
        xuqiuShowVideo();
    }


    <!--  级联表的视频  -->

    function xiangmuguanliyuanShowVideo() {
        $("#xiangmuguanliyuanPhotoV").attr("src",ruleForm.xiangmuguanliyuanPhoto);
    }

    function xuqiuShowVideo() {
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            xiangmuTypesSelect();
            xiangmuZhuangtaiTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            xiangmuguanliyuanSelect();
            xuqiuSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationXiangmutypesSelect();
            initializationXiangmuzhuangtaitypesSelect();
            <!--  初始化级联表的下拉框  -->
            initializationxiangmuguanliyuanSelect();
            initializationxuqiuSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
        window.sessionStorage.removeItem('addxiangmu');
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') == '管理员') {
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events: none;');
        }
		else if (window.sessionStorage.getItem('role') == '项目管理员') {
            // $(".aaaaaa").remove();
            $(".xiangmuguanliyuan").remove();//删除当前用户的信息
        }
		else if (window.sessionStorage.getItem('role') == '产品经理') {
            // $(".aaaaaa").remove();
            $(".chanpinjingli").remove();//删除当前用户的信息
        }
		else if (window.sessionStorage.getItem('role') == '开发人员') {
            // $(".aaaaaa").remove();
            $(".kaifa").remove();//删除当前用户的信息
        }
		else if (window.sessionStorage.getItem('role') == '测试人员') {
            // $(".aaaaaa").remove();
            $(".ceshi").remove();//删除当前用户的信息
        }
        else{
            // alert("未知情况.......");
            // var replyContentUeditor = UE.getEditor('replyContentEditor');
            // replyContentUeditor.ready(function () {
            //     replyContentUeditor.setDisabled('fullscreen');
            // });
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>