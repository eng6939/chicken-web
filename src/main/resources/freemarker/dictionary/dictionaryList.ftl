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

    <h2>打卡分值列表</h2>
    <div class="query-box">
        <form class="form" name="fromSubmit" id="fromSubmit" action="/dictionary/dictionaryPageList" method="post">
            <input type="hidden" name="dictType" id="dictType" value="<#if dictType??>${dictType}</#if>">
            <input type="text" name="dictName" id="dictName" value="<#if dictName??>${dictName}</#if>" placeholder="名称">
            <input type="text" name="dictContent" id="dictContent" value="<#if dictContent??>${dictContent}</#if>" placeholder="分值">
            <input type="hidden" name="currentPage" id="currentPage" value="${currentPage?c}">
            <input type="submit" class="btn btn-primary" value="查询">
            <input type="button" class="btn btn-success" onclick="javascript:window.location.href='/dictionary/dictionaryAdd/dk'" value="新建">
        </form>
    </div>
    <table class="table" cellspacing="0" cellpadding="0">
        <thead>
        <tr>
            <td>序号</td>
            <td class="text-left">名称</td>
            <td class="text-left">分值</td>
            <td class="text-left">顺序</td>
            <td class="text-left">明细</td>
            <td class="text-left">状态</td>
            <td>操作</td>
        </tr>
        </thead>
        <tbody>
        <#list list as item>
        <tr>
            <td>${item_index + 1}</td>
            <td class="text-left"><#if item.dictName??>${item.dictName}</#if></td>
            <td class="text-left"><#if item.dictContent??>${item.dictContent}</#if></td>
            <td class="text-left"><#if item.dictOrder??>${item.dictOrder}</#if></td>
            <td class="text-left"><#if item.dictDetail??>${item.dictDetail}</#if></td>
            <td class="text-left"><#if item.status=='1'>在用</#if><#if item.status=='0'>停用</#if></td>
            <td><a href="/dictionary/dictionaryEdit/${item.id}">编辑</a></td>
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