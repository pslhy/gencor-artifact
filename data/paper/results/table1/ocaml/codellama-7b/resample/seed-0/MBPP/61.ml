(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
let rec count_Substrings (s : string) : int =
  match s with
  | "" -> 0
  | x :: xs ->
    let digit = Char.code x - Char.code '0'
    let n = count_Substrings xs
    let ans = n + if digit = String.length s then 1 else 0 in
    ans

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Substrings (s : string) : int =
  match s with
  | "" -> 0
  | x :: xs ->
    let digit = Char.code x - Char.code '0'
    let n = count_Substrings xs
    let ans = n + if digit = String.length s then 1 else 0 in
    ans

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Substrings (s : string) : int =
  match s with
  | "" -> 0
  | x :: xs ->
    let digit = Char.code x - Char.code '0' in
    let n = count_Substrings xs in
    let ans = n + if digit = String.length s then 1 else 0 in
    ans

