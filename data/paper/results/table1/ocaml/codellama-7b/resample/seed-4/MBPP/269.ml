(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the ascii value of a character. *)
let rec ascii_value (k : string) : int = 
    match k with 
    char k -> char_offset (k)
    [] -> 0

and char_offset(c:char):
match c with 
| 'A' -> 65
| 'B' -> 97
| _ -> raise Not_Found

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:10: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec ascii_value (k : string) : int =
  match k with
  | "A" -> 65
  | "B" -> 97
  | _ -> raise Not_Found

