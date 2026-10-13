let rec first_non_repeating_character (str1 : string) : string option =
    let rec aux (i : int) (acc : string list) : string option =
        match i >= String.length str1 with
        | true -> None
        | false ->
            if List.exists (fun (c : string) -> c = str1.[i]) acc then
                aux (i + 1) acc
            else
                Some str1.[i]
    in
    aux 0 []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
