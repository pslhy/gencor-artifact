let rec extract_values (text : string) : string list =
  match text with
  | "" -> []
  | _ -> begin
      let open_q = String.index text '"' in
      let close_q = String.index_from text (open_q + 1) '"' in
      let value = String.sub text (open_q + 1) (close_q - open_q - 1) in
      value :: extract_values (String.sub text (close_q + 1) (String.length text - close_q - 1))
    end


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract values between quotation marks from a string. *)
