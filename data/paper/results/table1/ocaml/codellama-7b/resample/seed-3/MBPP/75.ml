(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find tuples which have all elements divisible by k from the given list of tuples. *)
let rec find_tuples (test_list :  (int * int * int) list) (k : int) :  (int * int * int) list =
  match test_list with
  | [] -> []
  | (a, b, c) :: rest ->
      if List.for_all (fun x -> x mod k = 0) [a; b; c]
      then (a, b, c) :: find_tuples rest k
      else find_tuples rest k

let test_list =
  [(12, 15, 18); (24, 30, 36); (48, 60, 72); (90, 100, 120)]
in
find_tuples test_list 3

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_tuples (test_list :  (int * int * int) list) (k : int) :  (int * int * int) list =
  match test_list with
  | [] -> []
  | (a, b, c) :: rest ->
      if List.for_all (fun x -> x mod k = 0) [a; b; c]
      then (a, b, c) :: find_tuples rest k
      else find_tuples rest k

let test_list =
  [(12, 15, 18); (24, 30, 36); (48, 60, 72); (90, 100, 120)]
in
find_tuples test_list 3

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_tuples (test_list :  (int * int * int) list) (k : int) :  (int * int * int) list =
  match test_list with
  | [] -> []
  | (a, b, c) :: rest ->
      if List.for_all (fun x -> x mod k = 0) [a; b; c]
      then (a, b, c) :: find_tuples rest k
      else find_tuples rest k

let test_list =
  [(12, 15, 18); (24, 30, 36); (48, 60, 72); (90, 100, 120)]
in
find_tuples test_list 3

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_tuples (test_list :  (int * int * int) list) (k : int) :  (int * int * int) list =
  match test_list with
  | [] -> []
  | (a, b, c) :: rest ->
      if List.length a == 0 then
        (a, b, c) :: find_tuples rest k
      else
        find_tuples rest k

let test_list =
  [(12, 15, 18); (24, 30, 36); (48, 60, 72); (90, 100, 120)]
in
find_tuples test_list 3

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_tuples (test_list :  (int * int * int) list) (k : int) :  (int * int * int) list =
  match test_list with
  | [] -> []
  | (a, b, c) :: rest ->
      if a == 0 then
        (a, b, c) :: find_tuples rest k
      else
        find_tuples rest k

let test_list =
  [(12, 15, 18); (24, 30, 36); (48, 60, 72); (90, 100, 120)]
in
find_tuples test_list 3

