$(document)
		.ready(
				function() {

					$('#example tfoot th')
							.each(
									function() {
										var title = $('#example thead th').eq(
												$(this).index()).text();
										$(this)
												.html(
														'<input type="text"  style="font-size : 12px; width: 90%; height: 25px;" placeholder="'
																+ title
																+ '" />');
									});
					var table = $('#example').DataTable({
						"bPaginate" : false,
						dom : 'Bfrtip',
						buttons : [ {
							extend : 'copyHtml5',
							text : '<i class="fa fa-files-o"></i> COPY',
							titleAttr : 'Copy',
							exportOptions : {
								columns : [ 0, ':visible' ]
							}
						},

						{

							extend : 'excelHtml5',
							text : '<i class="fa fa-file-excel-o"></i> EXCEL',
							titleAttr : 'EXCEL',
							exportOptions : {
								columns : ':visible'
							}
						}, {
							extend : 'print',
							text : '<i class="fa fa-print"></i> PRINT',
							titleAttr : 'PRINT',
							exportOptions : {
								columns : ':visible'
							}
						}, {
							extend : 'pdfHtml5',
							text : '<i class="fa fa-file-pdf-o"></i> PDF',
							titleAttr : 'PDF',
							exportOptions : {
								columns : ':visible'
							}
						},
						/*
						 * { extend: 'pageLength', exportOptions: { columns:
						 * ':visible' } },
						 */
						'colvis' ]
					});
					table.columns().every(
							function() {
								$('input', this.footer()).on(
										'keyup change',
										function() {
											table.column(
													$(this).parent().index()
															+ ':visible')
													.search(this.value).draw();

										});
							});
				});
