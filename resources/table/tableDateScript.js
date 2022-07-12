jQuery(document)
		.ready(
				function() {

					// advance multiselect start
					$('#my_multi_select3')
							.multiSelect(
									{
										selectableHeader : "<input type='text' class='form-control search-input' autocomplete='off' placeholder='search...'>",
										selectionHeader : "<input type='text' class='form-control search-input' autocomplete='off' placeholder='search...'>",
										afterInit : function(ms) {
											var that = this, $selectableSearch = that.$selectableUl
													.prev(), $selectionSearch = that.$selectionUl
													.prev(), selectableSearchString = '#'
													+ that.$container
															.attr('id')
													+ ' .ms-elem-selectable:not(.ms-selected)', selectionSearchString = '#'
													+ that.$container
															.attr('id')
													+ ' .ms-elem-selection.ms-selected';

											that.qs1 = $selectableSearch
													.quicksearch(
															selectableSearchString)
													.on(
															'keydown',
															function(e) {
																if (e.which === 40) {
																	that.$selectableUl
																			.focus();
																	return false;
																}
															});

											that.qs2 = $selectionSearch
													.quicksearch(
															selectionSearchString)
													.on(
															'keydown',
															function(e) {
																if (e.which == 40) {
																	that.$selectionUl
																			.focus();
																	return false;
																}
															});
										},
										afterSelect : function() {
											this.qs1.cache();
											this.qs2.cache();
										},
										afterDeselect : function() {
											this.qs1.cache();
											this.qs2.cache();
										}
									});

					// Select2
					$(".select2").select2();

					$(".select2-limiting").select2({
						maximumSelectionLength : 2
					});

				});

// Bootstrap-TouchSpin
$(".vertical-spin").TouchSpin({
	verticalbuttons : true,
	buttondown_class : "btn btn-primary",
	buttonup_class : "btn btn-primary",
	verticalupclass : 'ti-plus',
	verticaldownclass : 'ti-minus'
});
var vspinTrue = $(".vertical-spin").TouchSpin({
	verticalbuttons : true
});
if (vspinTrue) {
	$('.vertical-spin').prev('.bootstrap-touchspin-prefix').remove();
}

$("input[name='demo1']").TouchSpin({
	min : 0,
	max : 100,
	step : 0.1,
	decimals : 2,
	boostat : 5,
	maxboostedstep : 10,
	buttondown_class : "btn btn-primary",
	buttonup_class : "btn btn-primary",
	postfix : '%'
});
$("input[name='demo2']").TouchSpin({
	min : -1000000000,
	max : 1000000000,
	stepinterval : 50,
	buttondown_class : "btn btn-primary",
	buttonup_class : "btn btn-primary",
	maxboostedstep : 10000000,
	prefix : '$'
});
$("input[name='demo3']").TouchSpin({
	buttondown_class : "btn btn-primary",
	buttonup_class : "btn btn-primary"
});
$("input[name='demo3_21']").TouchSpin({
	initval : 40,
	buttondown_class : "btn btn-primary",
	buttonup_class : "btn btn-primary"
});
$("input[name='demo3_22']").TouchSpin({
	initval : 40,
	buttondown_class : "btn btn-primary",
	buttonup_class : "btn btn-primary"
});

$("input[name='demo5']").TouchSpin({
	prefix : "pre",
	postfix : "post",
	buttondown_class : "btn btn-primary",
	buttonup_class : "btn btn-primary"
});
$("input[name='demo0']").TouchSpin({
	buttondown_class : "btn btn-primary",
	buttonup_class : "btn btn-primary"
});

// Time Picker
jQuery('#timepicker').timepicker({
	defaultTIme : false
});
jQuery('#timepicker2').timepicker({
	showMeridian : false
});
jQuery('#timepicker3').timepicker({
	minuteStep : 60
});

// colorpicker start

$('.colorpicker-default').colorpicker({
	format : 'hex'
});
$('.colorpicker-rgba').colorpicker();

