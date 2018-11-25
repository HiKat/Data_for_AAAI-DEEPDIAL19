; /////////////////////////////////////////
; // Rules for observable information /////
; /////////////////////////////////////////

; // The sender of an e-mail tends to be the agent of an event which appears in the e-mail.
;(B (=> (が-md-ex *e *x) (^ (mailid *e *m) (mail_address_sender *x *m))))
; // The sender of an e-mail tends to be the indirect-object of an event which appears in the e-mail.
;(B (=> (に-md-ex *e *x) (^ (mailid *e *m) (mail_address_receiver *x *m))))

; // Rules for expressions of the first person
(B (=> (mail_address_sender *x1 *m) (^ (弊社-nn *x1) (が-md-ex *e *x1) (mailid *e *m))))
(B (=> (mail_address_sender *x1 *m) (^ (弊社-nn *x1) (を-md-ex *e *x1) (mailid *e *m))))
(B (=> (mail_address_sender *x1 *m) (^ (弊社-nn *x1) (に-md-ex *e *x1) (mailid *e *m))))
(B (=> (mail_address_sender *x1 *m) (^ (我々-nn *x1) (が-md-ex *e *x1) (mailid *e *m))))
(B (=> (mail_address_sender *x1 *m) (^ (我々-nn *x1) (を-md-ex *e *x1) (mailid *e *m))))
(B (=> (mail_address_sender *x1 *m) (^ (我々-nn *x1) (に-md-ex *e *x1) (mailid *e *m))))
(B (=> (mail_address_sender *x1 *m) (^ (私-nn *x1) (が-md-ex *e *x1) (mailid *e *m))))
(B (=> (mail_address_sender *x1 *m) (^ (私-nn *x1) (を-md-ex *e *x1) (mailid *e *m))))
(B (=> (mail_address_sender *x1 *m) (^ (私-nn *x1) (に-md-ex *e *x1) (mailid *e *m))))
; // Rules for expressions of the second person
(B (=> (mail_address_receiver *x1 *m) (^ (御社-nn *x1) (が-md-ex *e *x1) (mailid *e *m))))
(B (=> (mail_address_receiver *x1 *m) (^ (御社-nn *x1) (を-md-ex *e *x1) (mailid *e *m))))
(B (=> (mail_address_receiver *x1 *m) (^ (御社-nn *x1) (に-md-ex *e *x1) (mailid *e *m))))
(B (=> (mail_address_receiver *x1 *m) (^ (皆様-nn *x1) (が-md-ex *e *x1) (mailid *e *m))))
(B (=> (mail_address_receiver *x1 *m) (^ (皆様-nn *x1) (を-md-ex *e *x1) (mailid *e *m))))
(B (=> (mail_address_receiver *x1 *m) (^ (皆様-nn *x1) (に-md-ex *e *x1) (mailid *e *m))))

; // Rules for attributes from ZUNDA
;(B (=> (affirmative *x *e) (^  (mailid *e *m) (mail_address_sender *x *m))))
;(B (=> (DS_request *x1 *x2 *e) (^  (mailid *e *m) (mail_address_sender *x1 *m) (mail_address_receiver *x2 *m))))

; // price
(B (=> (price *x) (価格-nn *x)))
(B (=> (price *x) (値段-nn *x)))
(B (=> (price *x) (金額-nn *x)))
(B (=> (price *x) (予価-nn *x)))
(B (=> (price *x) (率-nn *x)))
(B (=> (price *x) (割-nn *x)))
(B (=> (price *x) (円-nn *x)))
(B (=> (price *x) (額-nn *x)))
(B (=> (price *x) (予算-nn *x)))

; // info
(B (=> (info *x) (情報-nn *x)))
(B (=> (info *x) (書類-nn *x)))
(B (=> (info *x) (ファイル-nn *x)))
(B (=> (info *x) (ＦＡＸ-nn *x)))
(B (=> (info *x) (メモ-nn *x)))

