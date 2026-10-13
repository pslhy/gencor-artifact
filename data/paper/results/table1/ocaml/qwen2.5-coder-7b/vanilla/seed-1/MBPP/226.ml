let rec odd_values_string (str : string) : string = 
  let rec helper (str : string) (acc : string) (index : int) : string =
    if index >= String.length str then
      acc
    else if index mod 2 = 0 then
      helper str (acc ^ String.sub str index 1) (index + 1)
    else
      helper str acc (index + 1)
  in
  helper str "" 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove the characters which have odd index values of a given string. *)
