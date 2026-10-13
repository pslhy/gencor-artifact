let rec upper_ctr (str : string) : int = 
  let is_upper c = Char.uppercase_ascii c = c in
  let rec count i acc =
    if i = String.length str then acc
    else if is_upper (str.[i]) then count (i + 1) (acc + 1)
    else count (i + 1) acc
  in count 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the upper case characters in a given string. *)
