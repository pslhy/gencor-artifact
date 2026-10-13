let rec find_adverbs (text : string) : string =
  match text with
  | "" -> []
  | _ ->
    let rec find_helper (idx : int) (sub_text : string) : string =
      match sub_text with
      | "" -> []
      | _ ->
        let (word, rest) = String.lsplit2 sub_text ' ' in
        match word with
        | Some(w) ->
          if String.is_suffix ~suffix:"ly" w then
            (idx, word) :: find_helper (idx + (String.length word)) rest
          else
            find_helper (idx + (String.length word)) rest
        | None -> []
    in
    find_helper 0 text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb ending with ly and its positions in a given string. *)
