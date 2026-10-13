
let rec count_char_position (str1 : string) : int =
    let str2 = String.lowercase_ascii str1 in
    let alpha_pos = List.map (fun c -> String.index str2 c = c) 'a' in
    match str1 with
    | "" -> 0
    | _ :: rest -> (if alpha_pos then 1 else 0) + (count_char_position (List.tl str1))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive). *)
