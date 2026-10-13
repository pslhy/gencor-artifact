let rec minSubArraySum (nums : int list) : int =
  match nums with
  | [] -> 0
  | [x] -> x
  | x::xs ->
    let min_so_far =
      match minSubArraySum xs with
      | 0 -> x
      | y -> y in
    let min_with_x =
      if x < min_so_far then x else min_so_far in
    min min_with_x (x + minSubArraySum(List.tl(xs)))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of integers nums, find the minimum sum of any non-empty sub-list *)
(*     of nums. *)
(*     Example *)
(*     >>> minSubArraySum [2; 3; 4; 1; 2; 4] *)
(*     1 *)
(*     >>> minSubArraySum [(-1); (-2); (-3)] *)
(*     (-6) *)
