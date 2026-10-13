let rec snake_to_camel (word : string) : string = 
    let should_capitalize char = char = '_' in
        word
        |> String.split_on_char '_' 
        |> List.map ~f:(fun (s : string) -> s |> String.lowercase |> String.capitalize)
        |> String.concat ~sep:"" 
        |> String.sub ~pos:0 ~len:1
        |> String.lowercase


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given snake case string to camel case string. *)
