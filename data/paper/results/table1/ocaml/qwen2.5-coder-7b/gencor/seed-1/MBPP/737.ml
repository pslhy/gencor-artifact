
let rec check_str (string : string) : bool = 
  let pattern = String.make 1 (String.get string 0) in
  if (String.contains string "^aeiouAEIOU") 
  then true 
  else false

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given string is starting with a vowel or not using regex. *)
