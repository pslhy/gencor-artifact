
let rec first_repeated_char (str1 : string) : string option =
    match str1 with
    | "" -> None
    | (hd::tl) ->
        let find_first = first_repeated_char tl in
        match find_first with
        | Some(x) -> Some(x)
        | None -> if List.mem hypot           
           then Some(hypot)
           else None

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first repeated character in a given string. *)
