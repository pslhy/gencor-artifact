
let rec max_sum (arr : int list) : int =
    let rec aux (arr : int list) (cur_min, max_sum) =
        match arr with
        | [] -> max_sum
        | x :: xs ->
            let (cur_max, cur_sum) = max (x, x) (cur_min, cur_min) (cur_min, 0) (cur_min, 0)
            aux xs (cur_min, max (max_sum, cur_min))
    in
    aux arr (Int.max_int, 0)

(* Tests *)

(* Bitonic sequence: 1, 2, 3, 4, 5, 3, 2, 1 *)
(*
let res = max_sum [1; 2; 3; 4; 5; 3; 2; 1]
printf "%d\n" res;
*)

(* Not bitonic sequence: 1, 2, 3, 4, 5, 0 *)
(*
let res = max_sum [1; 2; 3; 4; 5; 0]
printf "%d\n" res;
*)

(* Not bitonic sequence: 1, 2, 3, 4, 5, 3, 2, 1, 0 *)
(*
let res = max_sum [1; 2; 3; 4; 5; 3; 2; 1; 0]
printf "%d\n" res;
*)

(* Bitonic sequence: 1, 2, 3, 4, 5, 3, 2, 1, 0, 1, 2, 3 *)
(*
let res = max_sum [1; 2; 3; 4; 5; 3; 2; 1; 0; 1; 2; 3]
printf "%d\n" res;
*)

(* Not bitonic sequence: 1, 2, 3, 4, 5, 3, 2, 1, 0, 1, 2, 3, 0 *)
(*
let res = max_sum [1; 2; 3; 4; 5; 3; 2; 1; 0; 1; 2; 3; 0]
printf "%d\n" res;
*)

(* Bitonic sequence: 1, 2, 3, 4, 5, 3, 2, 1, 0, 1, 2, 3, 0, 0 *)
(*
let res = max_sum [1; 2; 3; 4; 5; 3; 2; 1; 0; 1; 2; 3; 0; 0]
printf "%d\n" res;
*)

(* Not bitonic sequence: 1, 2, 3, 4, 5, 3, 2, 1, 0, 1, 2, 3, 0, 0, 4 *)
(*
let res = max_sum [1; 2; 3; 4; 5; 3; 2; 1; 0; 1; 2; 3; 0; 0; 4]
printf "%d\n" res;
*)

(* Bitonic sequence: 1, 2, 3, 4, 5, 3, 2, 1, 0, 1, 2, 3, 0, 0, 4, 3, 2, 1, 0 *)
(*
let res = max_sum [1; 2; 3; 4; 5; 3; 2; 1; 0; 1; 2; 3; 0; 0; 4; 3; 2; 1; 0]
printf "%d\n" res;
*)

(* Not bitonic sequence: 1, 2, 3, 4, 5, 3, 2, 1, 0, 1, 2, 3, 0, 0, 4, 2, 1, 0 *)
(*
let res = max_sum [1; 2; 3; 4; 5; 3; 2; 1; 0; 1; 2; 3; 0; 0; 4; 2; 1; 0]
printf "%d\n" res;
*)

(* Bitonic sequence: 1, 2, 3, 4, 5, 3, 2, 1, 0, 1, 2, 3, 0, 0, 4, 3, 2, 1, 0, 1, 2, 3, 4, 5, 3, 2, 1, 0 *)
(*
let res = max_sum [1; 2; 3; 4; 5; 3; 2; 1; 0; 1; 2; 3; 0; 0; 4; 3; 2; 1; 0; 1; 2; 3; 4; 5; 3; 2; 1; 0]
printf "%d\n" res;
*)

(* Not bitonic sequence: 1, 2, 3, 4, 5, 3, 2, 1, 0, 1, 2, 3, 0, 0, 4, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0 *)
(*
let res = max_sum [1; 2; 3; 4; 5; 3; 2; 1; 0; 1; 2; 3; 0; 0; 4; 2; 1; 0; 0; 0; 0; 0; 0; 0; 0; 0]
printf "%d\n" res;
*)

(* Bitonic sequence: 1, 2, 3, 4, 5, 3, 2, 1, 0, 1, 2, 3, 0, 0, 4, 3, 2, 1, 0, 1, 2, 3, 4, 5, 3, 2, 1, 0, 1, 2, 3, 4, 5, 3, 2, 1, 0, 1, 2, 3,

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list and finds the maximum sum of a bitonic subsequence for the given list, where a sequence is bitonic if it is first increasing and then decreasing. *)
