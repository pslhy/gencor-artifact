let rec text_match_two_three (text : string) : bool =
  match text with
  | "" -> false
  | _ -> if String.sub text 0 1 = "a" then 
           (String.length text > 2 && String.sub text 1 1 = "b" && String.sub text 2 1 = "b")
           || (String.length text > 3 && String.sub text 1 1 = "b" && String.sub text 2 1 = "b" && String.sub text 3 1 = "b")
           else text_match_two_three (String.sub text 1 (String.length text - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters. *)
