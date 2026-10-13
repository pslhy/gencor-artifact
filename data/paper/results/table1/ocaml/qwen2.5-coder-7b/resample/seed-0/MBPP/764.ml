(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count number of digits in a given string. *)
let rec number_ctr (str : string) : int = 
  let is_digit c = Char.isdigit c in
  let filter_digits s = List.filter is_digit (String.to_list s) in
  List.length (filter_digits str)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:20: Unbound value "Char.isdigit" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec number_ctr (str : string) : int = 
  let is_digit c = Char.code c >= Char.code '0' && Char.code c <= Char.code '9' in
  let filter_digits s = List.filter is_digit (String.to_list s) in
  List.length (filter_digits str)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:47: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec number_ctr (str : string) : int = 
  let is_digit c = Char.code c >= Char.code '0' && Char.code c <= Char.code '9' in
  let filter_digits s = List.filter is_digit (List.map (fun c -> c) (StringLabels.to_seq s)) in
  List.length (filter_digits str)

