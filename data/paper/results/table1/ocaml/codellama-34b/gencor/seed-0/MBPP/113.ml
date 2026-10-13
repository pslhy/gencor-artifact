
let rec check_integer (text : string) : bool =
    match text |> String.trim with
    | "" -> false
    | "+" | "-" -> false
    | _ when String.get text 0 = '+' || String.get text 0 = '-' -> check_integer (String.sub text 1 (String.length text - 1))
    | _ ->
        text |> String.to_seq
            |> List.of_seq |> List.map (fun c -> "0" <= c && c <= "9")
            |> List.fold_left (&&) true

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if a string represents an integer or not. *)
