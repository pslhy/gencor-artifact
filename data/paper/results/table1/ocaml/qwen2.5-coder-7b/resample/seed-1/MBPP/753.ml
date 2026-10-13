(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)
let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list = 
  List.sort compare test_list 
  |> List.take k 

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:6: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list = 
  let sorted_list = List.sort compare test_list in
  if k <= 0 || List.length sorted_list = 0 then []
  else List.take k sorted_list

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:8: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list = 
  let rec take lst n =
    if n <= 0 || List.length lst = 0 then []
    else 
      match lst with
      | [] -> []
      | x :: xs -> x :: take xs (n - 1)
  in
  let sorted_list = List.sort compare test_list in
  if k <= 0 || List.length sorted_list = 0 then []
  else take sorted_list k

