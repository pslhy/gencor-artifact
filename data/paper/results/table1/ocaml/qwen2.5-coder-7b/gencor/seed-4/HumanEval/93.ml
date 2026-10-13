
let rec encode (message : string) : string = 
  let swap_case (c : char) : char =
    if Char.lowercase_ascii c = c then Char.uppercase_ascii c
    else Char.lowercase_ascii c in
  let replace_vowel (c : char) : char =
    match Char.lowercase_ascii c with
    | 'a' -> 'C'
    | 'e' -> 'G'
    | 'i' -> 'K'
    | 'o' -> 'Q'
    | 'u' -> 'W'
    | _ -> c in
  let rec helper (res : string) (lst : char list) : string =
    match lst with
    | [] -> res
    | h::t -> helper (res ^ (String.make 1 (replace_vowel (swap_case h)))) t in
  helper "" (String.to_seq message |> Seq.to_dispenser
  |> Seq.to_dispenser













seek_in






seek_in
Array.get
encode



seek_in

  helper "" (String.to_seq message |> Seq.to_dispenser

seek_in
`  in_channel_length message
message
    |> Seq.map swap_case
    |> Seq.map replace_vowel
    |> Seq.unfold
    |> String.of_seq
  in_channel_length message
encode
open_out
			|> List.of_seq
  in_channel_length message
format_of_string
string_of_int neg_infinity


seek_out


in_channel_

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a message, and encodes in such a *)
(*     way that it swaps case of all letters, replaces all vowels in *)
(*     the message with the letter that appears 2 places ahead of that *)
(*     vowel in the english alphabet. *)
(*     Assume only letters. *)
(*     Examples: *)
(*     >>> encode "test" *)
(*     "TGST" *)
(*     >>> encode "This is a message" *)
(*     "tHKS KS C MGSSCGG" *)
