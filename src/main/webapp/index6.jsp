<html>
<head>
    <script type='text/javascript' src='dwr/engine.js'></script>
    <script type='text/javascript' src='dwr/util.js'></script>
    <script type='text/javascript' src='dwr/interface/callsRemoto.js'></script>

</head>
<body>
<h1>Test</h1>

<%--<table>
    <tr>
        <td>Image</td>
        <td><input type="file" id="image" /></td>
        <td id="image.container">&nbsp;</td>
    </tr>
    <tr>
        <td>File</td>
        <td><input type="file" id="file" /></td>
        <td id="file.container">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            --%><%--<button onclick="uploadFilesFlat()">Save Flat</button>--%><%--
            --%><%--<button onclick="uploadFilesNested()">Save Nested</button>--%><%--
        </td>
    </tr>
</table>--%>

<table class="plain grey form">
    <tbody>
    <%--<tr>
        <th>Image:</th>
        <td><input id="uploadImage" size="30" type="file"></td>
    </tr>--%>

    <tr>
        <th>File:</th>
        <td><input id="uploadFile" size="30" type="file"></td>
    </tr>
    <%--<tr>
        <th>Color:</th>
        <td>#<input id="color" value="FFFFFF" size="7" type="text"></td>

    </tr>--%>
    <tr>
        <th></th>
        <td>
            <button onclick="uploadFiles();">Upload</button>
            <button onclick="getInboxes();">Get Inboxes</button>
        </td>
    </tr>
    </tbody>
</table>

        <span id="testT"></span>

<script type="text/javascript">

    function uploadFiles() {
        var image = dwr.util.getValue('uploadImage');
        var file = dwr.util.getValue('uploadFile');
        var color = dwr.util.getValue('color');

        callsRemoto.fileUpload(file, function(data) {
            dwr.util.setValue('testT', data);
        });
    }

    function getInboxes(){
        callsRemoto.getInboxes(function(data){
            alert("data = " + data.length);
            var aux = "";
            for (var i =0; i<data.length; i++){
                aux += data[i];
                aux += "\n";
            }
            alert("aux = " + aux);
        });
    }

</script>


</body>
</html>