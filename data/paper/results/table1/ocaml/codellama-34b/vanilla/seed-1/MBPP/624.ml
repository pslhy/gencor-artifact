let rec is_upper (string : string) : string =
    let rec aux i =
        if i >= 97 && i <= 122 then int_of_char(i) - 32
        else i
    in
    if string = ""
        then ""
        else (char_of_int(aux (int_of_char(string.[0])))) :: (is_upper (string.[1..]))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert a given string to uppercase. *)
