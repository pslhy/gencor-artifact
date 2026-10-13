let rec text_match_two_three (text : string) : bool =
  match text with
  | _ when String.length text < 5 -> false
  | _ -> text.[0] = 'a' && (text.[1] = 'b' && text.[2] = 'b' || text.[1] = 'b' && text.[2] = 'b' && text.[3] = 'b')
         || text_match_two_three (String.sub text 1 ((String.length text) - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters. *)
