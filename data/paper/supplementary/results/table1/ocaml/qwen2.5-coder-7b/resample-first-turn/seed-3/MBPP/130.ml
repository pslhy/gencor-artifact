let rec max_occurrences (nums : int list) : int = 
  let rec helper nums counts max_item max_count = 
    match nums with
    | [] -> max_item
    | x::xs -> 
        let new_counts = if IntMap.mem x counts then IntMap.add x (IntMap.find x counts + 1) counts else IntMap.add x 1 counts in
        let current_count = IntMap.find x new_counts in
        if current_count > max_count then
          helper xs new_counts x current_count
        else
          helper xs new_counts max_item max_count
  in
  helper nums IntMap.empty (-1) -1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the item with maximum frequency in a given list. *)
