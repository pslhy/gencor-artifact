
let rec text_starta_endb (text : string) : bool = 
  let is_starta_endb text = 
    let chars = String.to_seq text in
    let rec check chars = 
      match chars with
      | Seq.Nil -> false
      | Seq.Cons ('a', rest) -> 
          let rec find_b rest = 
            match rest with
            | Seq.Nil -> false
            | Seq.Cons ('b', _) -> true
            | Seq.Cons (_, rest') -> find_b rest'
          in find_b rest
      | Seq.Cons (_, rest) -> check rest
    in check chars
  in
  is_starta_endb (String.sub text 0 1) && is_starta_endb (String.sub text (String.length text - 1) 1) && is_starta_endb text;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by anything, ending in 'b'. *)
