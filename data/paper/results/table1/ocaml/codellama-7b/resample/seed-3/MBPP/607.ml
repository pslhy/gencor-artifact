(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index. *)
let rec find_literals (text : string) (pattern : string) :  string * int * int =
  if pattern = ""
  then raise Not_found;

  for i = 0 to (String.length text) - (String.length pattern) do
    if String.sub text i (String.length pattern) = pattern
    then return text., i, i+ (String.length pattern);
  done;

  raise Not_found;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:22: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_literals (text : string) (pattern : string) :  string * int * int =
  if pattern = ""
  then raise Not_found;

  for i = 0 to (String.length text) - (String.length pattern) do
    if String.sub text i (String.length pattern) = pattern
    then return text., i, i+ (String.length pattern);
  done;

  raise Not_found

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:22: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_literals (text : string) (pattern : string) :  string * int * int =
  if pattern = ""
  then raise Not_found;

  for i = 0 to (String.length text) - (String.length pattern) do
    if String.sub text i (String.length pattern) = pattern
    then return text, i, i+ (String.length pattern);
  done;

  raise Not_found

