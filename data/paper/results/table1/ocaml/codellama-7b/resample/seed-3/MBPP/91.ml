(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if a string is present as a substring in a given list of string values. *)
let rec find_substring (str1 : string list) (sub_str : string) : bool =
  match str1 with
  | [] ->
      false
  | h :: t ->
      let h = trim h sub_str in
      if h = sub_str then
        true
      else
        find_substring t sub_str

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:15: Unbound value "trim" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_substring (str1 : string list) (sub_str : string) : bool =
  match str1 with
  | [] ->
      false
  | h :: t ->
      let h = String.trim h sub_str in
      if h = sub_str then
        true
      else
        find_substring t sub_str

