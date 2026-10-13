let rec remove_lowercase (str1 : string) : string =
  match str1 with
  | "" -> ""
  | _ ->
      let letter_option =
        try Some (String.index_from_opt str1 0 is_lower) with
        | Not_found -> None
      in
      begin
        match letter_option with
        | None -> str1
        | Some idx ->
            let first_segment = String.sub str1 0 idx in
            let (_, rem) = String.split_at str1 (idx + 1) in
            let rem' = remove_lowercase rem in
            if String.length first_segment + String.length rem' = String.length str1 then
              str1
            else
              first_segment ^ rem'
      end

and is_lower (c : char) : bool =
  c = Char.lowercase c


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
