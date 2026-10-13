let rec count_char_position (str1 : string) : int =
    let str2 = String.lowercase str1 in
    let alpha_pos = String.length str2 in
    let rec aux (str2, acc) =
        match String.length str2 with
        | 0 -> acc
        | _ ->
            let ch = String.get str2 0 in
            let count = (
                str2
                |> String.str
                |> String.split_on_char ch
                |> List.length
            ) in
            aux (String.sub str2 1 (String.length str2 - 1$), acc + count)
    in
    aux (str2, 0)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive). *)
