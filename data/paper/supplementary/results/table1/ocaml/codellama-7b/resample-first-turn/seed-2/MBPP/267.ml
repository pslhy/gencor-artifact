let rec square_Sum (n : int) : int =
  match n with
  | 0 -> 0
  | n -> List.fold_left ( + ) 0 (List.map (fun x -> x * x) (List.filter (fun x -> x mod 2 <> 0) (List.range 1 n)))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in an integer n and returns the sum of the squares of the first n odd natural numbers. *)
