(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count number of digits in a given string. *)
let rec number_ctr (str : string) : int =
  match str with
  | "" -> 0
  | _ -> 1 + number_ctr (String.tl str)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:26: Unbound value "String.tl" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec number_ctr (str : string) : int =
  match str with
  | "" -> 0
  | _ -> 1 + number_ctr (String.sub str 1 (String.length str - 1))

