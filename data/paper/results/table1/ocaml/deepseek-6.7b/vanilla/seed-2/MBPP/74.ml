let rec is_samepatterns (colors : string list) (patterns : string list) : bool =
  match patterns with
  | [] -> true
  | _ -> let color = colors in
  match color with
  | [] -> false
  | _ ->
     let color_pattern = List.hd color in
     let remaining_color = List.tl color in
     if color_pattern = List.hd patterns then
       is_samepatterns remaining_color (List.tl patterns)
     else
       false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether it follows the sequence given in the patterns list. *)
