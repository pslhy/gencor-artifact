let rec move_num (test_str : string) : string = 
    (* Check if the string has reach the end *)
    if test_str = "" then "" 
    (* Use a recursive function to do the task *)
    else if Char.is_number test_str.[0] then Char.toString test_str.[0].(move_num (test_str.[1..])) 
    else test_str.[0] ^ (move_num (test_str.[1..]))
 
(* test *)
let move_num_test () : unit = 
    assert (move_num "abc123" = "abc");
    assert (move_num "123abc" = "abc");
    assert (move_num "abcabc" = "abcabc");
    print_endline "Move number test: successful!" 
 
let _ = move_num_test ()


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
