let rec check_char (string : string) : string =
  if (String.length string == 0) then false
  else if string.[0] = string.[String.length string - 1] then string
  else check_char (String.sub string 1 (String.length string - 1))
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given string starts and ends with the same character or not. *)
