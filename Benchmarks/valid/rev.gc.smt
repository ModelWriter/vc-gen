(declare-const i Int)
(declare-const N Int)
(declare-const a (Array Int Int))
(declare-const b (Array Int Int))
(declare-const j Int)
(declare-const i!1 Int)
(declare-const i?0 Int)
(declare-const a!0 (Array Int Int))
(declare-const a?1 (Array Int Int))
(declare-const i?2 Int)
(declare-const a?3 (Array Int Int))
(declare-const i?4 Int)
(declare-const i!0 Int)

(assert (not (=> (<= 0 N) (=> (= i!0 i) (=> (= i?4 0) (and (<= i?4 N) (and (forall ((j Int)) (=> (and (<= 0 j) (< j i?4)) (= (select a j) (select b (- N j))))) (=> (<= i?2 N) (=> (forall ((j Int)) (=> (and (<= 0 j) (< j i?2)) (= (select a?3 j) (select b (- N j))))) (and (=> (< i?2 N) (=> (= a!0 a?3) (=> (= a?1 (store a!0 i?2 (select b (- N i?2)))) (=> (= i!1 i?2) (=> (= i?0 (+ i!1 1)) (and (<= i?0 N) (and (forall ((j Int)) (=> (and (<= 0 j) (< j i?0)) (= (select a?1 j) (select b (- N j))))) (=> false (and (forall ((i?0 Int)) (=> (and (<= 0 i?0) (< i?0 N)) (= (select a?1 i?0) (select b (- N i?0))))) true))))))))) (=> (not (< i?2 N)) (and (forall ((i?2 Int)) (=> (and (<= 0 i?2) (< i?2 N)) (= (select a?3 i?2) (select b (- N i?2))))) true))))))))))))
(check-sat)
(exit)
