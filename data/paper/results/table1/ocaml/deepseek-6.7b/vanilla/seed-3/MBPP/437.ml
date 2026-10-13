let rec remove_odd (str1 : string) : string =
  match str1 with
  | "" -> ""
  | _ -> String.make 1 (String.get str1 0) ^ remove_odd (String.sub str1 2 (String.length str1 - 2))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove odd characters in a string. *)
