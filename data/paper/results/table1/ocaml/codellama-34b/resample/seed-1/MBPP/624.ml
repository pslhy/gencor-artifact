(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to convert a given string to uppercase. *)
let rec is_upper (string : string) : string =
    let rec aux i =
        if i >= 97 && i <= 122 then int_of_char(i) - 32
        else i
    in
    if string = ""
        then ""
        else (char_of_int(aux (int_of_char(string.[0])))) :: (is_upper (string.[1..]))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:84: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_upper (string : string) : string =
    let rec aux (i : int) (str : string) : bool =
        if i >= 0 && i < String.length str then
            (int_of_char str.[i] >= 65 && int_of_char str.[i] <= 90)
            || aux (i + 1) str
        else false
    in
    if string = "" then ""
    else if aux 0 string then "Uppercase"
    else "Not uppercase"

