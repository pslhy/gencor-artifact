let rec find_remainder (arr : int list) (n : int) : int =
  let rec prod_remainder (arr : int list) (prod : int) (n : int) : int =
    match arr with
    | [] -> (prod + n) mod n
    | x :: xs -> prod_remainder xs ((prod * (x mod n)) mod n) n
  in
  prod_remainder arr 1 n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the product of the list multiplication modulo n. *)
