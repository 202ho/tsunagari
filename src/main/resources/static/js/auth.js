$(document).ready(function() {


    // 이메일 체크
    $('#register-email-check-btn').on('click', function(e) {
        e.preventDefault();
        var email = $(this).siblings('input[type="email"]').val().trim();

        // 이메일 형식 체크
        var pattern = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-za-z0-9\-]+/;
        var checkResult = pattern.test(email);
        if (!checkResult) {
            $('#email-check-result').val('N');
            return alert("이메일 형식이 올바르지 않습니다!");
        }

        // 이메일 중복 체크
        $.ajax({
            url: '/api/auth/emailCheck',
            type: 'POST',
            data: JSON.stringify({
                email: email
            }),
            contentType: 'application/json',
            dataType: 'json',
            success: function(response) {
                if (response.available) {
                    // 중복체크 성공시
                    $('#email-check-result').val('Y');
                    $('#register-email-check-btn').css({
                        'background-color': '#2FC97A',
                        'color': 'white'
                    }).text('사용가능');
                    alert("사용 가능한 이메일입니다.");
                } else {
                    // 중복체크 실패시
                    $('#email-check-result').val('N');
                    alert("이미 사용 중인 이메일입니다. 다른 이메일을 사용해주세요.");
                }
            }
        });
    });

    // 이메일 입력값 변경시 중복체크 초기화
    $('#r-email').on('input', function() {
        $('#email-check-result').val('N');
        $('#register-email-check-btn').css({
            'background-color': '',
            'color': ''
        }).text('중복체크');
    });

    // 가입하기
    $('#register-btn').on('click', function(e) {
        e.preventDefault();
        var email = $('#r-email').val().trim();
        var password1 = $('#r-password1').val().trim();
        var password2 = $('#r-password2').val().trim();
        var nickname = $('#r-nickname').val().trim();

        // validate
        var isEmailChecked = $('#email-check-result').val();
        if (isEmailChecked != 'Y') return alert("이메일 중복 체크를 해주세요.");
        var isPasswordSame = password1 !== '' && password1 === password2;
        if(!isPasswordSame) return alert("비밀번호가 일치하지않습니다.");
        $('#register-btn').prop('disabled', true);

        // 회원가입
        $.ajax({
            url: '/api/auth/register',
            type: 'POST',
            data: JSON.stringify({
                email: email,
                password: password1,
                nickname : nickname
            }),
            contentType: 'application/json',
            dataType: 'json',
            success: function(response) {
                alert("회원가입 성공, 로그인페이지로 이동합니다.");
                window.location.href = "/login";
            }
        });

    });


});