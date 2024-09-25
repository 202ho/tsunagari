function validateForm(event) {
    // 이메일 형식 확인
    const email = document.regForm.email.value;
    const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    if (!emailPattern.test(email)) {
        alert("이메일 형식이 올바르지 않습니다.");
        document.regForm.email.focus();
        event.preventDefault();
        return;
    }

    // 비밀번호 및 비밀번호 재확인 확인
    const password = document.regForm.password.value;
    const repassword = document.regForm.repassword.value;
    if (password !== repassword) {
        alert("비밀번호가 일치하지 않습니다.");
        document.regForm.repassword.focus();
        event.preventDefault();
        return;
    }

    // 전화번호 결합
    const phone1 = document.regForm.phone1.value;
    const phone2 = document.regForm.phone2.value;
    const phone3 = document.regForm.phone3.value;
    if (phone1 && phone2 && phone3) {
        const phone = `${phone1}${phone2}${phone3}`;
        document.regForm.phone.value = phone; // 숨겨진 input에 저장
    } else {
        alert("전화번호를 모두 입력해주세요.");
        if (!phone1) {
            document.regForm.phone1.focus();
        } else if (!phone2) {
            document.regForm.phone2.focus();
        } else {
            document.regForm.phone3.focus();
        }
        event.preventDefault();
        return;
    }

    // 필수 입력 사항 확인
    const fields = ["email", "password", "repassword", "nickname", "phone1", "phone2", "phone3"];
    for (const field of fields) {
        if (!document.regForm[field].value) {
            alert(field + "를 입력해주세요.");
            document.regForm[field].focus();
            event.preventDefault();
            return;
        }
    }
}
