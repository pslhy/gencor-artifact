let rec string_to_tuple (str1 : string) : string list = 
    let open String in 
    let len = length str1 in 
    let rec helper i = 
      if i = len 
         then []
         else get str1 i :: helper (i + 1) 
    in 
    helper 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a given string to a list of characters. *)
