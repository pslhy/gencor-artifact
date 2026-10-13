let rec extract_values (text : string) : string list = 
  let rec helper acc text =
    match String.index_opt text '"' with
    | None -> List.rev acc
    | Some pos -> 
      let next_pos = String.index text '"' in
      helper (String.sub text (pos + 1) (next_pos - pos - 1) :: acc) (String.sub text (next_pos + 1) ((String.length text) - (next_pos + 1)))
  in
  helper [] text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract values between quotation marks from a string. *)
