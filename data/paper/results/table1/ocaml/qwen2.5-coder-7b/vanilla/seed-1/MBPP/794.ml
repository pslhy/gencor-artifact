let rec text_starta_endb (text : string) : bool = 
  let rec check (text : string) (found_a : bool) : bool = 
    match text with
    | [] -> found_a && (List.rev text = ['b'])
    | x::xs -> 
      if x = 'a' then check xs true
      else if found_a then check xs false
      else false
  in
  check (String.to_list text) false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by anything, ending in 'b'. *)
