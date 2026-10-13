let rec remove_length (test_str : string) (k : int) : string =
    let test_str_arr = test_str |> String.split_on_char ' ' |> List.rev in
    let rec aux (lst : string list) (acc : string list) =
        match lst with
        | [] -> acc
        | hd::tl ->
            let len = String.length hd in
            if len = k then
                aux tl acc
            else
                aux tl (hd::acc)
    in
    aux test_str_arr [] |> List.rev |> String.concat " "

let remove_length k test_str =
    remove_length test_str k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all the words with k length in the given string. *)