; // bid
(B (=> (bid *e) (入札-ev *e)))
(B (=> (bid *e) (応札-ev *e)))
(B (=> (bid *e1) (^ (する-ev *e1) (入札-nn *x1) (を-md-ex *e1 *x1))))
(B (=> (bid *e1) (^ (進める-ev *e1) (入札-nn *x1) (を-md-ex *e1 *x1))))
(B (=> (bid *e1) (^ (担当-ev *e1) (入札-nn *x1) (を-md-ex *e1 *x1))))
(B (=> (bid *e1) (^ (参加-ev *e1) (入札-nn *x1) (に-md-ex *e1 *x1))))

; // success-bid
(B (=> (success_bid *e) (落札-ev *e)))
(B (=> (success_bid *e) (受注-ev *e)))
(B (=> (success_bid *e1) (^ (する-ev *e1) (落札-nn *x1) (を-md-ex *e1 *x1))))
(B (=> (success_bid *e1) (^ (担当-ev *e1) (落札-nn *x1) (を-md-ex *e1 *x1))))
(B (=> (success_bid *e1) (^ (担当-ev *e1) (受注-nn *x1) (を-md-ex *e1 *x1))))
(B (=> (success_bid *e1) (^ (なる-ev *e1) (落札-nn *x1) (EMPTY-md-xx *x1 *x2) (業者-nn *x2) (に-md-ex *e1 *x2))))
(B (=> (success_bid *e1) (^ (なる-ev *e1) (担当-nn *x1) (に-md-ex *e1 *x1))))

; // change
(B (=> (change *e) (変更-ev *e)))
(B (=> (change *e) (設定-ev *e)))
(B (=> (change *e) (決定-ev *e)))
(B (=> (change *e) (統一-ev *e)))
(B (=> (change *e) (調整-ev *e)))
(B (=> (change *e) (改定-ev *e)))
(B (=> (change *e) (制限-ev *e)))
(B (=> (change *e) (保持-ev *e)))
(B (=> (change *e) (維持-ev *e)))
(B (=> (change *e) (上げる-ev *e)))
(B (=> (change *e) (増す-ev *e)))
(B (=> (change *e) (下げる-ev *e)))
(B (=> (change *e) (減らす-ev *e)))
(B (=> (change *e) (決める-ev *e)))
(B (=> (change *e) (定める-ev *e)))
(B (=> (change *e) (揃える-ev *e)))
(B (=> (change *e) (固定-ev *e)))

