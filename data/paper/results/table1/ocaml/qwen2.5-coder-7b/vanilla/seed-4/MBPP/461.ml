let rec upper_ctr (str : string) : int = 
  let rec helper (str : string) (index : int) (count : int) : int = 
    if index = String.length str then
      count
    else if String.unsafe_get str index >= 'A' && String.unsafe_get str index <= 'Z' then
      helper str (index + 1) (count + 1)
    else
      helper str (index + 1) count
  in
  helper str 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the upper case characters in a given string. *)
