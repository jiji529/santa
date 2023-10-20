<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <script src="http://code.jquery.com/jquery-latest.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.2.5/angular.min.js"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
            <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member.css">
            <title>회원가입</title>

            <!-- ======= TOP Header ======= -->
            <jsp:include page="../header.jsp"></jsp:include>
            <style>
                .id_ok {
                    color: #008000;
                    display: none;
                }

                .id_already {
                    color: #6A82FB;
                    display: none;
                }
            </style>

        </head>

        <body>

            <div class="container">
                <div class="join-page">
                    <div class="join-content">
                        <h2 class="h2">회원가입</h2>
                        <form id="agreeFrm" method="POST" class="wrapper-box">
                            <label>이메일</label>
                            <div class="input-group">
                                <input type="email" name="userEmail" id="userEmail" 
                                    class="form-control" placeholder="santa@santa.co.kr" >
                                <div class="input-group-append">
                                    <button type="button" class="btn btn-dark" id="mail-Check-Btn"
                                        style="margin-top: 15px; height: 45px; margin-left: 7px; ">메일인증</button>
                                </div>
                            </div>
                            <div class="mail-check-box input-group">
                                <input name="authNumber" class="form-control mail-check-input"
                                    placeholder="인증번호 6자리를 입력해주세요" disabled="disabled" maxlength="6" style="width:250px;">
                                 <div class="input-group-append">
                                    <button type="button" class="btn btn-dark" id="mail-check"
                                        style="margin-top: 15px; height: 45px; margin-left: 7px; width: 83px;">확인</button>
                                </div>
                            </div>
                            <span id="mail-check-warm"></span>
                            <label>비밀번호</label>
                            <input type="password" name="userPwd" class="form-control" placeholder="영문,숫자,특수문자 조합 8-16자"
                                >
                            <div>
                                <input type="checkbox" id="check_all">
                                <label>[필수] 만 14세 이상이며 모두 동의합니다</label>
                                <div class="ck">
                                    <div class="ck-l">
                                        <div>
                                            <input type="checkbox" name="agree01" class="agree">
                                            <label>이용약관동의</label>
                                        </div>
                                        <div>
                                            <input type="checkbox" name="agree02" class="agree">
                                            <label>개인정보 수집 및 이용 동의</label>
                                        </div>
                                    </div>
                                    <div class="ck-r">
                                        <a href="#modal1">[내용]</a>
                                        <a href="#modal2">[내용]</a>
                                    </div>
                                </div>
                            </div>
                            <button type="button" class="btn1" id="signup" disabled>회원가입</button>

                        </form>
                    </div>
                </div>
            </div>
		<br>


            <div class="footer">
                <jsp:include page="../footer.jsp"></jsp:include>
            </div>

            <!-- Define the content for modal 1 and modal 2 -->
            <div id="modal1" class="modal">
                <div class="modal-content">
                    <span class="close">&times;</span>
                    <h3>santa 서비스 이용 약관</h3>
                    <p>&nbsp;</p>
                    <p><strong>제 1 조 (목적)</strong></p>
                    <p>이 약관은 "회원" 개인 상호 간 또는 “제휴 사업자”, "입점 사업자"와 “회원” 개인 간에 상품 등을 매매하는
                        것을 중개하고, "상품" 등에 관한 정보를 상호 교환할 수 있도록
                        크림 주식회사(이하 "회사"라 합니다)가 운영, 제공하는 KREAM 서비스(이하 "서비스")에 대한 것으로 본
                        약관에서는 "서비스"의 이용과 관련하여 "회사"와 "회원"과의 권리,
                        의무 및 책임사항, 기타 필요한 사항을 규정합니다.</p>
                    <p>&nbsp;</p>
                    <p><strong>제 2 조 (용어의 정의)</strong></p>
                    <p>이 약관에서 사용하는 용어의 정의는 다음 각 호와 같으며, 정의되지 않은 용어에 대한 해석은 관계 법령 및 지침, 본
                        이용약관, 개인정보취급방침, 상관례 등에 의합니다.</p>
                    <ul>
                        <li>"서비스"라 함은 회사가 PC 및/또는 모바일 환경에서 제공하는 KREAM 서비스 및 관련 제반 서비스를
                            말합니다.</li>
                        <li>"회원"이라 함은 "회사"의 "서비스"에 접속하여 이 약관에 따라 "회사"와 이용계약을 체결하고 "회사"가
                            제공하는 "서비스"를 이용하는 고객을 말합니다.</li>
                        <li>"구매자" 또는 "구매회원"이라 함은 "상품"을 구매하거나 또는 구매할 의사로 서비스를 이용하는 회원을
                            말합니다.</li>
                        <li>"판매자" 또는 "판매회원"이라 함은 "서비스"에 "상품"을 등록하여 판매하거나 또는 제공할 의사로 서비스를
                            이용하는 회원을 말합니다.</li>
                        <li>"입찰"이라 함은 "상품"을 구매하기 위하여 원하는 "상품"의 구매 가격을 제출하는 행위 또는 "상품"을
                            판매하기 위하여 원하는 "상품"의 판매 가격을 제출하는 행위를
                            말합니다.</li>
                        <li>"거래 체결"이라 함은 "입찰"에 의하여 상품의 거래가 성립되는 것을 말합니다.</li>
                        <li>"게시물"이라 함은 "회원"이 "서비스"를 이용함에 있어 "서비스"상에 게시한 문자, 음성, 음향, 화상,
                            동영상 등의 정보 형태의 글(댓글 포함), 사진(이미지), 동영상
                            및 각종 파일과 링크 등 일체를 의미합니다.</li>
                        <li>"회원정보"라 함은 "서비스"를 이용하는 고객이 등록한 정보를 말합니다.</li>
                        <li>"서비스수수료"라 함은 "회원"이 "서비스"를 이용하면서 발생할 수 있는 수수료입니다. "상품"의 판매/구매
                            및 제반 서비스를 이용함에 따라 부과되는 시스템이용료로서 거래
                            수수료 또는 판매완료 수수료, 유료부가서비스수수료 등이 있으며, 관련내용은 제24조(서비스수수료)에 명시된
                            바에 따릅니다.</li>
                        <li>"포인트"라 함은 "서비스"의 효율적 이용을 위해 "회사"가 임의로 책정 또는 지급, 조정할 수 있는
                            "서비스" 상의 가상 데이터를 의미합니다. "포인트"의 적립, 지급,
                            사용 등과 관련한 구체적인 정책에 대해서는 이용약관 및 공지사항 등으로 별도 고지하는 바에 따릅니다.
                        </li>
                        <li>"할인쿠폰"이라 함은 상품 등을 구매할 때나 "서비스"를 이용할 때 표시된 금액 또는 비율만큼 할인 받을 수
                            있는 쿠폰을 말합니다. "할인쿠폰"의 지급, 사용, 소멸 등과
                            관련한 구체적인 정책에 대해서는 이용약관 및 공지사항 등으로 별도 고지하는 바에 따릅니다.</li>
                        <li>“상품”이라 함은 본 약관에 따라 “회원” 간 거래 대상으로서 “서비스”에 등록된 재화 또는 용역을
                            말합니다.</li>
                        <li>“제휴 사업자”라 함은 “KREAM EXCLUSIVE DROPS” 및 “B2C 상품 페이지”에서 제공하는
                            통신판매중개를 이용하여 “회원”과 “제휴 사업자 판매 상품”을
                            거래하고자 “회사”와 별도의 계약을 체결한 사업자를 말합니다.</li>
                        <li>“입점 사업자”라 함은 “서비스”에서 제공하는 통신판매중개를 이용하여 “회원”에게 “입점 사업자 판매
                            상품”을 판매하거나 “회원” 또는 다른 “입점 사업자”로부터 “상품”
                            또는 “입점 사업자 판매 상품”을 구매하고자 “회사”와 별도 계약을 체결한 사업자를 말합니다. “입점
                            사업자”가 “상품” 또는 “입점 사업자 판매 상품”을 구매하는 경우
                            해당 구매와 관련하여서는 “구매자” 또는 “구매회원”에 대한 규정을 준용합니다.</li>
                        <li>“제휴 사업자 판매 상품”이라 함은 “상품”과는 달리 “제휴 사업자”가 “회사”와 체결한 별도의 계약에 따라
                            “KREAM EXCLUSIVE DROPS” 및 “B2C 상품
                            페이지”에서 “회원”에게 판매하는 재화 또는 용역을 말합니다.</li>
                        <li>“입점 사업자 판매 상품”이라 함은 “상품”과는 달리 “입점 사업자”가 “회사”와 체결한 별도 계약에 따라
                            “서비스”에서 “회원”에게 판매하는 재화 또는 용역을 말합니다.
                        </li>
                    </ul>
                    <p>&nbsp;</p>
                    <p><strong>제 38 조 (기타)</strong></p>
                    <p>1. 본 약관에 대해서는 대한민국법을 준거법으로 하고, 대한민국 법원이 관할권을 갖는 것으로
                        합니다.<br><br>2. "회사"와 "회원" 간 발생한 분쟁에 관한 소송은 제소 당시의
                        "회원"의 주소에 의하고, 주소가 없는 경우 거소를 관할하는 지방법원의 전속관할로 합니다. 단, 제소 당시
                        "회원"의 주소 또는 거소가 명확하지 아니한 경우의 관할법원은
                        민사소송법에 따라 정합니다. 해외에 주소나 거소가 있는 고객의 경우 "회사"와 "회원"간 발생한 분쟁에 관한 소송은
                        대한민국 서울중앙지방법원을 관할 법원으로 합니다.</p>
                    <p>&nbsp;</p>
                    <ul>
                        <li>공고일자: 2023년 9월 22일</li>
                        <li>시행일자: 2023년 9월 29일</li>
                    </ul>
                </div>
            </div>

            <div id="modal2" class="modal">
                <div class="modal-content">
                    <span class="close">&times;</span>
                    <h3>개인정보 처리 방침</h3>
                    <p>개인정보처리방침 | SANTA
                        산타㈜(이하 회사)는 ｢개인정보 보호법｣ 에 따라 이용자의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보
                        처리방침을 수립 및
                        공개합니다.


                        제1조 (개인정보의 처리목적)

                        회사는 다음의 목적을 위하여 개인정보를 처리하며, 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않습니다. <br>
                        이용 목적이 변경되는 경우에는 ｢개인정보 보호법｣ 에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.
                        또한 회사는 만 14세 이상의 이용자를 대상으로 서비스를 제공하며, 만 14세 미만 아동의 개인정보가 수집된 사실을 인지하는 경우 해당 정보를 지체없이 삭제하겠습니다.
                        <br>
                        1. 회원 가입 및 관리
                        회원 가입의사 확인과 회원제 서비스 제공에 따른 회원자격 유지 및 관리, 서비스 부정이용 방지, 각종 고지와 통지, 고충처리 목적으로 개인정보를 처리합니다.
                        <br>
                        2. 서비스 제공
                        서비스 및 콘텐츠, 광고를 포함한 맞춤형 서비스 제공을 목적으로 개인정보를 처리합니다.
                        <br>
                        3. 고충처리
                        이용자의 신원 확인, 문의사항 확인, 사실조사를 위한 연락, 통지, 처리결과 통보의 목적으로 개인정보를 처리합니다.

                        <br>
                        제2조 (개인정보의 처리 및 보유기간)
                        <br>
                        ① 회사는 법령에 명시되어 있거나 이용자로부터 개인정보 수집 시 동의 받은 개인정보의 보유 및 이용기간 내에서 개인정보를 처리 및 보유합니다.
                        <br>
                        ② 각각의 개인정보 처리 및 보유 기간은 다음과 같습니다.
                        <br>
                        1. 회원 가입 및 관리: 회원 탈퇴 시까지<br>
                        다만, 다음의 사유에 해당하는 경우에는 해당 사유 종료 시까지<br>
                        1) 관계 법령 위반에 따른 수사, 조사 등이 진행 중인 경우에는 해당 수사, 조사 종료 시까지<br>
                        2) 서비스 이용에 따른 채권, 채무관계 잔존 시에는 해당 채권, 채무관계 정산 시까지<br>

                        2. 서비스 제공: 서비스 공급 완료 또는 서비스 이용 종료 시까지<br>
                        다만, 다음의 사유에 해당하는 경우에는 내부 기준에 따른 보관기간 종료 시까지<br>
                        1) 부정이용 방지를 위해 정보(이름, 이메일(로그인ID), 휴대전화번호, CI/DI): 3년<br>
                        2) 이벤트 진행 및 경품 배송, 제세공과금 처리를 위해 정보 (이름, 주소, 휴대전화번호): 3개월<br>
                        3) 거래처 등록 및 대금 지급을 위한 정보 (거래처 등록서류, 입금계좌 정보): 정보 확인 및 거래처 등록 후 3개월<br>

                        3. 고충처리: 고충 처리 완료 시까지<br>
                        다만, 다음의 사유에 해당하는 경우에는 해당 기간 종료 시까지
                    </p>





                    <script>
                        // JavaScript to control modals
                        document.querySelectorAll(".ck-r a").forEach(function (link) {
                            link.addEventListener("click", function (event) {
                                event.preventDefault();
                                var modalId = this.getAttribute("href").substr(1); // Extract modal ID
                                var modal = document.getElementById(modalId); // Get the modal by ID
                                modal.style.display = "block"; // Show the modal
                            });
                        });

                        document.querySelectorAll(".modal .close").forEach(function (closeButton) {
                            closeButton.addEventListener("click", function () {
                                var modal = this.closest(".modal"); // Find the parent modal
                                modal.style.display = "none"; // Hide the modal
                            });
                        });

                        window.onclick = function (event) {
                            if (event.target.classList.contains("modal")) {
                                event.target.style.display = "none"; // Close modal if clicked outside content
                            }
                        };
                    </script>

                    <!-- 회원가입 버튼 비활성화 -->
                    <script>
                        function checkForm() {
                            var email = $('#userEmail').val();
                            var password = $('input[name="userPwd"]').val();

                            // 모든 조건이 충족되면 버튼을 활성화
                            if (email && password) {
                                $('#signup').prop('disabled', false);
                            } else {
                                $('#signup').prop('disabled', true);
                            }
                        }

                        // 변경되면 checkForm
                        $('#userEmail, input[name="userPwd"]').on('input', checkForm);
                    </script>

                    <!-- 체크박스 -->
                    <script>
                        $(document).ready(function () {
                            $("#check_all").change(function () {
                                const checked = $(this).is(":checked");

                                $(".agree").prop("checked", checked);
                            });

                            $("#signup").click(function () {
                                let valid = true;

                                $(".agree").each((index, item) => {
                                    const msg = $(item).parent().find("label").text();

                                    if (valid && !$(item).is(":checked")) {
                                        alert(`\${msg}에 동의하지 않으셨습니다`);
                                        valid = false;
                                        return;
                                    }
                                });
                                if (valid)
                                    $("#agreeFrm").submit();
                            });
                        });
                    </script>

                    <!-- 이메일 인증확인 -->
                    <script>
                        let code;
                        let emailEntered = false;
                        $('#mail-Check-Btn').click(function () {
                            const email = $("#userEmail").val();//이메일 주소값 가져오기
                            console.log('완성된 이메일:' + email) //이메일 오는지 확인
                            const checkInput = $('.mail-check-input')

                            if (!email) {
                                alert('이메일을 입력해주세요');
                            } else {
                                emailEntered = true;



                            $.ajax({
                                type: 'get',
                                url: '/member/mailCheck?email=' + email,
                                success: function (data) {
                                    console.log("data :" + data);
                                    
                                    if(data == "FAIL") {
                                    	alert('이미 가입 된 이메일 입니다');	
                                    } else {
                                    	checkInput.attr('disabled', false);
                                    	code = data;
                                    	alert('인증번호가 전송되었습니다.');
                                    }
                                }
                            });//end ajax
                        }
                        });//end send email

                        //인증번호 비교
                        $('#mail-check').click(function () {
                            const inputCode = $('.mail-check-input').val();
                            const $resultMSg = $('#mail-check-warn');
                            
                            if(!inputCode) {
                            	alert('인증번호를 입력해주세요');
                            }
                            
                            $.ajax({
                                type: 'post',
                                url: '/member/authCheck/' + inputCode,
                                success: function (data) {
                                	if (data === "OK") {
                                        $resultMSg.html('인증번호가 일치합니다');
                                        $resultMSg.css('color', 'green');
                                        $('#mail-Check-Btn').attr('disabled', true);
                                        $('userEmail').attr('redonly', true);
                                        // $('userEmail').attr('onFocus', 'this.initialSelect = this.selectedIndex');
                                        // $('userEmail').attr('onchang', 'this.selectedIndex = this.initialSelect');
                                    } else {
                                        $resultMSg.html('인증번호가 불일치 합니다');
                                        $resultMSg.css('color', 'red');
                                        alert('인증번호가 불일치 합니다 . 다시 확인해주세요')
                                    }                                    
                                }
                            })//end ajax

                            
                        });
                    </script>


        </body>

        </html>