        (function ($) {
            $(document).ready(function () {

                //2. Получить элемент, к которому необходимо добавить маску
                $("#telefon_72").mask("+7 (999) 999-99-99");
                $("#indeks_uchebnogo_zavedeniya_51").mask("999999");

                $('#last_name, #first_name, #otchestvo_45').on('keypress', function () {
                    var input = this,
                        value = input.value;

                    input.addEventListener('input', onInput);

                    function onInput(e) {
                        var newValue = e.target.value;
                        if (newValue.match(/[^а-яА-Я]/g)) {
                            input.value = value;
                            return;
                        }
                        value = newValue.charAt(0).toUpperCase() + newValue.substr(1);
                    }
                });

                $("#last_name, #first_name, #otchestvo_45").change(function () {
                    var text = $(this).val().toLowerCase();
                    var new_text = text.charAt(0).toUpperCase() + text.substr(1);
                    $(this).val(new_text);
                });

                $('#email-user').blur(function () {
                    if ($(this).val() != '') {
                        var pattern = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i;
                        if (pattern.test($(this).val())) {
                            $(this).css({
                                'border': '1px solid #569b44'
                            });
                            $('#valid').text('Верно');
                        } else {
                            $(this).css({
                                'border': '1px solid #ff0000'
                            });
                            $('#valid').text('Не верно');
                        }
                    } else {
                        $(this).css({
                            'border': '1px solid #ff0000'
                        });
                        $('#valid').text('Поле email не должно быть пустым');
                    }
                });

            });
        }(jQuery));
