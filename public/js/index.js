var working = false;
$('.login').on('submit', function(e) {
    e.preventDefault();

    if (working) return;

    working = true;

    var $this = $(this), $state = $this.find('button > .state');

    $this.addClass('loading');

    $state.html('Autenticando');

    $.ajax({
        url: "/login",
        method: "post",
        data: $(this).serialize(),
        beforeSend:function(e){
            $state.html('Log in');
            $this.removeClass('ok loading');
            working = false;
        },
        success:function(e){
            $this.addClass('ok');
            $state.html('Entrando!');
        }

    });

});