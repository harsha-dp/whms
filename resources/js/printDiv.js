
/** Javascript sunction to print content of div elements along with css.
 * #btnPrint - 
 * #pdfGen - Div ID of HTMl to be converted to PDF.
 * IMPORTANT :   In frameDoc.document.write('<link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />'); 
 * include the CSS of the DIV ID used in HTML for converting page to PDF aling with CSS effect. 
 */
		//	alert("document ready");
			   function getPDFFileButton () {
			// Select which div with id that need to be printed
			// to print body $('body')
			// here printing div with content id $("#content")
			// using html canvas to save as required pdf to image to preserve css
			return html2canvas($('#pdfGen'), {
				background: "#ffffff",
				onrendered: function(canvas) {
					var myImage = canvas.toDataURL("image/jpeg,1.0");
					// Adjust width and height
					var imgWidth = (canvas.width * 60) / 240;
					var imgHeight = (canvas.height * 80) / 240; 
					// jspdf changes
					var pdf = new jsPDF('p', 'mm', 'a4');
					pdf.addImage(myImage, 'JPEG', 15, 2, imgWidth, imgHeight); // 2: 19
					pdf.save('Download.pdf');
				}
			});
		}       
		$("#btnPrint").on("click", function () {
			getPDFFileButton ()
		});
		
		




$(function () {
    $("#btnPrint2").click(function () {
        var contents = $("#pdfGen").html();
        var frame1 = $('<iframe />');
        frame1[0].name = "frame1";
        frame1.css({ "position": "absolute", "top": "-1000000px" });
        $("body").append(frame1);
        var frameDoc = frame1[0].contentWindow ? frame1[0].contentWindow : frame1[0].contentDocument.document ? frame1[0].contentDocument.document : frame1[0].contentDocument;
        frameDoc.document.open();
        //Create a new HTML document.
        frameDoc.document.write('<html><head><title>Welezo Healthcare Pvt Ltd </title>');
        frameDoc.document.write('</head><body>');
        //Append the external CSS file.
        //frameDoc.document.write('<link href="style.css" rel="stylesheet" type="text/css" />');
        frameDoc.document.write('<link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />');
        
        //Append the DIV contents.
        frameDoc.document.write(contents);
        frameDoc.document.write('</body></html>');
        frameDoc.document.close();
        setTimeout(function () {
            window.frames["frame1"].focus();
            window.frames["frame1"].print();
            frame1.remove();
        }, 300);
    });
});
