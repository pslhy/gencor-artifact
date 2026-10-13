let rec find_First_Missing (array : int list) : int =
  let rec aux xList current =
    match xList with
    | [] -> current
    | h::t -> if (h != current) then current else aux t (current + 1)
  in
  aux array 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the smallest missing number from a sorted list of natural numbers. *)
