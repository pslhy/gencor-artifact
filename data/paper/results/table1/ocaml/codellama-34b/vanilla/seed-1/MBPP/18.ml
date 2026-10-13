let rec remove_dirty_chars (string : string) (second_string : string) : string =
    let contains_char str c =
        str |> String.to_seq |> List.exists (fun c' -> c = c')
    in
    let make_clean str c =
        str
        |> String.to_seq
        |> List.filter (fun c' -> c' <> c)
        |> List.to_seq
        |> String.of_seq
    in
    match string with
    | [] -> []
    | c :: rest ->
        if contains_char second_string c then
            make_clean rest c
        else
            c :: (remove_dirty_chars rest second_string)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove characters from the first string which are present in the second string. *)
