let rec check_str (string : string) : bool =
    let vowels = ["a"; "e"; "i"; "o"; "u"; "A"; "E"; "I"; "O"; "U"] in
    List.exists (fun x -> String.compare x (String.sub string 0 1) = 0) vowels

(* Test cases *)
let string1 = "apple"
let string2 = "orange"
let string3 = "aeiou"

(* Should print: true, false and true *)
Printf.printf "%b\n" (check_str string1)
Printf.printf "%b\n" (check_str string2)
Printf.printf "%b\n" (check_str string3)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given string is starting with a vowel or not using regex. *)
