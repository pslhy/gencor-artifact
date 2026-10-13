(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to put spaces between words starting with capital letters in a given string. *)
let rec capital_words_spaces (str1 : string) : string =
match str1 with
| [] -> []
| str1.[0] :: _ -> String.make 1 str1.[0] ^ " " ^ capital_words_spaces (String.sub str1 1 (String.length str1 - 1))
| _ -> capital_words_spaces (String.sub str1 1 (String.length str1 - 1))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:7: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec capital_words_spaces (str1 : string) : string =
  match str1 with
  | [] -> []
  | _ -> capital_words_spaces (String.sub str1 1 (String.length str1 - 1)) ^ " " ^ Char.escaped (String.get str1 0)

