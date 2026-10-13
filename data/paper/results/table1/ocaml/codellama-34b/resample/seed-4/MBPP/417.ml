(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find common first element in given list of lists. *)
let rec group_tuples (input : string list list) : string list list = 
    (* base case: if only one list is left, return it as is *)
    if length input = 1 then input
    (* recursive case: otherwise, extract the common first element *)
    else let rec list_zip (ls : string list) (acc : string list) : string list =
        (* base case: no lists left to zip, return the accumulator *)
        if length ls = 0 then acc
        (* recursive case: zip the first element of each list *)
        else list_zip (ls_map tail ls) (acc @ list_zip (ls_map head ls))
    let first_elements = ls_map head input in
    group_tuples (list_zip first_elements [])

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec group_tuples (input : string list list) : string list list =
  (* base case: if only one list is left, return it as is *)
  if length input = 1 then input
  (* recursive case: otherwise, extract the common first element *)
  else
    let rec list_zip (ls : string list) (acc : string list) : string list =
      (* base case: no lists left to zip, return the accumulator *)
      if length ls = 0 then acc
      (* recursive case: zip the first element of each list *)
      else list_zip (ls_map tail ls) (acc @ list_zip (ls_map head ls)) in
    group_tuples (list_zip first_elements [])

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:6: Unbound value "length" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec group_tuples (input : string list list) : string list list =
  (* base case: if only one list is left, return it as is *)
  if List.length input = 1 then input
  (* recursive case: otherwise, extract the common first element *)
  else
    let first_elements = List.map fst input in
    let rec list_zip (ls : string list) (acc : string list) : string list =
      (* base case: no lists left to zip, return the accumulator *)
      if List.length ls = 0 then acc
      (* recursive case: zip the first element of each list *)
      else list_zip (List.map snd ls) (acc @ List.map fst ls) in
    group_tuples (list_zip first_elements [])

