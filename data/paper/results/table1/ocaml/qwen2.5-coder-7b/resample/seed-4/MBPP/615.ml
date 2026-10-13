(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function which takes a lists of lists and returns the average value for each sublist as a list. *)
let rec average_tuple (nums : int list list) : float list = 
  List.map (fun sublist -> float (List.sum (sublist)) /. float (List.length sublist)) nums

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:35: Unbound value "List.sum" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec average_tuple (nums : int list list) : float list = 
  List.map (fun sublist -> float (List.fold_left (fun a b -> a + b) 0 sublist) /. float (List.length sublist)) nums

