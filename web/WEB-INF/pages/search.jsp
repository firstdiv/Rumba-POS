<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ taglib uri="http://displaytag.sf.net/el" prefix="el"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Cari Item</title>

<!-- CSS -->
<link rel="stylesheet" href="<c:url value="/RES-INF/styles/default.css"/>" 	  type="text/css" />
<link rel="stylesheet" href="<c:url value="/RES-INF/styles/displaytag.css"/>" type="text/css">

<!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="<c:url value="/RES-INF/styles/ie9.css"/>" type="text/css" />
<![endif]-->

<!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="<c:url value="/RES-INF/styles/ie8.css"/>" type="text/css" />
<![endif]-->
</head>
<body class="withnoisebg">

	<!-- DISPLAY TAG TABLE -->
	<table id="dtag" width="100%">
	<tr>
	<td colspan="3">
		<display:table id="item" name="search" requestURI="" pagesize="5">
			<display:column property="kode"   title="Kode Item" />
			<display:column property="nama"   title="Nama Item" />
			<display:column property="jenis"  title="Jenis Item" />
			<display:column property="jumlah" title="Jumlah Item" />
			<display:column property="harga"  title="Harga Satuan" />
			<display:column title="Action">
				<button class="action radius2" onclick="pickItem('item')">P I L I H</button>
			</display:column>
		</display:table>
	</td>
	</tr>
	</table>

	<!-- JS -->
	<script src="<c:url value="/RES-INF/scripts/plugins/jquery.js"/>" 			type="text/javascript"></script>
	<script src="<c:url value="/RES-INF/scripts/plugins/jquery-ui.custom.js"/>" type="text/javascript"></script>
	<script src="<c:url value="/RES-INF/scripts/plugins/jquery.cookie.js"/>" 	type="text/javascript"></script>
	<script src="<c:url value="/RES-INF/scripts/plugins/jquery.uniform.js"/>" 	type="text/javascript"></script>
	<script src="<c:url value="/RES-INF/scripts/general.js"/>" 					type="text/javascript"></script>

	<!--[if lt IE 9]>
		<script src="<c:url value="/RES-INF/scripts/plugins/css3-mediaqueries.js"/>" type="text/javascript"></script>
	<![endif]-->

	<script>
		function pickItem(tableId) {
			var previousClass = null;
			var table = document.getElementById(tableId);
			var tbody = table.getElementsByTagName("tbody")[0];
			var status;
			var rows;

			if (tbody == null) {
				rows = table.getElementsByTagName("tr");
			} else {
				rows = tbody.getElementsByTagName("tr");
			}

			for (i = 0; i < rows.length; i++) {
				rows[i].onmouseover = function() {
					previousClass   = this.className;
					this.className += ' over'
				};

				rows[i].onmouseout = function() {
					this.className = previousClass
				};

				rows[i].onclick = function() {
					var cell1 = this.getElementsByTagName("td")[0];
					var col1Value = cell1.innerHTML;
					var cell2 = this.getElementsByTagName("td")[1];
					var col2Value = cell2.innerHTML;
					var cell4 = this.getElementsByTagName("td")[3];
					var col4Value = cell4.innerHTML;
					var cell5 = this.getElementsByTagName("td")[4];
					var col5Value = cell5.innerHTML;

					window.opener.document.forms[0].kode.value   = col1Value;
					window.opener.document.forms[0].nama.value   = col2Value;
					window.opener.document.forms[0].jumlah.value = col4Value;
					window.opener.document.forms[0].harga.value  = col5Value;
					window.close();
				}
			}
		}
	</script>
</body>
</html>