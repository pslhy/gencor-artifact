(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     For a given string, flip lowercase characters to uppercase and uppercase to lowercase. *)
(*     >>> flip_case "Hello" *)
(*     "hELLO" *)
let rec flip_case (string : string) : string =
    let flip_char (c : char) : char =
        if c >= 'a' && c <= 'z' 
        then char_of_int (int_of_char (c) - 32) 
        else char_of_int (int_of_char (c) + 32)
    in
    let rec aux (i : int) =
        if i >= String.length string then "" else flip_char (string.[i]) :: aux (i + 1)
    in
    aux 0
;;

