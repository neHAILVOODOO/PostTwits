<#import "parts/common.ftlh" as c>


<@c.page>
    <h5>${username}</h5>
    ${message?ifExists}

    <form method="post">

        <div class="form-group">
            <label class="col-sm-2 col-form-label"> Пароль: </label>
            <div class="col-sm-6">
                <input type="password" name="password" class="form-control" placeholder="Пароль"/>
            </div>
        </div>

            <div class="form-group">
                <label class="col-sm-2 col-form-label"> Электронная почта: </label>
                <div class="col-sm-6">
                    <input type="email" name="email" class="form-control" placeholder="вашадрес@.com" value="${email!''}"/>
                </div>
            </div>

        <input type = "hidden" name = "_csrf" value="${_csrf.token}" />
        <button class="btn btn-primary" type="submit"/>Изменить</button>
    </form>




</@c.page>