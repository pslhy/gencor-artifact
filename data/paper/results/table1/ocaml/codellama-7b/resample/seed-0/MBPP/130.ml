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
  | x :: y :: xs -> if x = y then max_occurrences (y :: xs) else x

let l = [3; 4; 3; 2; 3; 5; 4; 2; 4];
let result = max_occurrences l;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_occurrences (nums : int list) : int =
  match nums with
  | [] -> failwith "empty list"
  | [x] -> x;
  | x :: y :: ys ->
     if x = y then max_occurrences (y :: ys) else x;
let l = [3; 4; 3; 2; 3; 5; 4; 2; 4];
let result = max_occurrences l;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_occurrences (nums : int list) : int =
  let list_items = List.length nums in
  let rec max_helper (current_max : int) (current_count : int) (remaining_list : int list)
  =
    match remaining_list with
    | [] -> if current_count > 0 then current_max else None
    | x :: xs ->
        if x = current_max then max_helper (current_max) (current_count + 1) (remaining_list)
        else max_helper x 1 (remaining_list)
  in
  max_helper 0 0 nums

let l = [3; 4; 3; 2; 3; 5; 4; 2; 4];
let result = max_occurrences l;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:15:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_occurrences (nums : int list) : int =
  (let list_items = List.length nums in
  (let rec max_helper (current_max : int)
    (current_count : int)
    (remaining_list : int list) =
    match remaining_list with
    | [] -> if current_count > 0 then current_max else None
    | x :: xs ->
      if x = current_max then max_helper (current_max)
          (current_count + 1) (remaining_list)
      else max_helper x 1 (remaining_list)
  in
  max_helper 0 0 nums));;

let l = [3; 4; 3; 2; 3; 5; 4; 2; 4];
let result = max_occurrences l;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:17:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_occurrences (nums : int list) : int =
  (let list_items = List.length nums in
  (let rec max_helper (current_max : int)
    (current_count : int)
    (remaining_list : int list) =
    match remaining_list with
    | [] -> if current_count > 0 then current_max else None
    | x :: xs ->
      if x = current_max then max_helper (current_max)
          (current_count + 1) (remaining_list)
      else max_helper x 1 (remaining_list)
  in
  max_helper 0 0 nums));;

let l = [3; 4; 3; 2; 3; 5; 4; 2; 4];
let result = max_occurrences l;

