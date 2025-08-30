-- 배송
SELECT * FROM delivery;
SELECT * FROM auction_bid;


-- 5번 입찰이 최종 입찰로 변경
UPDATE auction_bid
SET success_status = 'Y'
WHERE bid_id = 5;

-- 배송지 입력
-- 최종입찰자 success_status = Y 인 입찰 정보 가져와서 등록
-- 운송장 번호, 보내는사람 은  null 가능하게 해야한다
-- 배송상태 default 처리 해야함 ( 배송지 입력 상태도 넣어야함 일단여기선 'W'로 배송입력 상태 default 로 넣음)
INSERT INTO delivery (delivery_address , reciver_user_id , auction_id)
SELECT 
	'사랑시 고백구 행복동',
	b.user_id,
	b.auction_id
FROM auction_bid b
WHERE b.bid_id = 5
AND b.success_status = 'Y';



-- 운송장 등록
-- 주소지 등록된 상품에 판매자가 운송장을 등록한다
-- 해당 상품의 판매자 id 를 가져온다
UPDATE delivery 
	JOIN auction_item b USING(auction_id)
	SET delivery_no = '5231582571234',
	delivery_status = 'S',
	send_user_id = b.user_id
  WHERE delivery_id = 3
  && delivery_status = 'W'; -- 임의로 설정한 배송지입력 완료 코드

SELECT * FROM delivery;




-- -------------------------------------------------------------

-- 전체 유저 기본 포인트 주기 ( 처음에만 실행하세요 )
UPDATE user
SET user_balance = 5000;
-- 경매 물품 입찰가 주기 ( 처음에만 실행)
UPDATE auction_item 
SET current_price = 5000;


-- 포인트 이전 트리거
-- 배송 상태가 s -> y 수령 확인이 되면
-- 배송의 aution_id 를 가져와서 current_price(현재입찰가) 를 가져와서
-- 판매자의 포인트잔액에 현재입찰가(최종입찰가) 를 더해준다
-- auction_item -> current_price not null 로 변경 default 0 넣기 ( null 허용상태라 숫자값 오류남)
DELIMITER //

CREATE TRIGGER delivery_Y_point_transfer
AFTER UPDATE ON delivery
FOR EACH ROW
BEGIN

	IF OLD.delivery_status = 'S'  
	and NEW.delivery_status = 'Y' THEN
		
		UPDATE user a
		JOIN auction_item b ON NEW.auction_id = b.auction_id 
		SET a.user_balance = a.user_balance + b.current_price
		WHERE a.user_id = new.send_user_id;
		
	END IF;
    
END;
//

DELIMITER ;

-- --------------------------------------------------------


-- 수령자 수령확인 후 상태 변경
-- 수령자 id와 로그인한 id를 확인하여 같지않다면 적용 x
UPDATE delivery 
	SET delivery_status = 'Y' -- 수령확인코드
  WHERE delivery_id = 3
  && reciver_user_id = 1
  && delivery_status = 'S'; -- 배송중인 상태 코드확인


-- ---------------------------------------------------------  
  
  
-- 관리자는 반송이 들어오면 해당 배송상태를 R 로 변경
UPDATE delivery 
JOIN user b ON b.user_id = 5   -- 현재 로그인한 사용자

SET delivery_status = 'R'
WHERE delivery_id = 3
AND b.user_role = 'ADMIN'; -- 관리자인지 확인