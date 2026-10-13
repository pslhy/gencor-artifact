
let rec start_withp (words : string list) :  string * string =
match words with
| [] -> raise Not_found
| x :: _ when String.exists (fun y -> String.get y 0 = 'p') words = x -> x, ""
| x :: y :: rst when String.exists (fun y -> String.get y 0 = 'p') words = x -> x, y

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to return two words from a list of words starting with letter 'p'. *)