; // change_price
(B (=> (change_price *e) (^ (引き上げ-ev *e) (を-md-ex *e *x2) (price *x2))))
(B (=> (change_price *e) (^ (引き上げる-ev *e) (を-md-ex *e *x2) (price *x2))))
(B (=> (change_price *e) (^ (引き下げ-ev *e) (を-md-ex *e *x2) (price *x2))))
(B (=> (change_price *e) (^ (引き下げる-ev *e) (を-md-ex *e *x2) (price *x2))))
(B (=> (change_price *e) (^ (上げる-ev *e) (を-md-ex *e *x2) (price *x2))))
(B (=> (change_price *e) (^ (下げる-ev *e) (を-md-ex *e *x2) (price *x2))))
(B (=> (change_price *e) (^ (する-ev *e) (を-md-ex *e *x2) (値上げ-nn *x2))))
(B (=> (change_price *e) (^ (行う-ev *e) (を-md-ex *e *x2) (値上げ-nn *x2))))
(B (=> (change_price *e) (^ (図る-ev *e) (を-md-ex *e *x2) (値上げ-nn *x2))))
(B (=> (change_price *e) (^ (実施-ev *e) (を-md-ex *e *x2) (値上げ-nn *x2))))
(B (=> (change_price *e) (^ (達成-ev *e) (を-md-ex *e *x2) (値上げ-nn *x2))))
(B (=> (change_price *e) (^ (検討-ev *e) (を-md-ex *e *x2) (値上げ-nn *x2))))
(B (=> (change_price *e) (^ (する-ev *e) (を-md-ex *e *x2) (値下げ-nn *x2))))
(B (=> (change_price *e) (^ (行う-ev *e) (を-md-ex *e *x2) (値下げ-nn *x2))))
(B (=> (change_price *e) (^ (図る-ev *e) (を-md-ex *e *x2) (値下げ-nn *x2))))
(B (=> (change_price *e) (^ (実施-ev *e) (を-md-ex *e *x2) (値下げ-nn *x2))))
(B (=> (change_price *e) (^ (達成-ev *e) (を-md-ex *e *x2) (値下げ-nn *x2))))
(B (=> (change_price *e) (^ (検討-ev *e) (を-md-ex *e *x2) (値下げ-nn *x2))))
(B (=> (change_price *e1) (^ (踏み切る-ev *e1) (値上げ-nn *x1) (に-md-ex *e1 *x1))))
(B (=> (change_price *e1) (^ (踏み切る-ev *e1) (値下げ-nn *x1) (に-md-ex *e1 *x1))))
(B (=> (change_price *e1) (値下げ-ev *e1)))
(B (=> (change_price *e1) (値上げ-ev *e1)))
(B (=> (change_price *e1) (割引き-ev *e1)))
(B (=> (change_price *e1) (発売-ev *e1)))
(B (=> (change_price *e) (^ (する-ev *e) (を-md-ex *e *x2) (割引-nn *x2))))
(B (=> (change_price *e1) (価格交渉-ev *e1)))
(B (=> (change_price *e) (^ (する-ev *e) (を-md-ex *e *x2) (価格交渉-nn *x2))))
(B (=> (change_price *e) (^ (行う-ev *e) (を-md-ex *e *x2) (価格交渉-nn *x2))))
(B (=> (change_price *e1) (^ (交渉-ev *e1) (価格-nn *x1) (を-md-ex *e1 *x1))))
(B (=> (change_price *e1) (底上げ-ev *e1)))
(B (=> (change_price *e) (^ (する-ev *e) (を-md-ex *e *x2) (底上げ-nn *x2))))
(B (=> (change_price *e) (^ (行う-ev *e) (を-md-ex *e *x2) (底上げ-nn *x2))))
(B (=> (change_price *e) (^ (図る-ev *e) (を-md-ex *e *x2) (底上げ-nn *x2))))
(B (=> (change_price *e1) (^ (する-ev *e1) (価格-nn *x1) (EMPTY-md-xx *x1 *x2) (調整-nn *x2) (を-md-ex *e1 *x2))))
(B (=> (change_price *e1) (^ (図る-ev *e1) (価格-nn *x1) (EMPTY-md-xx *x1 *x2) (調整-nn *x2) (を-md-ex *e1 *x2))))
(B (=> (change_price *e1) (^ (行う-ev *e1) (価格-nn *x1) (EMPTY-md-xx *x1 *x2) (調整-nn *x2) (を-md-ex *e1 *x2))))
(B (=> (change_price *e1) (^ (進める-ev *e1) (価格-nn *x1) (EMPTY-md-xx *x1 *x2) (調整-nn *x2) (を-md-ex *e1 *x2))))
(B (=> (change_price *e1) (^ (強化-ev *e1) (価格-nn *x1) (を-md-ex *e1 *x1))))
(B (=> (change_price *e1) (^ (増す-ev *e1) (価格-nn *x1) (EMPTY-md-xx *x1 *x2) (帯-nn *x2) (を-md-ex *e1 *x2))))
(B (=> (change_price *e1) (^ (提示-ev *e1) (価格-nn *x1) (を-md-ex *e1 *x1))))

