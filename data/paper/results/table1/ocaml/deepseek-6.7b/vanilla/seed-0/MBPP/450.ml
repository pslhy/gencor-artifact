let rec extract_string (str : string list) (l : int) : string list =
    match str, l with
    | _, 0 -> []
    | [], _ -> []
    | _::t, n -> (String.sub (List.hd str) 0 n)::extract_string t (n-1)

(* Example usage:
let strings = ["Hello"; "World"; "Programming"; "in"; "OCaml"] in
let size = 3 in
let result = extract_string strings size in
print_endline (String.concat " " result) 
*)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract specified size of strings from a given list of string values. *)
