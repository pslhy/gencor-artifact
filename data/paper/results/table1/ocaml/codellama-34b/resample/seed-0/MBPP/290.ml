(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the list of maximum length in a list of lists. *)
let rec max_length (list1 : int list list) :  int * int list =
  match list1 with
  | [] -> (0, [])
  | x :: xs -> let (count, _) = max_length xs in
              if count > (List.length x) then (count, _)
              else (List.length x, x)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:55: Syntax error: "wildcard "_"" not expected. *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_length (list1 : int list list) :  int * int list =
  match list1 with
  | [] -> (0, [])
  | x :: xs -> let (count, _) = max_length xs in
              if count > (List.length x) then (count, _)
              else (List.length x, x)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:55: Syntax error: "wildcard "_"" not expected. *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_length (list1 : int list list) :  int * int list =
  match list1 with
  | [] -> (0, [])
  | x :: xs -> let (count, max_length) = max_length xs in
              if count > (List.length x) then (count, max_length)
              else (List.length x, x)

