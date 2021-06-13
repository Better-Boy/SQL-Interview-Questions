 with sent_count AS (
SELECT  COUNT(*) AS sent
FROM 
(
	SELECT  distinct sender_id 
	       ,send_to_id
	FROM FriendRequest 
) a), accepted_count AS (
SELECT  COUNT(*) AS accpt
FROM 
(
	SELECT  distinct requester_id 
	       ,accepter_id
	FROM RequestAccepted 
) b)
SELECT  round(ifnull(accpt/sent,0),2) AS accept_rate
FROM sent_count, accepted_count;