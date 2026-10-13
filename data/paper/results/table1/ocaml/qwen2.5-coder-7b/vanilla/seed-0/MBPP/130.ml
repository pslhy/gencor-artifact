let rec max_occurrences (nums : int list) : int = 
  let rec helper nums count max_num =
    match nums with
    | [] -> max_num
    | x::xs -> 
      let new_count = if x = count then count + 1 else 1 in
      helper xs new_count (if new_count > max_num then new_count else max_num)
  in
  helper nums 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the item with maximum frequency in a given list. *)
