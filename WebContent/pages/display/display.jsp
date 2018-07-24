

<!DOCTYPE html>
<html>
<head>
	<style>
#contentdpl {
    position: absolute;
    z-index: 2;
    top: 50%;
    left: 330px;
    right: 0;
    transform: translateY(-50%);
    text-align: center;
}
	</style>
</head>
<body>
	<div id="contentdpl">
		<div>
	        <button onclick="window.location.href='../display-table/display_table.jsp' " style="font-size: 22px; min-width: 300px; min-height: 80px;" class="btn4"><span>Display Table</span></button><br>
	        <button onclick="window.location.href='../display-structure/display_structure.jsp' " style="font-size: 22px; min-width: 300px; min-height: 80px;" class="btn4"><span>Display Table<br>Strucutre</span></button>
	    </div>
	</div>

<jsp:include page="../MAIN_PAGE/main_page.jsp"></jsp:include>

</body>
</html>
   