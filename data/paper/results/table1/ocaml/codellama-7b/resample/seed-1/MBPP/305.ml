(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to return two words from a list of words starting with letter 'p'. *)
let rec start_withp (words : string list) :  string * string =
match words with
| [] -> raise Not_found
| x :: _ when String.existsx (fun y -> String.get y 0 = 'p') words = x
                            -> x, String.drop_prefix words x
| _ :: tl -> start_withp tl

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:15: Unbound value "String.existsx" *)
(*     Hint: Did you mean "exists"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec start_withp (words : string list) :  string * string =
match words with
| [] -> raise Not_found
| x :: _ when String.exists x = 'p'
                            -> x, String.drop_prefix words x
| _ :: tl -> start_withp tl

