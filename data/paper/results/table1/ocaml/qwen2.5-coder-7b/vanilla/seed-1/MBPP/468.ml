let rec max_product (arr : int list) : int = 
  let rec max_product_from i product maxes = 
    if i >= List.length arr then
      List.fold_left max 0 maxes
    else
      let current = List.nth arr i in
      let new_maxes = List.mapi (fun j prev_max -> 
        if i > j && current > List.nth arr j then max prev_max (prod current (List.nth arr j)) else prev_max) maxes in
      max_product_from (i + 1) (max product (List.nth new_maxes i)) new_maxes
  in
  let maxes = List.mapi (fun _ _ -> 1) arr in
  max_product_from 0 1 maxes

and prod a b = a * b

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that list. *)
