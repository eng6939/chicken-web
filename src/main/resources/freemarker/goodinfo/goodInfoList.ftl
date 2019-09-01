<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../../css/style.css">
    <title>Document</title>
</head>

<body>
<div class="main-container">
</div>

<div class="main-container">

    <h2>商品列表</h2>
    <div class="query-box">
        <form class="form" name="fromSubmit" id="fromSubmit" action="/goodInfo/goodInfoPageList" method="post">
            <input class="inline-block" type="text" name="goodType" id="goodType" value="<#if goodType??>${goodType}</#if>" placeholder="商品类型">
            <input class="inline-block" type="text" name="goodName" id="goodName" value="<#if goodName??>${goodName}</#if>" placeholder="商品名称">
            <input type="hidden" name="currentPage" id="currentPage" value="${currentPage?c}">
            <input type="submit" class="btn btn-primary" value="查询">
            <input type="button" class="btn btn-success" onclick="javascript:window.location.href='/goodInfo/goodInfoAdd'" value="新建">
        </form>
    </div>
    <table class="table" cellspacing="0" cellpadding="0">
        <thead>
        <tr>
            <td>序号</td>
            <td class="text-left">商品类型</td>
            <td class="text-left">商品名称</td>
            <td class="text-left">剩余数量</td>
            <td class="text-left">虚拟价值</td>
            <td class="text-left">状态</td>
            <td>操作</td>
        </tr>
        </thead>
        <tbody>
        <#list list as item>
        <tr>
            <td>${item_index + 1}</td>
            <td class="text-left">${item.goodType}</td>
            <td class="text-left">${item.goodName}</td>
            <td class="text-left">${item.goodNum}</td>
            <td class="text-left">${item.goodVirtual}</td>
            <td class="text-left"><#if item.status=='1'>在用</#if><#if item.status=='0'>停用</#if></td>
            <td><a href="/goodInfo/goodInfoEdit/${item.id}">编辑</a></td>
        </tr>
        </#list>
        </tbody>
    </table>
<#include "../common/page.ftl">
</div>

</body>
<script src="../../js/jquery/jquery.min.3.3.1.js"></script>
<script src="../../js/js.js"></script>
<script src="../../js/public.js"></script>

</html>