let rec sort_even (l : int list) : int list = 
  let rec sort lst = 
    List.sort compare lst 
  in 
  let rec merge even odd = 
    match even, odd with 
    | [], _ | _, [] -> List.rev odd 
    | e::es, o::os -> merge es (o :: e :: os) 
  in 
  let rec split lst acc1 acc2 = 
    match lst with 
    | [] -> (List.rev acc1, List.rev acc2) 
    | h::t -> split t (h :: acc1) acc2 
  in 
  let (evens, odds) = split l [] [] in 
  merge (sort evens) odds 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     This function takes a list l and returns a list l' such that *)
(*     l' is identical to l in the odd indicies, while its values at the even indicies are equal *)
(*     to the values of the even indicies of l, but sorted. *)
(*     >>> sort_even [1; 2; 3] *)
(*     [1; 2; 3] *)
(*     >>> sort_even [5; 6; 3; 4] *)
(*     [3; 6; 5; 4] *)
