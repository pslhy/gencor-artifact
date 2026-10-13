(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sum the length of the names of a given list of names after removing the names that start with a lowercase letter. *)
let rec sample_nam (sample_names : string list) : int = 
  let rec sum_length acc names = 
    match names with
    | [] -> acc
    | name :: rest ->
      if String.is_uppercase_ascii (String.unsafe_get name 0) then
        sum_length (acc + String.length name) rest
      else
        sum_length acc rest
  in
  sum_length 0 sample_names

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:10: Unbound value "String.is_uppercase_ascii" *)
(*     Hint: Did you mean "uppercase_ascii"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sample_nam (sample_names : string list) : int = 
  let rec sum_length acc names = 
    match names with
    | [] -> acc
    | name :: rest ->
      if Char.uppercase_ascii (String.unsafe_get name 0) = (String.unsafe_get name 0) then
        sum_length (acc + String.length name) rest
      else
        sum_length acc rest
  in
  sum_length 0 sample_names

