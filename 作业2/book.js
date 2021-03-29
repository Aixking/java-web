 function check(){
		if (document.form1.name.value == "")
		{
			window.alert("名字不能为空");
			document.form1.name.focus();
			return false;
		}
		if (document.form1.age.value == "")
		{
			window.alert("年龄不能为空");
			document.form1.age.focus();
			return false;
		}
		for(i=0;i<document.form1.age.value.length;i++){		
			if (document.form1.age.value.chatAt(i)<'0' || form1.age.value.charAt(i)>'9')
			{
			window.alert("年龄必须为数值");
			document.form1.age.focus();
			return false;
			}
		}
		if (document.form1.introduce.value =="自我介绍:")
		{
			window.alert("自我介绍不能为空");
			document.form1.introduce.focus();
			return false;
		}
		return true;
  }
