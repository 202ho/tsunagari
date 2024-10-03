$(document).ready(function() {
    // 이메일 중복 확인 여부를 저장하는 플래그
    let isEmailChecked = false;

    // 이메일 체크 버튼 이벤트 리스너
    $('#register-email-check-btn').on('click', function(e) {
        e.preventDefault();
        var email = $(this).siblings('input[type="text"]').val().trim(); // 이메일 입력 필드 값 가져오기

        // 이메일 형식 체크
        var pattern = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;
        var checkResult = pattern.test(email);
        if (!checkResult) {
            $('#email-check-result').val('N');
            return alert("이메일 형식이 올바르지 않습니다!");
        }

        // 이메일 중복 체크 (서버에 요청)
        $.ajax({
            url: '/api/auth/emailCheck',
            type: 'POST',
            data: JSON.stringify({ email: email }),
            contentType: 'application/json',
            dataType: 'json',
            success: function(response) {
                if (response.available) {
                    // 중복 체크 성공 시
                    $('#email-check-result').val('Y');
                    $('#register-email-check-btn').css({
                        'background-color': '#2FC97A',
                        'color': 'white'
                    }).val('사용가능');
                    alert("사용 가능한 이메일입니다.");
                    isEmailChecked = true;
                } else {
                    // 중복 체크 실패 시
                    $('#email-check-result').val('N');
                    alert("이미 사용 중인 이메일입니다. 다른 이메일을 사용해주세요.");
                    isEmailChecked = false;
                }
            }
        });
    });

    // 폼 검증 함수
    function validateForm(event) {
        // 이메일 중복 확인 여부 확인
        if (!isEmailChecked) {
            alert("이메일 중복 확인을 해주세요.");
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

    // 폼 제출 시 validateForm 함수 호출
    $('form[name="regForm"]').on('submit', function(event) {
        validateForm(event);
    });
});
