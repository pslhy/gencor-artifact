(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to count the number of occurence of the string 'std' in a given string. *)
let rec count_occurance (s : string) : int =
  if s = "" then 0
  else if String.contains s 'std' then 1 + count_occurance (String.sub s 1 (String.length s - 1))
  else count_occurance (String.sub s 1 (String.length s - 1))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:29: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_occurance (s : string) : int =
  if s = "" then 0
  else if String.contains s 'std' then 1 + count_occurance (s.[(String.length s - 1)])
  else count_occurance s (s.[(String.length s - 1)])

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:29: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_occurance (s : string) : int =
  if s = "" then 0
  else if String.contains s 'std' then 1 + count_occurance (s.[(String.length s - 1)])
  else count_occurance s ((String.length s - 1))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:29: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_occurance (s : string) : int =
  if s = "" then 0
  else if String.contains s 'std' then 1 + count_occurance (s.[(String.length s - 1)])
  else count_occurance s (String.length s - 1)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:29: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_occurance (s : string) : int =
  if s = "" then 0
  else if String.contains s 'std' then 1 + count_occurance (s.[(String.length s - 1)])
  else count_occurance s (String.length s - 1)

