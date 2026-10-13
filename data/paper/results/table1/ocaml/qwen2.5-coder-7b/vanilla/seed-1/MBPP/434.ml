let rec text_match_one (text : string) : bool = 
  match text with
  | "a" | "ab" -> true
  | "b" | "" -> false
  | _ -> text_match_one (text.[0] :: text.[1] :: text.[2] :: text.[3] :: [])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an a followed by one or more b's. *)
