let rec start_withp (words : string list) :  string * string =
  match words with
  |[] -> ("","")
  |x::xs -> if String.lowercase_ascii (String.sub x 0 1) = "p" then
      x, List.assoc x xs
    else start_withp xs;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to return two words from a list of words starting with letter 'p'. *)