; // provide
(B (=> (provide *e) (提供-ev *e)))
(B (=> (provide *e) (添付-ev *e)))
(B (=> (provide *e) (送る-ev *e)))
(B (=> (provide *e) (渡す-ev *e)))
(B (=> (provide *e) (伝える-ev *e)))
(B (=> (provide *e) (連絡-ev *e)))
(B (=> (provide *e) (教授-ev *e)))
(B (=> (provide *e) (交換-ev *e)))
(B (=> (provide *e) (担当-ev *e)))
(B (=> (provide *e) (共有-ev *e)))
(B (=> (provide *e) (報告-ev *e)))
(B (=> (provide *e) (用意-ev *e)))
(B (=> (provide *e) (展開-ev *e)))
(B (=> (provide *e) (周知-ev *e)))
(B (=> (provide *e) (提示-ev *e)))
(B (=> (provide *e) (報告-ev *e)))
(B (=> (provide *e) (準備-ev *e)))
(B (=> (provide *e1) (送付-ev *e1)))
(B (=> (provide *e1) (教える-ev *e1)))
(B (=> (provide *e1) (返信-ev *e1)))

; // agree
(B (=> (agree *e) (賛成-ev *e)))
(B (=> (agree *e) (賛同-ev *e)))
(B (=> (agree *e) (感謝-ev *e)))
(B (=> (agree *e) (同意-ev *e)))
(B (=> (agree *e) (承知-ev *e)))
(B (=> (agree *e) (了承-ev *e)))
(B (=> (agree *e) (了解-ev *e)))
(B (=> (agree *e) (承認-ev *e)))
(B (=> (agree *e) (承諾-ev *e)))
(B (=> (agree *e) (快諾-ev *e)))
(B (=> (agree *e) (合意-ev *e)))
(B (=> (agree *e1) (^ (問題-ev *e1) (ない-smd *e1))))

; // request
(B (=> (request *e1) (要求-ev *e1)))
(B (=> (request *e1) (提案-ev *e1)))
(B (=> (request *e1) (相談-ev *e1)))
(B (=> (request *e1) (検討-ev *e1)))
(B (=> (request *e1) (交渉-ev *e1)))
(B (=> (request *e1) (決定-ev *e1)))
(B (=> (request *e1) (依頼-ev *e1)))
(B (=> (request *e1) (委託-ev *e1)))
(B (=> (request *e1) (指示-ev *e1)))
(B (=> (request *e1) (願う-ev *e1)))
(B (=> (request *e1) (希望-ev *e1)))
(B (=> (request *e1) (任せる-ev *e1)))
(B (=> (request *e1) (すり合わせ-ev *e1)))

; // intend
(B (=> (intend *e1) (希望-ev *e1)))
(B (=> (intend *e1) (願う-ev *e1)))
(B (=> (intend *e1) (要求-ev *e1)))
(B (=> (intend *e1) (考える-ev *e1)))

; Cartel
(B (=> (cartel x1 x2) (^ (結ぶ-ev *e) (が-md-ex *e x1) (を-md-ex *e *y) (カルテル-nn *y))))


; //////////////////////////////////////////
; // Rules for domain-specific preciates ///
; //////////////////////////////////////////

; // "competitor_rel" relation is symmetric and irreflexive.
(B (=> (^ (competitor_rel y x :1.0) (!= x y)) (competitor_rel x y)))

; // price, info, price_info
(B (=> (price_info *x) (price *x)))
(B (=> (price_info *x) (info *x)))

; ///////  The definition of "change" & "change_price" /////
(B (=> (change_price *e) (^ (change *e) (を-md-ex *e *p) (price *p))))
(B (=> (change_price *e) (^ (change *e) (EMPTY-md-ex *e *p) (price *p))))
(B (=> (DS_change_price *e *x) (^ (change_price *e) (人-nn *x) (が-md-ex *e *x))))

; /////// Rules for "agree" /////
; // ニ格が人の場合 : その人物が主格になっている事態に対して肯定的
(B (=> (affirmative *x1 *e2) (^ (agree *e1) (人-nn *x1) (が-md-ex *e1 *x1) (人-nn *x2) (に-md-ex *e1 *x2) (が-md-ex *e2 *x2))))
; // 二格が事態性名詞の場合 : その名詞の元になっている事態に対して肯定的
(B (=> (affirmative *x1 *e2) (^ (agree *e1) (人-nn *x1) (が-md-ex *e1 *x1) (に-md-ex *e1 *x2) (nominalized *x2 *e2))))

