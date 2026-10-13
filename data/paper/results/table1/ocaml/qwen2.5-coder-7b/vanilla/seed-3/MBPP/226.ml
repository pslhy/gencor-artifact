let rec odd_values_string (str : string) : string = 
  let rec helper (index : int) (acc : string) (s : string) =
    if index >= String.length s then acc
    else if index mod 2 = 0 then helper (index + 1) (acc ^ String.sub s index 1) s
    else helper (index + 1) acc s
  in helper 0 "" str


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove the characters which have odd index values of a given string. *)
