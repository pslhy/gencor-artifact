let rec remove_odd (str1 : string) : string =
  if str1.[0] mod 2 = 0 then
    str1.[0] :: (remove_odd (String.sub str1 1 (String.length str1 - 1)))
  else
    remove_odd (String.sub str1 1 (String.length str1 - 1))

let remove_odd (str : string) : string =
  remove_odd str


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove odd characters in a string. *)
