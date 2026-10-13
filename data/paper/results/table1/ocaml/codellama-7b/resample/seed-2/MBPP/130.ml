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
  | [] -> failwith "empty list"
  | [x] -> x
  | x :: xs ->
      let occurrences = Utils.count_occurrences xs x in
      let max_occurrence = max_occurrences xs in
      if occurrences > max_occurrence then x else max_occurrence

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:25: Unbound module "Utils" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_occurrences (nums : int list) : int =
  match nums with
  | [] -> failwith "empty list"
  | [x] -> x
  | x :: xs ->
      let occurrences = Utils.count_occurrences xs x in
      let max_occurrence = max_occurrences xs in
      if occurrences > max_occurrence then x else max_occurrence

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:25: Unbound module "Utils" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_occurrences (nums : int list) : int =
  match nums with
  | [] -> failwith "empty list"
  | [x] -> x
  | x :: xs ->
      let occurrences = Utils.count_occurrences xs x in
      let max_occurrence = max_occurrences xs in
      if occurrences > max_occurrence then x else max_occurrence

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:25: Unbound module "Utils" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_occurrences (nums : int list) : int =
  match nums with
  | [] -> failwith "empty list"
  | [x] -> x
  | x :: xs ->
      let occurrences = List.length (List.filter (fun y -> y = x) xs) in
      let max_occurrence = max_occurrences xs in
      if occurrences > max_occurrence then x else max_occurrence

