<footer class="footer text-center"><strong>2016 A © Welezo Health Care Pvt.Ltd. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<time id="time"></time></strong> 


<!-- 
				<strong><time id="time"></time></strong>
					
					<style>
					time {
					bottom: 0px;
                                  color: #fff;
                                  text-align:!important;
                                  padding: 19px 30px 20px;
                                  position: absolute;
                                  right: 0px;
                                  left: 1050px;
                                  font-size: 10px;					
					}
					</style>
					 -->
				<script>
				var monthName = new Array('January', 'Febuary', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');
				var hourap = new Array(12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11);
				function showTime(){
				    var dateObj = new Date();
				    var day = dateObj.getDate(), month = dateObj.getMonth(), year = dateObj.getFullYear(), hour = dateObj.getHours(), minutes = (dateObj.getMinutes()<=9?'0'+dateObj.getMinutes():dateObj.getMinutes());
				    var string  = monthName[month]+
				    ' '+day+
				    ', '+year+
				    ','+hourap[hour]+
				    ':'+minutes+
				    ' '+(hour<=11?'AM':'PM');
				    var timeDiv = document.getElementById('time');
				    if(timeDiv !== null) {
				        timeDiv.innerHTML = string;
				        timeDiv.setAttribute('datetime',year+'-'+(month+1<=9?'0'+(month+1):month+1)+'-'+day+' '+hour+':'+minutes);

				    };
				};
				setInterval(showTime,1000);
				</script>


</footer>

