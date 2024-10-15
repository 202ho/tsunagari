function previewImage(event) {
       const image = document.getElementById('profileImage');
       const file = event.target.files[0];
       if (file) {
           image.src = URL.createObjectURL(file);
           image.style.display = 'block'; // 이미지 보이게 설정
       } else {
           image.style.display = 'none'; // 파일이 없으면 숨김
       }
   }

$(document).ready(function() {
    let isEmailChecked = false;
    let isNicknameChecked = false;

// 이메일 입력 필드에 포커스가 가면 사용 가능 표시 초기화
$('input[name="email"]').on('focus', function() {
    $('#email-check-result').val(''); // 이전 결과 초기화
    isEmailChecked = false; // 플래그 초기화
    $('#register-email-check-btn').css({
        'background-color': '',
        'color': ''
    }).val('중복확인'); // 버튼 텍스트 초기화
});

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

  // 닉네임 입력 필드에 포커스가 가면 사용 가능 표시 초기화
    $('input[name="nickname"]').on('focus', function() {
        $('#nickname-check-result').val(''); // 이전 결과 초기화
        isNicknameChecked = false; // 플래그 초기화
        $('#nickname-check-btn').css({
            'background-color': '',
            'color': ''
        }).val('중복확인'); // 버튼 텍스트 초기화
    });

    // 닉네임 체크 버튼 이벤트 리스너
    $('#nickname-check-btn').on('click', function(e) {
        e.preventDefault();
        var nickname = $(this).siblings('input[type="text"]').val().trim(); // 닉네임 입력 필드 값 가져오기

        // 닉네임 형식 체크 (여기에 원하는 규칙 추가 가능)
        if (nickname.length < 2) {
            return alert("닉네임은 최소 2자 이상이어야 합니다!");
        }

        // 닉네임 중복 체크 (서버에 요청)
        $.ajax({
            url: '/api/auth/nicknameCheck',
            type: 'POST',
            data: JSON.stringify({ nickname: nickname }),
            contentType: 'application/json',
            dataType: 'json',
            success: function(response) {
                if (response.available) {
                    // 중복 체크 성공 시
                    $('#nickname-check-result').val('Y');
                    $('#nickname-check-btn').css({
                        'background-color': '#2FC97A',
                        'color': 'white'
                    }).val('사용가능');
                    alert("사용 가능한 닉네임입니다.");
                    isNicknameChecked = true;
                } else {
                    // 중복 체크 실패 시
                    $('#nickname-check-result').val('N');
                    alert("이미 사용 중인 닉네임입니다. 다른 닉네임을 사용해주세요.");
                    isNicknameChecked = false;
                }
            }
        });
    });

    // 폼 검증 함수
    function validateForm(event) {
    const fileInput = document.getElementById('memberimage');
    if (!fileInput.files.length) {
        // 파일이 선택되지 않았을 때 name 속성을 빈 문자열로 설정
        fileInput.setAttribute('name', '');
    }

        // 이메일 중복 확인 여부 확인
        if (!isEmailChecked) {
            alert("이메일 중복 확인을 해주세요.");
            event.preventDefault();
            return;
        }
        // 닉네임 중복 확인 여부 확인
        if (!isNicknameChecked) {
            alert("닉네임 중복 확인을 해주세요.");
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
