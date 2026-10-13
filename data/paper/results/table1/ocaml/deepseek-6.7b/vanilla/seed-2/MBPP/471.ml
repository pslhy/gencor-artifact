let rec find_remainder (arr : int list) (n : int) : int =
  let rec product acc (arr : int list) : int =
    match arr with
    | [] -> acc
    | hd :: tl -> product ((acc * hd) mod n) tl in
  product 1 arr


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the product of the list multiplication modulo n. *)
