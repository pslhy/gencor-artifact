let rec odd_values_string (str : string) : string =
    if String.length str < 2 then ""
    else String.sub str 0 1 ^ even_values_string (String.sub str 2 (String.length str - 2))
and even_values_string (str : string) : string =
    if String.length str < 2 then str
    else even_values_string (String.sub str 2 (String.length str - 2))

(* Test Cases *)
let test_str1 = "HelloWorld"
let result_str1 = odd_values_string test_str1
let test_str2 = "Programming"
let result_str2 = odd_values_string test_str2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove the characters which have odd index values of a given string. *)
