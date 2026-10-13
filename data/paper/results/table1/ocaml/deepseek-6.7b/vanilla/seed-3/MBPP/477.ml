let rec is_lower (string : string) : string =
  match string with
  | "" -> ""
  | x :: xs -> 
        let ascii_value = int_of_char x in
        if ascii_value >= 65 && ascii_value <= 90 then
            char_of_int (ascii_value + 32) :: is_lower xs
        else
            x :: is_lower xs

let convert_to_lower_case (str : string) : string =
    let lowercase_list = is_lower (String.to_list str) in
    String.of_list lowercase_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert the given string to lower case. *)
