
let rec count_char_position (str1 : string) : int =
  match String.length str1 with
  | 0 -> 0
  | n ->
    let char_pos = ref 0 in
    let rec aux (i : int) : int =
      if i = n then
        !char_pos
      else
        let c = Char.lowercase_ascii str1.[i] in
        let pos = Char.code c - Char.code 'a' + 1 in
        let new_pos = pos mod 26 in
        char_pos := !char_pos + (if new_pos = 0 then 26 else new_pos);
        aux (i + 1)
    in
    aux 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive). *)
