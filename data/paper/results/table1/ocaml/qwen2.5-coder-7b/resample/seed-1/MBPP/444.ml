(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to trim each list by k in the given lists. *)
let rec trim_tuple (test_list : int list list) (k : int) : int list list = 
  List.map (fun lst -> List.tl_n lst k) test_list

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:24: Unbound value "List.tl_n" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec trim_tuple (test_list : int list list) (k : int) : int list list = 
  List.map (fun lst -> List.drop lst k) test_list

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:24: Unbound value "List.drop" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec trim_tuple (test_list : int list list) (k : int) : int list list = 
  List.map (fun lst -> if k <= List.length lst then List.tl (List.tl lst) else lst) test_list

