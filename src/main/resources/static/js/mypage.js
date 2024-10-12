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
    let isNicknameChecked = false;

    // 현재 사용자의 닉네임을 저장
    const currentNickname = "${member.nickname}";

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
        var nickname = $(this).siblings('input[type="text"]').val().trim();

        // 닉네임 형식 체크
        if (nickname.length < 2) {
            return alert("닉네임은 최소 2자 이상이어야 합니다!");
        }

        // 닉네임이 현재 닉네임과 같다면 중복 체크를 통과합니다.
        if (nickname === currentNickname) {
            $('#nickname-check-result').val('Y');
            $('#nickname-check-btn').css({
                'background-color': '#2FC97A',
                'color': 'white'
            }).val('사용가능');
            alert("현재 사용 중인 닉네임입니다.");
            isNicknameChecked = true;
            return;
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
    const memberImageInput = document.getElementById('memberimage');

    // 파일이 선택되지 않은 경우
    if (!memberImageInput.value) {
        // 파일 입력 필드를 삭제
        memberImageInput.removeAttribute('name');
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
