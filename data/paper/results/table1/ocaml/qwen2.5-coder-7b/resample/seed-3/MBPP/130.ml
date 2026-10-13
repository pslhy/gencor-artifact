(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the item with maximum frequency in a given list. *)
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

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:29: Unbound module "IntMap" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_occurrences (nums : int list) : int = 
  let rec helper nums counts max_item max_count = 
    match nums with
    | [] -> max_item
    | x::xs -> 
        let new_counts = if Map.mem x counts then Map.add x (Map.find x counts + 1) counts else Map.add x 1 counts in
        let current_count = Map.find x new_counts in
        if current_count > max_count then
          helper xs new_counts x current_count
        else
          helper xs new_counts max_item max_count
  in
  helper nums Map.empty (-1) -1

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:29: Unbound value "Map.mem" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_occurrences (nums : int list) : int = 
  let rec helper nums counts max_item max_count = 
    match nums with
    | [] -> max_item
    | x::xs -> 
        let new_counts = if Hashtbl.mem counts x then Hashtbl.replace counts x (Hashtbl.find counts x + 1) else Hashtbl.add counts x 1; counts in
        let current_count = Hashtbl.find new_counts x in
        if current_count > max_count then
          helper xs new_counts x current_count
        else
          helper xs new_counts max_item max_count
  in
  let counts = Hashtbl.create 10 in
  helper nums counts (-1) -1

