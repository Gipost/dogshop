<html>
<#include "../partials/_header.ftl">
<body>
<div class="container ">
    <#include "../partials/_nav.ftl">
    <h1 align="center" class="display-4 mb-5">Детали заказа</h1>

    <table class="table table-striped text-center">
        <thead>
        <tr>
            <th scope="col">Фото</th>
            <th scope="col">Название</th>
            <th scope="col">Описание</th>
            <th scope="col">Цена</th>
            <th scope="col">Количество</th>
            <th scope="col">Всего</th>

        </tr>
        </thead>
        <tbody>
        <#list items as item>
        <tr>
            <th class="align-middle" scope="row">
                <img height="100px" src="${item.getProductIcon()}">
            </th>
            <td class="align-middle">${item.getProductName()}</td>
            <td class="align-middle">${item.getProductDescription()}</td>
            <td class="align-middle">${item.getProductPrice()?string.currency}</td>
            <td class="align-middle">${item.getProductQuantity()}</td>
            <td class="align-middle">${(item.getProductPrice() * item.getProductQuantity())?string.currency}</td>
        </tr>
        </#list>
        </tbody>
    </table>
</div>
<#include "../partials/_footer.ftl">
</body>
</html>
