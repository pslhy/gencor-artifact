let rec cal_sum (n : int) : int = 
  let rec calculate (a : int) (b : int) (c : int) (n : int) acc : int =
    match n with
    | 0 -> acc
    | _ -> calculate b c (a + b + c) (n - 1) (acc + (a + b + c))
  in calculate 3 0 2 n 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the sum of perrin numbers. *)
