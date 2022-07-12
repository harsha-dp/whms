

(function ($){
  $.fn.fott = function(custom){
    var options = $.extend({
      strict          : false,
      wrapperClasses  : 'sorter',
      inputClasses    : 'form-control input-fott input-fott-md',
      fieldFilter     : $(this).html().toLowerCase(),
      placeholder     : 'search ' ,
      table           : $(this).parent().parent().parent()
    }, custom),
    html    = {
      div : $('<div></div>'),
      input: $('<input type="text">')
    };
    options.rows = options.table.find('tbody').find('tr');

    // Building div and input
    html.div.addClass(options.wrapperClasses);
    html.input.addClass(options.inputClasses);
    html.input.attr('data-fieldfilter', options.fieldFilter);
    html.input.attr('placeholder', options.placeholder);
    html.div.html(html.input);

    // Attach events to input field   
    html.input.keyup(function(){
      var value = $(this).val();

      // If value is empty, there is no need
      // for loop through everything
      if (value.length === 0){
        $('.input-fott').val('');
        options.rows.show();
        return;
      }

      // Adding filtering class to clear
      // other fields when something is being
      // typed into other field
      $('.input-fott').removeClass('filtering');
      $(this).addClass('filtering');

      $('.input-fott').each(function(e){
          if (!$(this).hasClass('filtering'))
              $(this).val('');
      });

      // Core loop
      options.rows.each(function(){
          var td      = $(this).find('.' + options.fieldFilter),
              lookAt;

          // Check for the element that has value to be compared
          lookAt = td.hasClass('sort-value') ? td : td.find('.sort-value');

          // Search based on strict value
          if (options.strict)
              if (lookAt.html().toLowerCase() == value.trim())
                  $(this).show();
              else
                  $(this).hide();
          else
              if (lookAt.html().toLowerCase().indexOf(value.trim()) >= 0)
                  $(this).show();
              else
                  $(this).hide();
      });
    });

    // Creating html elements after each thead
    // th content
    $(this).append(html.div);

    return this;
  };
}(jQuery));