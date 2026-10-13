let rec start_withp (words : string list) :  string * string = 
    match words with 
    | [] -> failwith "Not enough words"
    | w1::w2::ws when String.starts_with w1 "p" && String.starts_with w2 "p" -> (w1, w2)
    | _::ws -> start_withp ws


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to return two words from a list of words starting with letter 'p'. *)
