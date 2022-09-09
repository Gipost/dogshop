<html>
<#include "partials/_header.ftl">
<body>
<div class="container ">
    <#include "partials/_nav.ftl">
    <h1 align="center" class="display-4 mb-5">Войти</h1>
    <div style="width:40%; margin: 25px auto" >
        <#if (RequestParameters.error)??>
            <div class="alert alert-danger">
                Неверное имя или пароль.
            </div>
        </#if>
        <#if (RequestParameters.logout)??>
        <div class="alert alert-info">
            Вы вышли из системы.
        </div>
        </#if>

        <form action="/login" method="post">
            <div class="form-group">
                <label>Email address</label>
                <input type="text" class="form-control form-control-lg" id="email" name="email" placeholder="Enter email" required="true" autofocus="true">
            </div>

            <div class="form-group">
                <label>Password</label>
                <input type="password" class="form-control form-control-lg" id="password" name="password" placeholder="Password" required="true">
            </div>

            <div class="form-group">
                <div>
                    <input type="checkbox" id="remember_me" name="remember-me">
                    <label for="remember_me" class="inline">Запомнить меня</label>
                    <a class="float-right" href="/register">Зарегистрироваться</a>
                </div>
            </div>

            <div class="form-group">
                <input type="submit" class="btn btn-lg btn-primary btn-block" value="Войти"/>
            </div>
        </form>

            <strong>Пользователи для теста функционала</strong>
            <table style="width: 100%;" id="sampleLoginTable">
                <tr>
                    <td><a
                            onclick="fillLoginFields('customer1@email.com','123')"
                            href="javascript:void(0)">Покупатель</a></td>
                    <td><a
                            onclick="fillLoginFields('employee1@email.com','123')"
                            href="javascript:void(0)">Работник</a></td>
                    <td><a
                            onclick="fillLoginFields('manager1@email.com','123')"
                            href="javascript:void(0)">Менеджер</a></td>
                </tr>
            </table>

    </div>



</div>
</body>
<#include "partials/_footer.ftl">
<script>
    function fillLoginFields(u, p) {
        document.getElementById("email").value = u;
        document.getElementById("password").value = p;
        document.forms[0].submit();
    }
</script>
</html>