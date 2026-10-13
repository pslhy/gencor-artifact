let rec find_adverbs (text : string) : string = 
  let rec helper pos =
    if pos >= String.length text then
      None
    else
      let len = String.length (String.sub text pos (String.length text - pos)) in
      let match_pos = String.index_opt text ' ' in
      match match_pos with
      | Some p ->
          if String.sub (String.sub text pos p) (p-3) 3 = "ly" then
            Some (String.sub text pos (p-1), pos, pos + p - 2)
          else
            helper (pos + p + 1)
      | None ->
          if String.sub text pos (len - 2) = "ly" then
            Some (String.sub text pos (len - 1), pos, pos + len - 2)
          else
            None
  in
  helper 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb ending with ly and its positions in a given string. *)
