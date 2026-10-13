let rec count_char_position (str1 : string) : int =
  match str1.[0] with
  | 'a' .. 'z' -> 1 + count_char_position (String.sub str1 1 (String.length str1 - 1))
  | _ -> count_char_position (String.sub str1 1 (String.length str1 - 1))

let count_char_positions (str2 : string) : int list =
  let rec count_char_positions_aux (str3 : string list) (acc : int) : int list =
    match str3 with
    | [] -> acc
    | hd :: tl -> count_char_positions_aux tl (acc + count_char_position hd)
  in
  count_char_positions_aux (String.split_on_char ' ' str2) 0

let () =
  let s = "the quick brown fox jumps over the lazy dog" in
  print_endline (String.concat ", " (count_char_positions s))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive). *)
