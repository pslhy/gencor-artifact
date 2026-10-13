let rec count_charac (str1 : string) : int =
    match str1 with 
    | "" -> 0
    | _ -> (String.length str1)

let () =
   print_string ("Total number of characters in the string is: ") ;
   print_int (count_charac "Hello, world!");
   print_char '\n'


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the total number of characters in a string. *)
