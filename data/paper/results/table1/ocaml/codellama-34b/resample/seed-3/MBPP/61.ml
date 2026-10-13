(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
let rec count_Substrings (s : string) : int =
  if String.length s <= 1 then
    0
  else
    let left = s.[0] in
    let right = s.[String.length s - 1] in
    let rest = String.sub s 1 (String.length s - 2) in
    if (Int.of_string left) + (Int.of_string right) = String.length s then
      1 + count_Substrings rest
    else
      0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:9: Unbound value "Int.of_string" *)
(*     Hint: Did you mean "to_string"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Substrings (s : string) : int =
  if String.length s <= 1 then
    0
  else
    let left = s.[0] in
    let right = s.[String.length s - 1] in
    let rest = String.sub s 1 (String.length s - 2) in
    if (Int.to_string left) + (Int.to_string right) = String.length s then
      1 + count_Substrings rest
    else
      0

