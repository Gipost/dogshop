
</div>
<nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
    <a class="navbar-brand" href="/">
        <img src="/images/dogshop.png" width="30" height="30" class="d-inline-block align-top" alt="">
        Собачий питомник
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    </div>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">

        <div class="navbar-nav">
            <#if !currentUser?? || currentUser.role=="ROLE_CUSTOMER">
                <a class="nav-item nav-link <#if category?? && category.categoryType == 0>active</#if>"
                   href="/category/0">
                    Собаки
                </a>
                <a class="nav-item nav-link <#if category?? && category.categoryType == 1>active</#if>"
                   href="/category/1">
                    Корма
                </a>
                <a class="nav-item nav-link <#if category?? && category.categoryType == 2>active</#if>"
                   href="/category/2">
                    Аксессуары для собак
                </a>
            </#if>
        </div>

        <div class="navbar-nav ml-auto">
            <#if !currentUser?? || currentUser.role=="ROLE_CUSTOMER"  >
                <a class="nav-item nav-link " href="/cart">
                    <i class="fa fa-shopping-cart"></i>
                    Корзина
                </a>
            </#if>
            <#if currentUser?? >
                <a class="nav-item nav-link " href="/order">
                    <i class="fa fa-list-ul"></i>
                    Заказы
                </a>
                <a class="nav-item nav-link " href="/profiles">
                    ${currentUser.name}
                </a>
                <a class="nav-item nav-link " href="/logout">
                    Выйти
                </a>
            <#else>
                <a class="nav-item nav-link " href="/login">
                    Войти
                </a>
                <a class="nav-item nav-link " href="/register">
                    Зарегистрироваться
                </a>
            </#if>
        </div>
    </div>
</nav>
<#setting number_format="computer">
