let rec pair_xor_Sum (arr : int list) (n : int) : int =
  match arr with
  | [] -> n
  | x :: xs -> 
        let rec inner_xor (aux : int list) (n : int) : int =
            match aux with
            | [] -> n
            | y :: ys -> inner_xor ys (n lxor y)
        in
        inner_xor arr.tl (n lxor arr.hd)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of xor of all pairs of numbers in the given list. *)
