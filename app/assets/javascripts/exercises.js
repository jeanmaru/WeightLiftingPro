var $selects = $('select');
$('select').change(function () {
    $('option:hidden', $selects).each(function () {
        var self = this,
            toShow = true;
        $selects.not($(this).parent()).each(function () {
            if (self.value == this.value) toShow = false;
        })
        if (toShow) $(this).show();
    });
    if (this.value != 0) //to keep default option available
        $selects.not(this).children('option[value=' + this.value + ']').hide();
}); 