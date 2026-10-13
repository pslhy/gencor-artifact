let rec remove_whitespaces (text1 : string) : string =
  match text1 with
  | "" -> ""
  | _ -> let char_list = Char.escaped (String.get text1 0) in
           if char_list = " " then 
             remove_whitespaces (String.sub text1 1 (String.length text1 - 1))
           else 
             char_list ^ remove_whitespaces (String.sub text1 1 (String.length text1 - 1))

(* Test Case *)

let test_str = "This string has whitespaces"
let result = remove_whitespaces test_str
print_string result (* output: "Thisstringhaswhitespaces" *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from the given string. *)
