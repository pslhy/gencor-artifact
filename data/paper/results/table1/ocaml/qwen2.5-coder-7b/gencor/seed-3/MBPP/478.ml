
let rec remove_lowercase (str1 : string) : string = 
    let rec helper (str2 : string) : string = 
      match str2 with 
      | "" -> ""
      | s -> 
          let ch = String.get s 0 in 
          if Char.lowercase_ascii ch = ch then helper (String.sub s 1 (String.length s - 1))
          else s ^ helper (String.sub s 1 (String.length s - 1)) in
    helper str1;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
