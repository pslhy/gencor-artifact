let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int = 
  if rotations = 0 then List.nth arr index 
  else 
    let range = List.nth ranges (rotations - 1) in
    if index >= List.nth range 0 && index <= List.nth range 1 then
      if index = List.nth range 0 then
        List.nth arr (List.nth range 1)
      else
        List.nth arr (index - 1)
    else 
      List.nth arr index


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find element at a given index after number of rotations. *)
