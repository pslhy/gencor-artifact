let rec check_char (string : string) : string = 
  let size = String.length string in 
  if (size = 1) then 
    Printf.printf "Same\n"
  else if (string.[0] = string.[(size - 1)]) then 
    Printf.printf "Same\n"
  else 
    Printf.printf "Not same\n";



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given string starts and ends with the same character or not. *)
