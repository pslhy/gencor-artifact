(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given list of numbers (of at least two elements), apply a linear transform to that list, *)
(*     such that the smallest number will become 0 and the largest will become 1 *)
(*     >>> rescale_to_unit [1.0; 2.0; 3.0; 4.0; 5.0] *)
(*     [0.0; 0.25; 0.5; 0.75; 1.0] *)
let rec rescale_to_unit (numbers : float list) : float list = 
  let min_num = List.min numbers in
  let max_num = List.max numbers in
  let range = max_num -. min_num in
  List.map (fun x -> (x -. min_num) /. range) numbers

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:17: Unbound value "List.min" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rescale_to_unit (numbers : float list) : float list = 
  let min_num = List.fold_left min Float.max_float numbers in
  let max_num = List.fold_left max Float.min_float numbers in
  let range = max_num -. min_num in
  List.map (fun x -> (x -. min_num) /. range) numbers