; /////// Rules for "thank" /////
; // ニ格が人の場合 : 感謝する対象のイベントが何かは未確定
(B (=> (DS_thank *x1 *x2 u) (^ (thank *e1) (人-nn *x1) (が-md-ex *e1 *x1) (人-nn *x2) (に-md-ex *e1 *x2))))
; // ニ格が事態性名詞の場合 : 感謝する相手が誰かは未確定
(B (=> (DS_thank *x1 u *e2) (^ (thank *e1) (人-nn *x1) (が-md-ex *e1 *x1) (に-md-ex *e1 *x2) (nominalized *x2 *e2))))

; /////// Rules for "provide" /////
(B (=> (DS_provide *e *x1 *x2 *x3) (^ (provide *e) (人-nn *x1) (人-nn *x3) (が-md-ex *e *x1) (を-md-ex *e *x2) (に-md-ex *e *x3))))

; /////// Rules for "propose" /////
; // 提案するイベントを、与格の人物が主格となるような何らかのイベントだと仮定する
(B (=> (DS_propose *x1 *x2 *e2) (^ (propose *e1) (人-nn *x1) (人-nn *x2) (が-md-ex *e1 *x1) (に-md-ex *e1 *x2) (が-md-ex *e2 *x2))))
; // 提案するイベントを、主格の人物が主格となるような何らかのイベントだと仮定する
(B (=> (DS_propose *x1 *x2 *e2) (^ (propose *e1) (人-nn *x1) (人-nn *x2) (が-md-ex *e1 *x1) (に-md-ex *e1 *x2) (が-md-ex *e2 *x1))))
; // ヲ格に事態性名詞がある場合は、その元になったイベントを"提案"する
(B (=> (DS_propose *x1 *x2 *e2) (^ (propose *e1) (が-md-ex *e1 *x1) (に-md-ex *e1 *x2) (を-md-ex *e1 *x3) (nominalized *x3 *e2))))
; // 提案するイベント自体に肯定的なら、提案されたイベントにも肯定的である
(B (=> (affirmative u *e2) (^ (propose *e1) (人-nn *x1) (DS_propose *x1 *x2 *e2) (affirmative u *e1))))
; // 提案するならば、そのイベントに対して肯定的姿勢を持っている
(B (=> (affirmative *x1 *e2) (DS_propose *x1 *x2 *e2)))

; /////// Rules for "ask" /////
; // 相談するイベントを、与格の人物が主格となるような何らかのイベントだと仮定する
(B (=> (DS_ask *x1 *x2 *e2) (^ (ask *e1) (人-nn *x1) (人-nn *x2) (が-md-ex *e1 *x1) (に-md-ex *e1 *x2) (が-md-ex *e2 *x2))))
; // 相談するイベントを、主格の人物が主格となるような何らかのイベントだと仮定する
(B (=> (DS_ask *x1 *x2 *e2) (^ (ask *e1) (人-nn *x1) (人-nn *x2) (が-md-ex *e1 *x1) (に-md-ex *e1 *x2) (が-md-ex *e2 *x1))))
; // ヲ格に事態性名詞がある場合は、その元になったイベントを"相談"する
(B (=> (DS_ask *x1 *x2 *e2) (^ (ask *e1) (が-md-ex *e1 *x1) (に-md-ex *e1 *x2) (を-md-ex *e1 *x3) (nominalized *x3 *e2))))
; // 相談するイベント自体に肯定的なら、相談されたイベントにも肯定的である
(B (=> (affirmative *u *e2) (^ (ask *e1) (人-nn *x1) (DS_ask *x1 *x2 *e2) (affirmative *u *e1))))
; // 相談するならば、そのイベントに対して肯定的姿勢を持っている
(B (=> (affirmative *x1 *e2) (DS_ask *x1 *x2 *e2)))

