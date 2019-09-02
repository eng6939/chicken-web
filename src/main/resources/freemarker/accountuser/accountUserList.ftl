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

    <h2>用户账户列表</h2>
    <div class="query-box">
        <form class="form" name="fromSubmit" id="fromSubmit" action="/accountUser/accountUserPageList" method="post">
            <select class="inline-block" name="userId" id="userId">
                <option value="">请选择用户</option>
                <#if userList?exists>
                    <#list userList as user>
                        <option value="${user.id}" <#if user.id == userId> selected="selected" </#if> > ${user.nickName!}</option>
                    </#list>
                </#if>
            </select>
            <input type="hidden" name="currentPage" id="currentPage" value="${currentPage?c}">
            <input type="submit" class="btn btn-primary" value="查询">
        </form>
    </div>
    <table class="table" cellspacing="0" cellpadding="0">
        <thead>
        <tr>
            <td>序号</td>
            <td class="text-left">用户昵称</td>
            <td class="text-left">OPENID</td>
            <td class="text-left">当前积分</td>
            <td class="text-left">获得积分总数</td>
            <td class="text-left">消费积分总数</td>
            <td>操作</td>
        </tr>
        </thead>
        <tbody>
        <#list list as item>
        <tr>
            <td>${item_index + 1}</td>
            <td class="text-left"><#if item.nick_name??>${item.nick_name}</#if></td>
            <td class="text-left"><#if item.openid??>${item.openid}</#if></td>
            <td class="text-left"><#if item.balance??>${item.balance}</#if></td>
            <td class="text-left"><#if item.attent_count??>${item.attent_count}</#if></td>
            <td class="text-left"><#if item.consume_count??>${item.consume_count}</#if></td>
            <td><a href="/accountUser/accountUserEdit/${item.id}">编辑</a></td>
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