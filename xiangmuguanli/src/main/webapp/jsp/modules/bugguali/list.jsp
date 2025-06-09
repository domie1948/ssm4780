<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">


<head>
    <%@ include file="../../static/head.jsp" %>
    <!-- font-awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">


    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <!-- layui -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/resources/layui/layui.js"></script>
</head>
<style>

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
                        <h3 class="block-title">bug管理</h3>
                    </div>
                    <div class="col-md-6">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="${pageContext.request.contextPath}/index.jsp">
                                    <span class="ti-home"></span>
                                </a>
                            </li>
                            <li class="breadcrumb-item">bug管理</li>
                            <li class="breadcrumb-item active">bug列表</li>
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
                            <h3 class="widget-title">bug列表</h3>
                            <div class="table-responsive mb-3">
                                <div class="col-sm-12">
                                                                                                                                                 
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        bug名称
                                        <div class="layui-input-inline">
                                            <input type="text" id="buggualiNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="bug名称" aria-controls="tableId">
                                        </div>
                                    </div>
                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        bug类型
                                        <div class="layui-input-inline">
                                            <select name="buggualiTypesSelectSearch"  style="width: 150px;" id="buggualiTypesSelectSearch" class="form-control form-control-sm"
                                                    aria-controls="tableId">
                                            </select>
                                        </div>
                                    </div>
                                                                                                             
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        bug是否处理
                                        <div class="layui-input-inline">
                                            <select name="buggualiChuliTypesSelectSearch"  style="width: 150px;" id="buggualiChuliTypesSelectSearch" class="form-control form-control-sm"
                                                    aria-controls="tableId">
                                            </select>
                                        </div>
                                    </div>
                                                                        
                                                                                                         
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        测试人员姓名
                                        <div class="layui-input-inline">
                                            <input type="text" id="ceshiNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="测试人员姓名" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        测试人员手机号
                                        <div class="layui-input-inline">
                                            <input type="text" id="ceshiPhoneSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="测试人员手机号" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        测试人员身份证号
                                        <div class="layui-input-inline">
                                            <input type="text" id="ceshiIdNumberSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="测试人员身份证号" aria-controls="tableId">
                                        </div>
                                    </div>
                                                                                                                                                                                                                                                                                                                         
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        项目名称
                                        <div class="layui-input-inline">
                                            <input type="text" id="xiangmuNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="项目名称" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        项目类型
                                        <div class="layui-input-inline">
                                            <select name="xiangmuTypesSelectSearch"  style="width: 150px;" id="xiangmuTypesSelectSearch" class="form-control form-control-sm"
                                                    aria-controls="tableId">
                                            </select>
                                        </div>
                                    </div>
                                                                                                                                                             
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        项目状态
                                        <div class="layui-input-inline">
                                            <select name="xiangmuZhuangtaiTypesSelectSearch"  style="width: 150px;" id="xiangmuZhuangtaiTypesSelectSearch" class="form-control form-control-sm"
                                                    aria-controls="tableId">
                                            </select>
                                        </div>
                                    </div>
                                                    
                                    <div class="layui-inline" style="margin-left: 30px;margin-bottom: 10px;">
                                        <button onclick="search()" type="button" class="btn btn-primary">查询</button>
                                        <button onclick="add()" type="button" class="btn btn-success 新增">添加</button>
                                        <button onclick="graph()" type="button" class="btn btn-success 报表">报表</button>
                                        <button onclick="deleteMore()" type="button" class="btn btn-danger 删除">批量删除</button>
                                    </div>
                                </div>
                                <table id="tableId" class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th class="no-sort" style="min-width: 35px;">
                                            <div class="custom-control custom-checkbox">
                                                <input class="custom-control-input" type="checkbox" id="select-all"
                                                       onclick="chooseAll()">
                                                <label class="custom-control-label" for="select-all"></label>
                                            </div>
                                        </th>

                                        <th >测试人员姓名</th>
                                        <th >测试人员手机号</th>
                                        <th >测试人员身份证号</th>
                                        <th >测试人员照片</th>
                                        <th >项目名称</th>
                                        <th >项目类型</th>
                                        <th >项目详情</th>
                                        <th >项目状态</th>


                                        <th >bug名称</th>
                                        <th >bug类型</th>
                                        <th >添加时间</th>
                                        <th >bug详情</th>
                                        <th >bug是否处理</th>
                                        <th >回复详情</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody id="thisTbody">
                                    </tbody>
                                </table>
                                <div class="col-md-6 col-sm-3">
                                    <div class="dataTables_length" id="tableId_length">

                                        <select name="tableId_length" aria-controls="tableId" id="selectPageSize"
                                                onchange="changePageSize()">
                                            <option value="10">10</option>
                                            <option value="25">25</option>
                                            <option value="50">50</option>
                                            <option value="100">100</option>
                                        </select>
                                        条 每页

                                    </div>
                                </div>
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-end">
                                        <li class="page-item" id="tableId_previous" onclick="pageNumChange('pre')">
                                            <a class="page-link" href="#" tabindex="-1">上一页</a>
                                        </li>

                                        <li class="page-item" id="tableId_next" onclick="pageNumChange('next')">
                                            <a class="page-link" href="#">下一页</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
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
    <script language="javascript" type="text/javascript"
            src="${pageContext.request.contextPath}/resources/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
    <script>

        <%@ include file="../../utils/menu.jsp"%>
        <%@ include file="../../static/setMenu.js"%>
        <%@ include file="../../utils/baseUrl.jsp"%>
        <%@ include file="../../static/getRoleButtons.js"%>
        <%@ include file="../../static/crossBtnControl.js"%>
        var tableName = "bugguali";
        var pageType = "list";
        var searchForm = {key: ""};
        var pageIndex = 1;
        var pageSize = 10;
        var totalPage = 0;
        var dataList = [];
        var sortColumn = '';
        var sortOrder = '';
        var ids = [];
        var checkAll = false;

        <!-- 级联表的级联字典表 -->
        var xiangmuTypesOptions = [];
        var xiangmuZhuangtaiTypesOptions = [];

        <!-- 本表的级联字段表 -->
        var buggualiTypesOptions = [];
        var buggualiChuliTypesOptions = [];

        function init() {
            // 满足条件渲染提醒接口
        }

        // 改变每页记录条数
        function changePageSize() {
            var selection = document.getElementById('selectPageSize');
            var index = selection.selectedIndex;
            pageSize = selection.options[index].value;
            getDataList();
        }



        // 查询
        function search() {
            searchForm = {key: ""};

        <!-- 级联表的级联字典表 -->
                                         
                            //测试人员姓名
            var ceshiNameSearchInput = $('#ceshiNameSearch');
            if( ceshiNameSearchInput != null){
                if (ceshiNameSearchInput.val() != null && ceshiNameSearchInput.val() != '') {
                    searchForm.ceshiName = $('#ceshiNameSearch').val();
                }
            }
                     
                            //测试人员手机号
            var ceshiPhoneSearchInput = $('#ceshiPhoneSearch');
            if( ceshiPhoneSearchInput != null){
                if (ceshiPhoneSearchInput.val() != null && ceshiPhoneSearchInput.val() != '') {
                    searchForm.ceshiPhone = $('#ceshiPhoneSearch').val();
                }
            }
                     
                            //测试人员身份证号
            var ceshiIdNumberSearchInput = $('#ceshiIdNumberSearch');
            if( ceshiIdNumberSearchInput != null){
                if (ceshiIdNumberSearchInput.val() != null && ceshiIdNumberSearchInput.val() != '') {
                    searchForm.ceshiIdNumber = $('#ceshiIdNumberSearch').val();
                }
            }
                                                                                                                         
                            //项目名称
            var xiangmuNameSearchInput = $('#xiangmuNameSearch');
            if( xiangmuNameSearchInput != null){
                if (xiangmuNameSearchInput.val() != null && xiangmuNameSearchInput.val() != '') {
                    searchForm.xiangmuName = $('#xiangmuNameSearch').val();
                }
            }
                     
            var xiangmuTypesSelectSearchInput = document.getElementById("xiangmuTypesSelectSearch");
            if(xiangmuTypesSelectSearchInput != null){
                var xiangmuTypesIndex = xiangmuTypesSelectSearchInput.selectedIndex;
                if( xiangmuTypesIndex  != 0){
                    searchForm.xiangmuTypes = document.getElementById("xiangmuTypesSelectSearch").options[xiangmuTypesIndex].value;
                }
            }
                                                             
            var xiangmuZhuangtaiTypesSelectSearchInput = document.getElementById("xiangmuZhuangtaiTypesSelectSearch");
            if(xiangmuZhuangtaiTypesSelectSearchInput != null){
                var xiangmuZhuangtaiTypesIndex = xiangmuZhuangtaiTypesSelectSearchInput.selectedIndex;
                if( xiangmuZhuangtaiTypesIndex  != 0){
                    searchForm.xiangmuZhuangtaiTypes = document.getElementById("xiangmuZhuangtaiTypesSelectSearch").options[xiangmuZhuangtaiTypesIndex].value;
                }
            }
                        <!-- 本表的查询条件 -->

                 
            //bug名称
            var buggualiNameSearchInput = $('#buggualiNameSearch');
            if( buggualiNameSearchInput != null){
                if (buggualiNameSearchInput.val() != null && buggualiNameSearchInput.val() != '') {
                    searchForm.buggualiName = $('#buggualiNameSearch').val();
                }
            }
     
                //bug类型
            var buggualiTypesSelectSearchInput = document.getElementById("buggualiTypesSelectSearch");
            if(buggualiTypesSelectSearchInput != null){
                var buggualiTypesIndex = buggualiTypesSelectSearchInput.selectedIndex;
                if( buggualiTypesIndex  != 0){
                    searchForm.buggualiTypes= document.getElementById("buggualiTypesSelectSearch").options[buggualiTypesIndex].value;
                }
            }
             
                //bug是否处理
            var buggualiChuliTypesSelectSearchInput = document.getElementById("buggualiChuliTypesSelectSearch");
            if(buggualiChuliTypesSelectSearchInput != null){
                var buggualiChuliTypesIndex = buggualiChuliTypesSelectSearchInput.selectedIndex;
                if( buggualiChuliTypesIndex  != 0){
                    searchForm.buggualiChuliTypes= document.getElementById("buggualiChuliTypesSelectSearch").options[buggualiChuliTypesIndex].value;
                }
            }
                    getDataList();
        }

        // 获取数据列表
        function getDataList() {
            http("bugguali/page", "GET", {
                page: pageIndex,
                limit: pageSize,
                sort: sortColumn,
                order: sortOrder,
                //本表的
                buggualiName: searchForm.buggualiName,
                buggualiTypes: searchForm.buggualiTypes,
                buggualiChuliTypes: searchForm.buggualiChuliTypes,
            //级联表的
                ceshiName: searchForm.ceshiName,
                ceshiPhone: searchForm.ceshiPhone,
                ceshiIdNumber: searchForm.ceshiIdNumber,

                xiangmuName: searchForm.xiangmuName,
                xiangmuTypes: searchForm.xiangmuTypes,
                xiangmuZhuangtaiTypes: searchForm.xiangmuZhuangtaiTypes,


            }, (res) => {
                if(res.code == 0) {
                    clear();
                    $("#thisTbody").html("");
                    dataList = res.data.list;
                    totalPage = res.data.totalPage;
                    for (var i = 0; i < dataList.length; i++) { //遍历一下表格数据  
                        var trow = setDataRow(dataList[i], i); //定义一个方法,返回tr数据 
                        $('#thisTbody').append(trow);
                    }
                    pagination(); //渲染翻页组件
                    getRoleButtons();// 权限按钮控制
                }
            });
        }

        // 渲染表格数据
        function setDataRow(item, number) {
            //创建行 
            var row = document.createElement('tr');
            row.setAttribute('class', 'useOnce');
            //创建勾选框
            var checkbox = document.createElement('td');
            var checkboxDiv = document.createElement('div');
            checkboxDiv.setAttribute("class", "custom-control custom-checkbox");
            var checkboxInput = document.createElement('input');
            checkboxInput.setAttribute("class", "custom-control-input");
            checkboxInput.setAttribute("type", "checkbox");
            checkboxInput.setAttribute('name', 'chk');
            checkboxInput.setAttribute('value', item.id);
            checkboxInput.setAttribute("id", number);
            checkboxDiv.appendChild(checkboxInput);
            var checkboxLabel = document.createElement('label');
            checkboxLabel.setAttribute("class", "custom-control-label");
            checkboxLabel.setAttribute("for", number);
            checkboxDiv.appendChild(checkboxLabel);
            checkbox.appendChild(checkboxDiv);
            row.appendChild(checkbox)


                    //测试人员姓名
            var ceshiNameCell = document.createElement('td');
            ceshiNameCell.innerHTML = item.ceshiName;
            row.appendChild(ceshiNameCell);


                    //测试人员手机号
            var ceshiPhoneCell = document.createElement('td');
            ceshiPhoneCell.innerHTML = item.ceshiPhone;
            row.appendChild(ceshiPhoneCell);


                    //测试人员身份证号
            var ceshiIdNumberCell = document.createElement('td');
            ceshiIdNumberCell.innerHTML = item.ceshiIdNumber;
            row.appendChild(ceshiIdNumberCell);


                //测试人员照片
            var ceshiPhotoCell = document.createElement('td');
            var ceshiPhotoImg = document.createElement('img');
            var ceshiPhotoImgValue = item.ceshiPhoto;
            if(ceshiPhotoImgValue !=null && ceshiPhotoImgValue !='' && ceshiPhotoImgValue !='null'){
                    ceshiPhotoImg.setAttribute('src', ceshiPhotoImgValue);
                    ceshiPhotoImg.setAttribute('height', 100);
                    ceshiPhotoImg.setAttribute('width', 100);
                    ceshiPhotoCell.appendChild(ceshiPhotoImg);
            }else{
                    ceshiPhotoCell.innerHTML = "暂无图片";
            }
            row.appendChild(ceshiPhotoCell);


                    //项目名称
            var xiangmuNameCell = document.createElement('td');
            xiangmuNameCell.innerHTML = item.xiangmuName;
            row.appendChild(xiangmuNameCell);

                        //项目类型
            var xiangmuTypesCell = document.createElement('td');
            xiangmuTypesCell.innerHTML = item.xiangmuValue;
            row.appendChild(xiangmuTypesCell);


                    //项目详情
            var xiangmuContentCell = document.createElement('td');
            //如果图文详情包含图片
            if (item.xiangmuContent && item.xiangmuContent.indexOf('img') != -1) {
                //暂时只考虑图片+文字 和 文字+图片的情况
                var beginIndex = item.xiangmuContent.indexOf('<img');
                var endIndex = item.xiangmuContent.indexOf('>');
                    xiangmuContentCell.innerHTML = item.xiangmuContent.substring(beginIndex, endIndex + 1).replace("img", "img width='100' height='100'");
            } else {
                if (item.xiangmuContent != null && item.xiangmuContent != "" && item.xiangmuContent.length >= 11) {
                        xiangmuContentCell.innerHTML = item.xiangmuContent.substring(0, 10) + "...";
                } else {
                        xiangmuContentCell.innerHTML = item.xiangmuContent;
                }
            }
            row.appendChild(xiangmuContentCell);

                        //项目状态
            var xiangmuZhuangtaiTypesCell = document.createElement('td');
            xiangmuZhuangtaiTypesCell.innerHTML = item.xiangmuZhuangtaiValue;
            row.appendChild(xiangmuZhuangtaiTypesCell);



            //bug名称
            var buggualiNameCell = document.createElement('td');
            buggualiNameCell.innerHTML = item.buggualiName;
            row.appendChild(buggualiNameCell);


            //bug类型
            var buggualiTypesCell = document.createElement('td');
            buggualiTypesCell.innerHTML = item.buggualiValue;
            row.appendChild(buggualiTypesCell);


            //添加时间
            var insertTimeCell = document.createElement('td');
            insertTimeCell.innerHTML = item.insertTime;
            row.appendChild(insertTimeCell);


                //bug详情
            var buggualiContentCell = document.createElement('td');
            //如果图文详情包含图片
            if (item.buggualiContent && item.buggualiContent.indexOf('img') != -1) {
                //暂时只考虑图片+文字 和 文字+图片的情况
                var beginIndex = item.buggualiContent.indexOf('<img');
                var endIndex = item.buggualiContent.indexOf('>');
                    buggualiContentCell.innerHTML = item.buggualiContent.substring(beginIndex, endIndex + 1).replace("img", "img width='100' height='100'");
            } else {
                if (item.buggualiContent != null && item.buggualiContent != "" && item.buggualiContent.length >= 11) {
                        buggualiContentCell.innerHTML = item.buggualiContent.substring(0, 10) + "...";
                } else {
                        buggualiContentCell.innerHTML = item.buggualiContent;
                }
            }
            row.appendChild(buggualiContentCell);


            //bug是否处理
            var buggualiChuliTypesCell = document.createElement('td');
            buggualiChuliTypesCell.innerHTML = item.buggualiChuliValue;
            row.appendChild(buggualiChuliTypesCell);


                //回复详情
            var replyContentCell = document.createElement('td');
            //如果图文详情包含图片
            if (item.replyContent && item.replyContent.indexOf('img') != -1) {
                //暂时只考虑图片+文字 和 文字+图片的情况
                var beginIndex = item.replyContent.indexOf('<img');
                var endIndex = item.replyContent.indexOf('>');
                    replyContentCell.innerHTML = item.replyContent.substring(beginIndex, endIndex + 1).replace("img", "img width='100' height='100'");
            } else {
                if (item.replyContent != null && item.replyContent != "" && item.replyContent.length >= 11) {
                        replyContentCell.innerHTML = item.replyContent.substring(0, 10) + "...";
                } else {
                        replyContentCell.innerHTML = item.replyContent;
                }
            }
            row.appendChild(replyContentCell);



            //每行按钮
            var btnGroup = document.createElement('td');

            //详情按钮
            var detailBtn = document.createElement('button');
            var detailAttr = "detail(" + item.id + ')';
            detailBtn.setAttribute("type", "button");
            detailBtn.setAttribute("class", "btn btn-info btn-sm 查看");
            detailBtn.setAttribute("onclick", detailAttr);
            detailBtn.innerHTML = "查看";
            btnGroup.appendChild(detailBtn);

            //修改按钮
            var editBtn = document.createElement('button');
            var editAttr = 'edit(' + item.id + ')';
            editBtn.setAttribute("type", "button");
            editBtn.setAttribute("class", "btn btn-warning btn-sm 修改");
            editBtn.setAttribute("onclick", editAttr);
            editBtn.innerHTML = "修改";
            btnGroup.appendChild(editBtn);

            //删除按钮
            var deleteBtn = document.createElement('button');
            var deleteAttr = 'remove(' + item.id + ')';
            deleteBtn.setAttribute("type", "button");
            deleteBtn.setAttribute("class", "btn btn-danger btn-sm 删除");
            deleteBtn.setAttribute("onclick", deleteAttr);
            deleteBtn.innerHTML = "删除";
            btnGroup.appendChild(deleteBtn);
            row.appendChild(btnGroup);

            return row;
    }


        // 翻页
        function pageNumChange(val) {
            if (val == 'pre') {
                pageIndex--;
            } else if (val == 'next') {
                pageIndex++;
            } else {
                pageIndex = val;
            }
            getDataList();
        }

        // 下载
        function download(url) {
            window.open(url);
        }
        // 打开新窗口播放媒体
        function mediaPlay(url){
            window.open(url);
        }

        // 渲染翻页组件
        function pagination() {
            var beginIndex = pageIndex;
            var endIndex = pageIndex;
            var point = 4;
            //计算页码
            for (var i = 0; i < 3; i++) {
                if (endIndex == totalPage) {
                    break;
                }
                endIndex++;
                point--;
            }
            for (var i = 0; i < 3; i++) {
                if (beginIndex == 1) {
                    break;
                }
                beginIndex--;
                point--;
            }
            if (point > 0) {
                while (point > 0) {
                    if (endIndex == totalPage) {
                        break;
                    }
                    endIndex++;
                    point--;
                }
                while (point > 0) {
                    if (beginIndex == 1) {
                        break;
                    }
                    beginIndex--;
                    point--
                }
            }
            // 是否显示 前一页 按钮
            if (pageIndex > 1) {
                $('#tableId_previous').show();
            } else {
                $('#tableId_previous').hide();
            }
            // 渲染页码按钮
            for (var i = beginIndex; i <= endIndex; i++) {
                var pageNum = document.createElement('li');
                pageNum.setAttribute('onclick', "pageNumChange(" + i + ")");
                if (pageIndex == i) {
                    pageNum.setAttribute('class', 'paginate_button page-item active useOnce');
                } else {
                    pageNum.setAttribute('class', 'paginate_button page-item useOnce');
                }
                var pageHref = document.createElement('a');
                pageHref.setAttribute('class', 'page-link');
                pageHref.setAttribute('href', '#');
                pageHref.setAttribute('aria-controls', 'tableId');
                pageHref.setAttribute('data-dt-idx', i);
                pageHref.setAttribute('tabindex', 0);
                pageHref.innerHTML = i;
                pageNum.appendChild(pageHref);
                $('#tableId_next').before(pageNum);
            }
            // 是否显示 下一页 按钮
            if (pageIndex < totalPage) {
                $('#tableId_next').show();
                $('#tableId_next a').attr('data-dt-idx', endIndex + 1);
            } else {
                $('#tableId_next').hide();
            }
            var pageNumInfo = "当前第 " + pageIndex + " 页，共 " + totalPage + " 页";
            $('#tableId_info').html(pageNumInfo);
        }

        // 跳转到指定页
        function toThatPage() {
            //var index = document.getElementById('pageIndexInput').value;
            if (index < 0 || index > totalPage) {
                alert('请输入正确的页码');
            } else {
                pageNumChange(index);
            }
        }

        // 全选/全不选
        function chooseAll() {
            checkAll = !checkAll;
            var boxs = document.getElementsByName("chk");
            for (var i = 0; i < boxs.length; i++) {
                boxs[i].checked = checkAll;
            }
        }

        // 批量删除
        function deleteMore() {
            ids = []
            var boxs = document.getElementsByName("chk");
            for (var i = 0; i < boxs.length; i++) {
                if (boxs[i].checked) {
                    ids.push(boxs[i].value)
                }
            }
            if (ids.length == 0) {
                alert('请勾选要删除的记录');
            } else {
                remove(ids);
            }
        }

        // 删除
        function remove(id) {
            var mymessage = confirm("真的要删除吗？");
            if (mymessage == true) {
                var paramArray = [];
                if (id == ids) {
                    paramArray = id;
                } else {
                    paramArray.push(id);
                }
                httpJson("bugguali/delete", "POST", paramArray, (res) => {
                    if(res.code == 0){
                        getDataList();
                        alert('删除成功');
                    }
                });
            } else {
                alert("已取消操作");
            }
        }

        // 用户登出
        <%@ include file="../../static/logout.jsp"%>

        //修改
        function edit(id) {
            window.sessionStorage.setItem('updateId', id)
            window.location.href = "add-or-update.jsp"
        }

        //清除会重复渲染的节点
        function clear() {
            var elements = document.getElementsByClassName('useOnce');
            for (var i = elements.length - 1; i >= 0; i--) {
                elements[i].parentNode.removeChild(elements[i]);
            }
        }

        //添加
        function add() {
            window.sessionStorage.setItem("addbugguali", "addbugguali");
            window.location.href = "add-or-update.jsp"
        }

        //报表
        function graph() {
            window.location.href = "graph.jsp"
        }

        // 查看详情
        function detail(id) {
            window.sessionStorage.setItem("updateId", id);
            window.location.href = "info.jsp";
        }

    //填充级联表搜索下拉框
                                         
                     
                     
                                                                                                                         
                     
        function xiangmuTypesSelectSearch() {
            var xiangmuTypesSelectSearch = document.getElementById('xiangmuTypesSelectSearch');
            if(xiangmuTypesSelectSearch != null) {
                xiangmuTypesSelectSearch.add(new Option('-请选择-',''));
                if (xiangmuTypesOptions != null && xiangmuTypesOptions.length > 0){
                    for (var i = 0; i < xiangmuTypesOptions.length; i++) {
                            xiangmuTypesSelectSearch.add(new Option(xiangmuTypesOptions[i].indexName, xiangmuTypesOptions[i].codeIndex));
                    }
                }
            }
        }
                                                             
        function xiangmuZhuangtaiTypesSelectSearch() {
            var xiangmuZhuangtaiTypesSelectSearch = document.getElementById('xiangmuZhuangtaiTypesSelectSearch');
            if(xiangmuZhuangtaiTypesSelectSearch != null) {
                xiangmuZhuangtaiTypesSelectSearch.add(new Option('-请选择-',''));
                if (xiangmuZhuangtaiTypesOptions != null && xiangmuZhuangtaiTypesOptions.length > 0){
                    for (var i = 0; i < xiangmuZhuangtaiTypesOptions.length; i++) {
                            xiangmuZhuangtaiTypesSelectSearch.add(new Option(xiangmuZhuangtaiTypesOptions[i].indexName, xiangmuZhuangtaiTypesOptions[i].codeIndex));
                    }
                }
            }
        }
                    
    //填充本表搜索下拉框
                 
     
        function buggualiTypesSelectSearch() {
            var buggualiTypesSelectSearch = document.getElementById('buggualiTypesSelectSearch');
            if(buggualiTypesSelectSearch != null) {
                buggualiTypesSelectSearch.add(new Option('-请选择-',''));
                if (buggualiTypesOptions != null && buggualiTypesOptions.length > 0){
                    for (var i = 0; i < buggualiTypesOptions.length; i++) {
                            buggualiTypesSelectSearch.add(new Option(buggualiTypesOptions[i].indexName,buggualiTypesOptions[i].codeIndex));
                    }
                }
            }
        }
             
        function buggualiChuliTypesSelectSearch() {
            var buggualiChuliTypesSelectSearch = document.getElementById('buggualiChuliTypesSelectSearch');
            if(buggualiChuliTypesSelectSearch != null) {
                buggualiChuliTypesSelectSearch.add(new Option('-请选择-',''));
                if (buggualiChuliTypesOptions != null && buggualiChuliTypesOptions.length > 0){
                    for (var i = 0; i < buggualiChuliTypesOptions.length; i++) {
                            buggualiChuliTypesSelectSearch.add(new Option(buggualiChuliTypesOptions[i].indexName,buggualiChuliTypesOptions[i].codeIndex));
                    }
                }
            }
        }
        
    //查询级联表搜索条件所有列表
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

    //查询当前表搜索条件所有列表
            function buggualiTypesSelect() {
                //填充下拉框选项
                http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=bugguali_types", "GET", {}, (res) => {
                    if(res.code == 0){
                        buggualiTypesOptions = res.data.list;
                    }
                });
            }
            function buggualiChuliTypesSelect() {
                //填充下拉框选项
                http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=bugguali_chuli_types", "GET", {}, (res) => {
                    if(res.code == 0){
                        buggualiChuliTypesOptions = res.data.list;
                    }
                });
            }










        $(document).ready(function () {
            //激活翻页按钮
            $('#tableId_previous').attr('class', 'paginate_button page-item previous')
            $('#tableId_next').attr('class', 'paginate_button page-item next')
            //隐藏原生搜索框
            $('#tableId_filter').hide()
            //设置右上角用户名
            $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
            //设置项目名
            $('.sidebar-header h3 a').html(projectName)
            setMenu();
            init();

            //查询级联表的搜索下拉框
            xiangmuTypesSelect();
            xiangmuZhuangtaiTypesSelect();

            //查询当前表的搜索下拉框
            buggualiTypesSelect();
            buggualiChuliTypesSelect();
            getDataList();

        //级联表的下拉框赋值
                                                 
                         
                         
                                                                                                                                                 
                         
            xiangmuTypesSelectSearch();
                                                                         
            xiangmuZhuangtaiTypesSelectSearch();
                        
        //当前表的下拉框赋值
                                                 
             
            buggualiTypesSelectSearch();
                                     
            buggualiChuliTypesSelectSearch();
                        
        <%@ include file="../../static/myInfo.js"%>
    });
</script>
</body>

</html>