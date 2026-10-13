(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the list with maximum length. *)
let rec max_length_list (input_list : int list list) :  int * int list =
    match input_list with
    | [] -> 0, []
    | head :: tail ->
        let length = List.length head in
        let max_length, max_list = max_length_list tail in
        if length > max_length then
            length, head
        else
            max_length, max_list in

let rec get_max_length (input_list : int list list) : int * int list =
    let max_length, max_list = max_length_list input_list in
    if max_length = 0 then
        0, []
    else
        max_length, max_list in

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:18:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_length_list (input_list : int list list) :  int * int list =
  match input_list with
  | [] -> 0, []
  | head :: tail ->
      let length = List.length head in
      let max_length, max_list = max_length_list tail in
      if length > max_length then
          length, head
      else
          max_length, max_list

let rec get_max_length (input_list : int list list) : int * int list =
  let max_length, max_list = max_length_list input_list in
  if max_length = 0 then
      0, []
  else
      max_length, max_list

