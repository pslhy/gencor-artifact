
let rec max_occurrences (nums : int list) : int = 
  let rec helper nums counts max_item max_count = 
    match nums with
    | [] -> max_item
    | x::xs -> 
        let new_counts = if Int.hash x counts then
                           Hashtbl.replace counts x (Hashtbl.find counts x + 1)
                         else
                           Hashtbl.add counts x 1
        in
        let new_max_item, new_max_count = 
          if Hashtbl.find new_counts x > max_count then
            (x, Hashtbl.find new_counts x)
          else
            (max_item, max_count)
        in
        helper xs new_counts new_max_item new_max_count
  in
  let counts = Hashtbl.create 10 in
  helper nums counts nums.(0) 1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the item with maximum frequency in a given list. *)
