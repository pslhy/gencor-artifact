let rec sum_range_list (list1 : int list) (m : int) (n : int) : int = 
  let rec sum_from_index lst idx acc = 
    if idx = n then acc
    else if idx >= m then sum_from_index lst (idx + 1) (acc + List.nth lst idx)
    else sum_from_index lst (idx + 1) acc
  in sum_from_index list1 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the sum of numbers in a list within a range specified by two indices. *)
