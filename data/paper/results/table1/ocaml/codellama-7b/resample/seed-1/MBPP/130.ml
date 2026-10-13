(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the item with maximum frequency in a given list. *)
let rec max_occurrences (nums : int list) : int =
    match nums with
    | [] -> raise (Failure "Empty list")
    | num :: rest ->
        let occurrences = num :: List.map (fun x -> if x = num then 1 else 0) nums
        let max_occurrence = List.fold_left (fun a b -> if a > b then a else b) 0 occurrences
        if max_occurrence = 1 then raise (Failure "No maximum frequency") else max_occurrence

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_occurrences (nums : int list) : int =
  match nums with
  | [] -> raise (Failure "Empty list")
  | num :: rest -> 
    let occurrences = num :: List.map (fun x -> if x = num then 1 else 0) nums
    let max_occurrence = List.fold_left (fun a b -> if a > b then a else b) 0 occurrences
    if max_occurrence = 1 then raise (Failure "No maximum frequency") else max_occurrence

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_occurrences (nums : int list) : int =
  match nums with
  | [] -> 0
  | num :: rest ->
    let occurrences = num :: List.map (fun x -> if x = num then 1 else 0) nums
    let max_occurrence = List.fold_left (fun a b -> if a > b then a else b) 0 occurrences
    if max_occurrence = 1 then 1 else max_occurrence

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_occurrences (nums : int list) : int =
  match nums with
  | [] -> 0
  | num :: rest ->
    let occurrences = List.map (fun x -> if x = num then 1 else 0) nums
    let max_occurrence = List.fold_left (fun a b -> if a > b then a else b) 0 occurrences
    if max_occurrence = 1 then 1 else max_occurrence

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_occurrences (nums : int list) : int =
  match nums with
  | [] -> 0
  | num :: rest ->
    let occurrences = List.map (fun x -> if x = num then 1 else 0) nums
    let max_occurrence = List.fold_left (fun a b -> if a > b then a else b) 0 occurrences
    if max_occurrence = 1 then 1 else max_occurrence

