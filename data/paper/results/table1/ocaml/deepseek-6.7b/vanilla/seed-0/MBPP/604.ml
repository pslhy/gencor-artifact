let rec reverse_words (s : string) : string =
    match s with
    | "" -> ""
    | s -> 
        try 
            let pos = String.index s ' ' in
            String.sub s pos (String.length s - pos) |> String.trim |> String.length |> string_of_int |>
            (fun len -> 
                (String.sub s 0 pos |> reverse_words) ^ 
                " " ^ 
                (String.sub s (pos + len + 1) (String.length s - len - pos - 1) |> reverse_words) 
            )
        with Not_found -> String.rev s


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to reverse words seperated by spaces in a given string. *)
