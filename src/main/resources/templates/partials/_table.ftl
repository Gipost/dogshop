<table id="table" class="table table-striped text-center" style="width:100%;">
    <thead>
    <tr>

        <th scope="col">Фото</th>
        <th scope="col">Номер</th>
        <th scope="col">Имя</th>
        <th scope="col">Тип</th>
        <th scope="col">Описание</th>
        <th scope="col">Цена</th>
        <th scope="col">Количество</th>
        <th scope="col">Статус</th>
        <th scope="col">Действие</th>

    </tr>
    </thead>
    <tbody>
        <#list products.content as productInfo>
        <tr>
            <th class="align-middle" scope="row">
                <img height="100px" src="${productInfo.getProductIcon()}">
            </th>
            <td class="align-middle">${productInfo.getProductId()}</td>
            <td class="align-middle">${productInfo.getProductName()}</td>
            <td class="align-middle">${categoryArray[productInfo.getCategoryType()]}</td>
            <td class="align-middle">${productInfo.getProductDescription()}</td>
            <td class="align-middle">${productInfo.getProductPrice()?string.currency}</td>
            <td class="align-middle">${productInfo.getProductStock()}</td>
            <td class="align-middle">${statusArray[productInfo.getProductStatus()]}</td>
            <td class="align-middle">
                <a style="display: block" href="/seller/product/${productInfo.getProductId()}/edit">
                    Редактировать</a>
                <#if currentUser.role=="ROLE_MANAGER">
                    <a style="display: block" href="/seller/product/${productInfo.getProductId()}/delete">
                        Удалить</a>
                </#if>

            </td>

        </#list>
    </tbody>
</table>

