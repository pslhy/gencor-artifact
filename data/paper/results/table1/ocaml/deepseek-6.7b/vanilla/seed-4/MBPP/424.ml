let rec extract_rear (test_tuple :  string * string * string) : string list =
  match test_tuple with
  | a, b, _ -> [a;b]

let test = ("hello", "world", "for output")
let res = extract_rear test 
(* returns ["hello"; "world"] *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract only the rear index element of each string in the given tuple. *)
