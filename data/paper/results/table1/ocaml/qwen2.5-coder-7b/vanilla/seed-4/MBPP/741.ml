let rec all_Characters_Same (s : string) : bool = 
  let rec helper (chars : char list) (first_char : char) : bool = 
    match chars with 
      | [] -> true 
      | hd::tl -> if hd = first_char then helper tl first_char else false 
  in match s with 
    | "" -> true 
    | hd::tl -> helper (List.rev (List.tl (List.of_seq (String.to_seq s)))) hd


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether all the characters are same or not. *)
