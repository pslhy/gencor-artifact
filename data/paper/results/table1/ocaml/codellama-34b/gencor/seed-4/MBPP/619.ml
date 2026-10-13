
let rec move_num (test_str : string) : string = 
    (* Check if the string has reach the end *)
    if test_str = "" then "" 
    (* Use a recursive function to do the task *)
    else if Char.code (String.get test_str 0) invalid_arg then move_num (String.sub test_str 1 ((String.length test_str) - 1)) 
             (* Use match function to extract the number and append to the new string  *)
        else match test_str with 
            | _ -> move_num (String.sub test_str 1 ((String.length test_str) - 1)) @ String.make 1 test_str.[0]

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
