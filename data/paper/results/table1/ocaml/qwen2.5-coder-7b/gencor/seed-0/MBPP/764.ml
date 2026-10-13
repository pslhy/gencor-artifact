
let rec number_ctr (str : string) : int = 
  let is_digit c = Char.code c >= Char.code '0' && Char.code c <= Char.code '9' in
  let len = String.length str in
  let rec helper i acc = 
    if i = len then acc
    else if is_digit (String.get str i) then helper (i + 1) (acc + 1)
    else helper (i + 1) acc
  in
  helper 0 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count number of digits in a given string. *)
