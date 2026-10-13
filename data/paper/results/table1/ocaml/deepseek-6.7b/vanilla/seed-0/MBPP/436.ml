let rec neg_nos (list1 : int list) : int list =
    match list1 with 
    | [] -> []
    | hd :: tl -> if hd < 0 then hd :: neg_nos tl else neg_nos tl

(* Test Cases *)
let test_list = [2; -1; 4; -4; 10; -7; 3]

let print_result = neg_nos test_list

let _ = print_endline ("Negative Numbers in the list are: " ^ String.concat ", " (List.map string_of_int print_result))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to return the negative numbers in a list. *)
