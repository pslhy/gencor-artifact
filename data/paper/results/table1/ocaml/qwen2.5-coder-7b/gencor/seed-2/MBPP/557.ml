
let rec toggle_string (string : string) : string = 
    let rec helper chars result = 
        match chars with
        | [] -> result
        | c :: rest -> 
            if Char.uppercase_ascii c = c then
                helper rest (result ^ (Char.lowercase_ascii c |> string_of_int |> String.make 1))
            else
                helper rest (result ^ (Char.uppercase_ascii c |> string_of_int |> String.make 1))
    in
    helper (String.to_seq string |> Seq.to_dispenser
 `string_of_int` toggle_string
            helper (String.to_seq string |> Seq.to_dispenser
        in_channel_length
,









































































































seek_in
string_of_int |> string_of_int toggle_string
        (Char.uppercase_ascii ceil
classify_float
classify_float
fst














































(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to toggle the case of all characters in a string. *)
