<?php
/*
Template Name: Страница оплаты
*/
get_header(); ?>
    <style>
        .theader,
        .tfooter {
            background: #00a8ec;
            color: #fff;
        }

        .b-table {
            overflow: auto;
        }

        .b-table table th,
        .b-table table td {
            text-align: center;
        }

        .bth-pay {
            background: #00a8ec;
            letter-spacing: 2.5px !important;
            padding: 10px 60px !important;
            color: #fff;
        }

        .bth-pay:hover {
            background: #009bda;
            color: #fff;

        }

        .recents-title {
            font-family: Roboto;
            font-weight: 100 !important;
        }

        .b-paymetod {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .b-paymetod-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-bottom: 20px;
        }

        .b-paymetod-list article {
            width: 250px;
            background: #f4fcff;
            margin: 10px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column-reverse;
            padding: 10px 0px;
            border-radius: 5px;
        }

        .cc-selector input {
            margin: 0;
            padding: 0;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
        }

        .kartoi {
            background-image: url(/wp-content/themes/tester/assets/images/payment-icon/kartoi.png);
        }

        .ymoney {
            background-image: url(/wp-content/themes/tester/assets/images/payment-icon/ymoney.png);
        }

        .nalichnye {
            background-image: url(/wp-content/themes/tester/assets/images/payment-icon/nalichnye.png);
        }

        .alfaklik {
            background-image: url(/wp-content/themes/tester/assets/images/payment-icon/alfaklik.png);
        }

        .promsvyaz {
            background-image: url(/wp-content/themes/tester/assets/images/payment-icon/promsvyaz.png);
        }

        .sberbank-online {
            background-image: url(/wp-content/themes/tester/assets/images/payment-icon/sberbank-online.png);
        }

        .cc-selector input:active+.drinkcard-cc {
            opacity: .9;
        }

        .cc-selector input:checked+.drinkcard-cc {
            -webkit-filter: none;
            -moz-filter: none;
            filter: none;
        }

        .drinkcard-cc {
            cursor: pointer;
            background-size: contain;
            background-repeat: no-repeat;
            display: inline-block;
            width: 90%;
            height: 150px;
            -webkit-transition: all 100ms ease-in;
            -moz-transition: all 100ms ease-in;
            transition: all 100ms ease-in;
            -webkit-filter: brightness(1.8) grayscale(1) opacity(.7);
            -moz-filter: brightness(1.8) grayscale(1) opacity(.7);
            filter: brightness(1.8) grayscale(1) opacity(.7);
        }

        .drinkcard-cc:hover {
            -webkit-filter: brightness(1.2) grayscale(.5) opacity(.9);
            -moz-filter: brightness(1.2) grayscale(.5) opacity(.9);
            filter: brightness(1.2) grayscale(.5) opacity(.9);
        }

        .cc-selector {
            margin-bottom: 20px;
        }

        .alert .war-inner-text {
            color: #fff;
            text-align: center;
            text-transform: uppercase;
        }

    </style>
    <section class="participation">
        <div class="wrap">
            <h3 class="recents-title">Оплата заявки </h3>
            <div class="kurator"><strong>Куратор: Иванова Анна Михайловна</strong></div>
            <div class="b-table">
                <table>
                    <tbody>
                        <tr class="theader">
                            <th>Предмет</th>
                            <th>Класс</th>
                            <th>Участников</th>
                            <th>Стоимость</th>
                        </tr>
                        <tr>
                            <td>Математика</td>
                            <td>4 класс</td>
                            <td>20</td>
                            <td>500 руб.</td>
                        </tr>
                        <tr>
                            <td>Математика</td>
                            <td>5 класс</td>
                            <td>10</td>
                            <td>250 руб.</td>
                        </tr>
                        <tr>
                            <td>Химия</td>
                            <td>4 класс</td>
                            <td>15</td>
                            <td>375 руб.</td>
                        </tr>
                        <tr>
                            <td>Русский язык</td>
                            <td>4 класс</td>
                            <td>12</td>
                            <td>300 руб.</td>
                        </tr>
                        <tr class="tfooter">
                            <td colspan="2">Итого:</td>
                            <td>57</td>
                            <td>1425 руб.</td>
                        </tr>

                    </tbody>
                </table>
            </div>
            <h4 class="recents-title">Выберите способ оплаты</h4>

            <form action="https://demomoney.yandex.ru/eshop.xml" method="post">
                <!-- Обязательные поля -->
                <input name="shopId" value="151" type="hidden" />
                <input name="scid" value="363" type="hidden" />
                <input name="customerNumber" value="100500" />
                <input name="sum" value="100">
                <div class="cc-selector">
                    <div class="b-paymetod">
                        <div class="b-paymetod-list">

                            <article>
                                Банковская карта
                                <input id="kartoi" type="radio" name="paymentType" value="AC" />
                                <label class="drinkcard-cc kartoi" for="kartoi"></label>
                            </article>
                            <article>
                                Яндекс деньги
                                <input id="ymoney" type="radio" name="paymentType" value="PC" />
                                <label class="drinkcard-cc ymoney" for="ymoney"></label>
                            </article>
                            <article>
                                Наличные
                                <input id="nalichnye" type="radio" name="paymentType" value="GP" />
                                <label class="drinkcard-cc nalichnye" for="nalichnye"></label>
                            </article>
                            <article>
                                Альфаклик
                                <input id="alfaklik" type="radio" name="paymentType" value="alfaklik" />
                                <label class="drinkcard-cc alfaklik" for="alfaklik"></label>
                            </article>
                            <article>
                                Промсвязьбанк
                                <input id="promsvyaz" type="radio" name="paymentType" value="promsvyaz" />
                                <label class="drinkcard-cc promsvyaz" for="promsvyaz"></label>
                            </article>
                            <article>
                                Сбербанк онлайн
                                <input id="sberbank-online" type="radio" name="paymentType" value="sberbank-online" />
                                <label class="drinkcard-cc sberbank-online" for="sberbank-online"></label>
                            </article>
                        </div>
                        <div class="alert alert-danger" role="alert">
                            <div class="war-inner-text">
                                <p>Внимание! при оплате любым способом кроме квитанции денежные средства зачисляются мгновнно!</p>
                                <p><strong>При оплате по квитанции обработка оплаты может занять до 24 часов. Вам необходимо будет загрузить скан или фото квитанции!</strong></p>
                            </div>
                        </div>
                        <input type="submit" class="btn bth-pay" value="ОПЛАТИТЬ">
                    </div>

                </div>

            </form>



        </div>


    </section>
    <?php get_footer();
