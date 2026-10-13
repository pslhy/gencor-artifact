(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to trim each list by k in the given lists. *)
let rec trim_tuple (test_list : int list list) (k : int) : int list list = 
  List.map (fun li -> List.tl_n (List.length li - k) li) test_list

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:23: Unbound value "List.tl_n" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec trim_tuple (test_list : int list list) (k : int) : int list list = 
  List.map (fun li -> List.drop (List.length li - k) li) test_list

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:23: Unbound value "List.drop" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec trim_tuple (test_list : int list list) (k : int) : int list list = 
  List.map (fun li -> List.rev (List.drop (List.length li - k) (List.rev li))) test_list

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:33: Unbound value "List.drop" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec trim_tuple (test_list : int list list) (k : int) : int list list = 
  List.map (fun li -> List.tl (List.rev (List.drop (List.length li - k) (List.rev li)))) test_list

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:42: Unbound value "List.drop" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec trim_tuple (test_list : int list list) (k : int) : int list list = 
  List.map (fun li -> if k > 0 then List.drop k li else li) test_list

