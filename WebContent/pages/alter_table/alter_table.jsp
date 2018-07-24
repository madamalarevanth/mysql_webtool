

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

	        <button onclick="window.location.href='../alter_table_add_column/alter_table_add_column.jsp' " style="font-size: 22px; min-width: 300px; min-height: 80px;" class="btn4"><span>Add Column</span></button><br>

	        <button onclick="window.location.href='../alter_table_delete_column/alter_table_delete_column.jsp' " style="font-size: 22px; min-width: 300px; min-height: 80px;" class="btn4"><span>Delete Column</span></button><br>

	        <button onclick="window.location.href='../alter_table_modify_column/alter_table_modify_column.jsp' " style="font-size: 22px; min-width: 300px; min-height: 80px;" class="btn4"><span>Modify Column</span></button>

	    </div>
	</div>

<jsp:include page="../MAIN_PAGE/main_page.jsp"></jsp:include>

</body>
</html>
   