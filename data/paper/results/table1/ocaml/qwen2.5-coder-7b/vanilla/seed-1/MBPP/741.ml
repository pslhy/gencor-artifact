let rec all_Characters_Same (s : string) : bool = 
  let rec check (s: string) (first: char) : bool = 
    match s with 
    | "" -> true
    | c::cs when c = first -> check cs first
    | _ -> false
  in match s with 
  | "" -> true
  | c::cs -> check cs c


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether all the characters are same or not. *)
