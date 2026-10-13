let rec start_withp (words : string list) :  string * string = 
  match words with
  | p1 :: p2 :: _ when p1.[0] = 'p' && p2.[0] = 'p' -> (p1, p2)
  | p :: rest when p.[0] = 'p' -> start_withp rest
  | _ -> failwith "Not enough words starting with 'p'"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to return two words from a list of words starting with letter 'p'. *)
