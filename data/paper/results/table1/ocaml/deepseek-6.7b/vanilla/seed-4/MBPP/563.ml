let rec extract_values (text : string) : string list =
  let len = String.length text in
  if len = 0 then []
  else match text with
  | str when str.[0] = '"' ->
      let str, rest =
        try
          let idx = String.index_from str 1 '"' in
          String.sub str 1 (idx - 1), String.sub str (idx + 1) (len - idx - 1)
        with Not_found -> str, ""
      in
      str :: extract_values rest
  | _ :: rest -> extract_values (String.sub text 1 (len - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract values between quotation marks from a string. *)
