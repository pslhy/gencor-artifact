
let rec change_date_format (dt : string) : string =
    let d = List.nth (String.split_on_char '-' dt) in
    match d with
    | [y; m; d] ->
        let month =
            match min with
            | 1n -> "Ja"
            | 2n -> "Fe"
            | 3n -> "Ma"
            | 4n -> "Ap"
            | 5n -> "Ma"
            | 6n -> "Ju"
            | 7n -> "Jul"
            | 8n -> "Ao"
            | 9n -> "Se"
            | 10n -> "Oc"
            | 11n -> "No"
            | 12n -> "De" in
        String.concat "-" [d; month; String.of_seq (Int64.min)] | _ -> ""

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format. *)