; /////// The definition of "request" /////
; // 要求するイベントを、与格の人物が主格となるような何らかのイベントだと仮定する
(B (=> (DS_request *x1 *x2 *e2) (^ (request *e1) (人-nn *x1) (人-nn *x2) (が-md-ex *e1 *x1) (に-md-ex *e1 *x2) (が-md-ex *e2 *x2))))
; // 要求するイベントを、主格の人物が主格となるような何らかのイベントだと仮定する
(B (=> (DS_request *x1 *x2 *e2) (^ (request *e1) (人-nn *x1) (人-nn *x2) (が-md-ex *e1 *x1) (に-md-ex *e1 *x2) (が-md-ex *e2 *x1))))
; // ヲ格に事態性名詞がある場合は、その元になったイベントを"要求"する
(B (=> (DS_request *x1 *x2 *e2) (^ (request *e1) (が-md-ex *e1 *x1) (に-md-ex *e1 *x2) (を-md-ex *e1 *x3) (nominalized *x3 *e2))))
; // 要求するイベント自体に肯定的なら、要求されたイベントにも肯定的である
(B (=> (affirmative *u *e2) (^ (request *e1) (人-nn *x1) (DS_request *x1 *x2 *e2) (affirmative *u *e1))))
; // 要求するならば、そのイベントに対して肯定的姿勢を持っている
(B (=> (affirmative *x1 *e2) (DS_request *x1 *x2 *e2)))

; /////// Rules for "intend" /////
(B (=> (affirmative *x1 *e2) (^ (intend *e1) (人-nn *x1) (が-md-ex *e1 *x1) (を-md-ex *e1 *x2) (nominalized *x2 *e2))))

; /////// Rules for "cooporate" /////
; // 二格が人物 : その人物と協力する
(B (=> (DS_cooperate *e *x1 *x2) (^ (cooperate *e) (人-nn *x1) (人-nn *x2) (が-md-ex *e *x1) (に-md-ex *e1 *x2))))
; // 二格が事態性名詞 : そのイベントの主格と協力する
(B (=> (DS_cooperate *e *x1 *x3) (^ (cooperate *e1) (人-nn *x1) (が-md-ex *e1 *x1) (に-md-ex *e1 *x2) (nominalized *x2 *e2) (が-md-ex *e2 *x3))))
(B (=> (^ (DS_cooperate *e *y *x) (!= *x *y)) (DS_cooperate *e *x *y)))

; /////// Rules for "bid" /////
(B (=> (DS_bid *e *x1) (^ (bid *e) (人-nn *x) (が-md-ex *e *x))))