// Date Picker
// Date Picker
jQuery('#datepicker').datepicker();
jQuery('#datepicker-autoclose').datepicker({
	format : 'dd/mm/yyyy',
	autoclose : true,
	todayHighlight : true
});
jQuery('#datepicker-inline').datepicker();
jQuery('#datepicker-multiple-date').datepicker({
	format : "yyyy-mm-dd",
	clearBtn : true,
	multidate : true,
	multidateSeparator : ","
});
jQuery('#date-range').datepicker({
	format : "dd/mm/yyyy",
	autoclose : true,
	todayHighlight : true,
	toggleActive : true
});

// Date range picker
$('.input-daterange-datepicker').daterangepicker({
	buttonClasses : [ 'btn', 'btn-sm' ],
	applyClass : 'btn-default',
	cancelClass : 'btn-primary'
});
$('.input-daterange-timepicker').daterangepicker({
	timePicker : true,
	format : 'dd/mm/yy h:mm A',
	timePickerIncrement : 60,
	timePicker12Hour : true,
	timePickerSeconds : false,
	buttonClasses : [ 'btn', 'btn-sm' ],
	applyClass : 'btn-default',
	cancelClass : 'btn-primary'
});
$('.input-limit-datepicker').daterangepicker({
	format : 'DD/MM/YYYY',
	minDate : '06/01/2016',
	maxDate : '06/30/2016',
	buttonClasses : [ 'btn', 'btn-sm' ],
	applyClass : 'btn-default',
	cancelClass : 'btn-primary',
	dateLimit : {
		days : 6
	}
});

$('#reportrange span').html(
		moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - '
				+ moment().format('MMMM D, YYYY'));

$('#reportrange').daterangepicker(
		{
			format : 'DD/MM/YYYY',
			startDate : moment().subtract(29, 'days'),
			endDate : moment(),
			minDate : '01/01/2016',
			maxDate : '12/31/2016',
			dateLimit : {
				days : 60
			},
			showDropdowns : true,
			showWeekNumbers : true,
			timePicker : false,
			timePickerIncrement : 1,
			timePicker12Hour : true,
			ranges : {
				'Today' : [ moment(), moment() ],
				'Yesterday' : [ moment().subtract(1, 'days'),
						moment().subtract(1, 'days') ],
				'Last 7 Days' : [ moment().subtract(6, 'days'), moment() ],
				'Last 30 Days' : [ moment().subtract(29, 'days'), moment() ],
				'This Month' : [ moment().startOf('month'),
						moment().endOf('month') ],
				'Last Month' : [
						moment().subtract(1, 'month').startOf('month'),
						moment().subtract(1, 'month').endOf('month') ]
			},
			opens : 'left',
			drops : 'down',
			buttonClasses : [ 'btn', 'btn-sm' ],
			applyClass : 'btn-success',
			cancelClass : 'btn-default',
			separator : ' to ',
			locale : {
				applyLabel : 'Submit',
				cancelLabel : 'Cancel',
				fromLabel : 'From',
				toLabel : 'To',
				customRangeLabel : 'Custom',
				daysOfWeek : [ 'Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa' ],
				monthNames : [ 'January', 'February', 'March', 'April', 'May',
						'June', 'July', 'August', 'September', 'October',
						'November', 'December' ],
				firstDay : 1
			}
		},
		function(start, end, label) {
			console.log(start.toISOString(), end.toISOString(), label);
			$('#reportrange span').html(
					start.format('MMMM D, YYYY') + ' - '
							+ end.format('MMMM D, YYYY'));
		});

// Bootstrap-MaxLength
$('input#defaultconfig').maxlength()

$('input#thresholdconfig').maxlength({
	threshold : 20
});

$('input#moreoptions').maxlength({
	alwaysShow : true,
	warningClass : "label label-success",
	limitReachedClass : "label label-danger"
});

$('input#alloptions').maxlength({
	alwaysShow : true,
	warningClass : "label label-success",
	limitReachedClass : "label label-danger",
	separator : ' out of ',
	preText : 'You typed ',
	postText : ' chars available.',
	validate : true
});

$('textarea#textarea').maxlength({
	alwaysShow : true
});

$('input#placement').maxlength({
	alwaysShow : true,
	placement : 'top-left'
});
