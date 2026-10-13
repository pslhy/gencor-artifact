(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to reverse words seperated by spaces in a given string. *)
let rec reverse_words (s : string) : string =
    match s with
    | "" -> ""
    | _ ->
        let reverse (s : string) : string =
            let rec reverse_aux (s : string) (acc : string) : string =
                match s with
                | "" -> acc
                | _ -> reverse_aux (String.sub s 1 (String.length s - 1)) (String.sub s 0 1)
            in
            reverse_aux s ""
        in
        let words = String.split_on_char ' ' s in
        String.concat " " (List.map reverse words)

