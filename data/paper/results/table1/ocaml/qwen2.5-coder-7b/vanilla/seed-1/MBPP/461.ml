let rec upper_ctr (str : string) : int = 
  let rec check (str: string) (count: int) : int = 
    match str with 
    | "" -> count
    | c::cs when c >= 'A' && c <= 'Z' -> check cs (count + 1)
    | _::cs -> check cs count
  in
  check (String.to_list str) 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the upper case characters in a given string. *)
