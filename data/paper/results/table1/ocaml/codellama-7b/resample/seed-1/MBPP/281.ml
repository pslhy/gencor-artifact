(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check if the elements of a given list are unique or not. *)
let rec all_unique (test_list : int list) : bool =
    match test_list with
    | [] -> true
    | test_head::test_tail ->
        if List.mem test_head test_tail then
            all_unique test_tail
        else
            false
in

let test_list = [5;4;2;7;2;3;1;5];;
let result = all_unique test_list;;
Printexc.to_string (Failure (Printf.sprintf "%b" result))  (* should be Failure("false") *)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:34: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec all_unique (test_list : int list) : bool =
    match test_list with
    | [] -> true
    | test_head::test_tail ->
        if List.mem test_head test_tail then
            all_unique test_tail
        else
            false
in

let test_list = [5;4;2;7;2;3;1;5];;
let result = all_unique test_list;;
Printf.printf "%b" result;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:34: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec all_unique (test_list : int list) : bool =
    match test_list with
    | [] -> false
    | test_head::test_tail ->
        if List.mem test_head test_tail then
            all_unique test_tail
        else
            true
in

let test_list = [5;4;2;7;2;3;1;5];;
let result = all_unique test_list;;
Printf.printf "%b" result;;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:34: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec all_unique (test_list : int list) : bool =
    match test_list with
    | [] -> false
    | test_head::test_tail ->
        if List.mem test_head test_tail then
            all_unique test_tail
        else
            true
in

let test_list = [5;4;2;7;2;3;1;5];;
let result = all_unique test_list;;
Printf.printf "%b" result;;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:34: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec all_unique (test_list : int list) : bool =
  match test_list with
  | [] -> true
  | test_head :: test_tail ->
      if List.mem test_head test_tail then false else all_unique test_tail
in

let test_list = [5; 4; 2; 7; 2; 3; 1; 5];;
let result = all_unique test_list;;
Printf.printf "%b" result;;

