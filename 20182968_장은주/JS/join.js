function formCheck(form) {
    //유효성 검사
    if(form.name.value == "") {
        alert('이름을 입력하세요.');
        form.name.focus() ;
        return ;
    }
    if(form.id.value == "") {
        alert('아이디를 입력하세요.');
        form.id.focus() ;
        return ;
    }
    if(form.pwd.value == "") {
        alert('비밀번호를 입력하세요.');
        form.pwd.focus() ;
        return ;
    }
    if(form.pwd.value.length < 10 || form.pwd.value.length > 16) {
        alert('비밀번호는 10 ~ 16자 사이로 입력하세요.');
        form.pwd.focus() ;
        return ;
    }
    if(form.pwdCheck.value == "") {
        alert('비밀번호 확인을 입력하세요.');
        form.pwdCheck.focus() ;
        return ;
    }
    if(form.mailid.value == "") {
        alert('e-mail을 입력하세요.');
        form.mailid.focus() ;
        return ;
    }
    if(form.mailid.value == "") {
        alert('e-mail을 입력하세요.');
        form.mailid.focus() ;
        return ;
    }
    if(form.email.value == "" && form.mailslc.selectedIndex == 0) {
        alert('e-mail을 입력하세요.');
        form.mailslc.focus() ;
        return ;
    }




    
    alert('회원가입이 완료되었습니다.') ;





    form.reset();
    }