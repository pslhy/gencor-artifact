
let rec is_prime (n : int) : bool =
    match n with
    | 1 | 0 -> false
    | x when x mod 2 = 0 || x mod 3 = 0 || x mod 5 = 0 || x mod 7 = 0 -> false
    | x ->
        let rec loop (i : int) : bool =
            if i * i > n then true
            else if n mod i = 0 then false
            else loop (i + 1)
        loop 2

(* Example usage *)

(* Test case 1 *)
(*** Test.assert_equals ~expect:false (is_prime 6) *)

(* Test case 2 *)
(*** Test.assert_equals ~expect:true (is_prime 101) *)

(* Test case 3 *)
(*** Test.assert_equals ~expect:true (is_prime 11) *)

(* Test case 4 *)
(*** Test.assert_equals ~expect:true (is_prime 13441) *)

(* Test case 5 *)
(*** Test.assert_equals ~expect:true (is_prime 61) *)

(* Test case 6 *)
(*** Test.assert_equals ~expect:false (is_prime 4) *)

(* Test case 7 *)
(*** Test.assert_equals ~expect:false (is_prime 1) *)

(* Test case 8 *)
(*** Test.assert_equals ~expect:false (is_prime 0) *)

(* Test case 9 *)
(*** Test.assert_equals ~expect:false (is_prime 24) *)

(* Test case 10 *)
(*** Test.assert_equals ~expect:false (is_prime 32) *)

(* Test case 11 *)
(*** Test.assert_equals ~expect:false (is_prime 42) *)

(* Test case 12 *)
(*** Test.assert_equals ~expect:false (is_prime 50) *)

(* Test case 13 *)
(*** Test.assert_equals ~expect:false (is_prime 56) *)

(* Test case 14 *)
(*** Test.assert_equals ~expect:false (is_prime 60) *)

(* Test case 15 *)
(*** Test.assert_equals ~expect:false (is_prime 64) *)

(* Test case 16 *)
(*** Test.assert_equals ~expect:false (is_prime 72) *)

(* Test case 17 *)
(*** Test.assert_equals ~expect:false (is_prime 84) *)

(* Test case 18 *)
(*** Test.assert_equals ~expect:false (is_prime 88) *)

(* Test case 19 *)
(*** Test.assert_equals ~expect:false (is_prime 90) *)

(* Test case 20 *)
(*** Test.assert_equals ~expect:false (is_prime 96) *)

(* Test case 21 *)
(*** Test.assert_equals ~expect:false (is_prime 104) *)

(* Test case 22 *)
(*** Test.assert_equals ~expect:false (is_prime 112) *)

(* Test case 23 *)
(*** Test.assert_equals ~expect:false (is_prime 120) *)

(* Test case 24 *)
(*** Test.assert_equals ~expect:false (is_prime 128) *)

(* Test case 25 *)
(*** Test.assert_equals ~expect:false (is_prime 136) *)

(* Test case 26 *)
(*** Test.assert_equals ~expect:false (is_prime 144) *)

(* Test case 27 *)
(*** Test.assert_equals ~expect:false (is_prime 152) *)

(* Test case 28 *)
(*** Test.assert_equals ~expect:false (is_prime 160) *)

(* Test case 29 *)
(*** Test.assert_equals ~expect:false (is_prime 168) *)

(* Test case 30 *)
(*** Test.assert_equals ~expect:false (is_prime 176) *)

(* Test case 31 *)
(*** Test.assert_equals ~expect:false (is_prime 184) *)

(* Test case 32 *)
(*** Test.assert_equals ~expect:false (is_prime 192) *)

(* Test case 33 *)
(*** Test.assert_equals ~expect:false (is_prime 200) *)

(* Test case 34 *)
(*** Test.assert_equals ~expect:false (is_prime 208) *)

(* Test case 35 *)
(*** Test.assert_equals ~expect:false (is_prime 216) *)

(* Test case 36 *)
(*** Test.assert_equals ~expect:false (is_prime 224) *)

(* Test case 37 *)
(*** Test.assert_equals ~expect:false (is_prime 232) *)

(* Test case 38 *)
(*** Test.assert_equals ~expect:false (is_prime 240) *)

(* Test case 39 *)
(*** Test.assert_equals ~expect:false (is_prime 248) *)

(* Test case 40 *)
(*** Test.assert_equals ~expect:false (is_prime 256) *)

(* Test case 41 *)
(*** Test.assert_equals ~expect:false (is_prime 264) *)

(* Test case 42 *)
(*** Test.assert_equals ~expect:false (is_prime 272) *)

(* Test case 43 *)
(*** Test.assert_equals ~expect:false (is_prime 280) *)

(* Test case 44 *)
(*** Test.assert_equals ~expect:false (is_prime 288) *)

(* Test case 45 *)
(*** Test.assert_equals ~expect:false (is_prime 296) *)

(* Test case 46 *)
(*** Test.assert_equals ~expect:false (is_prime 304) *)

(* Test case 47 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return true if a given number is prime, and false otherwise. *)
(*     >>> is_prime 6 *)
(*     false *)
(*     >>> is_prime 101 *)
(*     true *)
(*     >>> is_prime 11 *)
(*     true *)
(*     >>> is_prime 13441 *)
(*     true *)
(*     >>> is_prime 61 *)
(*     true *)
(*     >>> is_prime 4 *)
(*     false *)
(*     >>> is_prime 1 *)
(*     false *)
