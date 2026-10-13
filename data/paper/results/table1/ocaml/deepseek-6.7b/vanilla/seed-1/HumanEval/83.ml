let rec starts_one_ends (n : int) : int =
  match n with
  | 1 -> 1
  | _ when n < 1 -> 0
  | _ -> pow 2 (n - 1) + 10 * starts_one_ends (n - 1)

and pow (x : int) (n : int) : int =
  match n with
  | 0 -> 1
  | 1 -> x
  | _ -> x * pow x (n - 1)

let count_one_starts_end_nums (n : int) : int =
  starts_one_ends n + starts_one_ends n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer n, return the count of the numbers of n-digit *)
(*     positive integers that start or end with 1. *)
