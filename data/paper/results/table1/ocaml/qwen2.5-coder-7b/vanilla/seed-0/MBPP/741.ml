let rec all_Characters_Same (s : string) : bool = 
  let rec helper (s : string) (prev : char) : bool = 
    match s with 
    | "" -> true
    | _ when prev = s.[0] -> helper (String.sub s 1 (String.length s - 1)) s.[0]
    | _ -> false
  in 
  if String.length s = 0 then true else helper s s.[0]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether all the characters are same or not. *)
