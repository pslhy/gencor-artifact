
let rec first_non_repeating_character (str1 : string) : string option = 
  let rec count_chars chars s = 
    match s with 
      | "" -> chars 
      | _ -> let first_char = String.get s 0 
            in count_chars (Int.abs (chars.(Char.code first_char) - 1)) (String.sub s 1 (String.length s - 1))
  in
  let chars_array = Array.create_float 256 0. in
  let count_array = count_chars chars_array str1 in
  let rec find_non_repeating chars s = 
    match s with 
      | "" -> None 
      | _ -> let first_char = String.get s 0 in 
            if float_of_int chars.(Char.code first_char) = 1.0 then Some (String.make 1 first_char) 
            else find_non_repeating chars (String.sub s 1 (String.length s - 1))
  in
  find_non_repeating count_array str1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
