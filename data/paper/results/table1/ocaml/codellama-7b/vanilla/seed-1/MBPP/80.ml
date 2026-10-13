let rec tetrahedral_number (n : int) : int =
  let rec aux (acc : int) (k : int) : int =
    if k = 0 then acc
    else aux (acc + k) (k - 1)
  in aux 0 n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth tetrahedral number. *)
