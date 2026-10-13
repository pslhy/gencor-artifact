let rec text_match_wordz_middle (text : string) : bool =
    let is_z_at_start = text = "z" || text = "zx" in
    let is_z_at_end = text = "z" || text = "zx" in
    let is_z_in_middle = text.[1] = 'z' in
    if is_z_at_start || is_z_at_end then
        false
    else
        is_z_in_middle
    )


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that checks if a strings contains 'z', except at the start and end of the word. *)