; /////// Rules for "success_bid" /////
(B (=> (DS_success_bid *e *x) (^ (success_bid *e) (人-nn *x) (が-md-ex *e *x))))
; // 入札した人物は落札するかも知れない
(B (name bid#A) (=> (DS_success_bid *e2 *x) (DS_bid *e1 *x)))
; // 落札した人物は入札した
(B (name bid#B) (=> (DS_bid *e2 *x) (DS_success_bid *e1 *x)))


; //////////////////////////////
; // Rules for risk-pair ///////
; //////////////////////////////

(B (name risk#C1) (=> (cartel x y :1.0) (risk-pair x y)))
(B (name risk#C2) (=> (cartel y x :1.0) (risk-pair x y)))
(B (name risk#N1) (=> (bid_rigging x y :1.0) (risk-pair x y)))
(B (name risk#N2) (=> (bid_rigging y x :1.0) (risk-pair x y)))
(B (name risk#K1) (=> (collusive_bid x y :1.0) (risk-pair x y)))
(B (name risk#K2) (=> (collusive_bid y x :1.0) (risk-pair x y)))


; ///////////////////////////
; // Rules for cartel ///////
; ///////////////////////////

; // C-010 :: AとBが同業である ^ Aが価格を調整することをAがBに提案する ^ Bがそれに同意する -> カルテル成立
(B (name cartel#010) (=> (^ (competitor_rel a b) (DS_propose a b e_ch) (DS_change_price e_ch a) (affirmative b e_ch)) (cartel a b)))

; // C-011 :: AとBが同業である ^ Aが価格を調整することをAがBに提案する ^ Bが価格を調整することを望む -> カルテル成立
(B (name cartel#011) (=> (^ (competitor_rel *a *b) (DS_propose *a *b *e_ch1) (DS_change_price *e_ch1 *a) (affirmative *b *e_ch2) (DS_change_price *e_ch2 *b)) (cartel *a *b)))

; // C-020 :: AとBが同業である ^ Aが価格を調整することを望む ^ Bがそれに同意する -> カルテル成立
(B (name cartel#020) (=> (^ (competitor_rel *a *b) (DS_change_price *e_ch *a) (affirmative *a *e_ch) (affirmative *b *e_ch)) (cartel *a *b)))

; // C-021 :: AとBが同業である ^ Aが価格を調整することを望む ^ Bが価格を調整することを望む -> カルテル成立
(B (name cartel#021) (=> (^ (competitor_rel *a *b) (affirmative *a *e_ch1) (DS_change_price *e_ch1 *a) (affirmative *b *e_ch2) (DS_change_price *e_ch2 *b)) (cartel *a *b)))

; // C-030 :: AとBが同業である ^ Aが価格を調整することをAがBに相談する ^ Bがそれに同意する -> カルテル成立
(B (name cartel#030) (=> (^ (competitor_rel *a *b) (DS_ask *a *b *e_ch) (DS_change_price *e_ch *a) (affirmative *b *e_ch)) (cartel *a *b)))

; // C-031 :: AとBが同業である ^ Aが価格を調整することをAがBに相談する ^ Bが価格を調整することを望む -> カルテル成立
(B (name cartel#031) (=> (^ (competitor_rel *a *b) (DS_ask *a *b *e_ch1) (DS_change_price *e_ch1 *a) (affirmative *b *e_ch2) (DS_change_price *e_ch2 *b)) (cartel *a *b)))

; // C-040 :: AとBが同業である ^ Aが価格を調整することをBがAに依頼する ^ Aがそれに同意する -> カルテル成立
(B (name cartel#040) (=> (^ (competitor_rel *a *b) (DS_request *b *a *e_ch) (DS_change_price *e_ch *a) (affirmative *a *e_ch)) (cartel *a *b)))

; // C-041 :: AとBが同業である ^ Aが価格を調整することをBがAに依頼する ^ Aが価格を調整することを望む -> カルテル成立
(B (name cartel#041) (=> (^ (competitor_rel *a *b) (DS_request *b *a *e_ch) (DS_change_price *e_ch *a) (affirmative *a *e_ch)) (cartel *a *b)))

; // C-050 :: AとBが同業である ^ AがBに価格情報を提供する -> カルテル成立
(B (name cartel#050) (=> (^ (competitor_rel *a *b) (DS_provide *e_pr *a *x_in *b) (price_info *x_in)) (cartel *a *b)))


; ////////////////////////////////
; // Rules for bid-rigging ///////
; ////////////////////////////////

; // N-010 :: AとBが同業である ^ Bが落札するようAがBに対して依頼する ^ Bがそれに同意する -> 入札談合成立
(B (name bid_rigging#010) (=> (^ (competitor_rel *a *b) (DS_request *a *b *e_sb) (DS_success_bid *e_sb *b) (affirmative *b *e_sb)) (bid_rigging *a *b)))

; // N-011 :: AとBが同業である ^ Bが落札するようAがBに対して依頼する ^ Bが落札を望む -> 入札談合成立
(B (name bid_rigging#011) (=> (^ (competitor_rel *a *b) (DS_request *a *b *e_sb) (DS_success_bid *e_sb *b) (affirmative *b *e_sb)) (bid_rigging *a *b)))

; // N-012 :: AとBが同業である ^ Aが関係者に対して入札の協力を提案する ^ BがAの提案に同意する -> 入札談合成立
(B (name bid_rigging#012) (=> (^ (competitor_rel *a *b) (DS_propose *a *b *e_co) (DS_cooperate *e_co *b *a) (affirmative *b *e_co)) (bid_rigging *a *b)))

; // N-013 :: AとBが同業である ^ Aが関係者に対して入札の協力を提案する ^ Bが落札を望む -> 入札談合成立
(B (name bid_rigging#013) (=> (^ (competitor_rel *a *b) (DS_propose *a *b *e_co) (DS_cooperate *e_co *b *a) (affirmative *b *e_sb) (DS_success_bid *e_sb *b)) (bid_rigging *a *b)))

; // N-020 :: AとBが同業である ^ AがBに対してAが落札するよう依頼する ^ Bがそれに同意する -> 入札談合成立
(B (name bid_rigging#020) (=> (^ (competitor_rel *a *b) (DS_propose *a *b *e_sb) (DS_success_bid *e_sb *a) (affirmative *b *e_sb)) (bid_rigging *a *b)))

; // N-030 :: AとBが同業である ^ Aが落札することを望む ^ Bがそれに同意する
(B (name bid_rigging#030) (=> (^ (competitor_rel *a *b) (DS_success_bid *e_sb *a) (affirmative *a *e_sb) (affirmative *b *e_sb)) (bid_rigging *a *b)))

; // N-040 :: AとBが同業である ^ AがBに入札情報の提供を依頼する ^ BがAに入札情報を提供する
(B (name bid_rigging#040) (=> (^ (competitor_rel *a *b) (DS_request *a *b *e_pr) (DS_provide *e_pr *b *x_in *a) (price_info *x_in) (affirmative *b *e_pr)) (bid_rigging *a *b)))


; ////////////////////////////////////
; // Rules for collusive-bidding /////
; ////////////////////////////////////

; // K-010 :: Aが官である ^ Bが民である ^ Bが落札をするようAがBに対して依頼する ^ Bがそれに同意する -> 官製談合成立
(B (name collusive_bid#010) (=> (^ (government *a) (company *b) (DS_request *a *b *e_sb) (DS_success_bid *e_sb *b) (affirmative *b *e_sb)) (collusive_bid *a *b)))

; // K-011 :: Aが官である ^ Bが民である ^ Bが落札するようAがBに対して依頼する ^ Bが落札を望む -> 官製談合成立
(B (name collusive_bid#011) (=> (^ (government *a) (company *b) (DS_request *a *b *e_sb) (DS_success_bid *e_sb *b) (affirmative *b *e_sb)) (collusive_bid *a *b)))

; // K-020 :: Aが官である ^ Bが民である ^ AがBに対して入札情報を提供する -> 官製談合成立
(B (name collusive_bid#020) (=> (^ (government *a) (company *b) (DS_provide *e_pr *a *x_in *b) (price_info *x_in)) (collusive_bid *a *b)))

; // K-030 :: Aが官である ^ Bが民である ^ BがAに対してBが落札するよう依頼する ^ Aがそれに同意する -> 官製談合成立
(B (name collusive_bid#030) (=> (^ (government *a) (company *b) (DS_request *b *a *e_bd) (DS_bid *e_bd *b) (affirmative *a *e_bd)) (collusive_bid *a *b)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Definition of unification postponement ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(B (unipp (が-md-ex * .)))
(B (unipp (を-md-ex * .)))
(B (unipp (に-md-ex * .)))
(B (unipp (は-md-ex * .)))
(B (unipp (と-md-ex * .)))
(B (unipp (も-md-ex * .)))
(B (unipp (で-md-ex * .)))
(B (unipp (より-md-ex * .)))
(B (unipp (にて-md-ex * .)))
(B (unipp (から-md-ex * .)))
(B (unipp (について-md-ex * .)))
(B (unipp (comp-md-ex * .)))

(B (unipp (_none_-md-xx * *)))
(B (unipp (EMPTY-md-xx * *)))
(B (unipp (の-md-xx * *)))
(B (unipp (との-md-xx * *)))
(B (unipp (と-md-xx * *)))

(B (unipp (_none_-md-ee * *)))
(B (unipp (EMPTY-md-ee * *)))
(B (unipp (と-md-ee * *)))
(B (unipp (て-md-ee * *)))
(B (unipp (が-md-ee * *)))
(B (unipp (ば-md-ee * *)))
(B (unipp (ので-md-ee * *)))