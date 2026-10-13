let rec find_remainder (arr : int list) (n : int) : int = 
  let rec helper lst prod = 
    match lst with
    | [] -> prod
    | x::xs -> helper xs (prod * x mod n) in
  helper arr 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the product of the list multiplication modulo n. *)
