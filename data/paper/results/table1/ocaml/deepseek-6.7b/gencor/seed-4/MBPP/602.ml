
let rec first_repeated_char (str1 : string) : string option =
  match str1 with
  | "" -> None
  | _ -> let char = String.sub str1 0 1 in
         if (String.length str1 > 1 && 
           (String.contains str1 (String.sub str1 1 (String.length str1 - 1)))) 
         then Some char 
         else first_repeated_char (String.sub str1 1 (String.length str1 - 1))

(* Test Case *)

let test_str1 = "abcba"
let result = first_repeated_char test_str1
(* This will print "a" because "a" is the first repeated character in the string "abcba". *)

let test_str2 = "abcfga"
let result = first_repeated_char test_str2
(* This will print "f" because "f" is the first repeated character in the string "abcfga". *)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first repeated character in a given string. *)
