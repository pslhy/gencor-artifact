let rec remove_odd (str1 : string) : string = 
  let rec helper (str2 : string) (index : int) : string = 
    if index >= String.length str2 then str2
    else if index mod 2 = 0 then helper str2 (index + 1)
    else helper (str2 ^ String.sub str2 index 1) (index + 2)
  in
  helper str1 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove odd characters in a string. *)
