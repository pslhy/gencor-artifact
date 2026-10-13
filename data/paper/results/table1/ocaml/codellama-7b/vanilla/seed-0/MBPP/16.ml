let rec text_lowercase_underscore (text : string) : bool =
  match text with
  | "" -> true
  | _ ->
    let rec aux (i : int) (text : string) : bool =
      if i = String.length text then
        true
      else
        match text.[i] with
        | 'a'..'z' ->
          if i + 1 = String.length text then
            true
          else
            match text.[i + 1] with
            | '_' -> aux (i + 2) text
            | _ -> false
        | '_' ->
          if i + 1 = String.length text then
            true
          else
            match text.[i + 1] with
            | 'a'..'z' -> aux (i + 2) text
            | _ -> false
        | _ -> false
    in
    aux 0 text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise. *)
