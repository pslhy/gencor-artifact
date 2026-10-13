let rec text_starta_endb (text : string) : bool = 
  let is_starta_endb text = 
    let chars = String.to_seq text in
    let rec check chars = 
      match chars with
      | Seq.empty -> false
      | x::xs -> 
          if x = 'a' then
            check (Seq.filter ((<>) 'a') xs)
          else if x = 'b' then
            (not (Seq.exists ((<>) 'b') xs))
          else
            check xs
    in
    check chars
  in
  if text = "" then false else is_starta_endb text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by anything, ending in 'b'. *)
