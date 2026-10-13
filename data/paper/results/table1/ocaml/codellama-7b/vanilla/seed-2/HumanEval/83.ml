let rec starts_one_ends (n : int) : int =
  match n with
  | 1 -> 10
  | _ ->
    let rec helper (m : int) : int =
      if m = 10 then 1
      else
        let count = helper (m + 1) in
        count + if m mod 10 = 1 then 1 else 0 in
    helper 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer n, return the count of the numbers of n-digit *)
(*     positive integers that start or end with 1. *)
