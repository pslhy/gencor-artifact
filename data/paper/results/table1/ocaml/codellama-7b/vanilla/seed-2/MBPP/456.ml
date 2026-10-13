let rec reverse_string_list (stringlist : string list) : string list =
    match stringlist with
        | [] -> []
        | (string::rest) ->
            let rev_string = String.to_seq string |> List.rev |> String.of_seq in
            rev_string :: reverse_string_list rest


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to reverse each string in a given list of string values. *)
