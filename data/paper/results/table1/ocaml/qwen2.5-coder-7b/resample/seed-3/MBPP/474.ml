(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to replace characters in a string. *)
let rec replace_char (str1 : string) (ch : string) (newch : string) : string = 
  let rec helper (s : string) (acc : string) : string = 
    if s = "" then 
      acc 
    else 
      let char, rest = String.split_char s 0 in 
      if char = ch then 
        helper rest (acc ^ newch) 
      else 
        helper rest (acc ^ char) 
  in 
  helper str1 ""

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:24: Unbound value "String.split_char" *)
(*     Hint: Did you mean "split_on_char"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec replace_char (str1 : string) (ch : string) (newch : string) : string = 
  let rec helper (s : string) (acc : string) : string = 
    if s = "" then 
      acc 
    else 
      let char = String.get s 0 in 
      if String.equal char ch then 
        helper (String.sub s 1 (String.length s - 1)) (acc ^ newch) 
      else 
        helper (String.sub s 1 (String.length s - 1)) (acc ^ String.make 1 char) 
  in 
  helper str1 ""

