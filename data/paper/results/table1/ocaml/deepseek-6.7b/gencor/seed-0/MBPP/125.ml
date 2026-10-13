
let rec find_length (string : string) : int =
    if String.contains string '0' then
        String.length string - (String.length (String.trim (String.split_on_char '0' string |> String.concat "" )))
    else
        (String.length string) - (String.length (String.trim (String.split_on_char '1' string |> String.concat "" )))

let rec string_combinations input n =
    if n = 0 then [input] else
    let rest = String.sub input 1 (String.length input - 1) in
    let rest_combinations = string_combinations rest (n-1) in
    let use_first = List.map (fun c -> String.make 1 (String.get input 0) ^ c) rest_combinations in
    input :: use_first

let max_difference_in_binary str =
    let rec find_max_diff lst acc =
        match lst with
        | [] -> acc
        | h::t -> if (find_length h) > acc then find_length h else acc
    in
    str |> string_combinations str (String.length str) |> find_max_diff 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
