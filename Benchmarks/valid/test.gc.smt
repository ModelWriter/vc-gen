(declare-const l Int)
(declare-const j Int)
(declare-const u Int)
(declare-const a (Array Int Int))
(declare-const max Int)
(declare-const i Int)
(declare-const i!1 Int)
(declare-const i?0 Int)
(declare-const max?1 Int)
(declare-const max!1 Int)
(declare-const i?2 Int)
(declare-const max?3 Int)
(declare-const i?4 Int)
(declare-const i!0 Int)
(declare-const max?5 Int)
(declare-const max!0 Int)

(assert (not (=> (= max!0 max) (=> (= max?5 (select a l)) (=> (= i!0 i) (=> (= i?4 (+ l 1)) (and (forall ((j Int)) (=> (and (<= l j) (< j i?4)) (<= (select a j) max?5))) (=> (forall ((j Int)) (=> (and (<= l j) (< j i?2)) (<= (select a j) max?3))) (and (=> (<= i?2 u) (and (=> (> (select a i?2) max?3) (=> (= max!1 max?3) (=> (= max?1 (select a i?2)) (=> (= i!1 i?2) (=> (= i?0 (+ i!1 1)) (and (forall ((j Int)) (=> (and (<= l j) (< j i?0)) (<= (select a j) max?1))) (=> false (and (forall ((j Int)) (=> (and (<= l j) (<= j u)) (<= (select a j) max?1))) true)))))))) (=> (not (> (select a i?2) max?3)) (=> true (=> (= i!1 i?2) (=> (= i?0 (+ i!1 1)) (and (forall ((j Int)) (=> (and (<= l j) (< j i?0)) (<= (select a j) max?3))) (=> false (and (forall ((j Int)) (=> (and (<= l j) (<= j u)) (<= (select a j) max?3))) true))))))))) (=> (not (<= i?2 u)) (and (forall ((j Int)) (=> (and (<= l j) (<= j u)) (<= (select a j) max?3))) true)))))))))))
(check-sat)
(exit)
