let rec extract_values (text : string) : string list =
    let rec loop (s: string) (start_index : int) (end_index : int) (res : string list) : string list =
        match start_index, end_index with
        | _, -1 -> res
        | -1, _ -> loop s (s |> String.index_from "\"") (s |> String.index_from_from "\"") res
        | _, _  -> let value = s |> String.sub start_index (end_index - start_index) in
                    loop s (s |> String.index_from_from "\"") (s |> String.index_from "\"") (value::res)
    in
    loop text (text |> String.index "\"") (text |> String.index_from "\"") List.empty


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract values between quotation marks from a string. *)
