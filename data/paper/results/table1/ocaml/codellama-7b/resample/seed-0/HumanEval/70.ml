(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given list of integers, return list in strange order. *)
(*     Strange sorting, is when you start with the minimum value, *)
(*     then maximum of the remaining integers, then minimum and so on. *)
(*     Examples: *)
(*     >>> strange_sort_list [1; 2; 3; 4] *)
(*     [1; 4; 2; 3] *)
(*     >>> strange_sort_list [5; 5; 5; 5] *)
(*     [5; 5; 5; 5] *)
(*     >>> strange_sort_list [] *)
(*     [] *)
let rec strange_sort_list (lst : int list) : int list =
  match lst with
  | [] -> []
  | _ ->
    let minimum = List.min lst in
    let maximum = List.max lst in
    let remaining_lst = List.filter (fun x -> x <> minimum && x <> maximum) lst in
    [minimum; maximum] @ strange_sort_list remaining_lst

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:19: Unbound value "List.min" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strange_sort_list (lst : int list) : int list =
  match lst with
  | [] -> []
  | x :: xs ->
    let minimum = List.min lst in
    let maximum = List.max lst in
    [minimum; maximum] @ strange_sort_list remaining_lst

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:19: Unbound value "List.min" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strange_sort_list (lst : int list) : int list =
  match lst with
  | [] -> []
  | x :: xs ->
    let minimum = List.min lst in
    let maximum = List.max lst in
    [minimum; maximum] @ strange_sort_list remaining_lst

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:19: Unbound value "List.min" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strange_sort_list (lst : int list) : int list =
  match lst with
  | [] -> []
  | x :: xs ->
    let minimum = min lst in
    let maximum = max lst in
    [minimum; maximum] @ strange_sort_list remaining_lst

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:44: Unbound value "remaining_lst" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strange_sort_list (lst : int list) : int list =
  match lst with
  | [] -> []
  | x :: xs ->
    let minimum = min lst in
    let maximum = max lst in
    [minimum; maximum] @ strange_sort_list xs

