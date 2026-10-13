(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/ *)
let rec is_polite (n : int) : int =
match n with
| n when n <= 0 -> 1
| n when n mod 100 = 0 && n mod 10 == 0 -> 2
| n when n mod 100 != 0 && n mod 10 == 5 -> 3
| n when n mod 100 != 0 && n mod 10 > 5 -> 0
| n when n mod 10 == 0 && n mod 100 != 0 -> 1
| _ -> is_polite (n / 10)

let rec nth_polite (n : int) : int =
match n with
| 1 -> 10
| n when n <= 0 -> -1
| n ->
let res = ref (0)
(** The pointer to the current number *)
let i = ref (10)
(** The pointer to the current factor *)
while res! <= n do
 match is_polite !i with
  | 0 -> i := !i * 100
  | 1 -> i := !i * 10
  | 2 -> res := !res + !i; i := !i * 100
  | 3 -> res := !res + !i; i := !i * 10
done;
!res

nth_polite 1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:17:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_polite (n : int) : int =
  match n with
  | n when n = 0 -> 0
  | n when n mod 100 = 0 && n mod 10 = 0 -> 2
  | n when n mod 10 = 5 -> 3
  | n when n mod 10 > 5 -> 0
  | n when n mod 10 = 0 -> 1
  | _ -> is_polite (n / 10)

let rec nth_polite (n : int) : int =
  match n with
  | 1 -> 10
  | n when n <= 0 -> -1
  | n ->
  let res = ref 0 in
  let i = ref 10 in
  while !res <= n do
    match is_polite !i with
    | 0 -> i := !i * 100
    | 1 -> i := !i * 10
    | 2 -> res := !res + !i; i := !i * 100
    | 3 -> res := !res + !i; i := !i * 10
  done;
  !res

nth_polite 1

