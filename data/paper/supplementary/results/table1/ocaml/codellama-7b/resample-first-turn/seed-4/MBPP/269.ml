let rec ascii_value (k : string) : int = 
    match k with 
    char k -> char_offset (k)
    [] -> 0

and char_offset(c:char):
match c with 
| 'A' -> 65
| 'B' -> 97
| _ -> raise Not_Found


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the ascii value of a character. *)
