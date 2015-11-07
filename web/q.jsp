<html>
<tr>
<td ><script language=JavaScript>
//var i=1;
document.write(i + ".\t");
</script>
</td>
<td>
<script language=JavaScript>
document.write(questions[i]);
</script>

<tr><td>
<input type = "radio" value="1" name = "quiz"></td>
<td>
<script language=JavaScript>
document.write(answerA[i]);
</script></td></tr>

<a href=javascript:preQuestion();><img src=Images/GREEN2.JPG align=left width=50 height=50></a>	

var radios = document.getElementsByName("quiz");

for (var j = 0; j < radios.length; j++) {       
        if (radios[j].checked) {
  
            option=radios[j].value; //get value of selected radio button
		radios[j].checked=false; // uncheck the selected radio button. 
            	break;
        }
    }
    var x=document.getElementById('myTable').rows //obtains table rows
    	var y=x[0].cells	//obtains cell data of a particular row;
    	y[0].innerHTML=i + ".\t"; //changes the first cell data of the row y
	y[1].innerHTML=questions[i]; //changes second cell data of row y
	getOptionA(); // displays option A in similar way\
        
      </html