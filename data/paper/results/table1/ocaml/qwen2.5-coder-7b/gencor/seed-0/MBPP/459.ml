
let rec remove_uppercase (str1 : string) : string = 
  let is_uppercase ch = ch >= 'A' && ch <= 'Z' in
  let rec iter i res = 
    if i >= String.length str1 then
      res
    else if is_uppercase (str1.[i]) then
      iter (i + 1) res
    else
      iter (i + 1) (res ^ (String.sub str1 i 1)) in
  iter 0 ""

;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove uppercase substrings from a given string. *)
