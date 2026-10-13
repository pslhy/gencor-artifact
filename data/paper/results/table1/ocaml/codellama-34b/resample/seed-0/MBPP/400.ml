(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to extract the number of unique tuples in the given list. *)
let rec extract_freq (test_list :  (int * int) list) : int =
  match test_list with
  | [] -> 0
  | (a, b) :: tail ->
      if (a, b) is not unique
         max (extract_freq (a :: tail)) (extract_freq (b :: tail))
         1 + (extract_freq (a :: tail)) + (extract_freq (b :: tail)))
  in
  extract_freq test_list

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:69: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec extract_freq (test_list :  (int * int) list) : int =
  match test_list with
  | [] -> 0
  | (a, b) :: tail ->
      (* Check for previous occurrence of tuple *)
      if List.mem (a, b) tail
      then 1 + extract_freq tail
      else max (extract_freq (a :: tail)) (extract_freq (b :: tail)))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:69: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec extract_freq (test_list :  (int * int) list) : int =
  match test_list with
  | [] -> 0
  | (a, b) :: tail ->
      (* Check for previous occurrence of tuple *)
      if List.mem (a, b) tail
      then 1 + extract_freq tail
      else 0

